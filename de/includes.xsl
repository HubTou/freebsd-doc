<?xml version="1.0" encoding="ISO-8859-1" ?>

<!-- $FreeBSD$
     $FreeBSDde: de-www/includes.xsl,v 1.8 2003/12/02 00:33:33 mheinen Exp $
     basiert auf: 1.20
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../share/sgml/includes.xsl" />
  <xsl:variable name="url.doc.langcode" select="'de_DE.ISO8859-1'" />

  <xsl:variable name="base" select="'.'"/>
  <xsl:variable name="enbase" select="'..'"/>
  <xsl:variable name="debase" select="'http://www.freebsd.de'"/>

  <xsl:variable name="i.daemon">
    <img src="{$enbase}/gifs/daemon.gif" alt="" align="left" width="80" height="76"/>
  </xsl:variable>

  <xsl:variable name="i.new">
    <img src="{$enbase}/gifs/new.gif" alt="[Neu!]" width="28" height="11"/>
  </xsl:variable>

  <xsl:variable name="copyright">
    <a href="{$enbase}/copyright/index.html">Copyright</a> &#169; 1995-2003
    the FreeBSD Project.  All rights reserved.
  </xsl:variable>

  <!-- Often used trademarks -->
  <xsl:variable name="unix" select="'UNIX&#174;'"/>
  <xsl:variable name="java" select="'Java&#8482;'"/>
  <xsl:variable name="jdk" select="'JDK&#8482;'"/>
  <xsl:variable name="posix" select="'POSIX&#174;'"/>

  <xsl:variable name="email" select="'freebsd-questions'"/>
  <xsl:variable name="author">
    <a>
      <xsl:attribute name="href">
	<xsl:value-of select="concat($enbase, '/mailto.html')"/>
      </xsl:attribute>
      <xsl:value-of select="$email"/>@FreeBSD.org</a><br/><xsl:copy-of select="$copyright"/>
  </xsl:variable>

  <xsl:variable name="home">
    <a href="{$base}/index.html"><img src="{$enbase}/gifs/home.gif" alt="FreeBSD Home Page" border="0" align="right" width="101" height="33"/></a>
  </xsl:variable>

  <xsl:variable name="header1">
    <head>
      <title><xsl:value-of select="$title"/></title>

      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
      <meta name="MSSmartTagsPreventParsing" content="TRUE"/>
    </head>
  </xsl:variable>

  <xsl:attribute-set name="att.body">
    <xsl:attribute name="text">#000000</xsl:attribute>
    <xsl:attribute name="bgcolor">#FFFFFF</xsl:attribute>
    <xsl:attribute name="alink">#FFCC33</xsl:attribute>
  </xsl:attribute-set>

  <xsl:variable name="header2">
    <img src="{$base}/gifs/bar.gif" alt="Navigation Bar" width="565"
	 height="33" border="0" usemap="#bar"/>

    <h1 align="left"><font color="#660000"><xsl:value-of select="$title"/></font></h1>

    <br clear="all"/>

    <map name="bar">
      <area shape="rect" coords="0,0,109,32"
	    href="{$base}/index.html" alt="Top"/>
      <area shape="rect" coords="110,0,215,32"
	    href="{$enbase}/ports/index.html" alt="Anwendungen"/>
      <area shape="rect" coords="216,0,254,32"
	    href="{$enbase}/support.html" alt="Hilfe"/>
      <area shape="rect" coords="255,0,366,32"
	    href="{$enbase}/docs.html" alt="Dokumentation"/>
      <area shape="rect" coords="367,0,431,32"
	    href="{$enbase}/commercial/commercial.html" alt="Anbieter"/>
      <area shape="rect" coords="432,0,477,32"
	    href="{$enbase}/search/search.html" alt="Suche"/>
      <area shape="rect" coords="478,0,522,32"
	    href="{$enbase}/search/index-site.html" alt="Inhalt"/>
      <area shape="rect" coords="523,0,564,32"
	    href="{$base}/index.html" alt="Top"/>
      <area shape="rect" coords="0,0,564,32"
	      href="{$base}/index.html" alt="Top"/>
    </map>
  </xsl:variable>

  <xsl:variable name="footer">
    <hr noshade="noshade"/>
    <address><xsl:copy-of select="$author"/><br/>
      <xsl:copy-of select="$date"/></address>
  </xsl:variable>

  <xsl:variable name="rel.current" select='"5.1"'/>
  <xsl:variable name="u.rel.notes">
    <xsl:value-of select="$base"/>/releases/<xsl:value-of select="$rel.current"/>R/relnotes.html</xsl:variable>

  <xsl:variable name="u.rel.announce">
    <xsl:value-of select="$base"/>/releases/<xsl:value-of select="$rel.current"/>R/announce.html</xsl:variable>
  <xsl:variable name="u.rel.errata">
    <xsl:value-of select="$base"/>/releases/<xsl:value-of select="$rel.current"/>R/errata.html</xsl:variable>
  <xsl:variable name="u.rel.hardware">
    <xsl:value-of select="$base"/>/releases/<xsl:value-of select="$rel.current"/>R/hardware.html</xsl:variable>
  <xsl:variable name="u.rel.early">
    <xsl:value-of select="$base"/>/releases/<xsl:value-of select="$rel.current"/>R/early-adopter.html</xsl:variable>

  <xsl:variable name="rel2.current" select='"4.9"'/>
  <xsl:variable name="u.rel2.notes">
    <xsl:value-of select="$enbase"/>/releases/<xsl:value-of select="$rel2.current"/>R/relnotes.html</xsl:variable>

  <xsl:variable name="u.rel2.announce">
    <xsl:value-of select="$enbase"/>/releases/<xsl:value-of select="$rel2.current"/>R/announce.html</xsl:variable>
  <xsl:variable name="u.rel2.errata">
    <xsl:value-of select="$enbase"/>/releases/<xsl:value-of select="$rel2.current"/>R/errata.html</xsl:variable>
  <xsl:variable name="u.rel2.hardware">
    <xsl:value-of select="$enbase"/>/releases/<xsl:value-of select="$rel2.current"/>R/hardware.html</xsl:variable>

  <!-- Translate month name -->
  <xsl:template name="translate-month">
    <xsl:param name="month"/>
    <xsl:choose>
      <xsl:when test="$month = 'January'">Januar</xsl:when>
      <xsl:when test="$month = 'February'">Februar</xsl:when>
      <xsl:when test="$month = 'March'">M&#228;rz</xsl:when>
      <xsl:when test="$month = 'April'">April</xsl:when>
      <xsl:when test="$month = 'May'">Mai</xsl:when>
      <xsl:when test="$month = 'June'">Juni</xsl:when>
      <xsl:when test="$month = 'July'">Juli</xsl:when>
      <xsl:when test="$month = 'August'">August</xsl:when>
      <xsl:when test="$month = 'September'">September</xsl:when>
      <xsl:when test="$month = 'October'">Oktober</xsl:when>
      <xsl:when test="$month = 'November'">November</xsl:when>
      <xsl:when test="$month = 'December'">Dezember</xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
