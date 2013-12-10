using System.IO;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace booksource.ch14
{
  class OpenXmlForInsertBook
  {
    static void Main()
    {
      //XML ���� ���Ϸκ��� ���ڿ� ���
      string filePath = @"..\..\ch14\booklist.xml";
      FileInfo fileInfo = new FileInfo(filePath);
      FileStream fileStream = fileInfo.OpenRead();
      byte[] byteXml = new byte[fileInfo.Length];
      fileStream.Read(byteXml, 0, (int)fileInfo.Length);
      Encoding encoding = Encoding.GetEncoding("EUC-KR");
      string strXml = encoding.GetString(byteXml);
      
      //���� ���ν��� ȣ�� SqlCommand ��ü ����
      string strConn = "Data Source=localhost;Initial Catalog=booksourcedb;Integrated Security=True";
      SqlConnection conn = new SqlConnection(strConn);
      SqlCommand command = new SqlCommand();
      command.Connection = conn;
      command.CommandText = "insertBook";
      command.CommandType = CommandType.StoredProcedure;
      command.Parameters.Add("@doc", SqlDbType.VarChar);

      //���� ���ν��� ȣ��
      command.Parameters["@doc"].Value = strXml;
      conn.Open();
      command.ExecuteNonQuery();
      conn.Close();
    }
  }
}
