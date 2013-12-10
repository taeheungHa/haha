package ch11;

//JAXP ��Ű��
import javax.xml.transform.*;
import javax.xml.transform.stream.*;

public class CreateXSLTransformer_Trans {
	public static void main(String[] args) throws Exception {
		// XSL ��ȯ�� ���� ����
		TransformerFactory factory = TransformerFactory.newInstance();

		// XSL ������ ������ Source ��ü�� ����
		Source sourceXSL = new StreamSource("ch11/bml.xsl");

		// XSL ��ȯ�� ����: ��ȯ�� ���� �� ���� ����
		Transformer transformer = factory.newTransformer(sourceXSL);
		
		System.out.println("XSL ��ȯ�� ��ü ���� ����");
	}
}
