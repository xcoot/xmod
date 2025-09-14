.class public final Lcom/android/server/appop/LegacyAppOpStateParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static readOp(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Landroid/util/SparseArray;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "n"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string/jumbo v3, "m"

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eq p0, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/util/ArrayMap;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/util/SparseIntArray;

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    new-instance p1, Landroid/util/SparseIntArray;

    .line 47
    .line 48
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p1, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public static readPackage(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "n"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eq v4, v5, :cond_8

    .line 19
    .line 20
    const/4 v6, 0x3

    .line 21
    if-ne v4, v6, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-le v7, v3, :cond_8

    .line 28
    .line 29
    :cond_1
    if-eq v4, v6, :cond_0

    .line 30
    .line 31
    const/4 v7, 0x4

    .line 32
    if-ne v4, v7, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string/jumbo v8, "uid"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-string v8, "LegacyAppOpStateParser"

    .line 47
    .line 48
    const-string v9, "Unknown element under <pkg>: "

    .line 49
    .line 50
    if-eqz v4, :cond_7

    .line 51
    .line 52
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    :cond_3
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    if-eq v11, v5, :cond_0

    .line 69
    .line 70
    if-ne v11, v6, :cond_4

    .line 71
    .line 72
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    if-le v12, v10, :cond_0

    .line 77
    .line 78
    :cond_4
    if-eq v11, v6, :cond_3

    .line 79
    .line 80
    if-ne v11, v7, :cond_5

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    const-string/jumbo v12, "op"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    if-eqz v11, :cond_6

    .line 95
    .line 96
    invoke-static {p0, v4, v2, p1}, Lcom/android/server/appop/LegacyAppOpStateParser;->readOp(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_8
    return-void
.end method

.method public static readState(Landroid/util/AtomicFile;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .locals 9

    .line 1
    const-string v0, "LegacyAppOpStateParser"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :goto_0
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x2

    .line 17
    if-eq v3, v5, :cond_0

    .line 18
    .line 19
    if-eq v3, v4, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-ne v3, v5, :cond_9

    .line 23
    .line 24
    const-string/jumbo v3, "v"

    .line 25
    .line 26
    .line 27
    const/4 v5, -0x1

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-interface {v2, v6, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    :cond_1
    :goto_1
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eq v6, v4, :cond_7

    .line 42
    .line 43
    const/4 v7, 0x3

    .line 44
    if-ne v6, v7, :cond_2

    .line 45
    .line 46
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-le v8, v5, :cond_7

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_4

    .line 55
    :cond_2
    :goto_2
    if-eq v6, v7, :cond_1

    .line 56
    .line 57
    const/4 v7, 0x4

    .line 58
    if-ne v6, v7, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string/jumbo v7, "pkg"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_4

    .line 73
    .line 74
    invoke-static {v2, p2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readPackage(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const-string/jumbo v7, "uid"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_5

    .line 86
    .line 87
    invoke-static {v2, p1}, Lcom/android/server/appop/LegacyAppOpStateParser;->readUidOps(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    const-string/jumbo v7, "user"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_6

    .line 99
    .line 100
    invoke-static {v2, p2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readUser(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v7, "Unknown element under <app-ops>: "

    .line 110
    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    if-eqz v1, :cond_8

    .line 133
    .line 134
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :catch_0
    move-exception p0

    .line 139
    goto :goto_6

    .line 140
    :catch_1
    move-exception p0

    .line 141
    goto :goto_7

    .line 142
    :cond_8
    :goto_3
    return v3

    .line 143
    :cond_9
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    const-string/jumbo p2, "no start tag found"

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    :goto_4
    if-eqz v1, :cond_a

    .line 153
    .line 154
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :catchall_1
    move-exception p2

    .line 159
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    :cond_a
    :goto_5
    throw p1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 163
    :goto_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 164
    .line 165
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :goto_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 170
    .line 171
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string p2, "No existing app ops "

    .line 178
    .line 179
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string p0, "; starting empty"

    .line 190
    .line 191
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    const/4 p0, -0x2

    .line 202
    return p0
.end method

.method public static readUidOps(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "n"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Landroid/util/SparseIntArray;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    new-instance v3, Landroid/util/SparseIntArray;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eq v2, v4, :cond_5

    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    if-ne v2, v4, :cond_2

    .line 38
    .line 39
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-le v5, p1, :cond_5

    .line 44
    .line 45
    :cond_2
    if-eq v2, v4, :cond_1

    .line 46
    .line 47
    const/4 v4, 0x4

    .line 48
    if-ne v2, v4, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string/jumbo v4, "op"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const-string/jumbo v4, "m"

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eq v4, v5, :cond_1

    .line 80
    .line 81
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v4, "Unknown element under <uid>: "

    .line 88
    .line 89
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v4, "LegacyAppOpStateParser"

    .line 104
    .line 105
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    return-void
.end method

.method public static readUser(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "n"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eq v4, v5, :cond_8

    .line 19
    .line 20
    const/4 v6, 0x3

    .line 21
    if-ne v4, v6, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-le v7, v3, :cond_8

    .line 28
    .line 29
    :cond_1
    if-eq v4, v6, :cond_0

    .line 30
    .line 31
    const/4 v7, 0x4

    .line 32
    if-ne v4, v7, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string/jumbo v8, "pkg"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-string v8, "LegacyAppOpStateParser"

    .line 47
    .line 48
    if-eqz v4, :cond_7

    .line 49
    .line 50
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    :cond_3
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-eq v10, v5, :cond_0

    .line 63
    .line 64
    if-ne v10, v6, :cond_4

    .line 65
    .line 66
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-le v11, v9, :cond_0

    .line 71
    .line 72
    :cond_4
    if-eq v10, v6, :cond_3

    .line 73
    .line 74
    if-ne v10, v7, :cond_5

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    const-string/jumbo v11, "op"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-eqz v10, :cond_6

    .line 89
    .line 90
    invoke-static {p0, v2, v4, p1}, Lcom/android/server/appop/LegacyAppOpStateParser;->readOp(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v11, "Unknown element under <pkg>: "

    .line 97
    .line 98
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v5, "Unknown element under <user>: "

    .line 122
    .line 123
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_8
    return-void
.end method
