package ch10;

//JAXP ��Ű��
import javax.xml.parsers.*;

public class CreateSAXParser {
	public static void main(String args[]) throws Exception {
		//SAX �ļ� ���� ����
		SAXParserFactory factory = SAXParserFactory.newInstance();
		//SAX �ļ� ����
		SAXParser parser = factory.newSAXParser();

		System.out.println("SAX �ļ� ��ü ���� ����");
	}	
}

