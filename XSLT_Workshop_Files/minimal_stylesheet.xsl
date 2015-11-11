<?xml version="1.0" encoding="UTF-8"?>
<!--
  minimal_stylesheet.xsl
  Minimal XSL stylesheet.

  Copyright 2006 Group Wellesley, Inc.

-->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" />


<!-- Match all element nodes. Write their content to the result file.
     Continue processing child elements. -->
<xsl:template match="*" >
  <xsl:apply-templates />
</xsl:template>

</xsl:stylesheet>
