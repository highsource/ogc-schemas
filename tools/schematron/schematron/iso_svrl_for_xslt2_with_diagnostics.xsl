<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:axsl="http://www.w3.org/1999/XSL/TransformAlias"
  xmlns:iso="http://purl.oclc.org/dsdl/schematron"
  xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
  version="2.0">
  <xsl:import href="iso_svrl_for_xslt2.xsl"/>

  <xsl:output method="xml" indent="yes" encoding="utf-8"/>
  
  <xsl:template match="iso:diagnostic[@id='desc.diag']"> 
        <xsl:apply-templates mode="text"/>
  </xsl:template>

</xsl:stylesheet>
