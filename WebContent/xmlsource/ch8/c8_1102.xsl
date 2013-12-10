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
						<th>kind</th>
					</tr>

					<!-- book ���÷���Ʈ �� ���� -->
					<xsl:apply-templates select="/booklist/book"/>

				</table>
			</body>
		</html>
	</xsl:template>

	<!-- book ���÷���Ʈ �� -->
	<xsl:template match="book">
		<xsl:choose>
			<xsl:when test="@kind='computer'">
				<tr>
					<td>
						<font color="blue">
							<xsl:value-of select="title"/>
						</font>
					</td>
					<td><xsl:value-of select="@kind"/></td>
				</tr>
			</xsl:when>
			<xsl:when test="@kind='����'">
				<tr>
					<td>
						<font color="red">
							<xsl:value-of select="title"/>
						</font>
					</td>
					<td><xsl:value-of select="@kind"/></td>
				</tr>
			</xsl:when>
			<xsl:otherwise>
				<tr>
					<td><xsl:value-of select="title"/></td>
					<td><xsl:value-of select="@kind"/></td>
				</tr>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>