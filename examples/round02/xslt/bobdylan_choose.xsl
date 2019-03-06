<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <if test="/catalog/@id='master'">
    <collection> <!-- Begin of target XML -->
      <xsl:for-each select="//cd">
	<artist>
	  <name><xsl:value-of select="./artist"/></name>
	  <xsl:choose>
	    <xsl:when test="./price > 10.90">
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
      </xsl:for-each>
    </collection>
    </if>
  </xsl:template>
</xsl:stylesheet> 
