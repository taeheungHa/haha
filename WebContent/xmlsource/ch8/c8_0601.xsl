<?xml version="1.0" encoding="euc-kr"?>
<xsl:stylesheet version="1.0"
	              xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Result Tree�� XML ���� ������ ���� -->
	<xsl:output method="xml" version="1.0" encoding="euc-kr" indent="yes"/>

	<!-- Result Tree�� ������Ʈ ���� �ۼ� -->
	<xsl:template match="/">
		<å���>
			<å>
				<xsl:value-of select="/booklist/book"/>
			</å>
		</å���>
	</xsl:template>

 
</xsl:stylesheet>
