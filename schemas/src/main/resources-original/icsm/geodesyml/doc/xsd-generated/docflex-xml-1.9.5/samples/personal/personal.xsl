<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html><p>Personnel</p> 
        <xsl:element name="table">
            <xsl:attribute name="border">2</xsl:attribute>
            <tr>
                <xsl:attribute name="color">#3333FF</xsl:attribute>
                <xsl:attribute name="bgcolor">#FFCCCC</xsl:attribute>
                <xsl:attribute name="align">center</xsl:attribute>
                <td>
                    <font name="verdana" size="3"> 
                        <b>Name</b>
                    </font>
                </td>
                <td>
                    <font name="verdana" size="3">
                        <b>Email </b>
                    </font>
                </td>
                <td>
                    <font name="verdana" size="3">
                        <b>Link</b>
                    </font>
                </td>
            </tr>
            <xsl:apply-templates/>
        </xsl:element>
       </html>
    </xsl:template>
    <xsl:template match="//person">
        <xsl:element name="tr">
            <xsl:attribute name="align">center</xsl:attribute>
            <xsl:element name="td">
                <font name="verdana" size="3">
                    <xsl:attribute name="width">120</xsl:attribute>
                    <i>
                        <xsl:value-of select="name/family/text()"/>
                        <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </i>
                    <xsl:value-of select="name/given/text()"/>

                </font>              
            </xsl:element>
            <xsl:element name="td">
                <xsl:attribute name="width">120</xsl:attribute>
                <font name="verdana" size="3">
                    <xsl:value-of select="email/text()"/>
                </font>
            </xsl:element>
            <xsl:element name="td">
                <font color="black" name="verdana" size="3">
                    <xsl:value-of select="./link/@subordinates"/>
                    <xsl:value-of select="./link/@manager"/>
                </font>
            </xsl:element>
        </xsl:element>        
    </xsl:template>
</xsl:stylesheet>
