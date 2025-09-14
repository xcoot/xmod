.class public abstract Lcom/android/server/display/exynos/ExynosDisplayUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static existFile(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 7
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 13
    move-result v2

    .line 14
    const-string v3, "ExynosDisplayUtils"

    .line 16
    if-nez v2, :cond_1

    .line 18
    const-string v1, " File not found"

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return v0

    .line 28
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 34
    const-string v1, " is not File"

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return v0

    .line 44
    :cond_2
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method public static getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p0, :cond_0

    .line 7
    if-eqz p1, :cond_0

    .line 9
    const-string v0, ".xml"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "/"

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 25
    move-result v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    if-eqz v0, :cond_0

    .line 34
    if-eqz p1, :cond_0

    .line 36
    const-string v1, "_"

    .line 38
    invoke-static {v0, v1, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 48
    return-object p1

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 55
    return-object p0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    const/16 v0, 0x400

    .line 11
    new-array v2, v0, [B

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v4, v0, :cond_1

    .line 17
    aput-byte v3, v2, v4

    .line 19
    add-int/lit8 v4, v4, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v0, "File Close error"

    .line 24
    const-string v4, "ExynosDisplayUtils"

    .line 26
    if-eqz p0, :cond_2

    .line 28
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 30
    new-instance v6, Ljava/io/File;

    .line 32
    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto/16 :goto_5

    .line 42
    :catch_0
    move-exception p0

    .line 43
    move-object v2, v1

    .line 44
    goto :goto_4

    .line 45
    :cond_2
    move-object v5, v1

    .line 46
    :goto_1
    if-eqz v5, :cond_5

    .line 48
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 51
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    if-lez p0, :cond_3

    .line 54
    :try_start_2
    new-instance v6, Ljava/lang/String;

    .line 56
    add-int/lit8 v7, p0, -0x1

    .line 58
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 60
    invoke-direct {v6, v2, v3, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 63
    move-object v1, v6

    .line 64
    goto :goto_3

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    move-object v1, v5

    .line 67
    goto :goto_5

    .line 68
    :catch_1
    move-exception v2

    .line 69
    move v3, p0

    .line 70
    move-object p0, v2

    .line 71
    :goto_2
    move-object v2, v1

    .line 72
    move-object v1, v5

    .line 73
    goto :goto_4

    .line 74
    :cond_3
    :goto_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    goto :goto_7

    .line 78
    :catch_2
    move-exception p0

    .line 79
    goto :goto_2

    .line 80
    :goto_4
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string v6, "Exception : "

    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const-string v6, " , in : "

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string v6, " , value : "

    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v6, " , length : "

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    if-eqz v1, :cond_7

    .line 129
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 132
    goto :goto_9

    .line 133
    :catch_3
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    goto :goto_9

    .line 137
    :goto_5
    if-eqz v1, :cond_4

    .line 139
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 142
    goto :goto_6

    .line 143
    :catch_4
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_4
    :goto_6
    throw p0

    .line 147
    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    .line 149
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 152
    goto :goto_8

    .line 153
    :catch_5
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_6
    :goto_8
    move-object v2, v1

    .line 157
    :cond_7
    :goto_9
    return-object v2
.end method

.method public static matrixMultiplication([[F[[F)[[F
    .locals 12

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    aget-object v2, p0, v1

    .line 5
    array-length v2, v2

    .line 6
    aget-object v3, p1, v1

    .line 8
    array-length v3, v3

    .line 9
    const/4 v4, 0x2

    .line 10
    new-array v4, v4, [I

    .line 12
    const/4 v5, 0x1

    .line 13
    aput v3, v4, v5

    .line 15
    aput v0, v4, v1

    .line 17
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 19
    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    check-cast v4, [[F

    .line 25
    move v5, v1

    .line 26
    :goto_0
    if-ge v5, v0, :cond_2

    .line 28
    move v6, v1

    .line 29
    :goto_1
    if-ge v6, v3, :cond_1

    .line 31
    move v7, v1

    .line 32
    :goto_2
    if-ge v7, v2, :cond_0

    .line 34
    aget-object v8, v4, v5

    .line 36
    aget v9, v8, v6

    .line 38
    aget-object v10, p0, v5

    .line 40
    aget v10, v10, v7

    .line 42
    aget-object v11, p1, v7

    .line 44
    aget v11, v11, v6

    .line 46
    mul-float/2addr v10, v11

    .line 47
    add-float/2addr v10, v9

    .line 48
    aput v10, v8, v6

    .line 50
    add-int/lit8 v7, v7, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-object v4
.end method

.method public static parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 3
    move-object/from16 v1, p3

    .line 5
    const-string/jumbo v2, "tune"

    .line 8
    const-string v3, "File Close error"

    .line 10
    new-instance v4, Ljava/io/File;

    .line 12
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 18
    move-result v4

    .line 19
    const-string v5, "ExynosDisplayUtils"

    .line 21
    const/4 v6, 0x0

    .line 22
    if-nez v4, :cond_0

    .line 24
    const-string v1, " File not found"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-object v6

    .line 34
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 36
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 50
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 53
    move-result v7

    .line 54
    new-instance v8, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v9, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    const/4 v10, 0x0

    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    :goto_0
    const/4 v13, 0x1

    .line 68
    if-eq v7, v13, :cond_d

    .line 70
    if-nez v7, :cond_1

    .line 72
    goto/16 :goto_4

    .line 74
    :cond_1
    if-ne v7, v13, :cond_2

    .line 76
    goto/16 :goto_4

    .line 78
    :cond_2
    const-string v14, "atc"

    .line 80
    const-string/jumbo v15, "mode"

    .line 83
    const/4 v9, 0x2

    .line 84
    if-ne v7, v9, :cond_8

    .line 86
    :try_start_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v15

    .line 94
    if-eqz v15, :cond_3

    .line 96
    const-string/jumbo v15, "name"

    .line 99
    invoke-interface {v0, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v15

    .line 103
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v15

    .line 107
    if-eqz v15, :cond_3

    .line 109
    move v10, v13

    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    move-object v6, v4

    .line 113
    goto/16 :goto_e

    .line 115
    :catch_0
    move-exception v0

    .line 116
    goto/16 :goto_9

    .line 118
    :catch_1
    move-exception v0

    .line 119
    goto/16 :goto_c

    .line 121
    :cond_3
    :goto_1
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v13

    .line 125
    if-eqz v13, :cond_4

    .line 127
    const-string v13, "al"

    .line 129
    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v13

    .line 133
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 136
    move-result v13

    .line 137
    move/from16 v14, p0

    .line 139
    if-ne v13, v14, :cond_5

    .line 141
    move v11, v9

    .line 142
    goto :goto_2

    .line 143
    :cond_4
    move/from16 v14, p0

    .line 145
    :cond_5
    :goto_2
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_7

    .line 151
    const-string v7, "att0"

    .line 153
    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v7

    .line 157
    if-nez v7, :cond_6

    .line 159
    move/from16 v9, p1

    .line 161
    :goto_3
    const/16 v12, 0xb

    .line 163
    goto :goto_4

    .line 164
    :cond_6
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 167
    move-result v7

    .line 168
    move/from16 v9, p1

    .line 170
    if-ne v7, v9, :cond_c

    .line 172
    goto :goto_3

    .line 173
    :cond_7
    move/from16 v9, p1

    .line 175
    goto :goto_4

    .line 176
    :cond_8
    const/4 v6, 0x3

    .line 177
    if-ne v7, v6, :cond_b

    .line 179
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result v7

    .line 187
    if-eqz v7, :cond_9

    .line 189
    const/4 v10, 0x0

    .line 190
    :cond_9
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_a

    .line 196
    const/4 v11, 0x0

    .line 197
    :cond_a
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_c

    .line 203
    const/4 v12, 0x0

    .line 204
    goto :goto_4

    .line 205
    :cond_b
    const/4 v6, 0x4

    .line 206
    if-ne v7, v6, :cond_c

    .line 208
    if-ne v10, v13, :cond_c

    .line 210
    if-ne v11, v9, :cond_c

    .line 212
    const/16 v6, 0xb

    .line 214
    if-ne v12, v6, :cond_c

    .line 216
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_c
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 226
    move-result v7

    .line 227
    const/4 v6, 0x0

    .line 228
    goto/16 :goto_0

    .line 230
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 233
    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    if-nez v0, :cond_e

    .line 236
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 239
    :goto_5
    const/4 v1, 0x0

    .line 240
    goto :goto_6

    .line 241
    :catch_2
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    goto :goto_5

    .line 245
    :goto_6
    return-object v1

    .line 246
    :cond_e
    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 249
    move-result v0

    .line 250
    new-array v0, v0, [Ljava/lang/String;

    .line 252
    const/4 v9, 0x0

    .line 253
    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 256
    move-result v1

    .line 257
    if-ge v9, v1, :cond_f

    .line 259
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Ljava/lang/String;

    .line 265
    aput-object v1, v0, v9

    .line 267
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 270
    move-result-object v1

    .line 271
    aput-object v1, v0, v9
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    add-int/lit8 v9, v9, 0x1

    .line 275
    goto :goto_7

    .line 276
    :cond_f
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 279
    goto :goto_8

    .line 280
    :catch_3
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_8
    return-object v0

    .line 284
    :catchall_1
    move-exception v0

    .line 285
    const/4 v6, 0x0

    .line 286
    goto :goto_e

    .line 287
    :catch_4
    move-exception v0

    .line 288
    const/4 v4, 0x0

    .line 289
    goto :goto_9

    .line 290
    :catch_5
    move-exception v0

    .line 291
    const/4 v4, 0x0

    .line 292
    goto :goto_c

    .line 293
    :goto_9
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 296
    if-eqz v4, :cond_10

    .line 298
    :goto_a
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 301
    :cond_10
    :goto_b
    const/4 v1, 0x0

    .line 302
    goto :goto_d

    .line 303
    :catch_6
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    goto :goto_b

    .line 307
    :goto_c
    :try_start_8
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 310
    if-eqz v4, :cond_10

    .line 312
    goto :goto_a

    .line 313
    :goto_d
    return-object v1

    .line 314
    :goto_e
    if-eqz v6, :cond_11

    .line 316
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 319
    goto :goto_f

    .line 320
    :catch_7
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_11
    :goto_f
    throw v0
.end method

.method public static parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "File Close error"

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 11
    move-result v1

    .line 12
    const-string v2, "ExynosDisplayUtils"

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p0, " File not found"

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-object v3

    .line 38
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 40
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 54
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 57
    move-result v4

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    const/4 v6, 0x0

    .line 64
    move v7, v6

    .line 65
    :goto_0
    const/4 v8, 0x1

    .line 66
    if-eq v4, v8, :cond_8

    .line 68
    if-nez v4, :cond_1

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    if-ne v4, v8, :cond_2

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const/4 v9, 0x2

    .line 75
    const-string/jumbo v10, "mode"

    .line 78
    if-ne v4, v9, :cond_5

    .line 80
    :try_start_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_3

    .line 90
    const-string/jumbo v9, "name"

    .line 93
    invoke-interface {p0, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_3

    .line 103
    move v7, v8

    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    move-object v3, v1

    .line 107
    goto/16 :goto_a

    .line 109
    :catch_0
    move-exception p0

    .line 110
    goto/16 :goto_6

    .line 112
    :catch_1
    move-exception p0

    .line 113
    goto/16 :goto_8

    .line 115
    :cond_3
    :goto_1
    if-ne v7, v8, :cond_7

    .line 117
    if-eqz p2, :cond_4

    .line 119
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_7

    .line 125
    :cond_4
    invoke-interface {p0, v3, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    const/4 v8, 0x3

    .line 134
    if-ne v4, v8, :cond_7

    .line 136
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_6

    .line 146
    move v7, v6

    .line 147
    :cond_6
    if-eqz p2, :cond_7

    .line 149
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v4

    .line 153
    :cond_7
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 156
    move-result v4

    .line 157
    goto :goto_0

    .line 158
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 161
    move-result p0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    if-nez p0, :cond_9

    .line 164
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 167
    goto :goto_3

    .line 168
    :catch_2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_3
    return-object v3

    .line 172
    :cond_9
    :try_start_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 175
    move-result p0

    .line 176
    new-array p0, p0, [Ljava/lang/String;

    .line 178
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 181
    move-result p1

    .line 182
    if-ge v6, p1, :cond_a

    .line 184
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Ljava/lang/String;

    .line 190
    aput-object p1, p0, v6

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 195
    move-result-object p1

    .line 196
    aput-object p1, p0, v6
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    add-int/lit8 v6, v6, 0x1

    .line 200
    goto :goto_4

    .line 201
    :cond_a
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 204
    goto :goto_5

    .line 205
    :catch_3
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_5
    return-object p0

    .line 209
    :catchall_1
    move-exception p0

    .line 210
    goto :goto_a

    .line 211
    :catch_4
    move-exception p0

    .line 212
    move-object v1, v3

    .line 213
    goto :goto_6

    .line 214
    :catch_5
    move-exception p0

    .line 215
    move-object v1, v3

    .line 216
    goto :goto_8

    .line 217
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 220
    if-eqz v1, :cond_b

    .line 222
    :goto_7
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 225
    goto :goto_9

    .line 226
    :catch_6
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    goto :goto_9

    .line 230
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 233
    if-eqz v1, :cond_b

    .line 235
    goto :goto_7

    .line 236
    :cond_b
    :goto_9
    return-object v3

    .line 237
    :goto_a
    if-eqz v3, :cond_c

    .line 239
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 242
    goto :goto_b

    .line 243
    :catch_7
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_c
    :goto_b
    throw p0
.end method

.method public static parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v2, p4

    .line 7
    const-string/jumbo v3, "degamma"

    .line 10
    const-string/jumbo v4, "gamma"

    .line 13
    const-string v5, "File Close error"

    .line 15
    new-instance v6, Ljava/io/File;

    .line 17
    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 23
    move-result v6

    .line 24
    const-string v7, "ExynosDisplayUtils"

    .line 26
    const/4 v8, 0x0

    .line 27
    if-nez v6, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " File not found"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-object v8

    .line 50
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .line 52
    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 66
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 69
    move-result v9

    .line 70
    new-instance v10, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v11, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    const/4 v12, 0x0

    .line 81
    const/4 v13, 0x0

    .line 82
    :goto_0
    const/4 v14, 0x1

    .line 83
    if-eq v9, v14, :cond_12

    .line 85
    if-nez v9, :cond_1

    .line 87
    goto/16 :goto_5

    .line 89
    :cond_1
    if-ne v9, v14, :cond_2

    .line 91
    goto/16 :goto_5

    .line 93
    :cond_2
    const-string/jumbo v15, "mode"

    .line 96
    const-string/jumbo v11, "hsc48_lcg"

    .line 99
    const-string/jumbo v14, "cgc17_enc"

    .line 102
    const/4 v8, 0x2

    .line 103
    if-ne v9, v8, :cond_c

    .line 105
    :try_start_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 108
    move-result-object v9

    .line 109
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v15

    .line 113
    if-eqz v15, :cond_3

    .line 115
    const-string/jumbo v15, "name"

    .line 118
    const/4 v8, 0x0

    .line 119
    invoke-interface {v1, v8, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v15

    .line 123
    move-object/from16 v8, p3

    .line 125
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v15

    .line 129
    if-eqz v15, :cond_4

    .line 131
    const/4 v12, 0x1

    .line 132
    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    move-object v8, v6

    .line 135
    goto/16 :goto_f

    .line 137
    :catch_0
    move-exception v0

    .line 138
    goto/16 :goto_a

    .line 140
    :catch_1
    move-exception v0

    .line 141
    goto/16 :goto_d

    .line 143
    :cond_3
    move-object/from16 v8, p3

    .line 145
    :cond_4
    :goto_1
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v15
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    const-string v8, "att0"

    .line 151
    if-eqz v15, :cond_6

    .line 153
    :try_start_3
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v9

    .line 157
    if-eqz v9, :cond_5

    .line 159
    const/4 v9, 0x0

    .line 160
    invoke-interface {v1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    move-result-object v8

    .line 164
    const-string v11, "att1"

    .line 166
    invoke-interface {v1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v11

    .line 170
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    move-result v8

    .line 174
    if-ne v8, v0, :cond_5

    .line 176
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 179
    move-result v8

    .line 180
    move/from16 v14, p1

    .line 182
    if-ne v8, v14, :cond_11

    .line 184
    :goto_2
    const/4 v13, 0x2

    .line 185
    goto/16 :goto_5

    .line 187
    :cond_5
    move/from16 v14, p1

    .line 189
    goto/16 :goto_5

    .line 191
    :cond_6
    move/from16 v14, p1

    .line 193
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v15

    .line 197
    if-eqz v15, :cond_7

    .line 199
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v9

    .line 203
    if-eqz v9, :cond_11

    .line 205
    const/4 v9, 0x0

    .line 206
    invoke-interface {v1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    move-result-object v8

    .line 210
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 213
    move-result v8

    .line 214
    if-ne v8, v0, :cond_11

    .line 216
    :goto_3
    goto :goto_2

    .line 217
    :cond_7
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    move-result v11

    .line 221
    if-eqz v11, :cond_9

    .line 223
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    move-result v9

    .line 227
    if-eqz v9, :cond_11

    .line 229
    const/4 v9, 0x0

    .line 230
    invoke-interface {v1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    move-result-object v8

    .line 234
    if-nez v8, :cond_8

    .line 236
    goto :goto_3

    .line 237
    :cond_8
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 240
    move-result v8

    .line 241
    if-ne v8, v0, :cond_11

    .line 243
    goto :goto_2

    .line 244
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v11

    .line 248
    if-eqz v11, :cond_b

    .line 250
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    move-result v9

    .line 254
    if-eqz v9, :cond_11

    .line 256
    const/4 v9, 0x0

    .line 257
    invoke-interface {v1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    move-result-object v8

    .line 261
    if-nez v8, :cond_a

    .line 263
    goto :goto_3

    .line 264
    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 267
    move-result v8

    .line 268
    if-ne v8, v0, :cond_11

    .line 270
    goto :goto_2

    .line 271
    :cond_b
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    move-result v8

    .line 275
    if-eqz v8, :cond_11

    .line 277
    goto :goto_3

    .line 278
    :cond_c
    const/4 v8, 0x3

    .line 279
    if-ne v9, v8, :cond_10

    .line 281
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 284
    move-result-object v8

    .line 285
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    move-result v9

    .line 289
    if-eqz v9, :cond_d

    .line 291
    const/4 v12, 0x0

    .line 292
    :cond_d
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    move-result v9

    .line 296
    if-eqz v9, :cond_e

    .line 298
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    move-result v8

    .line 302
    if-eqz v8, :cond_11

    .line 304
    :goto_4
    const/4 v13, 0x0

    .line 305
    goto :goto_5

    .line 306
    :cond_e
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    move-result v9

    .line 310
    if-eqz v9, :cond_f

    .line 312
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    move-result v8

    .line 316
    if-eqz v8, :cond_11

    .line 318
    goto :goto_4

    .line 319
    :cond_f
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    move-result v8

    .line 323
    if-eqz v8, :cond_11

    .line 325
    goto :goto_4

    .line 326
    :cond_10
    const/4 v8, 0x4

    .line 327
    if-ne v9, v8, :cond_11

    .line 329
    const/4 v8, 0x1

    .line 330
    if-ne v12, v8, :cond_11

    .line 332
    const/4 v8, 0x2

    .line 333
    if-ne v13, v8, :cond_11

    .line 335
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 338
    move-result-object v8

    .line 339
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_11
    :goto_5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 345
    move-result v9

    .line 346
    const/4 v8, 0x0

    .line 347
    goto/16 :goto_0

    .line 349
    :cond_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 352
    move-result v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 353
    if-nez v0, :cond_13

    .line 355
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 358
    :goto_6
    const/4 v1, 0x0

    .line 359
    goto :goto_7

    .line 360
    :catch_2
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    goto :goto_6

    .line 364
    :goto_7
    return-object v1

    .line 365
    :cond_13
    :try_start_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 368
    move-result v0

    .line 369
    new-array v0, v0, [Ljava/lang/String;

    .line 371
    const/4 v11, 0x0

    .line 372
    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 375
    move-result v1

    .line 376
    if-ge v11, v1, :cond_14

    .line 378
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 381
    move-result-object v1

    .line 382
    check-cast v1, Ljava/lang/String;

    .line 384
    aput-object v1, v0, v11

    .line 386
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 389
    move-result-object v1

    .line 390
    aput-object v1, v0, v11
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 392
    add-int/lit8 v11, v11, 0x1

    .line 394
    goto :goto_8

    .line 395
    :cond_14
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 398
    goto :goto_9

    .line 399
    :catch_3
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_9
    return-object v0

    .line 403
    :catchall_1
    move-exception v0

    .line 404
    const/4 v8, 0x0

    .line 405
    goto :goto_f

    .line 406
    :catch_4
    move-exception v0

    .line 407
    const/4 v6, 0x0

    .line 408
    goto :goto_a

    .line 409
    :catch_5
    move-exception v0

    .line 410
    const/4 v6, 0x0

    .line 411
    goto :goto_d

    .line 412
    :goto_a
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 415
    if-eqz v6, :cond_15

    .line 417
    :goto_b
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 420
    :cond_15
    :goto_c
    const/4 v1, 0x0

    .line 421
    goto :goto_e

    .line 422
    :catch_6
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    goto :goto_c

    .line 426
    :goto_d
    :try_start_9
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 429
    if-eqz v6, :cond_15

    .line 431
    goto :goto_b

    .line 432
    :goto_e
    return-object v1

    .line 433
    :goto_f
    if-eqz v8, :cond_16

    .line 435
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 438
    goto :goto_10

    .line 439
    :catch_7
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_16
    :goto_10
    throw v0
.end method

.method public static parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    const-string v2, "File Close error"

    .line 7
    new-instance v3, Ljava/io/File;

    .line 9
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 15
    move-result v3

    .line 16
    const-string v4, "ExynosDisplayUtils"

    .line 18
    const/4 v5, 0x0

    .line 19
    if-nez v3, :cond_0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, " File not found"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-object v5

    .line 42
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 44
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 58
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 61
    move-result v6

    .line 62
    new-instance v7, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x0

    .line 69
    :goto_0
    const/4 v11, 0x1

    .line 70
    if-eq v6, v11, :cond_14

    .line 72
    if-nez v6, :cond_1

    .line 74
    goto/16 :goto_3

    .line 76
    :cond_1
    if-ne v6, v11, :cond_2

    .line 78
    goto/16 :goto_3

    .line 80
    :cond_2
    const/4 v12, 0x2

    .line 81
    const-string/jumbo v15, "hsc"

    .line 84
    const-string/jumbo v13, "gamma"

    .line 87
    const-string/jumbo v8, "cgc"

    .line 90
    const-string/jumbo v14, "mode"

    .line 93
    const-string/jumbo v11, "dqe"

    .line 96
    if-ne v6, v12, :cond_8

    .line 98
    :try_start_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v12

    .line 106
    if-eqz v12, :cond_3

    .line 108
    const-string/jumbo v12, "name"

    .line 111
    invoke-interface {v0, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v12

    .line 115
    move-object/from16 v14, p1

    .line 117
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v12

    .line 121
    if-eqz v12, :cond_4

    .line 123
    const/4 v9, 0x1

    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    move-object v5, v3

    .line 127
    goto/16 :goto_a

    .line 129
    :catch_0
    move-exception v0

    .line 130
    goto/16 :goto_6

    .line 132
    :catch_1
    move-exception v0

    .line 133
    goto/16 :goto_8

    .line 135
    :cond_3
    move-object/from16 v14, p1

    .line 137
    :cond_4
    :goto_1
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v11

    .line 141
    if-eqz v11, :cond_7

    .line 143
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_5

    .line 149
    const/16 v10, 0xc

    .line 151
    :cond_5
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_6

    .line 157
    const/16 v10, 0xd

    .line 159
    :cond_6
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_13

    .line 165
    const/16 v10, 0xe

    .line 167
    goto/16 :goto_3

    .line 169
    :cond_7
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_13

    .line 175
    const/16 v10, 0xb

    .line 177
    goto/16 :goto_3

    .line 179
    :cond_8
    const/4 v12, 0x3

    .line 180
    if-ne v6, v12, :cond_d

    .line 182
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 185
    move-result-object v6

    .line 186
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v12

    .line 190
    if-eqz v12, :cond_9

    .line 192
    const/4 v9, 0x0

    .line 193
    :cond_9
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v11

    .line 197
    if-eqz v11, :cond_c

    .line 199
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v8

    .line 203
    if-eqz v8, :cond_a

    .line 205
    const/4 v10, 0x0

    .line 206
    :cond_a
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    move-result v8

    .line 210
    if-eqz v8, :cond_b

    .line 212
    const/4 v10, 0x0

    .line 213
    :cond_b
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    move-result v6

    .line 217
    if-eqz v6, :cond_13

    .line 219
    :goto_2
    const/4 v10, 0x0

    .line 220
    goto :goto_3

    .line 221
    :cond_c
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_13

    .line 227
    goto :goto_2

    .line 228
    :cond_d
    const/4 v8, 0x4

    .line 229
    if-ne v6, v8, :cond_13

    .line 231
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_12

    .line 237
    const/4 v6, 0x1

    .line 238
    if-ne v9, v6, :cond_f

    .line 240
    const/16 v6, 0xc

    .line 242
    if-ne v10, v6, :cond_e

    .line 244
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 247
    move-result-object v6

    .line 248
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_e
    const/4 v6, 0x1

    .line 252
    :cond_f
    if-ne v9, v6, :cond_11

    .line 254
    const/16 v6, 0xd

    .line 256
    if-ne v10, v6, :cond_10

    .line 258
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_10
    const/4 v6, 0x1

    .line 266
    :cond_11
    if-ne v9, v6, :cond_13

    .line 268
    const/16 v6, 0xe

    .line 270
    if-ne v10, v6, :cond_13

    .line 272
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    goto :goto_3

    .line 280
    :cond_12
    const/4 v6, 0x1

    .line 281
    if-ne v9, v6, :cond_13

    .line 283
    const/16 v6, 0xb

    .line 285
    if-ne v10, v6, :cond_13

    .line 287
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 290
    move-result-object v6

    .line 291
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_13
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 297
    move-result v6

    .line 298
    goto/16 :goto_0

    .line 300
    :cond_14
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 303
    move-result v0

    .line 304
    new-array v0, v0, [Ljava/lang/String;

    .line 306
    const/4 v8, 0x0

    .line 307
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 310
    move-result v1

    .line 311
    if-ge v8, v1, :cond_15

    .line 313
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Ljava/lang/String;

    .line 319
    aput-object v1, v0, v8

    .line 321
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 324
    move-result-object v1

    .line 325
    aput-object v1, v0, v8
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    add-int/lit8 v8, v8, 0x1

    .line 329
    goto :goto_4

    .line 330
    :cond_15
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 333
    goto :goto_5

    .line 334
    :catch_2
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_5
    return-object v0

    .line 338
    :catchall_1
    move-exception v0

    .line 339
    goto :goto_a

    .line 340
    :catch_3
    move-exception v0

    .line 341
    move-object v3, v5

    .line 342
    goto :goto_6

    .line 343
    :catch_4
    move-exception v0

    .line 344
    move-object v3, v5

    .line 345
    goto :goto_8

    .line 346
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 349
    if-eqz v3, :cond_16

    .line 351
    :goto_7
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 354
    goto :goto_9

    .line 355
    :catch_5
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    goto :goto_9

    .line 359
    :goto_8
    :try_start_6
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 362
    if-eqz v3, :cond_16

    .line 364
    goto :goto_7

    .line 365
    :cond_16
    :goto_9
    return-object v5

    .line 366
    :goto_a
    if-eqz v5, :cond_17

    .line 368
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 371
    goto :goto_b

    .line 372
    :catch_6
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_17
    :goto_b
    throw v0
.end method

.method public static parserXMLALText(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13

    .line 1
    const-string v0, "File Close error"

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 11
    move-result v1

    .line 12
    const-string v2, "ExynosDisplayUtils"

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, " File not found"

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-object v3

    .line 38
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 40
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 57
    move-result v4

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    .line 65
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    const/4 v6, 0x0

    .line 69
    move v7, v6

    .line 70
    move v8, v7

    .line 71
    :goto_0
    const/4 v9, 0x1

    .line 72
    if-eq v4, v9, :cond_8

    .line 74
    if-nez v4, :cond_1

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    if-ne v4, v9, :cond_2

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const-string v10, "atc"

    .line 82
    const/4 v11, 0x2

    .line 83
    const/16 v12, 0xb

    .line 85
    if-ne v4, v11, :cond_4

    .line 87
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_3

    .line 97
    const-string v10, "al"

    .line 99
    invoke-interface {p1, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v10

    .line 103
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    move-result v10

    .line 107
    if-ne v10, p0, :cond_3

    .line 109
    move v7, v9

    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    move-object v3, v1

    .line 113
    goto/16 :goto_a

    .line 115
    :catch_0
    move-exception p0

    .line 116
    goto/16 :goto_6

    .line 118
    :catch_1
    move-exception p0

    .line 119
    goto/16 :goto_8

    .line 121
    :cond_3
    :goto_1
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_7

    .line 127
    move v8, v12

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    const/4 v11, 0x3

    .line 130
    if-ne v4, v11, :cond_6

    .line 132
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v9

    .line 140
    if-eqz v9, :cond_5

    .line 142
    move v7, v6

    .line 143
    :cond_5
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_7

    .line 149
    move v8, v6

    .line 150
    goto :goto_2

    .line 151
    :cond_6
    const/4 v10, 0x4

    .line 152
    if-ne v4, v10, :cond_7

    .line 154
    if-ne v7, v9, :cond_7

    .line 156
    if-ne v8, v12, :cond_7

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_7
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 168
    move-result v4

    .line 169
    goto :goto_0

    .line 170
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 173
    move-result p0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    if-nez p0, :cond_9

    .line 176
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 179
    goto :goto_3

    .line 180
    :catch_2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_3
    return-object v3

    .line 184
    :cond_9
    :try_start_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 187
    move-result p0

    .line 188
    new-array p0, p0, [Ljava/lang/String;

    .line 190
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 193
    move-result p1

    .line 194
    if-ge v6, p1, :cond_a

    .line 196
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Ljava/lang/String;

    .line 202
    aput-object p1, p0, v6

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 208
    aput-object p1, p0, v6
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    add-int/lit8 v6, v6, 0x1

    .line 212
    goto :goto_4

    .line 213
    :cond_a
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 216
    goto :goto_5

    .line 217
    :catch_3
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_5
    return-object p0

    .line 221
    :catchall_1
    move-exception p0

    .line 222
    goto :goto_a

    .line 223
    :catch_4
    move-exception p0

    .line 224
    move-object v1, v3

    .line 225
    goto :goto_6

    .line 226
    :catch_5
    move-exception p0

    .line 227
    move-object v1, v3

    .line 228
    goto :goto_8

    .line 229
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 232
    if-eqz v1, :cond_b

    .line 234
    :goto_7
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 237
    goto :goto_9

    .line 238
    :catch_6
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    goto :goto_9

    .line 242
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 245
    if-eqz v1, :cond_b

    .line 247
    goto :goto_7

    .line 248
    :cond_b
    :goto_9
    return-object v3

    .line 249
    :goto_a
    if-eqz v3, :cond_c

    .line 251
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 254
    goto :goto_b

    .line 255
    :catch_7
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_c
    :goto_b
    throw p0
.end method

.method public static parserXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "File Close error"

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 11
    move-result v1

    .line 12
    const-string v2, "ExynosDisplayUtils"

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p0, " File not found"

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-object v3

    .line 38
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 40
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 54
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 57
    move-result v4

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    :goto_0
    const/4 v6, 0x1

    .line 64
    if-eq v4, v6, :cond_5

    .line 66
    if-nez v4, :cond_1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    if-ne v4, v6, :cond_2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v6, 0x2

    .line 73
    if-ne v4, v6, :cond_3

    .line 75
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 85
    invoke-interface {p0, v3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    move-object v3, v1

    .line 95
    goto/16 :goto_9

    .line 97
    :catch_0
    move-exception p0

    .line 98
    goto :goto_5

    .line 99
    :catch_1
    move-exception p0

    .line 100
    goto :goto_7

    .line 101
    :cond_3
    const/4 v6, 0x3

    .line 102
    if-ne v4, v6, :cond_4

    .line 104
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    :cond_4
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 114
    move-result v4

    .line 115
    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 119
    move-result p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    if-nez p0, :cond_6

    .line 122
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    goto :goto_2

    .line 126
    :catch_2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_2
    return-object v3

    .line 130
    :cond_6
    :try_start_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 133
    move-result p0

    .line 134
    new-array p0, p0, [Ljava/lang/String;

    .line 136
    const/4 p1, 0x0

    .line 137
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 140
    move-result p2

    .line 141
    if-ge p1, p2, :cond_7

    .line 143
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    move-result-object p2

    .line 147
    check-cast p2, Ljava/lang/String;

    .line 149
    aput-object p2, p0, p1

    .line 151
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 154
    move-result-object p2

    .line 155
    aput-object p2, p0, p1
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    add-int/lit8 p1, p1, 0x1

    .line 159
    goto :goto_3

    .line 160
    :cond_7
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 163
    goto :goto_4

    .line 164
    :catch_3
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_4
    return-object p0

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    goto :goto_9

    .line 170
    :catch_4
    move-exception p0

    .line 171
    move-object v1, v3

    .line 172
    goto :goto_5

    .line 173
    :catch_5
    move-exception p0

    .line 174
    move-object v1, v3

    .line 175
    goto :goto_7

    .line 176
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 179
    if-eqz v1, :cond_8

    .line 181
    :goto_6
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 184
    goto :goto_8

    .line 185
    :catch_6
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    goto :goto_8

    .line 189
    :goto_7
    :try_start_7
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 192
    if-eqz v1, :cond_8

    .line 194
    goto :goto_6

    .line 195
    :cond_8
    :goto_8
    return-object v3

    .line 196
    :goto_9
    if-eqz v3, :cond_9

    .line 198
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 201
    goto :goto_a

    .line 202
    :catch_7
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_9
    :goto_a
    throw p0
.end method

.method public static parserXMLNodeText(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "File Close error"

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 11
    move-result v1

    .line 12
    const-string v2, "ExynosDisplayUtils"

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p0, " File not found"

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-object v3

    .line 38
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 40
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 54
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 57
    move-result v4

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    const/4 v6, 0x0

    .line 64
    move v7, v6

    .line 65
    :goto_0
    const/4 v8, 0x1

    .line 66
    if-eq v4, v8, :cond_6

    .line 68
    if-nez v4, :cond_1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    if-ne v4, v8, :cond_2

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 v9, 0x2

    .line 75
    const-string/jumbo v10, "version"

    .line 78
    if-ne v4, v9, :cond_3

    .line 80
    :try_start_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_5

    .line 90
    move v7, v8

    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    move-object v3, v1

    .line 94
    goto/16 :goto_9

    .line 96
    :catch_0
    move-exception p0

    .line 97
    goto :goto_5

    .line 98
    :catch_1
    move-exception p0

    .line 99
    goto/16 :goto_7

    .line 101
    :cond_3
    const/4 v9, 0x3

    .line 102
    if-ne v4, v9, :cond_4

    .line 104
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_5

    .line 114
    move v7, v6

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    const/4 v9, 0x4

    .line 117
    if-ne v4, v9, :cond_5

    .line 119
    if-ne v7, v8, :cond_5

    .line 121
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_5
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 131
    move-result v4

    .line 132
    goto :goto_0

    .line 133
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 136
    move-result p0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    if-nez p0, :cond_7

    .line 139
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 142
    goto :goto_2

    .line 143
    :catch_2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_2
    return-object v3

    .line 147
    :cond_7
    :try_start_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 150
    move-result p0

    .line 151
    new-array p0, p0, [Ljava/lang/String;

    .line 153
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 156
    move-result v4

    .line 157
    if-ge v6, v4, :cond_8

    .line 159
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Ljava/lang/String;

    .line 165
    aput-object v4, p0, v6

    .line 167
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 170
    move-result-object v4

    .line 171
    aput-object v4, p0, v6
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    add-int/lit8 v6, v6, 0x1

    .line 175
    goto :goto_3

    .line 176
    :cond_8
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 179
    goto :goto_4

    .line 180
    :catch_3
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_4
    return-object p0

    .line 184
    :catchall_1
    move-exception p0

    .line 185
    goto :goto_9

    .line 186
    :catch_4
    move-exception p0

    .line 187
    move-object v1, v3

    .line 188
    goto :goto_5

    .line 189
    :catch_5
    move-exception p0

    .line 190
    move-object v1, v3

    .line 191
    goto :goto_7

    .line 192
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 195
    if-eqz v1, :cond_9

    .line 197
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 200
    goto :goto_8

    .line 201
    :catch_6
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    goto :goto_8

    .line 205
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 208
    if-eqz v1, :cond_9

    .line 210
    goto :goto_6

    .line 211
    :cond_9
    :goto_8
    return-object v3

    .line 212
    :goto_9
    if-eqz v3, :cond_a

    .line 214
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 217
    goto :goto_a

    .line 218
    :catch_7
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_a
    :goto_a
    throw p0
.end method

.method public static toMat4([[F)[[F
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x4

    .line 3
    if-gt v0, v1, :cond_4

    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object v2, p0, v0

    .line 8
    array-length v3, v2

    .line 9
    if-le v3, v1, :cond_0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    array-length v3, p0

    .line 13
    if-ne v3, v1, :cond_1

    .line 15
    array-length v2, v2

    .line 16
    if-ne v2, v1, :cond_1

    .line 18
    return-object p0

    .line 19
    :cond_1
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [I

    .line 22
    const/4 v3, 0x1

    .line 23
    aput v1, v2, v3

    .line 25
    aput v1, v2, v0

    .line 27
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 29
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, [[F

    .line 35
    const/4 v2, 0x3

    .line 36
    aget-object v3, v1, v2

    .line 38
    const/high16 v4, 0x3f800000    # 1.0f

    .line 40
    aput v4, v3, v2

    .line 42
    move v2, v0

    .line 43
    :goto_0
    array-length v3, p0

    .line 44
    if-ge v2, v3, :cond_3

    .line 46
    move v3, v0

    .line 47
    :goto_1
    aget-object v4, p0, v2

    .line 49
    array-length v5, v4

    .line 50
    if-ge v3, v5, :cond_2

    .line 52
    aget-object v5, v1, v2

    .line 54
    aget v4, v4, v3

    .line 56
    aput v4, v5, v3

    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    return-object v1

    .line 65
    :cond_4
    :goto_2
    const/4 p0, 0x0

    .line 66
    return-object p0
.end method

.method public static toString([[F)Ljava/lang/String;
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "1,"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->toMat4([[F)[[F

    .line 11
    move-result-object p0

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_1

    .line 17
    aget-object v4, p0, v3

    .line 19
    array-length v5, v4

    .line 20
    move v6, v2

    .line 21
    :goto_1
    if-ge v6, v5, :cond_0

    .line 23
    aget v7, v4, v6

    .line 25
    const/high16 v8, 0x47800000    # 65536.0f

    .line 27
    mul-float/2addr v7, v8

    .line 28
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 31
    move-result v7

    .line 32
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v7, ","

    .line 37
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v6, v6, 0x1

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 51
    move-result p0

    .line 52
    add-int/lit8 p0, p0, -0x1

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object p0

    .line 62
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const-string p0, ""

    .line 67
    return-object p0
.end method
