<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="xsl:stylesheet/xsl:template[@match='ram:ID[@schemeID][not(ancestor::ram:SpecifiedTaxRegistration)]']/xsl:choose//@test">
    <xsl:attribute name="{name()}">
      <xsl:value-of select="replace(., '0002 0003 0004', 'XR01 XR02 XR03 0002 0003 0004')" />
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="xsl:stylesheet/xsl:template[@match='ram:SpecifiedTradeProduct/ram:GlobalID[@schemeID]']/xsl:choose//@test">
    <xsl:attribute name="{name()}">
      <xsl:value-of select="replace(., '0002 0003 0004', 'XR01 XR02 XR03 0002 0003 0004')" />
    </xsl:attribute>
  </xsl:template>
</xsl:stylesheet>
