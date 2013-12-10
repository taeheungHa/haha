using System;
using System.Xml;
using System.Xml.Xsl;
using System.Diagnostics;

namespace booksource.ch12
{
  class Transformation
	{
		static void Main()
		{
      //XSLT ���� ����
      string xslFilePath = @"..\..\ch12\booklist.xsl";
      XslCompiledTransform transformer = new XslCompiledTransform();
      transformer.Load(xslFilePath);
			
      //���� XML ���� ����
      string xmlFilePath = @"..\..\ch12\booklist.xml";
      XmlReader xmlReader = XmlReader.Create(xmlFilePath);
      
      //��� ���� ����
      string resultFilePath = @"C:\Temp\result.htm";
      XmlWriter xmlWriter = XmlWriter.Create(resultFilePath);

      //��ȯ�ϱ�
      transformer.Transform(xmlReader, xmlWriter);

      //���ͳ� �ͽ��÷η� ����
      Process.Start("IExplore.exe", @"C:\Temp\result.htm");
		}
	}
}
