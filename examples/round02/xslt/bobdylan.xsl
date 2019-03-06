<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <collection> <!-- Begin of target XML -->
      <artist>
	<name><xsl:value-of select="//artist"/></name>
	<cds>
	  <cd></cd>
	</cds>
      </artist>
    </collection>

  </xsl:template>

</xsl:stylesheet> 





