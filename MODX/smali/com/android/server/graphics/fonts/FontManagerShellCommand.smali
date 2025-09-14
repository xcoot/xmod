.class public final Lcom/android/server/graphics/fonts/FontManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/graphics/fonts/FontManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/graphics/fonts/FontManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 6
    return-void
.end method

.method public static dumpFont(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/Font;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ", path = "

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    if-nez v0, :cond_0

    .line 24
    const-string v0, "[Not a file]"

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    const-string v0, ", index = "

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    .line 48
    move-result v0

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_2

    .line 58
    array-length v0, p1

    .line 59
    if-eqz v0, :cond_2

    .line 61
    const-string v0, ", axes = \""

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string p1, "\""

    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Named Family List"

    .line 7
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 13
    invoke-virtual {p1}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_2

    .line 25
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroid/text/FontConfig$NamedFamilyList;

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    const-string v6, "Named Family ("

    .line 35
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v6, ")"

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 60
    invoke-virtual {v4}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    .line 63
    move-result-object v4

    .line 64
    move v5, v2

    .line 65
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 68
    move-result v6

    .line 69
    if-ge v5, v6, :cond_1

    .line 71
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Landroid/text/FontConfig$FontFamily;

    .line 77
    const-string v7, "Family"

    .line 79
    invoke-virtual {p0, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v6}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 89
    move v7, v2

    .line 90
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 93
    move-result v8

    .line 94
    if-ge v7, v8, :cond_0

    .line 96
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Landroid/text/FontConfig$Font;

    .line 102
    invoke-static {p0, v8}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V

    .line 105
    add-int/lit8 v7, v7, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 111
    add-int/lit8 v5, v5, 0x1

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 123
    const-string v1, "Dump Fallback Families"

    .line 125
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 131
    move v1, v2

    .line 132
    move v3, v1

    .line 133
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 136
    move-result v4

    .line 137
    if-ge v1, v4, :cond_8

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Landroid/text/FontConfig$FontFamily;

    .line 145
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    .line 148
    move-result-object v5

    .line 149
    if-eqz v5, :cond_3

    .line 151
    goto :goto_6

    .line 152
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 154
    const-string v6, "Fallback Family ["

    .line 156
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    add-int/lit8 v6, v3, 0x1

    .line 161
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v3, "]: lang=\""

    .line 166
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v3, "\""

    .line 182
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_6

    .line 191
    const-string v3, ", variant="

    .line 193
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    .line 199
    move-result v3

    .line 200
    const/4 v7, 0x1

    .line 201
    if-eq v3, v7, :cond_5

    .line 203
    const/4 v7, 0x2

    .line 204
    if-eq v3, v7, :cond_4

    .line 206
    const-string v3, "Unknown"

    .line 208
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    goto :goto_4

    .line 212
    :cond_4
    const-string v3, "Elegant"

    .line 214
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    goto :goto_4

    .line 218
    :cond_5
    const-string v3, "Compact"

    .line 220
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_6
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 237
    move v4, v2

    .line 238
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 241
    move-result v5

    .line 242
    if-ge v4, v5, :cond_7

    .line 244
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    move-result-object v5

    .line 248
    check-cast v5, Landroid/text/FontConfig$Font;

    .line 250
    invoke-static {p0, v5}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V

    .line 253
    add-int/lit8 v4, v4, 0x1

    .line 255
    goto :goto_5

    .line 256
    :cond_7
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 259
    move v3, v6

    .line 260
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 262
    goto/16 :goto_3

    .line 264
    :cond_8
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 267
    const-string v0, "Dump Family Aliases"

    .line 269
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 275
    invoke-virtual {p1}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    .line 278
    move-result-object p1

    .line 279
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 282
    move-result v0

    .line 283
    if-ge v2, v0, :cond_9

    .line 285
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Landroid/text/FontConfig$Alias;

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    .line 293
    const-string v3, "alias = "

    .line 295
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v3, ", reference = "

    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v3, ", width = "

    .line 319
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Landroid/text/FontConfig$Alias;->getWeight()I

    .line 325
    move-result v0

    .line 326
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 336
    add-int/lit8 v2, v2, 0x1

    .line 338
    goto :goto_7

    .line 339
    :cond_9
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 342
    return-void
.end method

.method public static dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "style = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", path = "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 38
    const-string v1, ", index = "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 60
    const-string v1, ", axes = "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_2

    .line 78
    const-string v1, ", fallback = "

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "Font is updated from "

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 130
    :cond_3
    return-void
.end method

.method public static parseFontFamilyUpdateXml(Ljava/io/InputStream;)Ljava/util/List;
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v1, v2, :cond_5

    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v1, v3, :cond_1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 24
    move-result v1

    .line 25
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    const/16 v5, -0x2717

    .line 31
    if-ne v1, v2, :cond_3

    .line 33
    const-string/jumbo v1, "fontFamilyUpdateRequest"

    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v1, "Expected <fontFamilyUpdateRequest> but got: "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p0, v5, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 65
    throw p0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    if-ne v1, v3, :cond_0

    .line 70
    const-string/jumbo v1, "family"

    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 79
    new-instance v1, Landroid/graphics/fonts/FontUpdateRequest;

    .line 81
    invoke-static {p0}, Landroid/graphics/fonts/FontUpdateRequest$Family;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 84
    move-result-object v2

    .line 85
    invoke-direct {v1, v2}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Landroid/graphics/fonts/FontUpdateRequest$Family;)V

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v1, "Expected <family> but got: "

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    invoke-direct {p0, v5, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 114
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_5
    return-object v0

    .line 116
    :goto_1
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 118
    const/4 v1, 0x0

    .line 119
    const-string v2, "Failed to parse xml"

    .line 121
    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    throw v0
.end method


# virtual methods
.method public final dump(Landroid/os/ShellCommand;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "FontManagerShellCommand"

    .line 11
    invoke-static {v0, v2, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 18
    return v1

    .line 19
    :cond_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 21
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, "  "

    .line 27
    invoke-direct {v0, v2, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    .line 39
    move-result-object p0

    .line 40
    const/4 v2, 0x0

    .line 41
    if-nez p1, :cond_1

    .line 43
    invoke-static {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V

    .line 46
    goto/16 :goto_3

    .line 48
    :cond_1
    invoke-static {p0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;

    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    check-cast p0, [Landroid/graphics/fonts/FontFamily;

    .line 58
    if-nez p0, :cond_2

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "Font Family \""

    .line 64
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string p1, "\" not found"

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    array-length p1, p0

    .line 84
    move v3, v2

    .line 85
    :goto_0
    if-ge v3, p1, :cond_8

    .line 87
    aget-object v4, p0, v3

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    .line 91
    const-string v6, "Family:"

    .line 93
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily;->getLangTags()Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 100
    if-eqz v6, :cond_3

    .line 102
    const-string v6, " langTag = "

    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily;->getLangTags()Ljava/lang/String;

    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily;->getVariant()I

    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_6

    .line 120
    const-string v6, " variant = "

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily;->getVariant()I

    .line 128
    move-result v6

    .line 129
    if-eq v6, v1, :cond_5

    .line 131
    const/4 v7, 0x2

    .line 132
    if-eq v6, v7, :cond_4

    .line 134
    const-string v6, "UNKNOWN"

    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    const-string v6, "Elegant"

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    goto :goto_1

    .line 146
    :cond_5
    const-string v6, "Compact"

    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_6
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 158
    move v5, v2

    .line 159
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily;->getSize()I

    .line 162
    move-result v6

    .line 163
    if-ge v5, v6, :cond_7

    .line 165
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 168
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    .line 171
    move-result-object v6

    .line 172
    invoke-static {v0, v6}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFont(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/Font;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 178
    add-int/lit8 v5, v5, 0x1

    .line 180
    goto :goto_2

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 185
    throw p0

    .line 186
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 188
    goto :goto_0

    .line 189
    :cond_8
    :goto_3
    return v2
.end method

.method public final installCert(Landroid/os/ShellCommand;)V
    .locals 4

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 3
    if-eqz v0, :cond_3

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const/16 v1, -0x2718

    .line 17
    if-eqz v0, :cond_1

    .line 19
    new-instance v2, Ljava/io/File;

    .line 21
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 30
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 32
    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mDebugCertFilePath:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    .line 37
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 40
    move-result-object p0

    .line 41
    const-string p1, "Success"

    .line 43
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    return-void

    .line 47
    :cond_0
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "Cert file ("

    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v0, ") is not found"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, v1, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 71
    throw p0

    .line 72
    :cond_1
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 74
    const-string p1, "Cert file path argument is required."

    .line 76
    invoke-direct {p0, v1, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 79
    throw p0

    .line 80
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 82
    const-string p1, "Only root can add debug certificate"

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 90
    const-string p1, "Only debuggable device can add debug certificate"

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const/16 v2, 0x7d0

    .line 10
    if-eq v0, v2, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 15
    move-result-object p0

    .line 16
    const-string p1, "Only shell or root user can execute font command."

    .line 18
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    return v1

    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 28
    move-result v1

    .line 29
    goto/16 :goto_4

    .line 31
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x0

    .line 36
    sparse-switch v0, :sswitch_data_0

    .line 39
    goto :goto_0

    .line 40
    :sswitch_0
    const-string/jumbo v0, "update-family"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 49
    const/4 v0, 0x2

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto/16 :goto_3

    .line 54
    :sswitch_1
    const-string/jumbo v0, "restart"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 63
    const/4 v0, 0x4

    .line 64
    goto :goto_1

    .line 65
    :sswitch_2
    const-string/jumbo v0, "clear"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 74
    const/4 v0, 0x3

    .line 75
    goto :goto_1

    .line 76
    :sswitch_3
    const-string/jumbo v0, "dump"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 85
    move v0, v2

    .line 86
    goto :goto_1

    .line 87
    :sswitch_4
    const-string/jumbo v0, "update"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 96
    move v0, v1

    .line 97
    goto :goto_1

    .line 98
    :sswitch_5
    const-string/jumbo v0, "status"

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_2

    .line 107
    const/4 v0, 0x5

    .line 108
    goto :goto_1

    .line 109
    :sswitch_6
    const-string/jumbo v0, "install-debug-cert"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v0
    :try_end_0
    .catch Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    if-eqz v0, :cond_2

    .line 118
    const/4 v0, 0x6

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 121
    :goto_1
    const-string v3, "Success"

    .line 123
    packed-switch v0, :pswitch_data_0

    .line 126
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 129
    move-result v1

    .line 130
    goto/16 :goto_4

    .line 132
    :pswitch_0
    invoke-virtual {p0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->installCert(Landroid/os/ShellCommand;)V

    .line 135
    :goto_2
    move v1, v2

    .line 136
    goto :goto_4

    .line 137
    :pswitch_1
    invoke-virtual {p0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->status(Landroid/os/ShellCommand;)V

    .line 140
    goto :goto_2

    .line 141
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 143
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    .line 146
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    goto :goto_2

    .line 154
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    new-instance v0, Ljava/io/File;

    .line 161
    const-string v4, "/data/fonts/files"

    .line 163
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v4, Ljava/io/File;

    .line 168
    const-string v5, "/data/fonts/config/config.xml"

    .line 170
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-static {v0, v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->deleteAllFiles(Ljava/io/File;Ljava/io/File;)V

    .line 176
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    .line 179
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    goto :goto_2

    .line 187
    :pswitch_4
    invoke-virtual {p0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->updateFamily(Landroid/os/ShellCommand;)V

    .line 190
    goto :goto_2

    .line 191
    :pswitch_5
    invoke-virtual {p0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->update(Landroid/os/ShellCommand;)V

    .line 194
    goto :goto_2

    .line 195
    :pswitch_6
    invoke-virtual {p0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dump(Landroid/os/ShellCommand;)I

    .line 198
    move-result v1
    :try_end_1
    .catch Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    goto :goto_4

    .line 200
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getErrorCode()I

    .line 207
    move-result v2

    .line 208
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 211
    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 220
    const-string v2, "Command failed: "

    .line 222
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    .line 228
    move-result-object p0

    .line 229
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object p0

    .line 240
    const-string v0, "FontManagerShellCommand"

    .line 242
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    :goto_4
    return v1

    .line 246
    nop

    .line 247
    :sswitch_data_0
    .sparse-switch
        -0x7c3ca730 -> :sswitch_6
        -0x3532300e -> :sswitch_5
        -0x31ffc737 -> :sswitch_4
        0x2f39f4 -> :sswitch_3
        0x5a5b64d -> :sswitch_2
        0x416a9e0f -> :sswitch_1
        0x43adc8e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Font service (font) commands"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "help"

    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    const-string v0, "    Print this help text."

    .line 18
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 24
    const-string/jumbo v0, "dump [family name]"

    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    const-string v0, "    Dump all font files in the specified family name."

    .line 32
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    const-string v0, "    Dump current system font configuration if no family name was specified."

    .line 37
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 43
    const-string/jumbo v0, "update [font file path] [signature file path]"

    .line 46
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    const-string v0, "    Update installed font files with new font file."

    .line 51
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 57
    const-string/jumbo v0, "update-family [family definition XML path]"

    .line 60
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v0, "    Update font families with the new definitions."

    .line 65
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 71
    const-string/jumbo v0, "install-debug-cert [cert file path]"

    .line 74
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v0, "    Install debug certificate file. This command can be used only on"

    .line 79
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v0, "    debuggable device with root user."

    .line 84
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 90
    const-string/jumbo v0, "clear"

    .line 93
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v0, "    Remove all installed font files and reset to the initial state."

    .line 98
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 104
    const-string/jumbo v0, "restart"

    .line 107
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v0, "    Restart FontManagerService emulating device reboot."

    .line 112
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v0, "    WARNING: this is not a safe operation. Other processes may misbehave if"

    .line 117
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v0, "    they are using fonts updated by FontManagerService."

    .line 122
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    const-string v0, "    This command exists merely for testing."

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 133
    const-string/jumbo v0, "status"

    .line 136
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    const-string v0, "    Prints status of current system font configuration."

    .line 141
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public final status(Landroid/os/ShellCommand;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    move-result-object p1

    .line 7
    const-string v1, "  "

    .line 9
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 14
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    .line 17
    move-result-object p1

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "Current Version: "

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/text/FontConfig;->getConfigVersion()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/text/FontConfig;->getLastModifiedTimeMillis()J

    .line 42
    move-result-wide v1

    .line 43
    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static {v1, v2, v3, p1}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    .line 49
    move-result-object p1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "Last Modified Date: "

    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 59
    invoke-virtual {p1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 75
    iget-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    .line 77
    monitor-enter p1

    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    .line 80
    if-nez p0, :cond_0

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 85
    move-result-object p0

    .line 86
    monitor-exit p1

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    .line 93
    move-result-object p0

    .line 94
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "Number of updated font files: "

    .line 99
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 105
    move-result p0

    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 116
    return-void

    .line 117
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw p0
.end method

.method public final update(Landroid/os/ShellCommand;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "r"

    .line 4
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const/16 v2, -0x2713

    .line 10
    if-eqz v1, :cond_7

    .line 12
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_6

    .line 18
    :try_start_0
    invoke-virtual {p1, v1, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 21
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    invoke-virtual {p1, v3, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 25
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    if-eqz v1, :cond_3

    .line 28
    if-eqz v0, :cond_2

    .line 30
    const/16 v2, -0x2714

    .line 32
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    .line 34
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    .line 44
    move-result v4

    .line 45
    const/16 v5, 0x2000

    .line 47
    if-gt v4, v5, :cond_1

    .line 49
    new-array v5, v4, [B

    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-virtual {v3, v5, v6, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 55
    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 56
    if-ne v6, v4, :cond_0

    .line 58
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    :try_start_5
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 63
    new-instance v2, Landroid/graphics/fonts/FontUpdateRequest;

    .line 65
    invoke-direct {v2, v1, v5}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Landroid/os/ParcelFileDescriptor;[B)V

    .line 68
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 71
    move-result-object v2

    .line 72
    const/4 v3, -0x1

    .line 73
    invoke-virtual {p0, v3, v2}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    :try_start_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 79
    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 82
    goto :goto_8

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto :goto_7

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_5

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    goto :goto_3

    .line 89
    :catch_1
    move-exception p0

    .line 90
    goto :goto_2

    .line 91
    :cond_0
    :try_start_8
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 93
    const-string v4, "Invalid read length"

    .line 95
    invoke-direct {p0, v2, v4}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 98
    throw p0

    .line 99
    :catchall_2
    move-exception p0

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 103
    const-string v4, "Signature file is too large"

    .line 105
    const/16 v5, -0x2715

    .line 107
    invoke-direct {p0, v5, v4}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 110
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 111
    :goto_0
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 114
    goto :goto_1

    .line 115
    :catchall_3
    move-exception v3

    .line 116
    :try_start_a
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 119
    :goto_1
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 120
    :goto_2
    :try_start_b
    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 122
    const-string v4, "Failed to read signature file."

    .line 124
    invoke-direct {v3, v2, v4, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    throw v3

    .line 128
    :cond_2
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 130
    const-string v2, "Failed to open signature file"

    .line 132
    const/16 v3, -0x2712

    .line 134
    invoke-direct {p0, v3, v2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 137
    throw p0

    .line 138
    :cond_3
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 140
    const-string v2, "Failed to open font file"

    .line 142
    const/16 v3, -0x2711

    .line 144
    invoke-direct {p0, v3, v2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 147
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 148
    :goto_3
    if-eqz v0, :cond_4

    .line 150
    :try_start_c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 153
    goto :goto_4

    .line 154
    :catchall_4
    move-exception v0

    .line 155
    :try_start_d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 158
    :cond_4
    :goto_4
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 159
    :goto_5
    if-eqz v1, :cond_5

    .line 161
    :try_start_e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 164
    goto :goto_6

    .line 165
    :catchall_5
    move-exception v0

    .line 166
    :try_start_f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 169
    :cond_5
    :goto_6
    throw p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 170
    :goto_7
    const-string v0, "FontManagerShellCommand"

    .line 172
    const-string v1, "Error while closing files"

    .line 174
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :goto_8
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 180
    move-result-object p0

    .line 181
    const-string p1, "Success"

    .line 183
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    return-void

    .line 187
    :cond_6
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 189
    const-string p1, "Signature file argument is required."

    .line 191
    invoke-direct {p0, v2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 194
    throw p0

    .line 195
    :cond_7
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 197
    const-string p1, "Font file path argument is required."

    .line 199
    invoke-direct {p0, v2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 202
    throw p0
.end method

.method public final updateFamily(Landroid/os/ShellCommand;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    const-string/jumbo v1, "r"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 13
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    .line 16
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 23
    invoke-static {v1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->parseFontFamilyUpdateXml(Ljava/io/InputStream;)Ljava/util/List;

    .line 26
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 32
    const/4 v0, -0x1

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V

    .line 36
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 39
    move-result-object p0

    .line 40
    const-string p1, "Success"

    .line 42
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    goto :goto_0

    .line 55
    :catchall_1
    move-exception p1

    .line 56
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 59
    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 60
    :goto_1
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 62
    const/16 v0, -0x2716

    .line 64
    const-string v1, "Failed to open XML file."

    .line 66
    invoke-direct {p1, v0, v1, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    throw p1

    .line 70
    :cond_1
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 72
    const/16 p1, -0x2713

    .line 74
    const-string v0, "XML file path argument is required."

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 79
    throw p0
.end method
