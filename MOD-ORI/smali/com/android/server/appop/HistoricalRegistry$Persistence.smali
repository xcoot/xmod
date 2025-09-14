.class public final Lcom/android/server/appop/HistoricalRegistry$Persistence;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;


# instance fields
.field public final mBaseSnapshotInterval:J

.field public final mIntervalCompressionMultiplier:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/internal/os/AtomicDirectory;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "appops"

    .line 12
    .line 13
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "history"

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicDirectory;-><init>(Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 7
    .line 8
    return-void
.end method

.method public static clearHistoryDLocked$1()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 13
    .line 14
    array-length v1, p0

    .line 15
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 16
    .line 17
    .line 18
    array-length v1, p0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    aget-object v3, p0, v2

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method

.method public static getLastPersistTimeMillisDLocked()J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 5
    .line 6
    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    if-eqz v5, :cond_5

    .line 15
    .line 16
    array-length v6, v5

    .line 17
    if-lez v6, :cond_5

    .line 18
    .line 19
    array-length v3, v5

    .line 20
    const/4 v6, 0x0

    .line 21
    :goto_0
    if-ge v6, v3, :cond_3

    .line 22
    .line 23
    aget-object v7, v5, v6

    .line 24
    .line 25
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    const-string v9, ".xml"

    .line 30
    .line 31
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    if-nez v9, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    if-nez v2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-ge v8, v9, :cond_2

    .line 54
    .line 55
    :goto_1
    move-object v2, v7

    .line 56
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v2

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    if-nez v2, :cond_4

    .line 62
    .line 63
    return-wide v0

    .line 64
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    return-wide v0

    .line 69
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :catchall_1
    move-exception v3

    .line 74
    move-object v4, v2

    .line 75
    move-object v2, v3

    .line 76
    :goto_3
    const-string v3, "Error reading historical app ops. Deleting history."

    .line 77
    .line 78
    invoke-static {v3, v2, v4}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 84
    .line 85
    .line 86
    :goto_4
    return-wide v0
.end method

.method public static readeHistoricalOpsDLocked(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p6

    .line 4
    .line 5
    move-wide/from16 v3, p8

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const-string v6, "beg"

    .line 9
    .line 10
    const-wide/16 v7, 0x0

    .line 11
    .line 12
    invoke-interface {v0, v5, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v9

    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz p11, :cond_0

    .line 18
    .line 19
    aget-wide v11, p11, v6

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-wide v11, v7

    .line 23
    :goto_0
    add-long/2addr v9, v11

    .line 24
    const-string/jumbo v11, "end"

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v5, v11, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v11

    .line 31
    if-eqz p11, :cond_1

    .line 32
    .line 33
    aget-wide v13, p11, v6

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-wide v13, v7

    .line 37
    :goto_1
    add-long/2addr v11, v13

    .line 38
    cmp-long v6, v3, v9

    .line 39
    .line 40
    if-gez v6, :cond_2

    .line 41
    .line 42
    return-object v5

    .line 43
    :cond_2
    cmp-long v6, v1, v11

    .line 44
    .line 45
    if-lez v6, :cond_3

    .line 46
    .line 47
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 48
    .line 49
    invoke-direct {v0, v7, v8, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    sub-long v13, v3, v1

    .line 62
    .line 63
    long-to-double v13, v13

    .line 64
    sub-long/2addr v11, v9

    .line 65
    long-to-double v9, v11

    .line 66
    div-double/2addr v13, v9

    .line 67
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    move-object v9, v5

    .line 72
    :goto_2
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    if-eqz v10, :cond_24

    .line 77
    .line 78
    const-string/jumbo v10, "uid"

    .line 79
    .line 80
    .line 81
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_23

    .line 90
    .line 91
    const-string/jumbo v10, "na"

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    and-int/lit8 v12, p5, 0x1

    .line 99
    .line 100
    if-eqz v12, :cond_4

    .line 101
    .line 102
    move/from16 v12, p1

    .line 103
    .line 104
    if-eq v12, v11, :cond_5

    .line 105
    .line 106
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 107
    .line 108
    .line 109
    move-wide/from16 v30, v1

    .line 110
    .line 111
    move-wide/from16 v32, v3

    .line 112
    .line 113
    move-object v3, v5

    .line 114
    move-object/from16 v24, v3

    .line 115
    .line 116
    :goto_3
    move/from16 p7, v6

    .line 117
    .line 118
    move-wide v4, v7

    .line 119
    move-object v6, v9

    .line 120
    goto/16 :goto_12

    .line 121
    .line 122
    :cond_4
    move/from16 v12, p1

    .line 123
    .line 124
    :cond_5
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    move-object/from16 v24, v9

    .line 129
    .line 130
    :goto_4
    invoke-static {v0, v15}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 131
    .line 132
    .line 133
    move-result v16

    .line 134
    if-eqz v16, :cond_21

    .line 135
    .line 136
    const-string/jumbo v7, "pkg"

    .line 137
    .line 138
    .line 139
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eqz v7, :cond_20

    .line 148
    .line 149
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    and-int/lit8 v8, p5, 0x2

    .line 154
    .line 155
    if-eqz v8, :cond_6

    .line 156
    .line 157
    move-object/from16 v8, p2

    .line 158
    .line 159
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v16

    .line 163
    if-nez v16, :cond_7

    .line 164
    .line 165
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 166
    .line 167
    .line 168
    move-wide/from16 v30, v1

    .line 169
    .line 170
    move-wide/from16 v32, v3

    .line 171
    .line 172
    move-object v3, v5

    .line 173
    move-object/from16 v26, v3

    .line 174
    .line 175
    move/from16 p7, v6

    .line 176
    .line 177
    move-object v6, v9

    .line 178
    move-object/from16 p11, v10

    .line 179
    .line 180
    move/from16 v34, v15

    .line 181
    .line 182
    :goto_5
    const-wide/16 v4, 0x0

    .line 183
    .line 184
    goto/16 :goto_11

    .line 185
    .line 186
    :cond_6
    move-object/from16 v8, p2

    .line 187
    .line 188
    :cond_7
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    move-object/from16 v26, v24

    .line 193
    .line 194
    :goto_6
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 195
    .line 196
    .line 197
    move-result v16

    .line 198
    if-eqz v16, :cond_1e

    .line 199
    .line 200
    move/from16 p6, v5

    .line 201
    .line 202
    const-string/jumbo v5, "ftr"

    .line 203
    .line 204
    .line 205
    move/from16 p7, v6

    .line 206
    .line 207
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_1d

    .line 216
    .line 217
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    and-int/lit8 v6, p5, 0x4

    .line 222
    .line 223
    if-eqz v6, :cond_8

    .line 224
    .line 225
    move-object/from16 v6, p3

    .line 226
    .line 227
    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v16

    .line 231
    if-nez v16, :cond_9

    .line 232
    .line 233
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 234
    .line 235
    .line 236
    move-wide/from16 v30, v1

    .line 237
    .line 238
    move-wide/from16 v32, v3

    .line 239
    .line 240
    move-object v6, v9

    .line 241
    move-object/from16 p11, v10

    .line 242
    .line 243
    move/from16 v34, v15

    .line 244
    .line 245
    const/4 v3, 0x0

    .line 246
    const-wide/16 v4, 0x0

    .line 247
    .line 248
    const/16 v27, 0x0

    .line 249
    .line 250
    goto/16 :goto_f

    .line 251
    .line 252
    :cond_8
    move-object/from16 v6, p3

    .line 253
    .line 254
    :cond_9
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    move-object/from16 v27, v26

    .line 259
    .line 260
    :goto_7
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 261
    .line 262
    .line 263
    move-result v16

    .line 264
    if-eqz v16, :cond_1b

    .line 265
    .line 266
    move/from16 p8, v6

    .line 267
    .line 268
    const-string/jumbo v6, "op"

    .line 269
    .line 270
    .line 271
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-eqz v6, :cond_1a

    .line 280
    .line 281
    const/4 v6, 0x0

    .line 282
    invoke-interface {v0, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v8

    .line 286
    and-int/lit8 v6, p5, 0x8

    .line 287
    .line 288
    if-eqz v6, :cond_a

    .line 289
    .line 290
    invoke-static {v8}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    move-object/from16 v12, p4

    .line 295
    .line 296
    invoke-static {v12, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    if-nez v6, :cond_b

    .line 301
    .line 302
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 303
    .line 304
    .line 305
    move-wide/from16 v30, v1

    .line 306
    .line 307
    move-wide/from16 v32, v3

    .line 308
    .line 309
    move-object/from16 v25, v5

    .line 310
    .line 311
    move-object v6, v9

    .line 312
    move-object/from16 p11, v10

    .line 313
    .line 314
    move/from16 v34, v15

    .line 315
    .line 316
    const/4 v3, 0x0

    .line 317
    const-wide/16 v4, 0x0

    .line 318
    .line 319
    const/16 v28, 0x0

    .line 320
    .line 321
    goto/16 :goto_e

    .line 322
    .line 323
    :cond_a
    move-object/from16 v12, p4

    .line 324
    .line 325
    :cond_b
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    move-object/from16 v28, v27

    .line 330
    .line 331
    :goto_8
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 332
    .line 333
    .line 334
    move-result v16

    .line 335
    if-eqz v16, :cond_18

    .line 336
    .line 337
    move/from16 p9, v6

    .line 338
    .line 339
    const-string/jumbo v6, "st"

    .line 340
    .line 341
    .line 342
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v12

    .line 346
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-eqz v6, :cond_17

    .line 351
    .line 352
    const/4 v6, 0x0

    .line 353
    invoke-interface {v0, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 354
    .line 355
    .line 356
    move-result-wide v16

    .line 357
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    .line 358
    .line 359
    .line 360
    move-result v12

    .line 361
    and-int v12, v12, p10

    .line 362
    .line 363
    if-nez v12, :cond_d

    .line 364
    .line 365
    move-wide/from16 v30, v1

    .line 366
    .line 367
    move-wide/from16 v32, v3

    .line 368
    .line 369
    move-object/from16 v25, v5

    .line 370
    .line 371
    move-object v1, v6

    .line 372
    move-object v3, v1

    .line 373
    move-object v6, v9

    .line 374
    move-object/from16 p11, v10

    .line 375
    .line 376
    move/from16 v34, v15

    .line 377
    .line 378
    :cond_c
    const-wide/16 v4, 0x0

    .line 379
    .line 380
    goto/16 :goto_d

    .line 381
    .line 382
    :cond_d
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    .line 383
    .line 384
    .line 385
    move-result v29

    .line 386
    move-object/from16 p11, v10

    .line 387
    .line 388
    const-string v10, "ac"

    .line 389
    .line 390
    move-wide/from16 v30, v1

    .line 391
    .line 392
    move-wide/from16 v32, v3

    .line 393
    .line 394
    const-wide/16 v1, 0x0

    .line 395
    .line 396
    invoke-interface {v0, v6, v10, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 397
    .line 398
    .line 399
    move-result-wide v3

    .line 400
    cmp-long v6, v3, v1

    .line 401
    .line 402
    if-lez v6, :cond_10

    .line 403
    .line 404
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-nez v1, :cond_e

    .line 409
    .line 410
    long-to-double v1, v3

    .line 411
    mul-double/2addr v1, v13

    .line 412
    invoke-static {v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    .line 413
    .line 414
    .line 415
    move-result-wide v1

    .line 416
    double-to-long v1, v1

    .line 417
    move-wide/from16 v22, v1

    .line 418
    .line 419
    goto :goto_9

    .line 420
    :cond_e
    move-wide/from16 v22, v3

    .line 421
    .line 422
    :goto_9
    if-nez v28, :cond_f

    .line 423
    .line 424
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 425
    .line 426
    const-wide/16 v2, 0x0

    .line 427
    .line 428
    invoke-direct {v1, v2, v3, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 429
    .line 430
    .line 431
    move v2, v15

    .line 432
    goto :goto_a

    .line 433
    :cond_f
    move v2, v15

    .line 434
    move-object/from16 v1, v28

    .line 435
    .line 436
    :goto_a
    move-object v15, v1

    .line 437
    move/from16 v16, v8

    .line 438
    .line 439
    move/from16 v17, v11

    .line 440
    .line 441
    move-object/from16 v18, v7

    .line 442
    .line 443
    move-object/from16 v19, v5

    .line 444
    .line 445
    move/from16 v20, v29

    .line 446
    .line 447
    move/from16 v21, v12

    .line 448
    .line 449
    invoke-virtual/range {v15 .. v23}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 450
    .line 451
    .line 452
    goto :goto_b

    .line 453
    :cond_10
    move v2, v15

    .line 454
    move-object/from16 v1, v28

    .line 455
    .line 456
    :goto_b
    const-string/jumbo v3, "rc"

    .line 457
    .line 458
    .line 459
    move/from16 v34, v2

    .line 460
    .line 461
    move-object v6, v9

    .line 462
    const/4 v4, 0x0

    .line 463
    const-wide/16 v9, 0x0

    .line 464
    .line 465
    invoke-interface {v0, v4, v3, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 466
    .line 467
    .line 468
    move-result-wide v2

    .line 469
    cmp-long v4, v2, v9

    .line 470
    .line 471
    if-lez v4, :cond_13

    .line 472
    .line 473
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    if-nez v4, :cond_11

    .line 478
    .line 479
    long-to-double v2, v2

    .line 480
    mul-double/2addr v2, v13

    .line 481
    invoke-static {v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    .line 482
    .line 483
    .line 484
    move-result-wide v2

    .line 485
    double-to-long v2, v2

    .line 486
    :cond_11
    move-wide/from16 v22, v2

    .line 487
    .line 488
    if-nez v1, :cond_12

    .line 489
    .line 490
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 491
    .line 492
    const-wide/16 v2, 0x0

    .line 493
    .line 494
    invoke-direct {v1, v2, v3, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 495
    .line 496
    .line 497
    :cond_12
    move-object v15, v1

    .line 498
    move/from16 v16, v8

    .line 499
    .line 500
    move/from16 v17, v11

    .line 501
    .line 502
    move-object/from16 v18, v7

    .line 503
    .line 504
    move-object/from16 v19, v5

    .line 505
    .line 506
    move/from16 v20, v29

    .line 507
    .line 508
    move/from16 v21, v12

    .line 509
    .line 510
    invoke-virtual/range {v15 .. v23}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 511
    .line 512
    .line 513
    :cond_13
    const-string/jumbo v2, "du"

    .line 514
    .line 515
    .line 516
    move-object/from16 v25, v5

    .line 517
    .line 518
    const/4 v3, 0x0

    .line 519
    const-wide/16 v9, 0x0

    .line 520
    .line 521
    invoke-interface {v0, v3, v2, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 522
    .line 523
    .line 524
    move-result-wide v4

    .line 525
    cmp-long v2, v4, v9

    .line 526
    .line 527
    if-lez v2, :cond_c

    .line 528
    .line 529
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-nez v2, :cond_14

    .line 534
    .line 535
    long-to-double v4, v4

    .line 536
    mul-double/2addr v4, v13

    .line 537
    invoke-static {v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    .line 538
    .line 539
    .line 540
    move-result-wide v4

    .line 541
    double-to-long v4, v4

    .line 542
    :cond_14
    move-wide/from16 v22, v4

    .line 543
    .line 544
    if-nez v1, :cond_15

    .line 545
    .line 546
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 547
    .line 548
    const-wide/16 v4, 0x0

    .line 549
    .line 550
    invoke-direct {v1, v4, v5, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 551
    .line 552
    .line 553
    goto :goto_c

    .line 554
    :cond_15
    const-wide/16 v4, 0x0

    .line 555
    .line 556
    :goto_c
    move-object v15, v1

    .line 557
    move/from16 v16, v8

    .line 558
    .line 559
    move/from16 v17, v11

    .line 560
    .line 561
    move-object/from16 v18, v7

    .line 562
    .line 563
    move-object/from16 v19, v25

    .line 564
    .line 565
    move/from16 v20, v29

    .line 566
    .line 567
    move/from16 v21, v12

    .line 568
    .line 569
    invoke-virtual/range {v15 .. v23}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 570
    .line 571
    .line 572
    :goto_d
    if-nez v28, :cond_16

    .line 573
    .line 574
    move-object/from16 v28, v1

    .line 575
    .line 576
    :cond_16
    move-object/from16 v12, p4

    .line 577
    .line 578
    move-object/from16 v10, p11

    .line 579
    .line 580
    move-object v9, v6

    .line 581
    move-object/from16 v5, v25

    .line 582
    .line 583
    move-wide/from16 v1, v30

    .line 584
    .line 585
    move-wide/from16 v3, v32

    .line 586
    .line 587
    move/from16 v15, v34

    .line 588
    .line 589
    move/from16 v6, p9

    .line 590
    .line 591
    goto/16 :goto_8

    .line 592
    .line 593
    :cond_17
    move-wide/from16 v32, v3

    .line 594
    .line 595
    const/4 v3, 0x0

    .line 596
    move-object/from16 v12, p4

    .line 597
    .line 598
    move/from16 v6, p9

    .line 599
    .line 600
    move-wide/from16 v3, v32

    .line 601
    .line 602
    goto/16 :goto_8

    .line 603
    .line 604
    :cond_18
    move-wide/from16 v30, v1

    .line 605
    .line 606
    move-wide/from16 v32, v3

    .line 607
    .line 608
    move-object/from16 v25, v5

    .line 609
    .line 610
    move-object v6, v9

    .line 611
    move-object/from16 p11, v10

    .line 612
    .line 613
    move/from16 v34, v15

    .line 614
    .line 615
    const/4 v3, 0x0

    .line 616
    const-wide/16 v4, 0x0

    .line 617
    .line 618
    :goto_e
    if-nez v27, :cond_19

    .line 619
    .line 620
    move-object/from16 v27, v28

    .line 621
    .line 622
    :cond_19
    move/from16 v12, p1

    .line 623
    .line 624
    move-object/from16 v8, p2

    .line 625
    .line 626
    move-object/from16 v10, p11

    .line 627
    .line 628
    move-object v9, v6

    .line 629
    move-object/from16 v5, v25

    .line 630
    .line 631
    move-wide/from16 v1, v30

    .line 632
    .line 633
    move-wide/from16 v3, v32

    .line 634
    .line 635
    move/from16 v15, v34

    .line 636
    .line 637
    move/from16 v6, p8

    .line 638
    .line 639
    goto/16 :goto_7

    .line 640
    .line 641
    :cond_1a
    move-wide/from16 v32, v3

    .line 642
    .line 643
    const/4 v3, 0x0

    .line 644
    move/from16 v12, p1

    .line 645
    .line 646
    move-object/from16 v8, p2

    .line 647
    .line 648
    move/from16 v6, p8

    .line 649
    .line 650
    move-wide/from16 v3, v32

    .line 651
    .line 652
    goto/16 :goto_7

    .line 653
    .line 654
    :cond_1b
    move-wide/from16 v30, v1

    .line 655
    .line 656
    move-wide/from16 v32, v3

    .line 657
    .line 658
    move-object v6, v9

    .line 659
    move-object/from16 p11, v10

    .line 660
    .line 661
    move/from16 v34, v15

    .line 662
    .line 663
    const/4 v3, 0x0

    .line 664
    const-wide/16 v4, 0x0

    .line 665
    .line 666
    :goto_f
    if-nez v26, :cond_1c

    .line 667
    .line 668
    move-object/from16 v26, v27

    .line 669
    .line 670
    :cond_1c
    move/from16 v12, p1

    .line 671
    .line 672
    move-object/from16 v8, p2

    .line 673
    .line 674
    move/from16 v5, p6

    .line 675
    .line 676
    move-object/from16 v10, p11

    .line 677
    .line 678
    move-object v9, v6

    .line 679
    move-wide/from16 v1, v30

    .line 680
    .line 681
    move-wide/from16 v3, v32

    .line 682
    .line 683
    move/from16 v15, v34

    .line 684
    .line 685
    :goto_10
    move/from16 v6, p7

    .line 686
    .line 687
    goto/16 :goto_6

    .line 688
    .line 689
    :cond_1d
    move-wide/from16 v32, v3

    .line 690
    .line 691
    move/from16 v12, p1

    .line 692
    .line 693
    move-object/from16 v8, p2

    .line 694
    .line 695
    move/from16 v5, p6

    .line 696
    .line 697
    goto :goto_10

    .line 698
    :cond_1e
    move-wide/from16 v30, v1

    .line 699
    .line 700
    move-wide/from16 v32, v3

    .line 701
    .line 702
    move/from16 p7, v6

    .line 703
    .line 704
    move-object v6, v9

    .line 705
    move-object/from16 p11, v10

    .line 706
    .line 707
    move/from16 v34, v15

    .line 708
    .line 709
    const/4 v3, 0x0

    .line 710
    goto/16 :goto_5

    .line 711
    .line 712
    :goto_11
    if-nez v24, :cond_1f

    .line 713
    .line 714
    move-object/from16 v24, v26

    .line 715
    .line 716
    :cond_1f
    move/from16 v12, p1

    .line 717
    .line 718
    move-object/from16 v10, p11

    .line 719
    .line 720
    move-wide v7, v4

    .line 721
    move-object v9, v6

    .line 722
    move-wide/from16 v1, v30

    .line 723
    .line 724
    move/from16 v15, v34

    .line 725
    .line 726
    move/from16 v6, p7

    .line 727
    .line 728
    move-object v5, v3

    .line 729
    move-wide/from16 v3, v32

    .line 730
    .line 731
    goto/16 :goto_4

    .line 732
    .line 733
    :cond_20
    move-wide/from16 v32, v3

    .line 734
    .line 735
    move/from16 p7, v6

    .line 736
    .line 737
    move/from16 v12, p1

    .line 738
    .line 739
    const-wide/16 v7, 0x0

    .line 740
    .line 741
    goto/16 :goto_4

    .line 742
    .line 743
    :cond_21
    move-wide/from16 v30, v1

    .line 744
    .line 745
    move-wide/from16 v32, v3

    .line 746
    .line 747
    move-object v3, v5

    .line 748
    goto/16 :goto_3

    .line 749
    .line 750
    :goto_12
    if-nez v6, :cond_22

    .line 751
    .line 752
    move-object/from16 v9, v24

    .line 753
    .line 754
    goto :goto_13

    .line 755
    :cond_22
    move-object v9, v6

    .line 756
    :goto_13
    move/from16 v6, p7

    .line 757
    .line 758
    move-wide v7, v4

    .line 759
    move-wide/from16 v1, v30

    .line 760
    .line 761
    move-object v5, v3

    .line 762
    move-wide/from16 v3, v32

    .line 763
    .line 764
    goto/16 :goto_2

    .line 765
    .line 766
    :cond_23
    move-wide/from16 v32, v3

    .line 767
    .line 768
    move/from16 p7, v6

    .line 769
    .line 770
    move-object v6, v9

    .line 771
    move/from16 v6, p7

    .line 772
    .line 773
    goto/16 :goto_2

    .line 774
    .line 775
    :cond_24
    move-wide/from16 v30, v1

    .line 776
    .line 777
    move-wide/from16 v32, v3

    .line 778
    .line 779
    move-object v6, v9

    .line 780
    move-object v5, v6

    .line 781
    if-eqz v6, :cond_25

    .line 782
    .line 783
    move-wide/from16 v0, v30

    .line 784
    .line 785
    move-wide/from16 v2, v32

    .line 786
    .line 787
    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 788
    .line 789
    .line 790
    :cond_25
    return-object v5
.end method

.method public static writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 36

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "ops"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    const-string v5, "beg"

    .line 15
    .line 16
    invoke-interface {v0, v1, v5, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v3, "end"

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    invoke-interface {v0, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v5, 0x0

    .line 34
    :goto_0
    if-ge v5, v3, :cond_a

    .line 35
    .line 36
    move-object/from16 v6, p0

    .line 37
    .line 38
    invoke-virtual {v6, v5}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const-string/jumbo v8, "uid"

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const-string/jumbo v10, "na"

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    const/4 v11, 0x0

    .line 63
    :goto_1
    if-ge v11, v9, :cond_9

    .line 64
    .line 65
    invoke-virtual {v7, v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    const-string/jumbo v13, "pkg"

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    invoke-interface {v0, v1, v10, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    const/4 v15, 0x0

    .line 87
    :goto_2
    if-ge v15, v14, :cond_8

    .line 88
    .line 89
    invoke-virtual {v12, v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    move/from16 v16, v3

    .line 94
    .line 95
    const-string/jumbo v3, "ftr"

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v0, v10, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    const/4 v6, 0x0

    .line 113
    :goto_3
    if-ge v6, v1, :cond_7

    .line 114
    .line 115
    move/from16 v17, v1

    .line 116
    .line 117
    invoke-virtual {v4, v6}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    move-object/from16 v18, v4

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-eqz v4, :cond_0

    .line 128
    .line 129
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    .line 130
    .line 131
    .line 132
    move-result v19

    .line 133
    if-gtz v19, :cond_1

    .line 134
    .line 135
    :cond_0
    move-object/from16 v26, v2

    .line 136
    .line 137
    move-object/from16 v27, v3

    .line 138
    .line 139
    move/from16 v28, v5

    .line 140
    .line 141
    move/from16 v29, v6

    .line 142
    .line 143
    move-object/from16 v19, v7

    .line 144
    .line 145
    move-object/from16 v22, v8

    .line 146
    .line 147
    move/from16 v20, v9

    .line 148
    .line 149
    move/from16 v34, v11

    .line 150
    .line 151
    move-object/from16 v21, v12

    .line 152
    .line 153
    move-object/from16 v30, v13

    .line 154
    .line 155
    move/from16 v25, v14

    .line 156
    .line 157
    const/4 v11, 0x0

    .line 158
    goto/16 :goto_6

    .line 159
    .line 160
    :cond_1
    move-object/from16 v19, v7

    .line 161
    .line 162
    const-string/jumbo v7, "op"

    .line 163
    .line 164
    .line 165
    move/from16 v20, v9

    .line 166
    .line 167
    const/4 v9, 0x0

    .line 168
    invoke-interface {v0, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    .line 170
    .line 171
    move-object/from16 v21, v12

    .line 172
    .line 173
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    invoke-interface {v0, v9, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    const/4 v12, 0x0

    .line 185
    :goto_4
    if-ge v12, v9, :cond_6

    .line 186
    .line 187
    move-object/from16 v22, v8

    .line 188
    .line 189
    move/from16 v23, v9

    .line 190
    .line 191
    invoke-virtual {v4, v12}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 192
    .line 193
    .line 194
    move-result-wide v8

    .line 195
    move-object/from16 v24, v4

    .line 196
    .line 197
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    move/from16 v25, v14

    .line 202
    .line 203
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    .line 204
    .line 205
    .line 206
    move-result v14

    .line 207
    move-object/from16 v26, v2

    .line 208
    .line 209
    move-object/from16 v27, v3

    .line 210
    .line 211
    invoke-virtual {v1, v4, v4, v14}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    .line 212
    .line 213
    .line 214
    move-result-wide v2

    .line 215
    move/from16 v28, v5

    .line 216
    .line 217
    move/from16 v29, v6

    .line 218
    .line 219
    invoke-virtual {v1, v4, v4, v14}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    .line 220
    .line 221
    .line 222
    move-result-wide v5

    .line 223
    move-object/from16 v30, v13

    .line 224
    .line 225
    invoke-virtual {v1, v4, v4, v14}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    .line 226
    .line 227
    .line 228
    move-result-wide v13

    .line 229
    const-wide/16 v31, 0x0

    .line 230
    .line 231
    cmp-long v4, v2, v31

    .line 232
    .line 233
    if-gtz v4, :cond_2

    .line 234
    .line 235
    cmp-long v33, v5, v31

    .line 236
    .line 237
    if-gtz v33, :cond_2

    .line 238
    .line 239
    cmp-long v33, v13, v31

    .line 240
    .line 241
    if-gtz v33, :cond_2

    .line 242
    .line 243
    move-object/from16 v33, v1

    .line 244
    .line 245
    move/from16 v34, v11

    .line 246
    .line 247
    const/4 v11, 0x0

    .line 248
    goto :goto_5

    .line 249
    :cond_2
    move-object/from16 v33, v1

    .line 250
    .line 251
    const-string/jumbo v1, "st"

    .line 252
    .line 253
    .line 254
    move/from16 v34, v11

    .line 255
    .line 256
    const/4 v11, 0x0

    .line 257
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    .line 259
    .line 260
    invoke-interface {v0, v11, v10, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    .line 262
    .line 263
    if-lez v4, :cond_3

    .line 264
    .line 265
    const-string v4, "ac"

    .line 266
    .line 267
    invoke-interface {v0, v11, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    .line 269
    .line 270
    :cond_3
    cmp-long v2, v5, v31

    .line 271
    .line 272
    if-lez v2, :cond_4

    .line 273
    .line 274
    const-string/jumbo v2, "rc"

    .line 275
    .line 276
    .line 277
    invoke-interface {v0, v11, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    .line 279
    .line 280
    :cond_4
    cmp-long v2, v13, v31

    .line 281
    .line 282
    if-lez v2, :cond_5

    .line 283
    .line 284
    const-string/jumbo v2, "du"

    .line 285
    .line 286
    .line 287
    invoke-interface {v0, v11, v2, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    .line 289
    .line 290
    :cond_5
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    .line 292
    .line 293
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 294
    .line 295
    move-object/from16 v8, v22

    .line 296
    .line 297
    move/from16 v9, v23

    .line 298
    .line 299
    move-object/from16 v4, v24

    .line 300
    .line 301
    move/from16 v14, v25

    .line 302
    .line 303
    move-object/from16 v2, v26

    .line 304
    .line 305
    move-object/from16 v3, v27

    .line 306
    .line 307
    move/from16 v5, v28

    .line 308
    .line 309
    move/from16 v6, v29

    .line 310
    .line 311
    move-object/from16 v13, v30

    .line 312
    .line 313
    move-object/from16 v1, v33

    .line 314
    .line 315
    move/from16 v11, v34

    .line 316
    .line 317
    goto/16 :goto_4

    .line 318
    .line 319
    :cond_6
    move-object/from16 v26, v2

    .line 320
    .line 321
    move-object/from16 v27, v3

    .line 322
    .line 323
    move/from16 v28, v5

    .line 324
    .line 325
    move/from16 v29, v6

    .line 326
    .line 327
    move-object/from16 v22, v8

    .line 328
    .line 329
    move/from16 v34, v11

    .line 330
    .line 331
    move-object/from16 v30, v13

    .line 332
    .line 333
    move/from16 v25, v14

    .line 334
    .line 335
    const/4 v11, 0x0

    .line 336
    invoke-interface {v0, v11, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    .line 338
    .line 339
    :goto_6
    add-int/lit8 v6, v29, 0x1

    .line 340
    .line 341
    move/from16 v1, v17

    .line 342
    .line 343
    move-object/from16 v4, v18

    .line 344
    .line 345
    move-object/from16 v7, v19

    .line 346
    .line 347
    move/from16 v9, v20

    .line 348
    .line 349
    move-object/from16 v12, v21

    .line 350
    .line 351
    move-object/from16 v8, v22

    .line 352
    .line 353
    move/from16 v14, v25

    .line 354
    .line 355
    move-object/from16 v2, v26

    .line 356
    .line 357
    move-object/from16 v3, v27

    .line 358
    .line 359
    move/from16 v5, v28

    .line 360
    .line 361
    move-object/from16 v13, v30

    .line 362
    .line 363
    move/from16 v11, v34

    .line 364
    .line 365
    goto/16 :goto_3

    .line 366
    .line 367
    :cond_7
    move-object/from16 v26, v2

    .line 368
    .line 369
    move-object v1, v3

    .line 370
    move/from16 v28, v5

    .line 371
    .line 372
    move-object/from16 v19, v7

    .line 373
    .line 374
    move-object/from16 v22, v8

    .line 375
    .line 376
    move/from16 v20, v9

    .line 377
    .line 378
    move/from16 v34, v11

    .line 379
    .line 380
    move-object/from16 v21, v12

    .line 381
    .line 382
    move-object/from16 v30, v13

    .line 383
    .line 384
    move/from16 v25, v14

    .line 385
    .line 386
    const/4 v11, 0x0

    .line 387
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    .line 389
    .line 390
    add-int/lit8 v15, v15, 0x1

    .line 391
    .line 392
    move-object/from16 v6, p0

    .line 393
    .line 394
    move-object v1, v11

    .line 395
    move/from16 v3, v16

    .line 396
    .line 397
    move-object/from16 v7, v19

    .line 398
    .line 399
    move/from16 v9, v20

    .line 400
    .line 401
    move-object/from16 v12, v21

    .line 402
    .line 403
    move-object/from16 v8, v22

    .line 404
    .line 405
    move/from16 v14, v25

    .line 406
    .line 407
    move-object/from16 v2, v26

    .line 408
    .line 409
    move/from16 v5, v28

    .line 410
    .line 411
    move-object/from16 v13, v30

    .line 412
    .line 413
    move/from16 v11, v34

    .line 414
    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :cond_8
    move-object/from16 v26, v2

    .line 418
    .line 419
    move/from16 v16, v3

    .line 420
    .line 421
    move/from16 v28, v5

    .line 422
    .line 423
    move-object/from16 v19, v7

    .line 424
    .line 425
    move-object/from16 v22, v8

    .line 426
    .line 427
    move/from16 v20, v9

    .line 428
    .line 429
    move/from16 v34, v11

    .line 430
    .line 431
    move-object v11, v1

    .line 432
    move-object v1, v13

    .line 433
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    .line 435
    .line 436
    add-int/lit8 v1, v34, 0x1

    .line 437
    .line 438
    move-object/from16 v6, p0

    .line 439
    .line 440
    move/from16 v3, v16

    .line 441
    .line 442
    move-object/from16 v7, v19

    .line 443
    .line 444
    move/from16 v9, v20

    .line 445
    .line 446
    move-object/from16 v8, v22

    .line 447
    .line 448
    move-object/from16 v2, v26

    .line 449
    .line 450
    move/from16 v5, v28

    .line 451
    .line 452
    move-object/from16 v35, v11

    .line 453
    .line 454
    move v11, v1

    .line 455
    move-object/from16 v1, v35

    .line 456
    .line 457
    goto/16 :goto_1

    .line 458
    .line 459
    :cond_9
    move-object v11, v1

    .line 460
    move-object/from16 v26, v2

    .line 461
    .line 462
    move/from16 v16, v3

    .line 463
    .line 464
    move/from16 v28, v5

    .line 465
    .line 466
    move-object v1, v8

    .line 467
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    .line 469
    .line 470
    add-int/lit8 v5, v28, 0x1

    .line 471
    .line 472
    move-object v1, v11

    .line 473
    move/from16 v3, v16

    .line 474
    .line 475
    move-object/from16 v2, v26

    .line 476
    .line 477
    goto/16 :goto_0

    .line 478
    .line 479
    :cond_a
    move-object v11, v1

    .line 480
    move-object v1, v2

    .line 481
    invoke-interface {v0, v11, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    .line 483
    .line 484
    return-void
.end method


# virtual methods
.method public final collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;
    .locals 18

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v16

    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v14, v2, [J

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput-wide v2, v14, v4

    .line 19
    .line 20
    const/4 v15, 0x0

    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    move-object/from16 v3, v17

    .line 24
    .line 25
    move/from16 v4, p1

    .line 26
    .line 27
    move-object/from16 v5, p2

    .line 28
    .line 29
    move-object/from16 v6, p3

    .line 30
    .line 31
    move-object/from16 v7, p4

    .line 32
    .line 33
    move/from16 v8, p5

    .line 34
    .line 35
    move-wide/from16 v9, p6

    .line 36
    .line 37
    move-wide/from16 v11, p8

    .line 38
    .line 39
    move/from16 v13, p10

    .line 40
    .line 41
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/LinkedList;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object/from16 v2, v17

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    move-object v2, v1

    .line 55
    :goto_0
    const-string v3, "Error reading historical app ops. Deleting history."

    .line 56
    .line 57
    invoke-static {v3, v0, v2}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 63
    .line 64
    .line 65
    return-object v1
.end method

.method public final collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/LinkedList;
    .locals 30

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move/from16 v4, p13

    .line 4
    .line 5
    move-object/from16 v0, p0

    .line 6
    .line 7
    move-object/from16 v1, p1

    .line 8
    .line 9
    move/from16 v6, p2

    .line 10
    .line 11
    move-object/from16 v7, p3

    .line 12
    .line 13
    move-object/from16 v8, p4

    .line 14
    .line 15
    move-object/from16 v9, p5

    .line 16
    .line 17
    move/from16 v10, p6

    .line 18
    .line 19
    move/from16 v15, p11

    .line 20
    .line 21
    move-object/from16 v16, p12

    .line 22
    .line 23
    move/from16 v17, p13

    .line 24
    .line 25
    move-object/from16 v18, p14

    .line 26
    .line 27
    iget-wide v2, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 28
    .line 29
    long-to-double v11, v2

    .line 30
    int-to-double v2, v4

    .line 31
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    double-to-long v2, v2

    .line 36
    move-object/from16 v19, v0

    .line 37
    .line 38
    move-object/from16 v20, v1

    .line 39
    .line 40
    iget-wide v0, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 41
    .line 42
    mul-long v21, v2, v0

    .line 43
    .line 44
    move-wide/from16 v2, v21

    .line 45
    .line 46
    add-int/lit8 v14, v4, 0x1

    .line 47
    .line 48
    int-to-double v4, v14

    .line 49
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    double-to-long v4, v4

    .line 54
    mul-long/2addr v0, v4

    .line 55
    move-wide v4, v0

    .line 56
    sub-long v11, p7, v21

    .line 57
    .line 58
    move-wide/from16 v23, v0

    .line 59
    .line 60
    const-wide/16 v0, 0x0

    .line 61
    .line 62
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v25

    .line 66
    move-wide/from16 v11, v25

    .line 67
    .line 68
    sub-long v21, p9, v21

    .line 69
    .line 70
    move/from16 v27, v14

    .line 71
    .line 72
    move-wide/from16 v13, v21

    .line 73
    .line 74
    move-object/from16 v0, v19

    .line 75
    .line 76
    move-object/from16 v1, v20

    .line 77
    .line 78
    move-wide/from16 v28, v23

    .line 79
    .line 80
    invoke-virtual/range {v0 .. v18}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    if-eqz v15, :cond_0

    .line 85
    .line 86
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    return-object v0

    .line 94
    :cond_0
    move-object/from16 v0, p0

    .line 95
    .line 96
    move-object/from16 v1, p1

    .line 97
    .line 98
    move/from16 v2, p2

    .line 99
    .line 100
    move-object/from16 v3, p3

    .line 101
    .line 102
    move-object/from16 v4, p4

    .line 103
    .line 104
    move-object/from16 v5, p5

    .line 105
    .line 106
    move/from16 v6, p6

    .line 107
    .line 108
    move-wide/from16 v7, v25

    .line 109
    .line 110
    move-wide/from16 v9, v21

    .line 111
    .line 112
    move/from16 v11, p11

    .line 113
    .line 114
    move-object/from16 v12, p12

    .line 115
    .line 116
    move/from16 v13, v27

    .line 117
    .line 118
    move-object/from16 v14, p14

    .line 119
    .line 120
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/LinkedList;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    const/4 v2, 0x0

    .line 131
    :goto_0
    if-ge v2, v1, :cond_1

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 138
    .line 139
    move-wide/from16 v4, v28

    .line 140
    .line 141
    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    if-eqz v15, :cond_3

    .line 148
    .line 149
    if-nez v0, :cond_2

    .line 150
    .line 151
    new-instance v0, Ljava/util/LinkedList;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 154
    .line 155
    .line 156
    :cond_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    add-int/lit8 v1, v1, -0x1

    .line 161
    .line 162
    :goto_1
    if-ltz v1, :cond_3

    .line 163
    .line 164
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    add-int/lit8 v1, v1, -0x1

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_3
    return-object v0
.end method

.method public final generateFile(Ljava/io/File;I)Ljava/io/File;
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 5
    .line 6
    if-ge v2, v3, :cond_0

    .line 7
    .line 8
    long-to-double v0, v0

    .line 9
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 10
    .line 11
    long-to-double v3, v3

    .line 12
    int-to-double v5, v2

    .line 13
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    add-double/2addr v3, v0

    .line 18
    double-to-long v0, v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 23
    .line 24
    mul-long/2addr v0, v2

    .line 25
    new-instance p0, Ljava/io/File;

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ".xml"

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public final handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    move-object/from16 v6, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p5

    .line 10
    .line 11
    iget-wide v1, v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 12
    .line 13
    long-to-double v1, v1

    .line 14
    int-to-double v7, v4

    .line 15
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 16
    .line 17
    .line 18
    move-result-wide v7

    .line 19
    double-to-long v7, v7

    .line 20
    iget-wide v9, v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 21
    .line 22
    mul-long v12, v7, v9

    .line 23
    .line 24
    add-int/lit8 v11, v4, 0x1

    .line 25
    .line 26
    int-to-double v7, v11

    .line 27
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    double-to-long v1, v1

    .line 32
    mul-long v20, v1, v9

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    :cond_0
    move-object v13, v3

    .line 43
    move v12, v4

    .line 44
    move-object v8, v5

    .line 45
    move-object v5, v6

    .line 46
    move/from16 v23, v11

    .line 47
    .line 48
    goto/16 :goto_c

    .line 49
    .line 50
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/16 v22, 0x0

    .line 55
    .line 56
    move/from16 v2, v22

    .line 57
    .line 58
    :goto_0
    if-ge v2, v1, :cond_2

    .line 59
    .line 60
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Landroid/app/AppOpsManager$HistoricalOps;

    .line 65
    .line 66
    neg-long v8, v12

    .line 67
    invoke-virtual {v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-wide v14, 0x7fffffffffffffffL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const/16 v16, 0x1f

    .line 79
    .line 80
    const/4 v7, -0x1

    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v1, 0x0

    .line 85
    move/from16 v23, v11

    .line 86
    .line 87
    move v11, v1

    .line 88
    const-wide/high16 v1, -0x8000000000000000L

    .line 89
    .line 90
    move-wide/from16 v24, v12

    .line 91
    .line 92
    move-wide v12, v1

    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    const/16 v19, 0x0

    .line 96
    .line 97
    move-object/from16 v1, p0

    .line 98
    .line 99
    move-object/from16 v2, p2

    .line 100
    .line 101
    move-wide/from16 v3, v24

    .line 102
    .line 103
    move-wide/from16 v5, v20

    .line 104
    .line 105
    move/from16 v18, p5

    .line 106
    .line 107
    invoke-virtual/range {v1 .. v19}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v2, 0x1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-lez v3, :cond_3

    .line 119
    .line 120
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    sub-int/2addr v4, v2

    .line 125
    move-object/from16 v5, p3

    .line 126
    .line 127
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide v6

    .line 137
    move/from16 v4, v22

    .line 138
    .line 139
    :goto_1
    if-ge v4, v3, :cond_4

    .line 140
    .line 141
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    check-cast v8, Landroid/app/AppOpsManager$HistoricalOps;

    .line 146
    .line 147
    invoke-virtual {v8, v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    move-object/from16 v5, p3

    .line 154
    .line 155
    :cond_4
    new-instance v3, Ljava/util/LinkedList;

    .line 156
    .line 157
    invoke-direct {v3, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 158
    .line 159
    .line 160
    if-eqz v1, :cond_5

    .line 161
    .line 162
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const-wide/16 v4, 0x0

    .line 170
    .line 171
    move-wide v10, v4

    .line 172
    move/from16 v8, v22

    .line 173
    .line 174
    const/4 v7, 0x0

    .line 175
    const/4 v9, 0x0

    .line 176
    :goto_2
    if-ge v8, v1, :cond_d

    .line 177
    .line 178
    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    check-cast v12, Landroid/app/AppOpsManager$HistoricalOps;

    .line 183
    .line 184
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide v13

    .line 188
    cmp-long v13, v13, v20

    .line 189
    .line 190
    if-gtz v13, :cond_7

    .line 191
    .line 192
    :cond_6
    const/4 v13, 0x0

    .line 193
    goto :goto_3

    .line 194
    :cond_7
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    .line 195
    .line 196
    .line 197
    move-result-wide v13

    .line 198
    cmp-long v13, v13, v20

    .line 199
    .line 200
    if-gez v13, :cond_8

    .line 201
    .line 202
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 203
    .line 204
    .line 205
    move-result-wide v10

    .line 206
    sub-long v10, v10, v20

    .line 207
    .line 208
    cmp-long v13, v10, v24

    .line 209
    .line 210
    if-lez v13, :cond_6

    .line 211
    .line 212
    long-to-double v10, v10

    .line 213
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    .line 214
    .line 215
    .line 216
    move-result-wide v13

    .line 217
    long-to-double v13, v13

    .line 218
    div-double/2addr v10, v13

    .line 219
    invoke-virtual {v12, v10, v11}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 224
    .line 225
    .line 226
    move-result-wide v13

    .line 227
    sub-long v13, v13, v20

    .line 228
    .line 229
    move-wide/from16 v26, v13

    .line 230
    .line 231
    move-object v13, v10

    .line 232
    move-wide/from16 v10, v26

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_8
    move-object v13, v12

    .line 236
    const/4 v12, 0x0

    .line 237
    :goto_3
    if-eqz v12, :cond_a

    .line 238
    .line 239
    if-nez v9, :cond_9

    .line 240
    .line 241
    new-instance v9, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .line 245
    .line 246
    :cond_9
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    :cond_a
    if-eqz v13, :cond_c

    .line 250
    .line 251
    if-nez v7, :cond_b

    .line 252
    .line 253
    new-instance v7, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .line 257
    .line 258
    :cond_b
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_d
    move-object/from16 v8, p1

    .line 265
    .line 266
    move/from16 v12, p5

    .line 267
    .line 268
    invoke-virtual {v0, v8, v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    move-object/from16 v13, p4

    .line 277
    .line 278
    invoke-interface {v13, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    if-eqz v9, :cond_16

    .line 282
    .line 283
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    sub-int/2addr v3, v2

    .line 288
    :goto_4
    if-ltz v3, :cond_13

    .line 289
    .line 290
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    check-cast v12, Landroid/app/AppOpsManager$HistoricalOps;

    .line 295
    .line 296
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 297
    .line 298
    .line 299
    move-result-wide v14

    .line 300
    sub-long v14, v14, v24

    .line 301
    .line 302
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 303
    .line 304
    .line 305
    move-result-wide v14

    .line 306
    add-int/lit8 v16, v3, -0x1

    .line 307
    .line 308
    move/from16 v6, v16

    .line 309
    .line 310
    :goto_5
    if-ltz v6, :cond_12

    .line 311
    .line 312
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v16

    .line 316
    move-object/from16 v2, v16

    .line 317
    .line 318
    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 319
    .line 320
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 321
    .line 322
    .line 323
    move-result-wide v18

    .line 324
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    .line 325
    .line 326
    .line 327
    move-result-wide v4

    .line 328
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 329
    .line 330
    .line 331
    move-result-wide v4

    .line 332
    sub-long v4, v18, v4

    .line 333
    .line 334
    const-wide/16 v18, 0x0

    .line 335
    .line 336
    cmp-long v16, v4, v18

    .line 337
    .line 338
    if-gtz v16, :cond_e

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_e
    long-to-float v4, v4

    .line 342
    move-wide/from16 v18, v14

    .line 343
    .line 344
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    .line 345
    .line 346
    .line 347
    move-result-wide v14

    .line 348
    long-to-float v5, v14

    .line 349
    div-float/2addr v4, v5

    .line 350
    const/high16 v5, 0x3f800000    # 1.0f

    .line 351
    .line 352
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-ltz v5, :cond_f

    .line 357
    .line 358
    invoke-interface {v9, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    add-int/lit8 v3, v3, -0x1

    .line 362
    .line 363
    invoke-virtual {v12, v2}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 364
    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_f
    float-to-double v4, v4

    .line 368
    invoke-virtual {v2, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    if-eqz v4, :cond_10

    .line 373
    .line 374
    invoke-virtual {v12, v4}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 375
    .line 376
    .line 377
    :cond_10
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_11

    .line 382
    .line 383
    invoke-interface {v9, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    add-int/lit8 v3, v3, -0x1

    .line 387
    .line 388
    :cond_11
    :goto_6
    add-int/lit8 v6, v6, -0x1

    .line 389
    .line 390
    move-wide/from16 v14, v18

    .line 391
    .line 392
    const/4 v2, 0x1

    .line 393
    const-wide/16 v4, 0x0

    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_12
    :goto_7
    add-int/lit8 v3, v3, -0x1

    .line 397
    .line 398
    const/4 v2, 0x1

    .line 399
    const-wide/16 v4, 0x0

    .line 400
    .line 401
    goto :goto_4

    .line 402
    :cond_13
    const-string/jumbo v2, "history"

    .line 403
    .line 404
    .line 405
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 406
    .line 407
    invoke-virtual {v3, v1}, Lcom/android/internal/os/AtomicDirectory;->openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    :try_start_0
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 416
    .line 417
    .line 418
    const/4 v5, 0x1

    .line 419
    invoke-interface {v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 420
    .line 421
    .line 422
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 423
    .line 424
    const/4 v5, 0x0

    .line 425
    invoke-interface {v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 426
    .line 427
    .line 428
    invoke-interface {v3, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    .line 430
    .line 431
    const-string/jumbo v4, "ver"

    .line 432
    .line 433
    .line 434
    const/4 v6, 0x2

    .line 435
    invoke-interface {v3, v5, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    .line 437
    .line 438
    const-wide/16 v14, 0x0

    .line 439
    .line 440
    cmp-long v4, v10, v14

    .line 441
    .line 442
    if-eqz v4, :cond_14

    .line 443
    .line 444
    const-string/jumbo v4, "ov"

    .line 445
    .line 446
    .line 447
    invoke-interface {v3, v5, v4, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    .line 449
    .line 450
    goto :goto_8

    .line 451
    :catch_0
    move-exception v0

    .line 452
    goto :goto_a

    .line 453
    :cond_14
    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    move/from16 v5, v22

    .line 458
    .line 459
    :goto_9
    if-ge v5, v4, :cond_15

    .line 460
    .line 461
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 466
    .line 467
    invoke-static {v6, v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 468
    .line 469
    .line 470
    add-int/lit8 v5, v5, 0x1

    .line 471
    .line 472
    goto :goto_9

    .line 473
    :cond_15
    const/4 v4, 0x0

    .line 474
    invoke-interface {v3, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    .line 476
    .line 477
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 478
    .line 479
    .line 480
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 481
    .line 482
    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicDirectory;->closeWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .line 484
    .line 485
    goto :goto_b

    .line 486
    :goto_a
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 487
    .line 488
    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicDirectory;->failWrite(Ljava/io/FileOutputStream;)V

    .line 489
    .line 490
    .line 491
    throw v0

    .line 492
    :cond_16
    :goto_b
    move-object/from16 v1, p0

    .line 493
    .line 494
    move-object/from16 v2, p1

    .line 495
    .line 496
    move-object/from16 v3, p2

    .line 497
    .line 498
    move-object v4, v7

    .line 499
    move-object/from16 v5, p4

    .line 500
    .line 501
    move/from16 v6, v23

    .line 502
    .line 503
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :goto_c
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->isEmpty()Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-nez v1, :cond_18

    .line 512
    .line 513
    move-object/from16 v3, p2

    .line 514
    .line 515
    invoke-virtual {v0, v3, v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-interface {v13, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    if-eqz v2, :cond_17

    .line 528
    .line 529
    invoke-virtual {v0, v8, v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-static {v2, v1}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 542
    .line 543
    .line 544
    :cond_17
    move-object/from16 v1, p0

    .line 545
    .line 546
    move-object/from16 v2, p1

    .line 547
    .line 548
    move-object/from16 v3, p2

    .line 549
    .line 550
    move-object/from16 v4, p3

    .line 551
    .line 552
    move-object/from16 v5, p4

    .line 553
    .line 554
    move/from16 v6, v23

    .line 555
    .line 556
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 557
    .line 558
    .line 559
    :cond_18
    return-void
.end method

.method public final persistHistoricalOpsDLocked(Ljava/util/List;)V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startWrite()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->getBackupDirectory()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v1, p0

    .line 17
    move-object v4, p1

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    const-string p1, "Failed to write historical app ops, restoring backup"

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {p1, p0, v0}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/internal/os/AtomicDirectory;->failWrite()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p17

    .line 6
    .line 7
    move-object/from16 v3, p18

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v12

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    cmp-long v1, p11, p13

    .line 23
    .line 24
    if-gez v1, :cond_e

    .line 25
    .line 26
    cmp-long v1, p13, p2

    .line 27
    .line 28
    if-gez v1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_9

    .line 31
    .line 32
    :cond_1
    sub-long v1, p4, p2

    .line 33
    .line 34
    iget-wide v4, v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 35
    .line 36
    div-long/2addr v1, v4

    .line 37
    add-long v1, v1, p4

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    const/4 v13, 0x0

    .line 42
    if-eqz p16, :cond_2

    .line 43
    .line 44
    aget-wide v6, p16, v13

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-wide v6, v4

    .line 48
    :goto_0
    add-long/2addr v1, v6

    .line 49
    cmp-long v0, p11, v1

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    if-gez v0, :cond_b

    .line 53
    .line 54
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_3
    const-string v0, "Dropping unsupported history version 1 for file:"

    .line 63
    .line 64
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    .line 65
    .line 66
    invoke-direct {v14, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :try_start_1
    invoke-static {v14}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    const-string/jumbo v2, "history"

    .line 74
    .line 75
    .line 76
    invoke-static {v15, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v2, "ver"

    .line 80
    .line 81
    .line 82
    invoke-interface {v15, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, 0x2

    .line 87
    if-lt v2, v3, :cond_a

    .line 88
    .line 89
    const-string/jumbo v0, "ov"

    .line 90
    .line 91
    .line 92
    invoke-interface {v15, v1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v16

    .line 96
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    move-object/from16 v18, v1

    .line 101
    .line 102
    :goto_1
    invoke-static {v15, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    const-string/jumbo v0, "ops"

    .line 109
    .line 110
    .line 111
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    move-object v0, v15

    .line 122
    move/from16 v1, p6

    .line 123
    .line 124
    move-object/from16 v2, p7

    .line 125
    .line 126
    move-object/from16 v3, p8

    .line 127
    .line 128
    move-object/from16 v4, p9

    .line 129
    .line 130
    move/from16 v5, p10

    .line 131
    .line 132
    move-wide/from16 v6, p11

    .line 133
    .line 134
    move-wide/from16 v8, p13

    .line 135
    .line 136
    move/from16 v10, p15

    .line 137
    .line 138
    move/from16 v19, v11

    .line 139
    .line 140
    move-object/from16 v11, p16

    .line 141
    .line 142
    invoke-static/range {v0 .. v11}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readeHistoricalOpsDLocked(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-nez v0, :cond_4

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_4
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_5

    .line 154
    .line 155
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    move-object v1, v0

    .line 161
    goto :goto_4

    .line 162
    :cond_5
    if-nez v18, :cond_6

    .line 163
    .line 164
    new-instance v1, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    move-object/from16 v1, v18

    .line 171
    .line 172
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-object/from16 v18, v1

    .line 176
    .line 177
    :goto_3
    move/from16 v11, v19

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    move/from16 v19, v11

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    if-eqz p16, :cond_9

    .line 184
    .line 185
    aget-wide v0, p16, v13

    .line 186
    .line 187
    add-long v0, v0, v16

    .line 188
    .line 189
    aput-wide v0, p16, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .line 191
    :cond_9
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_a
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 196
    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    :goto_4
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    .line 215
    .line 216
    goto :goto_5

    .line 217
    :catchall_1
    move-exception v0

    .line 218
    move-object v2, v0

    .line 219
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    :goto_5
    throw v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 223
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v1, "No history file: "

    .line 226
    .line 227
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const-string v1, "HistoricalRegistry$Persistence"

    .line 242
    .line 243
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v18

    .line 250
    :goto_6
    return-object v18

    .line 251
    :cond_b
    :goto_7
    if-eqz v3, :cond_d

    .line 252
    .line 253
    invoke-interface/range {p18 .. p18}, Ljava/util/Set;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_c
    return-object v1

    .line 261
    :cond_d
    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    return-object v0

    .line 266
    :cond_e
    :goto_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    return-object v0
.end method

.method public final readHistoryDLocked()Ljava/util/List;
    .locals 11

    .line 1
    const/4 v5, 0x0

    .line 2
    const-wide/16 v6, 0x0

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const-wide v8, 0x7fffffffffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/16 v10, 0x1f

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 34
    .line 35
    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 36
    .line 37
    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v0
.end method
