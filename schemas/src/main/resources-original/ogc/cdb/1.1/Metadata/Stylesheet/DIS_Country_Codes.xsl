<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.1"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:cdb="http://www.opengis.net/cdb/1.1/DIS_Country_Codes"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:html="http://www.w3.org/1999/xhtml" >

  <xsl:output method="html" version="4.0" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>DIS Country Codes</title>
      </head>
      <body  style="font-family:'Times New Roman',serif">
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cdb:DIS_Country_Codes">
    <h1>DIS Country Codes</h1>
    <h2>File Version <xsl:value-of select="@version"/></h2>
    <table border="1" style="font-size:10pt">
      <tr>
        <th style="font-size:12pt;color:#0051BA;background-color:#C6D9F1">Code</th>
        <th style="font-size:12pt;color:#0051BA;background-color:#C6D9F1">Name</th>
      </tr>
      <xsl:apply-templates/>
    </table>
  </xsl:template>

  <xsl:template match="cdb:Country">
    <tr>
      <td><xsl:value-of select="@code"/></td>
      <td><xsl:value-of select="@name"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
