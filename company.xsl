<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match=" company">
        <tr>
            <td>
                <xsl:value-of select="@name" />
            </td>
            <td>
                <xsl:value-of select="country" />
            </td>
            <td>
                <xsl:value-of select="founding-date" />
            </td>
            <td>
                <xsl:value-of select="ceo" />
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="/companies">
        <html lang="ko">
            <head>
                <meta charset="UTF-8" />
                <title>
                    <xsl:value-of select="name" />
                </title>
                <link rel="stylesheet" href="company.css" />
            </head>
            <body>
                <div class="container">
                    <header>
                        <h1>햄버거를 제조하는 회사들</h1>
                    </header>

                    <div style="margin-top: 2rem"></div>

                    <table class="companies">
                        <thead>
                            <tr>
                                <th>회사명</th>
                                <th>본사</th>
                                <th>설립일</th>
                                <th>CEO</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:apply-templates select="company" />
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>