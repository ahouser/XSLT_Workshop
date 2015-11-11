<?xml version="1.0" encoding="UTF-8"?>
<!--
  convert_to_html.xsl
  Convert XML to HTML

  Copyright 2006 Group Wellesley, Inc.

-->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" />

<!-- generic template to match all elements -->
<xsl:template match="*" >
  <xsl:apply-templates />
</xsl:template>

<!-- template to match 'tasklist'. Set up HTML page. -->
<xsl:template match="tasklist" >
  <html>
    <body>
      <xsl:apply-templates />
    </body>
  </html>
</xsl:template>

<!-- template to match 'title'. Wrap content in 'h1' tag. -->
<xsl:template match="title" >
  <h1><xsl:apply-templates /></h1>
</xsl:template>


<!-- Insert remaining templates here -->


</xsl:stylesheet>
