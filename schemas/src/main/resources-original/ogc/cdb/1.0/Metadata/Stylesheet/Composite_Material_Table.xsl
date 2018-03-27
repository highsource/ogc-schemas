<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet 
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:cdb="http://www.opengis.net/cdb/1.0/Composite_Material_Table"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:html="http://www.w3.org/1999/xhtml" >

  <xsl:output method="html" version="4.0" indent="yes" media-type="text/html" encoding="UTF-8"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>CBD Composite Material Table (CMT)</title>
      </head>
      <body style="font-family:'Times New Roman',serif">
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cdb:Composite_Material_Table">
    <h1>CBD Composite Material Table (CMT)</h1>
    <h2>File Version: <xsl:value-of select="@version"/></h2>
    <hr/>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="cdb:Composite_Material">
    Composite Material #<xsl:value-of select="@index"/>: <xsl:value-of select="cdb:Name"/>
    <div style="margin-left:15px">
      <xsl:apply-templates select="cdb:Surface_Substrate"/>
      <xsl:apply-templates select="cdb:Primary_Substrate"/>
      <xsl:apply-templates select="cdb:Secondary_Substrate"/>
    </div>
    <hr/>
  </xsl:template>

  <xsl:template match="cdb:Surface_Substrate">
    Surface Substrate:
    <div style="margin-left:15px">
      <xsl:apply-templates select="cdb:Thickness"/>
      Materials: <xsl:apply-templates select="cdb:Material"/>
    </div>
  </xsl:template>

  <xsl:template match="cdb:Primary_Substrate">
    Primary Substrate:
    <div style="margin-left:15px">
      <xsl:apply-templates select="cdb:Thickness"/>
      Materials: <xsl:apply-templates select="cdb:Material"/>
    </div>
  </xsl:template>

  <xsl:template match="cdb:Secondary_Substrate">
    Secondary Substrate:
    <div style="margin-left:15px">
      <xsl:apply-templates select="cdb:Thickness"/>
      Materials: <xsl:apply-templates select="cdb:Material"/>
    </div>
  </xsl:template>

  <xsl:template match="cdb:Material">
    <xsl:apply-templates select="cdb:Name"/>
    <xsl:apply-templates select="cdb:Weight"/>
  </xsl:template>

  <xsl:template match="cdb:Name">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="cdb:Weight">
    (<xsl:value-of select="."/>%)
  </xsl:template>

  <xsl:template match="cdb:Thickness">
    Thickness: <xsl:value-of select="."/> m<br/>
  </xsl:template>

</xsl:stylesheet>
