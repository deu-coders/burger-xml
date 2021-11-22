<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:template match="burger">
        <li class="burger-card">
            <img class="thumbnail">
                <xsl:attribute name="src">
                    <xsl:value-of select="thumbnail" />
                </xsl:attribute>
            </img>
            <div class="burger-information">
                <h1 class="title">
                    <xsl:value-of select="name" />
                </h1>
                <p class="description">
                    <xsl:value-of select="description" />
                </p>
                <div class="burger-data">
                    <div class="calories">
                        <xsl:value-of select="nutrition-facts/calories" /> Kcal
                    </div>
                    <div class="variants">
                        <xsl:for-each select="variants/variant">
                            <div class="variant">
                                <xsl:value-of select="@name" />
                                <span style="margin-left: 1rem" />
                                <xsl:value-of select="price" />원
                            </div>
                        </xsl:for-each>
                    </div>
                </div>
            </div>
        </li>
    </xsl:template>

    <xsl:template match="/">
        <html lang="ko">
            <head>
                <meta charset="UTF-8" />
                <title>모두의 버거</title>
                <link rel="stylesheet" href="burgers.css" />
            </head>
            <body>
                <div class="container">
                    <header>
                        <div class="title-main">
                            <h1>모두의 버거</h1>
                            <h6>Burger for everyone</h6>
                        </div>
                        <div class="title-sub">

                        </div>
                    </header>
            
                    <ul class="burger-cards">
                        <xsl:apply-templates select="burgers/burger" />
                    </ul>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>