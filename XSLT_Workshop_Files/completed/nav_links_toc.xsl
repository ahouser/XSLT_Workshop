<?xml version="1.0" encoding="UTF-8"?>
<!--
 
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

<!-- Iterate through each task to generate TOC links -->
<xsl:for-each select="task" >

  <a href="#{generate-id(.)}"><xsl:value-of select="title" /></a>
  <br />

</xsl:for-each>

      <xsl:apply-templates />
    </body>
  </html>
</xsl:template>

<xsl:template match="task" >
<!-- Generate named anchors for navigation, TOC links -->
  <a name="{generate-id()}" />
  <xsl:apply-templates />

</xsl:template>


<xsl:template match="title" >
<table>
<tr>
<td><a href="#{generate-id(preceding::task[last()])}">First</a></td>
<td><a href="#{generate-id(following::task[last()])}">Last</a></td>
<td>
<xsl:if test="preceding::task[1]">
<a href="#{generate-id(preceding::task[1])}">Prev</a>
</xsl:if>
</td><td>
<xsl:if test="following::task[1]">
<a href="#{generate-id(following::task[1])}">Next</a>
</xsl:if>
</td>
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
