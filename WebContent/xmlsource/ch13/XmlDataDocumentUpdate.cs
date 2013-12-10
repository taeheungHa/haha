using System;
using System.Data;
using System.Data.SqlClient;
using System.Xml;

namespace booksource.ch13
{
	class XmlDataDocumentUpdate
	{
    static void Main(string[] args)
    {
      //DataAdapter ��ü ����
      string strConn = "Data Source=localhost;Initial Catalog=booksourcedb;Integrated Security=True";
      string strSql = "SELECT * FROM book";
      SqlDataAdapter dataAdapter = new SqlDataAdapter(strSql, strConn);
      SqlCommandBuilder builder = new SqlCommandBuilder(dataAdapter);

      //�����ͺ��̽����� ������ ��������
      DataSet dataSet = new DataSet("booklist");
      dataAdapter.Fill(dataSet, "book");

      //XmlDataDocument ��ü ����
      XmlDataDocument xdd = new XmlDataDocument(dataSet);

      //XPath�� ������ �� å ã��
      string xpath = "/booklist/book[bid='b2']";
      XmlElement eBook = (XmlElement)xdd.SelectSingleNode(xpath);

      //å ������ ����
      XmlElement ePrice = (XmlElement)eBook.ChildNodes[4];
      dataSet.EnforceConstraints = false;
      ePrice.InnerText = Convert.ToString(12000);
      dataSet.EnforceConstraints = true;

      //����� DataSet ���� �����ֱ�
      DataTable dataTable = dataSet.Tables["book"];
      dataTable.PrimaryKey = new DataColumn[] { dataTable.Columns["bid"] };
      DataRow dataRow = dataTable.Rows.Find("b2");
      Console.WriteLine("���� å ����: " + dataRow["price", DataRowVersion.Original]);
      Console.WriteLine("���� å ����: " + dataRow["price"]);

      //�����ͺ��̽��� ������Ʈ
      dataAdapter.Update(dataSet, "book");
    }
	}
}
