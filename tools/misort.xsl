<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<!-- Feuille de style XSL pour trier les fichiers de traduction -->
<xsl:output method="xml" indent="yes"/>
<xsl:template match="*">
    <xsl:copy>
        <xsl:apply-templates select="* | @*">
            <xsl:sort select="not(@*)" order="ascending" data-type="number"/>
            <xsl:sort select="@*"/>
        </xsl:apply-templates>
		<xsl:value-of select="text()"/>
    </xsl:copy>
</xsl:template>
<xsl:template match="*/@*">
    <xsl:copy>
        <xsl:apply-templates/>
    </xsl:copy>
</xsl:template>
</xsl:stylesheet>
