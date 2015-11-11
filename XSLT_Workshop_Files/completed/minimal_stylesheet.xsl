<?xml version="1.0" encoding="UTF-8"?>
<!--
 
  Copyright 2006 Group Wellesley, Inc.

-->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" />

<!-- 
  Match all element nodes in the XML document.
  Write text content to the result document.
  Process all child elements.
 -->

<xsl:template match="*" >
  <xsl:apply-templates />
</xsl:template>

</xsl:stylesheet>
