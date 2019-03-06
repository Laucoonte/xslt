<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>
<xsl:variable name="owner" select="'Mario'"/>
<xsl:variable name="delimiter" select="','"/>
<xsl:variable name="quote" select="'&quot;'"/>

<xsl:template match="/">
  <xsl:if test="/catalog/@id='master'">
    <xsl:for-each select="//cd">
      <!-- owner -->
      <xsl:value-of select="$quote"/>
      <xsl:value-of select="$owner"/>
      <xsl:value-of select="$quote"/>
      <xsl:value-of select="$delimiter"/>      

      <!-- artist -->
      <xsl:value-of select="$quote"/>
      <xsl:value-of select="./artist"/>
      <xsl:value-of select="$quote"/>

      <!-- EOL-->
      <xsl:text></xsl:text>
    </xsl:for-each>
  </xsl:if>
</xsl:template>
</xsl:stylesheet> 
