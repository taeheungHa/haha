package ch11;

//JAXP ��Ű��
import javax.xml.transform.*;

public class CreateXSLTransformer_NoTrans {
	public static void main(String[] args) throws Exception {
		// XSL ��ȯ�� ���� ����
		TransformerFactory factory = TransformerFactory.newInstance();

		// XSL ��ȯ�� ����: ��ȯ ����� ����, ���� �� ���۸� ����
		Transformer transformer = factory.newTransformer();

		System.out.println("XSL ��ȯ�� ��ü ���� ����");
	}
}
