<?xml version="1.0"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fn="http://www.w3.org/2005/xpath-functions"
  xmlns:cdb="http://www.opengis.net/cdb/1.0/Lights"
  xmlns="http://www.opengis.net/cdb/1.0/Lights"
  version="1.0">
  
  <!--xmlns="http://www.w3.org/1999/xhtml"
  xmlns:html="http://www.w3.org/1999/xhtml" -->

  <xsl:output method="text"/>

  <xsl:template match="/">
    List of CDB Lights
    ------------------
    <xsl:apply-templates select="cdb:Lights/cdb:Light"/>
  </xsl:template>

  <xsl:template match="cdb:Lights">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="cdb:Light">
    <xsl:text>
    </xsl:text>
    <xsl:value-of select="@code"/>: <xsl:value-of select="@type"/> - <xsl:value-of select="cdb:Description"/>
    <xsl:apply-templates select="cdb:Light"/>
  </xsl:template>

  <xsl:template match="cdb:Description"/>

</xsl:stylesheet>
