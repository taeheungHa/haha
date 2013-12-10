package ch11;

import javax.xml.parsers.*;
import org.w3c.dom.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.*;
import javax.xml.transform.stream.*;
import java.io.*;

public class SaveDOMToFile {

	public static void main(String[] args) throws Exception {
		// DOM �ļ� ����
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		factory.setIgnoringElementContentWhitespace(true); 
		DocumentBuilder builder = factory.newDocumentBuilder();

		// XML ���� �Ľ��ϱ�
		Document document = builder.parse("ch11/bml.xml");

		// ��Ʈ ������Ʈ ���� ���
		Element eRoot = document.getDocumentElement();

		// ��ȯ�� ����
		TransformerFactory tf = TransformerFactory.newInstance();
		Transformer transformer = tf.newTransformer();

		// DOMSource ��ü ����
		Source source = new DOMSource(document);

		// StreamResult ��ü ����
		Result result =  new StreamResult(new File("C:/Temp/bml2.xml"));

		// ���Ϸ� �����ϱ�
		transformer.transform(source, result);

		System.out.println("bml2.xml�� ����Ǿ����ϴ�.");		
	}

}