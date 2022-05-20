<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<link rel="stylesheet" type="text/css" href="edix.css"/>

<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <title>AE-3</title>
  </head>
    <body>
      <h1>Ciclos</h1>
      <ul> <!--Lista Desordenada-->
        <xsl:for-each select="//ciclo">
          <li>
            <xsl:value-of select="nombre"/>
            (<xsl:value-of select="@id"/>)
          </li>
        </xsl:for-each>
      </ul> <!--Fin Lista Desordenada-->

      &#160;
      <hr/>
      &#160;

      <table border="1" id="t1"> <!--Tabla Profesores-->
        <tr>
          <th colspan="2">Profesorado</th>
        </tr>
        <tr>
          <th>Nombre</th>
          <th>ID</th>
        </tr>
        <xsl:for-each select="//profesor">
          <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="id"/></td>
          </tr>
        </xsl:for-each>
      </table> <!--Fin Tabla Profesores-->
      
      &#160;
      <hr/>
      &#160;
      
      <table border="1" id="t2"> <!--Tabla Ciclos-->
        <tr> <!--Primera fila-->
          <th colspan="3">Ciclos formativos de grado superior</th>
        </tr>
        <tr> <!--Segunda fila-->
          <th>Nombre del título</th>
          <th>Siglas</th>
          <th>Año del decreto que lo regula</th>
        </tr>
        <xsl:for-each select="//ciclo">
          <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="decretoTitulo/@año"/></td>
          </tr>
        </xsl:for-each>
      </table> <!--Fin Tabla Ciclos-->
    </body>
</html>

</xsl:template>
</xsl:stylesheet>