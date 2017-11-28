<?xml version="1.0"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:cdb="http://www.opengis.net/cdb/1.0/Vector_Attributes"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:html="http://www.w3.org/1999/xhtml"
  version="1.0">
  
  <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" media-type="text/html"/>
   
  <xsl:template match="/">
    <html>
      <body>
        <h1>CDB Attributes</h1>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="cdb:Attributes">
    <hr/>
    <h2>Attributes</h2>
    <table>
      <xsl:apply-templates select="cdb:Attribute">
        <xsl:sort select="@code" data-type="number"/>
      </xsl:apply-templates>
    </table>
  </xsl:template>
  
  <xsl:template match="cdb:Attribute">
    <tr bgcolor="lightblue">
      <td valign="top" rowspan="4"><xsl:value-of select="@code"/></td>
      <td valign="top" rowspan="4"><xsl:value-of select="@symbol"/></td>
      <td valign="top" colspan="2">
        <xsl:if test="@deprecated">
          <em><strong><xsl:text>Deprecated - </xsl:text></strong></em>
        </xsl:if>
        <xsl:value-of select="cdb:Name"/>
      </td>
    </tr>
    <xsl:apply-templates select="cdb:Description"/>
    <xsl:apply-templates select="cdb:Level"/>
    <xsl:apply-templates select="cdb:Value"/>
  </xsl:template>
  
  <xsl:template match="cdb:Description">
    <tr>
      <td valign="top">Description:</td>
      <td valign="top"><xsl:value-of select="."/></td>
    </tr>
  </xsl:template>
  
  <xsl:template match="cdb:Level">
    <tr>
      <td valign="top">Schema</td>
      <td valign="top"><xsl:apply-templates/></td>
    </tr>
  </xsl:template>
  
  <xsl:template match="cdb:Instance|cdb:Class|cdb:Extended">
    <xsl:value-of select="name()"/><xsl:text> (</xsl:text><xsl:value-of select="."/><xsl:text>), </xsl:text>
  </xsl:template>
  
  <xsl:template match="cdb:Value">
    <tr>
      <td valign="top">Data Type</td>
      <td valign="top"><xsl:apply-templates/></td>
    </tr>
  </xsl:template>

  <xsl:template match="cdb:Type">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="cdb:Length">
    (<xsl:value-of select="."/> char)
  </xsl:template>

  <xsl:template match="cdb:Format">
    <xsl:text>, </xsl:text><xsl:value-of select="."/>
  </xsl:template>
  
  <xsl:template match="cdb:Precision">
    <xsl:text>, Precision </xsl:text><xsl:value-of select="."/>
  </xsl:template>
  
  <xsl:template match="cdb:Range">
    <xsl:text>, Range</xsl:text>
    <xsl:choose>
      <xsl:when test="@interval='Open' or @interval='Left-Open'">
        <xsl:text>]</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>[</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates/>
    <xsl:choose>
      <xsl:when test="@interval='Open' or @interval='Right-Open'">
        <xsl:text>[</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>]</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="cdb:Unit|cdb:Scaler">
    <xsl:text>, </xsl:text>
    <xsl:value-of select="name()"/>
    <xsl:text>(</xsl:text>
    <xsl:value-of select="."/>
    <xsl:text>)</xsl:text>
  </xsl:template>
  
  <xsl:template match="cdb:Min">
    <xsl:value-of select="."/>
  </xsl:template>
  
  <xsl:template match="cdb:Max">
    <xsl:text>, </xsl:text>
    <xsl:value-of select='.'/>
  </xsl:template>
  
  <xsl:template match="cdb:Units">
    <hr/>
    <h2>Units</h2>
    <table border="1" cellpadding="2">
      <th align="left" bgcolor="lightblue">Code</th>
      <th align="left" bgcolor="lightblue">Symbol</th>
      <th align="left" bgcolor="lightblue">Name</th>
      <th align="left" bgcolor="lightblue">Description</th>
      <xsl:apply-templates select="cdb:Unit" mode="Units">
        <xsl:sort select="@code" data-type="number"/>
      </xsl:apply-templates>
    </table>
  </xsl:template>

  <xsl:template match="cdb:Unit" mode="Units">
    <tr>
      <td valign="top"><xsl:value-of select="@code"/></td>
      <td valign="top"><xsl:value-of select="@symbol"/></td>
      <td valign="top"><xsl:value-of select="cdb:Name"/></td>
      <td valign="top"><xsl:value-of select="cdb:Description"/></td>
    </tr>
  </xsl:template>

  <xsl:template match="cdb:Scalers">
    <hr/>
    <h2>Scalers</h2>
    <table border="1" cellpadding="2">
      <th align="left" bgcolor="lightblue">Code</th>
      <th align="left" bgcolor="lightblue">Symbol</th>
      <th align="left" bgcolor="lightblue">Mutiplier</th>
      <th align="left" bgcolor="lightblue">Name</th>
      <th align="left" bgcolor="lightblue">Description</th>
      <xsl:apply-templates select="cdb:Scaler" mode="Scalers">
        <xsl:sort select="@code" data-type="number"/>
      </xsl:apply-templates>
    </table>
  </xsl:template>

  <xsl:template match="cdb:Scaler" mode="Scalers">
    <tr>
      <td valign="top"><xsl:value-of select="@code"/></td>
      <td valign="top"><xsl:value-of select="@symbol"/></td>
      <td valign="top"><xsl:value-of select="cdb:Multiplier"/></td>
      <td valign="top"><xsl:value-of select="cdb:Name"/></td>
      <td valign="top"><xsl:value-of select="cdb:Description"/></td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
