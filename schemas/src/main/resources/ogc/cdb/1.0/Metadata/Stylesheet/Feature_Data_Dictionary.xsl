<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet 
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:cdb="http://www.opengis.net/cdb/1.0/Feature_Data_Dictionary"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:html="http://www.w3.org/1999/xhtml" >

  <xsl:template match="/">
    <html>
      <head>
        <style>
          .verticalText {
            text-align: center;
            vertical-align: middle;
            width: 15px;
            padding: 0px;
            white-space: nowrap;
            writing-mode: tb-rl;
            -webkit-transform: rotate(90deg); 
            -moz-transform: rotate(90deg);  	
          };
        </style>
      </head>
      <body  style="font-family:'Arial',serif">
        <h2 style="color:#0051BA;font-size:10pt;bold">CDB Feature Data Dictionary</h2>
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cdb:Feature_Data_Dictionary">
    <table border="1" style="font-size:8pt;">
      <tr>
        <th colspan="5" style="font-size:10pt;color:#0051BA;background-color:#C6D9F1">FACC</th>
        <th rowspan="2" style="font-size:10pt;color:#0051BA;background-color:#C6D9F1">FACC-FSC Label</th>
        <th rowspan="2" style="font-size:10pt;color:#0051BA;background-color:#C6D9F1">FACC Concept Definition</th>
        <th rowspan="2" style="font-size:10pt;color:#0051BA;background-color:#C6D9F1">CDB Directory Hierarchy</th>
        <th rowspan="2" style="font-size:10pt;color:#0051BA;background-color:#C6D9F1">Recommended Dataset Component</th>
        <th rowspan="2" style="font-size:10pt;color:#0051BA;background-color:#C6D9F1">Origin</th>
      </tr>
      <tr>
        <th style="font-size:10pt;color:#0051BA;background-color:#C6D9F1;height:80px;text-align:center;vertical-align:top"><div class="verticalText">Level 1</div></th>
        <th style="font-size:10pt;color:#0051BA;background-color:#C6D9F1;height:80px;text-align:center;vertical-align:top"><div class="verticalText">Level 2</div></th>
        <th style="font-size:10pt;color:#0051BA;background-color:#C6D9F1;height:80px;text-align:center;vertical-align:top"><div class="verticalText">Level 3</div></th>
        <th style="font-size:10pt;color:#0051BA;background-color:#C6D9F1;height:80px;text-align:center;vertical-align:top"><div class="verticalText">FSC</div></th>
        <th style="font-size:10pt;color:#0051BA;background-color:#C6D9F1;height:80px;text-align:center;vertical-align:top"><div class="verticalText">FACC-FSC</div></th>
      </tr>
      <xsl:apply-templates select="cdb:Category"/>
    </table>
  </xsl:template>

  <xsl:template match="cdb:Category">
    <tr style="background-color:#FFFF99">
      <td><xsl:value-of select="@code"/></td>
      <td>&#160;</td>
      <td>&#160;</td>
      <td>&#160;</td>
      <td>&#160;</td>
      <td><xsl:value-of select="cdb:Label"/></td>
      <td>&#160;</td>
      <td><xsl:value-of select="@code"/>_<xsl:value-of select="cdb:Label"/></td>
      <td>&#160;</td>
      <td>&#160;</td>
    </tr>
    <xsl:apply-templates select="cdb:Subcategory"/>
  </xsl:template>

  <xsl:template match="cdb:Subcategory">
    <tr style="background-color:#CCFFCC">
      <td>&#160;</td>
      <td><xsl:value-of select="@code"/></td>
      <td>&#160;</td>
      <td>&#160;</td>
      <td>&#160;</td>
      <td><xsl:value-of select="cdb:Label"/></td>
      <td>&#160;</td>
      <td><xsl:value-of select="../@code"/>_<xsl:value-of select="../cdb:Label"/>&#92;<xsl:value-of select="@code"/>_<xsl:value-of select="cdb:Label"/></td>
      <td>&#160;</td>
      <td>&#160;</td>
    </tr>
    <xsl:apply-templates select="cdb:Feature_Type"/>
  </xsl:template>

  <xsl:template match="cdb:Feature_Type">
    <xsl:if test="count((cdb:Subcode)) &gt; 1">
      <tr  style="background-color:#CCFFFF">
        <td>&#160;</td>
        <td>&#160;</td>
        <td><xsl:value-of select="@code"/></td>
        <td>&#160;</td>
        <td><xsl:value-of select="../../@code"/><xsl:value-of select="../@code"/><xsl:value-of select="@code"/></td>
        <td><xsl:value-of select="cdb:Label"/></td>
        <td>&#160;</td>
        <td><xsl:value-of select="../../@code"/>_<xsl:value-of select="../../cdb:Label"/>&#92;<xsl:value-of select="../@code"/>_<xsl:value-of select="../cdb:Label"/>&#92;<xsl:value-of select="@code"/>_<xsl:value-of select="cdb:Label"/></td>
        <td>&#160;</td>
        <td>&#160;</td>
      </tr>
    </xsl:if>
    <xsl:apply-templates select="cdb:Subcode"/>
  </xsl:template>

  <xsl:template match="cdb:Subcode">
    <tr>
      <td>&#160;</td>
      <td>&#160;</td>
      <td><xsl:value-of select="../@code"/></td>
      <td><xsl:value-of select="@code"/></td>
      <td style="white-space:nowrap"><xsl:value-of select="../../../@code"/><xsl:value-of select="../../@code"/><xsl:value-of select="../@code"/>-<xsl:value-of select="@code"/></td>
      <td><xsl:value-of select="cdb:Label"/></td>
      <td><xsl:value-of select="cdb:Concept_Definition"/></td>
      <!--<td style="word-wrap:break-word;width:240px;"><xsl:value-of select="../../../@code"/>_<xsl:value-of select="../../../cdb:Label"/>&#92;<xsl:value-of select="../../@code"/>_<xsl:value-of select="../../cdb:Label"/>&#92;<xsl:value-of select="../@code"/>_<xsl:value-of select="../cdb:Label"/></td>  -->
      <td><xsl:value-of select="../../../@code"/>_<xsl:value-of select="../../../cdb:Label"/>&#92;<xsl:value-of select="../../@code"/>_<xsl:value-of select="../../cdb:Label"/>&#92;<xsl:value-of select="../@code"/>_<xsl:value-of select="../cdb:Label"/></td>
      <td><xsl:value-of select="cdb:Recommended_Dataset_Component"/></td>
      <td style="white-space:nowrap"><xsl:value-of select="cdb:Origin"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
