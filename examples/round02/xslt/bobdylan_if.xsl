<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <xsl:if test="/catalog/@id='master'">
    <collection> <!-- Begin of target XML -->
      <xsl:for-each select="//cd">
	<artist>
	  <name><xsl:value-of select="./artist"/></name>
	  <cds>
	    <cd></cd>
	  </cds>
	</artist>
      </xsl:for-each>
    </collection>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet> 

