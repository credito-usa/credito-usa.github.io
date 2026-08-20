<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="es">
<head>
<meta charset="UTF-8"/>
<title>Sitemap de CréditoUSA</title>
<style>
body{font-family:system-ui,-apple-system,Arial,sans-serif;background:#f8fafc;color:#0f172a;max-width:760px;margin:40px auto;padding:0 20px;line-height:1.5}
h1{font-size:26px;margin-bottom:6px}
p{color:#475569;font-size:14px}
table{width:100%;border-collapse:collapse;margin-top:16px}
td{border-bottom:1px solid #e2e8f0;padding:10px 8px;font-size:14px}
a{color:#0e7490;text-decoration:none}
</style>
</head>
<body>
<h1>Sitemap de CréditoUSA</h1>
<p>Páginas del sitio listadas para motores de búsqueda.</p>
<table>
<xsl:for-each select="s:urlset/s:url">
<tr><td><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></td></tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
