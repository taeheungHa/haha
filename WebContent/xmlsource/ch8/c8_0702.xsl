<?xml version="1.0" encoding="euc-kr"?>
<xsl:stylesheet version="1.0"
	              xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- ���� ���÷���Ʈ �� -->
	<xsl:template match="/">
		<html>
			<body>
				<h2><font color="blue">Our Book's List</font></h2>
				<table border="1" cellspacing="0" width="80%">
					<tr bgcolor="#FFFF66">
						<th>title</th>
						<th>author</th>
					</tr>

					<!-- book ���÷���Ʈ �� ���� -->
					<xsl:apply-templates select="/booklist/book[@kind='computer']"/>

				</table>
				
				<br/><hr align="left" width="80%"/>

				<!-- name �Ӽ��� ���� ���÷���Ʈ �� ���� -->
				<xsl:call-template name="tCompany"/>

			</body>
		</html>
	</xsl:template>

	<!-- book ���÷���Ʈ �� -->
	<xsl:template match="book">
		<tr>
			<td><xsl:value-of select="title"/></td>
			<td><xsl:value-of select="author"/></td>
		</tr>
	</xsl:template>

	<!-- name �Ӽ��� ���� ���÷���Ʈ �� -->
	<xsl:template name="tCompany">
		<font color="blue">��ö ����Ʈ����</font> �ֽ�ȸ�� 
		- ����� ���ﵿ
	</xsl:template>

</xsl:stylesheet>
