<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="variant">
        <div class="burger-variant">
            <h1 class="burger-variant-name">
                <xsl:value-of select="@name" />
            </h1>

            <h2 class="burger-variant-price">
                <xsl:value-of select="price" />
            </h2>
        </div>
    </xsl:template>

    <xsl:template match="nutrition-facts">
        <table class="nutrition-facts">
            <thead>
                <tr>
                    <th>중량</th>
                    <th>칼로리</th>
                    <th>당류</th>
                    <th>단백질</th>
                    <th>나트륨</th>
                    <th>포화지방</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <xsl:value-of select="weight" /> g
                    </td>
                    <td>
                        <xsl:value-of select="calories" /> Kcal
                    </td>
                    <td>
                        <xsl:value-of select="sugars" /> g
                    </td>
                    <td>
                        <xsl:value-of select="protein" /> g
                    </td>
                    <td>
                        <xsl:value-of select="sodium" /> mg
                    </td>
                    <td>
                        <xsl:value-of select="saturated-fat" /> g
                    </td>
                </tr>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="/burger">
        <html lang="ko">
            <head>
                <meta charset="UTF-8" />
                <title>
                    <xsl:value-of select="name" />
                </title>
                <link rel="stylesheet" href="burger.css" />
            </head>
            <body>
                <div class="container">
                    <header>
                        <img class="thumbnail">
                            <xsl:attribute name="src">
                                <xsl:value-of select="thumbnail" />
                            </xsl:attribute>
                        </img>

                        <div>
                            <div class="burger-title">
                                <h1 class="burger-name">
                                    <xsl:value-of select="name" />
                                </h1>

                                <div class="burger-company">
                                    <xsl:value-of select="company" />
                                </div>
                            </div>
                            <h2 class="burger-description">
                                <xsl:value-of select="description" />
                            </h2>
                        </div>
                    </header>

                    <div style="margin-top: 2rem"></div>

                    <h1 class="subtitle">제품종류</h1>

                    <div class="burger-variants">
                        <xsl:apply-templates select="variants/variant" />
                    </div>

                    <div style="margin-top: 4rem"></div>

                    <h1 class="subtitle">영양성분</h1>

                    <div>
                        <xsl:apply-templates select="nutrition-facts" />
                    </div>
                </div>
                
                <img class="background-image">
                    <xsl:attribute name="src">
                        <xsl:value-of select="thumbnail" />
                    </xsl:attribute>
                </img>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>