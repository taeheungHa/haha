<?xml version="1.0" encoding="euc-kr"?>
<xsl:stylesheet version="1.0"
	              xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Result Tree�� XML ���� ������ ���� -->
	<xsl:output method="html"/>

	<!-- Result Tree�� ������Ʈ ���� �ۼ� -->
	<xsl:template match="/">
		<html>
			<body>
				<font color="blue">
					����: <xsl:value-of select="/booklist/book"/>
				</font>
			</body>
		</html>
	</xsl:template>
 
</xsl:stylesheet>