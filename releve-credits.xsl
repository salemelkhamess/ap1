<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head><title>Crédits</title></head>
      <body>
        <h1>Liste des Crédits</h1>
        <table border="1">
          <tr>
            <th>Date</th>
            <th>Montant</th>
            <th>Description</th>
          </tr>
          <xsl:for-each select="releve/operations/operation[@type='CREDIT']">
            <tr>
              <td><xsl:value-of select="@date"/></td>
              <td><xsl:value-of select="@montant"/></td>
              <td><xsl:value-of select="@description"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
