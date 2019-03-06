<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<xsl:variable name="owner" select="'Mario'"/>
  <xsl:template match="/">
    <xsl:if test="/catalog/@id='master'">
    <collection> <!-- Begin of target XML -->
	<owner><xsl:value-of select="$owner"/></owner>
	<xsl:for-each select="//cd">
	  <xsl:call-template name="artist">
	    <xsl:with-param name="artist" select="./artist"/>
	  </xsl:call-template>
	</xsl:for-each>
    </collection>
    </xsl:if>
  </xsl:template>


  <!-- ARTIST TEMPLATE -->
  <xsl:template name="artist">
    <xsl:param name="artist"/>
    <artist>
      <name><xsl:value-of select="$artist"/></name>
      <xsl:choose>
	<xsl:when test="$artist/price > 10.90">
	  <value>expensive</value>
	</xsl:when>
	<xsl:otherwise>
	  <value>cheap</value>
	</xsl:otherwise>
      </xsl:choose> 
      <cds>
      <cd></cd>
      </cds>
    </artist>
  </xsl:template>
</xsl:stylesheet> 
