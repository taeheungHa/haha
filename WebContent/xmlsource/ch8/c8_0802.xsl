<?xml version="1.0" encoding="euc-kr"?>
<xsl:stylesheet version="1.0"
	              xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Result Tree�� XML ���� ������ ���� -->
	<xsl:output method="xml" version="1.0" encoding="euc-kr" indent="yes"/>

  <!-- ���� ���÷���Ʈ �� -->
	<xsl:template match="/">
		<å���>
			<xsl:apply-templates select="/booklist/book"/>
		</å���>
	</xsl:template>

	<!-- book ���÷���Ʈ �� -->
	<xsl:template match="book">
		<å>
			<xsl:copy-of select="@id"/>
			<xsl:copy-of select="@kind"/>
			<xsl:copy-of select="title"/>
			<xsl:copy-of select="author"/>
			<xsl:copy-of select="publisher"/>
			<xsl:copy-of select="price"/>
		</å>
	</xsl:template>

</xsl:stylesheet>
