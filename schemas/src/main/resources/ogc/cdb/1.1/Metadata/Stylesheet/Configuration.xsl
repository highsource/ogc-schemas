<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.1"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:cdb="http://www.opengis.net/cdb/1.1/Configuration"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:html="http://www.w3.org/1999/xhtml" >

  <xsl:output method="html" version="4.0" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>CDB Configuration</title>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cdb:Configuration">
    <h1>CDB Configuration</h1>
    <xsl:apply-templates select="cdb:Comment" mode="Configuration"/>
    <p>Below is the list of paths to CDB Versions of this configuration.</p>
    <ol><xsl:apply-templates select="cdb:Version"/></ol>
  </xsl:template>

  <xsl:template match="cdb:Version">
    <li>
      <ul><xsl:apply-templates/></ul>
    </li>
  </xsl:template>

  <xsl:template match="cdb:Folder">
    <li>Folder: <xsl:value-of select="@path"/></li>
  </xsl:template>
  
  <xsl:template match="cdb:Comment" mode="Configuration">
    <p><xsl:value-of select="."/></p>
  </xsl:template>

  <xsl:template match="cdb:Comment">
    <li>Comment: <xsl:value-of select="."/></li>
  </xsl:template>

  <xsl:template match="cdb:Specification">
    <li>Specification: <xsl:value-of select="@version"/></li>
  </xsl:template>
  
  <xsl:template match="cdb:Extension">
    <li>Extension
      <ul>
        <li>Name: <xsl:value-of select="@name"/></li>
        <li>Version: <xsl:value-of select="@version"/></li>
      </ul>
    </li>
  </xsl:template>

</xsl:stylesheet>
