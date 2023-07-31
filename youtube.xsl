<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>YouTube-like Data Page</title>
        <link rel="stylesheet" type="text/css" href="youtube.css"/>
      </head>
      <body>
        <h1>YouTube-like Data Page</h1>
        <xsl:apply-templates select="videos/video"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="video">
    <div class="video">
      <h2>
        <xsl:value-of select="title"/>
      </h2>
      <p class="description">
        <xsl:value-of select="description"/>
      </p>
      <p class="Aurthor">Written By:-  <xsl:value-of select="Aurthor"/>
      </p>
      <p class="views">Watching By:-  <xsl:value-of select="views"/>
      </p>
      <h3 class="comments">Comments:</h3>
      <ul>
        <xsl:apply-templates select="comments/comment"/>
      </ul>
    </div>
  </xsl:template>

  <xsl:template match="comment">
    <li>
      <p class="user">
        <xsl:value-of select="user"/>
said:</p>
      <p class="content">
        <xsl:value-of select="content"/>
      </p>
    </li>
  </xsl:template>

</xsl:stylesheet>