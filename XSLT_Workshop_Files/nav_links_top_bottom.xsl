<?xml version="1.0" encoding="UTF-8"?>
<!--
  nav_links_top_bottom.xsl
  Add 'First' and 'Last' navigation links.
 
  Copyright 2006 Group Wellesley, Inc.

-->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" />

<xsl:template match="*" >
  <xsl:apply-templates />
</xsl:template>

<xsl:template match="tasklist" >
  <html>
    <head>
      <link rel="stylesheet" href="tasks.css" type="text/css" media="screen" />
    </head>
    <body>
      <xsl:apply-templates />
    </body>
  </html>
</xsl:template>

<xsl:template match="task" >
  <a name="{generate-id()}" />
  <xsl:apply-templates />

</xsl:template>


<xsl:template match="title" >

<!--

  Generate First and Last links

-->
  <table>
<tr>
<td><!-- Add "First" link here. --></td>
<td><!-- Add "Last" link here. --></td>
</tr>

  </table>

  <h1><xsl:apply-templates /></h1>
</xsl:template>

<xsl:template match="cmd" >
  <p><xsl:apply-templates /></p>
</xsl:template>

<xsl:template match="info" >
  <p><xsl:apply-templates /></p>
</xsl:template>

<xsl:template match="p" >
  <p><xsl:apply-templates /></p>
</xsl:template>

<xsl:template match="uicontrol" >
  <em><xsl:apply-templates /></em>
</xsl:template>

<xsl:template match="steps" >
  <ol><xsl:apply-templates /></ol>
</xsl:template>

<xsl:template match="step">
  <li><xsl:apply-templates /></li>
</xsl:template>

<xsl:template match="li" >
  <li><xsl:apply-templates /></li>
</xsl:template>

<xsl:template match="ul" >
  <ul><xsl:apply-templates /></ul>
</xsl:template>

</xsl:stylesheet>
