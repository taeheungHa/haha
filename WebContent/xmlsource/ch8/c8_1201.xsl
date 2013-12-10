<?xml version="1.0" encoding="euc-kr"?>
<xsl:stylesheet version="1.0"
	              xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- �۷ι� ���� ���� -->
	<xsl:variable name="vList" select="'å���'"/>
	<xsl:variable name="vKind">computer</xsl:variable>
	<xsl:variable name="vSize" select="10"/>
	<xsl:variable name="vCompany">
		<font color="blue">��ö ����Ʈ</font> �ֽ�ȸ��
	</xsl:variable>

  <!-- ���� ���÷���Ʈ �� -->
	<xsl:template match="/">
		<html>
			<body>
				<!-- ����Ʈ �������� ��� -->
				<h2> <xsl:value-of select="$vList"/> </h2>
				
				<!-- XPath ǥ���Ŀ��� ��� -->
				<xsl:for-each select="//book[@kind=$vKind]">

					<!-- �Ӽ������� ��� -->
					<font size="{$vSize}">
						<xsl:value-of select="title"/>
					</font>
					<br/>
				</xsl:for-each>

				<br/><br/>

				<!-- ������Ʈ�� �����ϰ� �ִ� ���� ��� -->
			  <xsl:copy-of select="$vCompany"/>

			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
