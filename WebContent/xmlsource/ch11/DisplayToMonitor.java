package ch11;

import javax.xml.transform.*;
import javax.xml.transform.stream.*;

public class DisplayToMonitor {
	public static void main(String[] args) throws Exception {
		// ��ȯ�� ����
		TransformerFactory factory = TransformerFactory.newInstance();

		// XSL ������ ������ Source ��ü�� ����
		Source sourceXSL = new StreamSource("ch11/bml.xsl");

		// XSL ��ȯ�� ����: ��ȯ�� ���� �� ���� ����
		Transformer transformer = factory.newTransformer(sourceXSL);

		// ��� �Ӽ� ����
		transformer.setOutputProperty(OutputKeys.ENCODING, "euc-kr");
		transformer.setOutputProperty(OutputKeys.INDENT, "yes");

		// DOMSource ��ü ����
		Source sourceXML = new StreamSource("ch11/bml.xml");

		// StreamResult ��ü ����
		Result resultXML =  new StreamResult(System.out);

		// ����ͷ� ����ϱ�
		transformer.transform(sourceXML, resultXML);	
	}
}