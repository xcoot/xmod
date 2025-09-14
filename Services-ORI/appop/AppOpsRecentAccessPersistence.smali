.class public final Lcom/android/server/appop/AppOpsRecentAccessPersistence;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public final mRecentAccessesFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>(Landroid/util/AtomicFile;Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 7
    .line 8
    return-void
.end method

.method public static writeDeviceAttributedOps(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appop/AppOpsService$Op;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_b

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Landroid/util/ArrayMap;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-ge v6, v7, :cond_a

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    check-cast v8, Lcom/android/server/appop/AttributedOp;

    .line 53
    .line 54
    invoke-virtual {v8}, Lcom/android/server/appop/AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v8}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    const/4 v10, 0x0

    .line 63
    :goto_2
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    if-ge v10, v11, :cond_9

    .line 68
    .line 69
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    check-cast v11, Ljava/lang/Long;

    .line 74
    .line 75
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v11

    .line 79
    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    move/from16 v16, v6

    .line 88
    .line 89
    invoke-virtual {v8, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    move-object/from16 v17, v2

    .line 94
    .line 95
    invoke-virtual {v8, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    move-object/from16 v18, v9

    .line 100
    .line 101
    move/from16 v19, v10

    .line 102
    .line 103
    invoke-virtual {v8, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    .line 104
    .line 105
    .line 106
    move-result-wide v9

    .line 107
    invoke-virtual {v8, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    const-wide/16 v20, 0x0

    .line 112
    .line 113
    cmp-long v14, v5, v20

    .line 114
    .line 115
    if-gtz v14, :cond_0

    .line 116
    .line 117
    cmp-long v22, v1, v20

    .line 118
    .line 119
    if-gtz v22, :cond_0

    .line 120
    .line 121
    cmp-long v22, v9, v20

    .line 122
    .line 123
    if-gtz v22, :cond_0

    .line 124
    .line 125
    if-nez v13, :cond_0

    .line 126
    .line 127
    move-object/from16 v23, v4

    .line 128
    .line 129
    move-object/from16 v24, v8

    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_0
    const/4 v15, 0x0

    .line 134
    move-object/from16 v23, v4

    .line 135
    .line 136
    const-string/jumbo v4, "st"

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, v15, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    .line 141
    .line 142
    move-object/from16 v24, v8

    .line 143
    .line 144
    if-eqz v7, :cond_1

    .line 145
    .line 146
    const-string/jumbo v8, "id"

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v15, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    .line 151
    .line 152
    :cond_1
    const-string/jumbo v8, "n"

    .line 153
    .line 154
    .line 155
    invoke-interface {v0, v15, v8, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    .line 157
    .line 158
    const-string/jumbo v8, "default:0"

    .line 159
    .line 160
    .line 161
    invoke-static {v3, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    if-nez v11, :cond_2

    .line 166
    .line 167
    const-string/jumbo v11, "dv"

    .line 168
    .line 169
    .line 170
    invoke-interface {v0, v15, v11, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    .line 172
    .line 173
    :cond_2
    if-lez v14, :cond_3

    .line 174
    .line 175
    const-string/jumbo v11, "t"

    .line 176
    .line 177
    .line 178
    invoke-interface {v0, v15, v11, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    .line 180
    .line 181
    :cond_3
    cmp-long v5, v1, v20

    .line 182
    .line 183
    if-lez v5, :cond_4

    .line 184
    .line 185
    const-string/jumbo v5, "r"

    .line 186
    .line 187
    .line 188
    invoke-interface {v0, v15, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    .line 190
    .line 191
    :cond_4
    cmp-long v1, v9, v20

    .line 192
    .line 193
    if-lez v1, :cond_5

    .line 194
    .line 195
    const-string/jumbo v1, "d"

    .line 196
    .line 197
    .line 198
    invoke-interface {v0, v15, v1, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    .line 200
    .line 201
    :cond_5
    if-eqz v13, :cond_8

    .line 202
    .line 203
    const-string/jumbo v1, "pu"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-interface {v0, v15, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    if-eqz v1, :cond_6

    .line 218
    .line 219
    const-string/jumbo v1, "pp"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-interface {v0, v15, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    .line 228
    .line 229
    :cond_6
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    if-eqz v1, :cond_7

    .line 234
    .line 235
    const-string/jumbo v1, "pc"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-interface {v0, v15, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    .line 244
    .line 245
    :cond_7
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getDeviceId()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    if-eqz v1, :cond_8

    .line 250
    .line 251
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getDeviceId()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-static {v1, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-nez v1, :cond_8

    .line 260
    .line 261
    const-string/jumbo v1, "pdv"

    .line 262
    .line 263
    .line 264
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getDeviceId()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-interface {v0, v15, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    .line 270
    .line 271
    :cond_8
    invoke-interface {v0, v15, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    .line 273
    .line 274
    :goto_3
    add-int/lit8 v10, v19, 0x1

    .line 275
    .line 276
    move-object/from16 v1, p1

    .line 277
    .line 278
    move/from16 v6, v16

    .line 279
    .line 280
    move-object/from16 v2, v17

    .line 281
    .line 282
    move-object/from16 v9, v18

    .line 283
    .line 284
    move-object/from16 v4, v23

    .line 285
    .line 286
    move-object/from16 v8, v24

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :cond_9
    move-object/from16 v17, v2

    .line 291
    .line 292
    move-object/from16 v23, v4

    .line 293
    .line 294
    move/from16 v16, v6

    .line 295
    .line 296
    add-int/lit8 v6, v16, 0x1

    .line 297
    .line 298
    move-object/from16 v1, p1

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_a
    move-object/from16 v1, p1

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_b
    return-void
.end method


# virtual methods
.method public final readPackage(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .locals 32

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "n"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v9

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 12
    .line 13
    .line 14
    move-result v10

    .line 15
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v11, 0x1

    .line 20
    if-eq v3, v11, :cond_13

    .line 21
    .line 22
    const/4 v12, 0x3

    .line 23
    if-ne v3, v12, :cond_1

    .line 24
    .line 25
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-le v4, v10, :cond_13

    .line 30
    .line 31
    :cond_1
    if-eq v3, v12, :cond_0

    .line 32
    .line 33
    const/4 v13, 0x4

    .line 34
    if-ne v3, v13, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string/jumbo v4, "uid"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const-string v14, "Unknown element under <pkg>: "

    .line 49
    .line 50
    const-string v15, "AppOpsRecentAccessPersistence"

    .line 51
    .line 52
    if-eqz v3, :cond_12

    .line 53
    .line 54
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    new-instance v8, Lcom/android/server/appop/AppOpsService$UidState;

    .line 59
    .line 60
    move-object/from16 v7, p0

    .line 61
    .line 62
    iget-object v6, v7, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 63
    .line 64
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-direct {v8, v6, v3}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 68
    .line 69
    .line 70
    move-object/from16 v5, p2

    .line 71
    .line 72
    invoke-virtual {v5, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eq v3, v11, :cond_3

    .line 84
    .line 85
    if-ne v3, v12, :cond_4

    .line 86
    .line 87
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-le v11, v4, :cond_3

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move-object v5, v1

    .line 95
    move-object/from16 v30, v2

    .line 96
    .line 97
    goto/16 :goto_c

    .line 98
    .line 99
    :cond_4
    :goto_2
    if-eq v3, v12, :cond_11

    .line 100
    .line 101
    if-ne v3, v13, :cond_5

    .line 102
    .line 103
    :goto_3
    const/4 v11, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string/jumbo v11, "op"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_10

    .line 117
    .line 118
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    new-instance v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 123
    .line 124
    iget v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 125
    .line 126
    move-object/from16 v16, v3

    .line 127
    .line 128
    move/from16 v17, v4

    .line 129
    .line 130
    move-object v4, v6

    .line 131
    move-object v5, v8

    .line 132
    move-object/from16 v18, v6

    .line 133
    .line 134
    move-object v6, v9

    .line 135
    move v7, v11

    .line 136
    move-object v11, v8

    .line 137
    move v8, v1

    .line 138
    invoke-direct/range {v3 .. v8}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    const/4 v4, 0x1

    .line 150
    if-eq v3, v4, :cond_6

    .line 151
    .line 152
    if-ne v3, v12, :cond_7

    .line 153
    .line 154
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-le v5, v1, :cond_6

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_6
    move-object/from16 v30, v2

    .line 162
    .line 163
    move-object/from16 v4, v16

    .line 164
    .line 165
    const/4 v5, 0x0

    .line 166
    goto/16 :goto_a

    .line 167
    .line 168
    :cond_7
    :goto_5
    if-eq v3, v12, :cond_e

    .line 169
    .line 170
    if-ne v3, v13, :cond_8

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const-string/jumbo v5, "st"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_c

    .line 185
    .line 186
    const-string/jumbo v3, "id"

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    const/4 v5, 0x0

    .line 194
    invoke-interface {v0, v5, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 195
    .line 196
    .line 197
    move-result-wide v6

    .line 198
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    const-string/jumbo v7, "dv"

    .line 207
    .line 208
    .line 209
    invoke-interface {v0, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    const-string/jumbo v4, "t"

    .line 214
    .line 215
    .line 216
    const-wide/16 v12, 0x0

    .line 217
    .line 218
    invoke-interface {v0, v5, v4, v12, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 219
    .line 220
    .line 221
    move-result-wide v20

    .line 222
    const-string/jumbo v4, "r"

    .line 223
    .line 224
    .line 225
    move/from16 v31, v1

    .line 226
    .line 227
    move-object/from16 v30, v2

    .line 228
    .line 229
    invoke-interface {v0, v5, v4, v12, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 230
    .line 231
    .line 232
    move-result-wide v1

    .line 233
    const-string/jumbo v4, "d"

    .line 234
    .line 235
    .line 236
    const-wide/16 v12, -0x1

    .line 237
    .line 238
    invoke-interface {v0, v5, v4, v12, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 239
    .line 240
    .line 241
    move-result-wide v22

    .line 242
    const-string/jumbo v4, "pp"

    .line 243
    .line 244
    .line 245
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v25

    .line 249
    const-string/jumbo v4, "pu"

    .line 250
    .line 251
    .line 252
    const/4 v12, -0x1

    .line 253
    invoke-interface {v0, v5, v4, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 254
    .line 255
    .line 256
    move-result v24

    .line 257
    const-string/jumbo v4, "pc"

    .line 258
    .line 259
    .line 260
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v26

    .line 264
    const-string/jumbo v4, "pdv"

    .line 265
    .line 266
    .line 267
    invoke-interface {v0, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v27

    .line 271
    if-eqz v7, :cond_a

    .line 272
    .line 273
    const-string v4, ""

    .line 274
    .line 275
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    if-eqz v4, :cond_9

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_9
    :goto_6
    move-object/from16 v4, v16

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_a
    :goto_7
    const-string/jumbo v7, "default:0"

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :goto_8
    invoke-virtual {v4, v4, v3, v7}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    const-wide/16 v12, 0x0

    .line 294
    .line 295
    cmp-long v7, v20, v12

    .line 296
    .line 297
    if-lez v7, :cond_b

    .line 298
    .line 299
    move-object/from16 v19, v3

    .line 300
    .line 301
    move/from16 v28, v8

    .line 302
    .line 303
    move/from16 v29, v6

    .line 304
    .line 305
    invoke-virtual/range {v19 .. v29}, Lcom/android/server/appop/AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 306
    .line 307
    .line 308
    :cond_b
    const-wide/16 v12, 0x0

    .line 309
    .line 310
    cmp-long v7, v1, v12

    .line 311
    .line 312
    if-lez v7, :cond_d

    .line 313
    .line 314
    invoke-virtual {v3, v8, v6, v1, v2}, Lcom/android/server/appop/AttributedOp;->rejected(IIJ)V

    .line 315
    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_c
    move/from16 v31, v1

    .line 319
    .line 320
    move-object/from16 v30, v2

    .line 321
    .line 322
    move-object/from16 v4, v16

    .line 323
    .line 324
    const/4 v5, 0x0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v2, "Unknown element under <op>: "

    .line 328
    .line 329
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 347
    .line 348
    .line 349
    :cond_d
    :goto_9
    move-object/from16 v16, v4

    .line 350
    .line 351
    move-object/from16 v2, v30

    .line 352
    .line 353
    move/from16 v1, v31

    .line 354
    .line 355
    const/4 v12, 0x3

    .line 356
    const/4 v13, 0x4

    .line 357
    goto/16 :goto_4

    .line 358
    .line 359
    :cond_e
    const/4 v5, 0x0

    .line 360
    goto/16 :goto_4

    .line 361
    .line 362
    :goto_a
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 363
    .line 364
    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 369
    .line 370
    if-nez v1, :cond_f

    .line 371
    .line 372
    new-instance v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 373
    .line 374
    invoke-direct {v1, v9, v11}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 375
    .line 376
    .line 377
    iget-object v2, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 378
    .line 379
    invoke-virtual {v2, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    :cond_f
    iget v2, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 383
    .line 384
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    goto :goto_b

    .line 388
    :cond_10
    move-object v5, v1

    .line 389
    move-object/from16 v30, v2

    .line 390
    .line 391
    move/from16 v17, v4

    .line 392
    .line 393
    move-object/from16 v18, v6

    .line 394
    .line 395
    move-object v11, v8

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 416
    .line 417
    .line 418
    :goto_b
    move-object/from16 v7, p0

    .line 419
    .line 420
    move-object v1, v5

    .line 421
    move-object v8, v11

    .line 422
    move/from16 v4, v17

    .line 423
    .line 424
    move-object/from16 v6, v18

    .line 425
    .line 426
    move-object/from16 v2, v30

    .line 427
    .line 428
    const/4 v11, 0x1

    .line 429
    const/4 v12, 0x3

    .line 430
    const/4 v13, 0x4

    .line 431
    move-object/from16 v5, p2

    .line 432
    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :cond_11
    move-object/from16 v7, p0

    .line 436
    .line 437
    move-object/from16 v5, p2

    .line 438
    .line 439
    goto/16 :goto_3

    .line 440
    .line 441
    :cond_12
    move-object v5, v1

    .line 442
    move-object/from16 v30, v2

    .line 443
    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 464
    .line 465
    .line 466
    :goto_c
    move-object v1, v5

    .line 467
    move-object/from16 v2, v30

    .line 468
    .line 469
    goto/16 :goto_0

    .line 470
    .line 471
    :cond_13
    return-void
.end method

.method public final readRecentAccesses(Landroid/util/SparseArray;)V
    .locals 8

    .line 1
    const-string v0, "No existing app ops "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_2
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_0
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, 0x2

    .line 32
    if-eq v3, v5, :cond_0

    .line 33
    .line 34
    if-eq v3, v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    if-ne v3, v5, :cond_7

    .line 38
    .line 39
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    :cond_1
    :goto_1
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eq v5, v4, :cond_6

    .line 48
    .line 49
    const/4 v6, 0x3

    .line 50
    if-ne v5, v6, :cond_2

    .line 51
    .line 52
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-le v7, v3, :cond_6

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception v2

    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :catch_0
    move-exception v2

    .line 63
    goto :goto_4

    .line 64
    :cond_2
    :goto_2
    if-eq v5, v6, :cond_1

    .line 65
    .line 66
    const/4 v6, 0x4

    .line 67
    if-ne v5, v6, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const-string/jumbo v6, "pkg"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0, v2, p1}, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->readPackage(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const-string/jumbo v6, "uid"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_5

    .line 95
    .line 96
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    const-string v5, "AppOpsRecentAccessPersistence"

    .line 101
    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v7, "Unknown element under <app-ops>: "

    .line 108
    .line 109
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    .line 132
    .line 133
    goto :goto_5

    .line 134
    :catchall_1
    move-exception p0

    .line 135
    goto :goto_7

    .line 136
    :cond_7
    :try_start_4
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    const-string/jumbo v3, "no start tag found"

    .line 139
    .line 140
    .line 141
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    :goto_4
    :try_start_5
    const-string v3, "AppOpsRecentAccessPersistence"

    .line 146
    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v5, "Failed parsing "

    .line 153
    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    .line 166
    .line 167
    :try_start_6
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 171
    .line 172
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 173
    .line 174
    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :catch_1
    :goto_5
    monitor-exit v1

    .line 179
    return-void

    .line 180
    :goto_6
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 181
    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 184
    .line 185
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 186
    .line 187
    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 188
    .line 189
    .line 190
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 191
    .line 192
    .line 193
    :catch_2
    :try_start_8
    throw v2

    .line 194
    :catch_3
    const-string p1, "AppOpsRecentAccessPersistence"

    .line 195
    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p0, "; starting empty"

    .line 211
    .line 212
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    monitor-exit v1

    .line 223
    return-void

    .line 224
    :goto_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 225
    throw p0
.end method

.method public final writeRecentAccesses(Landroid/util/SparseArray;)V
    .locals 14

    .line 1
    const-string v0, "Failed to write state: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 20
    .line 21
    .line 22
    const-string v3, "app-ops"

    .line 23
    .line 24
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v3, "v"

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    invoke-interface {v2, v4, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    move v5, v3

    .line 36
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ge v5, v6, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/android/server/appop/AppOpsService$UidState;

    .line 47
    .line 48
    iget v7, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 49
    .line 50
    move v8, v3

    .line 51
    :goto_1
    iget-object v9, v6, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-ge v8, v9, :cond_1

    .line 58
    .line 59
    iget-object v9, v6, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    check-cast v9, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v10, v6, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    check-cast v10, Lcom/android/server/appop/AppOpsService$Ops;

    .line 74
    .line 75
    const-string/jumbo v11, "pkg"

    .line 76
    .line 77
    .line 78
    invoke-interface {v2, v4, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    .line 80
    .line 81
    const-string/jumbo v11, "n"

    .line 82
    .line 83
    .line 84
    invoke-interface {v2, v4, v11, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v9, "uid"

    .line 88
    .line 89
    .line 90
    invoke-interface {v2, v4, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    .line 92
    .line 93
    const-string/jumbo v9, "n"

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v4, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    .line 98
    .line 99
    move v9, v3

    .line 100
    :goto_2
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    if-ge v9, v11, :cond_0

    .line 105
    .line 106
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    check-cast v11, Lcom/android/server/appop/AppOpsService$Op;

    .line 111
    .line 112
    const-string/jumbo v12, "op"

    .line 113
    .line 114
    .line 115
    invoke-interface {v2, v4, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    .line 117
    .line 118
    const-string/jumbo v12, "n"

    .line 119
    .line 120
    .line 121
    iget v13, v11, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 122
    .line 123
    invoke-interface {v2, v4, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v11}, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->writeDeviceAttributedOps(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appop/AppOpsService$Op;)V

    .line 127
    .line 128
    .line 129
    const-string/jumbo v11, "op"

    .line 130
    .line 131
    .line 132
    invoke-interface {v2, v4, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    .line 134
    .line 135
    add-int/lit8 v9, v9, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_5

    .line 140
    :catch_0
    move-exception p1

    .line 141
    goto :goto_3

    .line 142
    :cond_0
    const-string/jumbo v9, "uid"

    .line 143
    .line 144
    .line 145
    invoke-interface {v2, v4, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    .line 147
    .line 148
    const-string/jumbo v9, "pkg"

    .line 149
    .line 150
    .line 151
    invoke-interface {v2, v4, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    .line 153
    .line 154
    add-int/lit8 v8, v8, 0x1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_2
    const-string p1, "app-ops"

    .line 161
    .line 162
    invoke-interface {v2, v4, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    .line 164
    .line 165
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :goto_3
    :try_start_2
    const-string v2, "AppOpsRecentAccessPersistence"

    .line 175
    .line 176
    const-string v3, "Failed to write state, restoring backup."

    .line 177
    .line 178
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 182
    .line 183
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 184
    .line 185
    .line 186
    :goto_4
    monitor-exit v1

    .line 187
    return-void

    .line 188
    :catch_1
    move-exception p0

    .line 189
    const-string p1, "AppOpsRecentAccessPersistence"

    .line 190
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 208
    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    throw p0
.end method
