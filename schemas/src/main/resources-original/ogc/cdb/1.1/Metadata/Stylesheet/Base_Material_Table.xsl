<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.1"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:cdb="http://www.opengis.net/cdb/1.1/Base_Material_Table"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:html="http://www.w3.org/1999/xhtml" >

  <xsl:output method="html" version="4.0" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>CDB Base Materials</title>
      </head>
      <body style="font-family:'Times New Roman',serif">
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cdb:Base_Material_Table">
    <h1>CDB Base Materials</h1>
    <h2>File Version <xsl:value-of select="@version"/></h2>
    <table border="1" style="font-size:10pt">
      <tr>
        <th style="font-size:12pt;color:#0051BA;background-color:#C6D9F1">Base Material Name</th>
        <th style="font-size:12pt;color:#0051BA;background-color:#C6D9F1">Description</th>
      </tr>
      <xsl:apply-templates select="cdb:Base_Material"/>
    </table>
  </xsl:template>

  <xsl:template match="cdb:Base_Material">
    <tr>
      <td><xsl:value-of select="cdb:Name"/></td>
      <td><xsl:value-of select="cdb:Description"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
