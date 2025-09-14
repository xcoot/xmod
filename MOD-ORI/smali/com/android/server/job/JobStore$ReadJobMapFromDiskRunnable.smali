.class public final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field public final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field public final rtcGood:Z

.field public final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    return-void
.end method

.method public static buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "net-capabilities-csv"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "net-forbidden-capabilities-csv"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string/jumbo v3, "net-transport-types-csv"

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v4, v0

    .line 29
    move-object v5, v4

    .line 30
    move-object v6, v5

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const-string/jumbo v4, "net-capabilities"

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string/jumbo v5, "net-unwanted-capabilities"

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string/jumbo v6, "net-transport-types"

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    :goto_1
    const/4 v7, 0x1

    .line 54
    const/4 v8, 0x0

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    .line 60
    .line 61
    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v1}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    array-length v5, v1

    .line 73
    move v6, v8

    .line 74
    :goto_2
    if-ge v6, v5, :cond_2

    .line 75
    .line 76
    aget v9, v1, v6

    .line 77
    .line 78
    invoke-virtual {v4, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 79
    .line 80
    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-static {v2}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    array-length v2, v1

    .line 89
    move v5, v8

    .line 90
    :goto_3
    if-ge v5, v2, :cond_3

    .line 91
    .line 92
    aget v6, v1, v5

    .line 93
    .line 94
    invoke-virtual {v4, v6}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 95
    .line 96
    .line 97
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    invoke-static {v3}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    array-length v2, v1

    .line 105
    :goto_4
    if-ge v8, v2, :cond_4

    .line 106
    .line 107
    aget v3, v1, v8

    .line 108
    .line 109
    invoke-virtual {v4, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 110
    .line 111
    .line 112
    add-int/lit8 v8, v8, 0x1

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_4
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string/jumbo v2, "estimated-download-bytes"

    .line 124
    .line 125
    .line 126
    const-wide/16 v3, -0x1

    .line 127
    .line 128
    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 129
    .line 130
    .line 131
    move-result-wide v5

    .line 132
    const-string/jumbo v2, "estimated-upload-bytes"

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v8

    .line 139
    invoke-virtual {v1, v5, v6, v8, v9}, Landroid/app/job/JobInfo$Builder;->setEstimatedNetworkBytes(JJ)Landroid/app/job/JobInfo$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string/jumbo v2, "minimum-network-chunk-bytes"

    .line 144
    .line 145
    .line 146
    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 147
    .line 148
    .line 149
    move-result-wide v2

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumNetworkChunkBytes(J)Landroid/app/job/JobInfo$Builder;

    .line 151
    .line 152
    .line 153
    goto/16 :goto_8

    .line 154
    .line 155
    :cond_5
    if-eqz v4, :cond_c

    .line 156
    .line 157
    if-eqz v6, :cond_c

    .line 158
    .line 159
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 160
    .line 161
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v2

    .line 172
    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    array-length v3, v2

    .line 177
    move v4, v8

    .line 178
    :goto_5
    const/16 v9, 0x19

    .line 179
    .line 180
    if-ge v4, v3, :cond_7

    .line 181
    .line 182
    aget v10, v2, v4

    .line 183
    .line 184
    if-gt v10, v9, :cond_6

    .line 185
    .line 186
    invoke-virtual {v1, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 187
    .line 188
    .line 189
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_7
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v2

    .line 196
    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    array-length v3, v2

    .line 201
    move v4, v8

    .line 202
    :goto_6
    if-ge v4, v3, :cond_9

    .line 203
    .line 204
    aget v5, v2, v4

    .line 205
    .line 206
    if-gt v5, v9, :cond_8

    .line 207
    .line 208
    invoke-virtual {v1, v5}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 209
    .line 210
    .line 211
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_9
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 215
    .line 216
    .line 217
    move-result-wide v2

    .line 218
    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    array-length v3, v2

    .line 223
    :goto_7
    if-ge v8, v3, :cond_b

    .line 224
    .line 225
    aget v4, v2, v8

    .line 226
    .line 227
    const/4 v5, 0x7

    .line 228
    if-gt v4, v5, :cond_a

    .line 229
    .line 230
    invoke-virtual {v1, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 231
    .line 232
    .line 233
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_b
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 241
    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_c
    const-string/jumbo v1, "connectivity"

    .line 245
    .line 246
    .line 247
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    if-eqz v1, :cond_d

    .line 252
    .line 253
    invoke-virtual {p0, v7}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 254
    .line 255
    .line 256
    :cond_d
    const-string/jumbo v1, "metered"

    .line 257
    .line 258
    .line 259
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    if-eqz v1, :cond_e

    .line 264
    .line 265
    const/4 v1, 0x4

    .line 266
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 267
    .line 268
    .line 269
    :cond_e
    const-string/jumbo v1, "unmetered"

    .line 270
    .line 271
    .line 272
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    if-eqz v1, :cond_f

    .line 277
    .line 278
    const/4 v1, 0x2

    .line 279
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 280
    .line 281
    .line 282
    :cond_f
    const-string/jumbo v1, "not-roaming"

    .line 283
    .line 284
    .line 285
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    if-eqz v1, :cond_10

    .line 290
    .line 291
    const/4 v1, 0x3

    .line 292
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 293
    .line 294
    .line 295
    :cond_10
    :goto_8
    const-string/jumbo v1, "idle"

    .line 296
    .line 297
    .line 298
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    if-eqz v1, :cond_11

    .line 303
    .line 304
    invoke-virtual {p0, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 305
    .line 306
    .line 307
    :cond_11
    const-string/jumbo v1, "charging"

    .line 308
    .line 309
    .line 310
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    if-eqz v1, :cond_12

    .line 315
    .line 316
    invoke-virtual {p0, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 317
    .line 318
    .line 319
    :cond_12
    const-string v1, "battery-not-low"

    .line 320
    .line 321
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    if-eqz v1, :cond_13

    .line 326
    .line 327
    invoke-virtual {p0, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 328
    .line 329
    .line 330
    :cond_13
    const-string/jumbo v1, "storage-not-low"

    .line 331
    .line 332
    .line 333
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    if-eqz p1, :cond_14

    .line 338
    .line 339
    invoke-virtual {p0, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 340
    .line 341
    .line 342
    :cond_14
    return-void
.end method

.method public static readJobMapImpl(JLjava/io/InputStream;Z)Ljava/util/List;
    .locals 38

    .line 1
    move-wide/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x2

    .line 13
    const-string v6, "JobStore"

    .line 14
    .line 15
    if-eq v0, v5, :cond_0

    .line 16
    .line 17
    if-eq v0, v4, :cond_0

    .line 18
    .line 19
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "Start tag: "

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v7, 0x0

    .line 46
    if-ne v0, v4, :cond_2

    .line 47
    .line 48
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    const-string v0, "No persisted jobs."

    .line 53
    .line 54
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    return-object v7

    .line 58
    :cond_2
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string/jumbo v8, "job-info"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_32

    .line 70
    .line 71
    new-instance v8, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string/jumbo v0, "version"

    .line 77
    .line 78
    .line 79
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    if-gt v9, v4, :cond_31

    .line 84
    .line 85
    if-gez v9, :cond_3

    .line 86
    .line 87
    goto/16 :goto_24

    .line 88
    .line 89
    :cond_3
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    :goto_1
    if-ne v0, v5, :cond_2f

    .line 94
    .line 95
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string/jumbo v10, "job"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_2f

    .line 107
    .line 108
    :try_start_0
    const-string/jumbo v0, "jobid"

    .line 109
    .line 110
    .line 111
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const-string/jumbo v10, "package"

    .line 116
    .line 117
    .line 118
    invoke-interface {v3, v7, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    if-nez v10, :cond_4

    .line 123
    .line 124
    move-object v10, v7

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    :goto_2
    const-string/jumbo v11, "class"

    .line 131
    .line 132
    .line 133
    invoke-interface {v3, v7, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    if-nez v11, :cond_5

    .line 138
    .line 139
    move-object v11, v7

    .line 140
    goto :goto_3

    .line 141
    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    :goto_3
    new-instance v12, Landroid/content/ComponentName;

    .line 146
    .line 147
    invoke-direct {v12, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    new-instance v10, Landroid/app/job/JobInfo$Builder;

    .line 151
    .line 152
    invoke-direct {v10, v0, v12}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 156
    .line 157
    .line 158
    const-string/jumbo v0, "uid"

    .line 159
    .line 160
    .line 161
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    const-string/jumbo v0, "priority"

    .line 170
    .line 171
    .line 172
    if-nez v9, :cond_6

    .line 173
    .line 174
    :try_start_1
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-eqz v0, :cond_8

    .line 179
    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual {v10, v0}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :catch_0
    move-object/from16 v33, v8

    .line 189
    .line 190
    move/from16 v35, v9

    .line 191
    .line 192
    move v9, v5

    .line 193
    goto/16 :goto_21

    .line 194
    .line 195
    :cond_6
    if-lt v9, v4, :cond_8

    .line 196
    .line 197
    const-string v11, "bias"

    .line 198
    .line 199
    invoke-interface {v3, v7, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    if-eqz v11, :cond_7

    .line 204
    .line 205
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    invoke-virtual {v10, v11}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    .line 210
    .line 211
    .line 212
    :cond_7
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_8

    .line 217
    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-virtual {v10, v0}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 223
    .line 224
    .line 225
    :cond_8
    :goto_4
    const-string/jumbo v0, "flags"

    .line 226
    .line 227
    .line 228
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_9

    .line 233
    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    invoke-virtual {v10, v0}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 239
    .line 240
    .line 241
    :cond_9
    const-string/jumbo v0, "internalFlags"

    .line 242
    .line 243
    .line 244
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    if-eqz v0, :cond_a

    .line 249
    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    move/from16 v31, v0

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_a
    const/16 v31, 0x0

    .line 258
    .line 259
    :goto_5
    const-string/jumbo v0, "sourceUserId"

    .line 260
    .line 261
    .line 262
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-nez v0, :cond_b

    .line 267
    .line 268
    const/4 v0, -0x1

    .line 269
    :goto_6
    move v14, v0

    .line 270
    goto :goto_7

    .line 271
    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    goto :goto_6

    .line 276
    :goto_7
    const-string/jumbo v0, "lastSuccessfulRunTime"

    .line 277
    .line 278
    .line 279
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const-wide/16 v11, 0x0

    .line 284
    .line 285
    if-nez v0, :cond_c

    .line 286
    .line 287
    move-wide/from16 v25, v11

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_c
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 291
    .line 292
    .line 293
    move-result-wide v16

    .line 294
    move-wide/from16 v25, v16

    .line 295
    .line 296
    :goto_8
    const-string/jumbo v0, "lastFailedRunTime"

    .line 297
    .line 298
    .line 299
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    if-nez v0, :cond_d

    .line 304
    .line 305
    move-wide/from16 v27, v11

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 309
    .line 310
    .line 311
    move-result-wide v16

    .line 312
    move-wide/from16 v27, v16

    .line 313
    .line 314
    :goto_9
    const-string/jumbo v0, "cumulativeExecutionTime"

    .line 315
    .line 316
    .line 317
    invoke-interface {v3, v7, v0, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 318
    .line 319
    .line 320
    move-result-wide v29
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 321
    const-string/jumbo v0, "sourcePackageName"

    .line 322
    .line 323
    .line 324
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v15

    .line 328
    const-string/jumbo v0, "namespace"

    .line 329
    .line 330
    .line 331
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    if-nez v0, :cond_e

    .line 336
    .line 337
    move-object/from16 v17, v7

    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    move-object/from16 v17, v0

    .line 345
    .line 346
    :goto_a
    const-string/jumbo v0, "sourceTag"

    .line 347
    .line 348
    .line 349
    invoke-interface {v3, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    if-nez v0, :cond_f

    .line 354
    .line 355
    move-object/from16 v18, v7

    .line 356
    .line 357
    goto :goto_b

    .line 358
    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    move-object/from16 v18, v0

    .line 363
    .line 364
    :goto_b
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    const/4 v4, 0x4

    .line 369
    if-eq v0, v4, :cond_2c

    .line 370
    .line 371
    if-ne v0, v5, :cond_10

    .line 372
    .line 373
    const-string/jumbo v0, "constraints"

    .line 374
    .line 375
    .line 376
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-nez v0, :cond_11

    .line 385
    .line 386
    :cond_10
    move-object/from16 v33, v8

    .line 387
    .line 388
    move/from16 v35, v9

    .line 389
    .line 390
    move v9, v5

    .line 391
    goto/16 :goto_1e

    .line 392
    .line 393
    :cond_11
    :try_start_2
    invoke-static {v10, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_a

    .line 394
    .line 395
    .line 396
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 397
    .line 398
    .line 399
    :goto_c
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eq v0, v4, :cond_2b

    .line 404
    .line 405
    if-eq v0, v5, :cond_12

    .line 406
    .line 407
    move-object/from16 v33, v8

    .line 408
    .line 409
    move/from16 v35, v9

    .line 410
    .line 411
    const/4 v7, 0x0

    .line 412
    move v9, v5

    .line 413
    goto/16 :goto_22

    .line 414
    .line 415
    :cond_12
    const-string/jumbo v0, "delay"

    .line 416
    .line 417
    .line 418
    const/4 v7, 0x0

    .line 419
    invoke-interface {v3, v7, v0, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 420
    .line 421
    .line 422
    move-result-wide v19

    .line 423
    const-string/jumbo v0, "deadline"

    .line 424
    .line 425
    .line 426
    const-wide v4, 0x7fffffffffffffffL

    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    invoke-interface {v3, v7, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 432
    .line 433
    .line 434
    move-result-wide v21

    .line 435
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    invoke-static {v7, v1, v2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    const-string/jumbo v4, "periodic"

    .line 452
    .line 453
    .line 454
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v4

    .line 462
    if-eqz v4, :cond_16

    .line 463
    .line 464
    :try_start_3
    const-string/jumbo v4, "period"

    .line 465
    .line 466
    .line 467
    const/4 v5, 0x0

    .line 468
    invoke-interface {v3, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 473
    .line 474
    .line 475
    move-result-wide v11

    .line 476
    const-string/jumbo v4, "flex"

    .line 477
    .line 478
    .line 479
    invoke-interface {v3, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    if-eqz v4, :cond_13

    .line 484
    .line 485
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 490
    .line 491
    .line 492
    move-result-wide v4

    .line 493
    goto :goto_d

    .line 494
    :catch_1
    move-object/from16 v33, v8

    .line 495
    .line 496
    move/from16 v35, v9

    .line 497
    .line 498
    goto/16 :goto_f

    .line 499
    .line 500
    :cond_13
    move-wide v4, v11

    .line 501
    :goto_d
    invoke-virtual {v10, v11, v12, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 502
    .line 503
    .line 504
    move-object/from16 v21, v7

    .line 505
    .line 506
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v7, Ljava/lang/Long;

    .line 509
    .line 510
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 511
    .line 512
    .line 513
    move-result-wide v19

    .line 514
    add-long v22, v1, v11

    .line 515
    .line 516
    add-long v22, v22, v4

    .line 517
    .line 518
    cmp-long v7, v19, v22

    .line 519
    .line 520
    if-lez v7, :cond_14

    .line 521
    .line 522
    add-long v19, v1, v4

    .line 523
    .line 524
    add-long v19, v19, v11

    .line 525
    .line 526
    sub-long v4, v19, v4

    .line 527
    .line 528
    const-string v7, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    .line 529
    .line 530
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v11

    .line 534
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v12, Ljava/lang/Long;

    .line 537
    .line 538
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 539
    .line 540
    .line 541
    move-result-wide v22

    .line 542
    const-wide/16 v33, 0x3e8

    .line 543
    .line 544
    div-long v22, v22, v33

    .line 545
    .line 546
    invoke-static/range {v22 .. v23}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v12

    .line 550
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v0, Ljava/lang/Long;

    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 555
    .line 556
    .line 557
    move-result-wide v22

    .line 558
    div-long v22, v22, v33

    .line 559
    .line 560
    invoke-static/range {v22 .. v23}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    div-long v22, v4, v33
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 565
    .line 566
    move/from16 v35, v9

    .line 567
    .line 568
    :try_start_4
    invoke-static/range {v22 .. v23}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v9

    .line 572
    div-long v22, v19, v33
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 573
    .line 574
    move-object/from16 v33, v8

    .line 575
    .line 576
    :try_start_5
    invoke-static/range {v22 .. v23}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v8

    .line 580
    filled-new-array {v11, v12, v0, v9, v8}, [Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 600
    .line 601
    .line 602
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    .line 603
    goto :goto_e

    .line 604
    :catch_2
    move-object/from16 v33, v8

    .line 605
    .line 606
    goto :goto_f

    .line 607
    :cond_14
    move-object/from16 v33, v8

    .line 608
    .line 609
    move/from16 v35, v9

    .line 610
    .line 611
    :cond_15
    :goto_e
    move-object v4, v0

    .line 612
    goto :goto_11

    .line 613
    :catch_3
    :goto_f
    const-string v0, "Error reading periodic execution criteria, skipping."

    .line 614
    .line 615
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    const/4 v7, 0x0

    .line 619
    const/4 v9, 0x2

    .line 620
    goto/16 :goto_22

    .line 621
    .line 622
    :cond_16
    move-object/from16 v21, v7

    .line 623
    .line 624
    move-object/from16 v33, v8

    .line 625
    .line 626
    move/from16 v35, v9

    .line 627
    .line 628
    const-string/jumbo v4, "one-off"

    .line 629
    .line 630
    .line 631
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v5

    .line 635
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    move-result v4

    .line 639
    if-eqz v4, :cond_2a

    .line 640
    .line 641
    :try_start_6
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v4, Ljava/lang/Long;

    .line 644
    .line 645
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 646
    .line 647
    .line 648
    move-result-wide v4

    .line 649
    cmp-long v4, v4, v11

    .line 650
    .line 651
    if-eqz v4, :cond_17

    .line 652
    .line 653
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v4, Ljava/lang/Long;

    .line 656
    .line 657
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 658
    .line 659
    .line 660
    move-result-wide v4

    .line 661
    sub-long/2addr v4, v1

    .line 662
    invoke-virtual {v10, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 663
    .line 664
    .line 665
    goto :goto_10

    .line 666
    :catch_4
    const/4 v9, 0x2

    .line 667
    goto/16 :goto_20

    .line 668
    .line 669
    :cond_17
    :goto_10
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 670
    .line 671
    check-cast v4, Ljava/lang/Long;

    .line 672
    .line 673
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 674
    .line 675
    .line 676
    move-result-wide v4

    .line 677
    const-wide v7, 0x7fffffffffffffffL

    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    cmp-long v4, v4, v7

    .line 683
    .line 684
    if-eqz v4, :cond_15

    .line 685
    .line 686
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 687
    .line 688
    check-cast v4, Ljava/lang/Long;

    .line 689
    .line 690
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 691
    .line 692
    .line 693
    move-result-wide v4

    .line 694
    sub-long/2addr v4, v1

    .line 695
    invoke-virtual {v10, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4

    .line 696
    .line 697
    .line 698
    goto :goto_e

    .line 699
    :goto_11
    const-string/jumbo v0, "initial-backoff"

    .line 700
    .line 701
    .line 702
    const/4 v5, 0x0

    .line 703
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    if-eqz v0, :cond_18

    .line 708
    .line 709
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 710
    .line 711
    .line 712
    move-result-wide v7

    .line 713
    const-string v0, "backoff-policy"

    .line 714
    .line 715
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    invoke-virtual {v10, v7, v8, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 724
    .line 725
    .line 726
    :cond_18
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 727
    .line 728
    .line 729
    :cond_19
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    const/4 v5, 0x4

    .line 734
    if-eq v0, v5, :cond_19

    .line 735
    .line 736
    const/4 v7, 0x2

    .line 737
    if-ne v0, v7, :cond_1a

    .line 738
    .line 739
    const-string/jumbo v0, "extras"

    .line 740
    .line 741
    .line 742
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result v0

    .line 750
    if-nez v0, :cond_1b

    .line 751
    .line 752
    :cond_1a
    move v9, v7

    .line 753
    goto/16 :goto_1f

    .line 754
    .line 755
    :cond_1b
    :try_start_7
    invoke-static {v3}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 756
    .line 757
    .line 758
    move-result-object v5

    .line 759
    invoke-virtual {v10, v5}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_9

    .line 760
    .line 761
    .line 762
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 763
    .line 764
    .line 765
    move-result v8

    .line 766
    if-ne v8, v7, :cond_1f

    .line 767
    .line 768
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    const-string/jumbo v7, "job-work-item"

    .line 773
    .line 774
    .line 775
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    if-eqz v0, :cond_1f

    .line 780
    .line 781
    new-instance v9, Ljava/util/ArrayList;

    .line 782
    .line 783
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .line 785
    .line 786
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 787
    .line 788
    .line 789
    move-result v0

    .line 790
    :goto_12
    const/4 v11, 0x1

    .line 791
    if-eq v0, v11, :cond_1e

    .line 792
    .line 793
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    move-result v0

    .line 801
    if-nez v0, :cond_1c

    .line 802
    .line 803
    goto :goto_14

    .line 804
    :cond_1c
    :try_start_8
    invoke-static {v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobWorkItemFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobWorkItem;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    if-eqz v0, :cond_1d

    .line 809
    .line 810
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 811
    .line 812
    .line 813
    goto :goto_13

    .line 814
    :catch_5
    move-exception v0

    .line 815
    const-string v11, "Problem with persisted JobWorkItem"

    .line 816
    .line 817
    invoke-static {v6, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 818
    .line 819
    .line 820
    :cond_1d
    :goto_13
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 821
    .line 822
    .line 823
    move-result v0

    .line 824
    goto :goto_12

    .line 825
    :cond_1e
    :goto_14
    move-object v7, v9

    .line 826
    :goto_15
    const/4 v9, 0x2

    .line 827
    goto :goto_16

    .line 828
    :cond_1f
    const/4 v7, 0x0

    .line 829
    goto :goto_15

    .line 830
    :goto_16
    if-ne v8, v9, :cond_23

    .line 831
    .line 832
    const-string/jumbo v0, "debug-info"

    .line 833
    .line 834
    .line 835
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v8

    .line 839
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v0

    .line 843
    if-eqz v0, :cond_23

    .line 844
    .line 845
    :try_start_9
    const-string/jumbo v0, "trace-tag"

    .line 846
    .line 847
    .line 848
    const/4 v8, 0x0

    .line 849
    invoke-interface {v3, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-virtual {v10, v0}, Landroid/app/job/JobInfo$Builder;->setTraceTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 854
    .line 855
    .line 856
    goto :goto_17

    .line 857
    :catch_6
    move-exception v0

    .line 858
    const-string v8, "Invalid trace tag persisted to disk"

    .line 859
    .line 860
    invoke-static {v6, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    .line 862
    .line 863
    :goto_17
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 864
    .line 865
    .line 866
    new-instance v8, Landroid/util/ArraySet;

    .line 867
    .line 868
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 869
    .line 870
    .line 871
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 872
    .line 873
    .line 874
    move-result v0

    .line 875
    :goto_18
    const/4 v11, 0x1

    .line 876
    if-eq v0, v11, :cond_22

    .line 877
    .line 878
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    const-string/jumbo v11, "debug-tag"

    .line 883
    .line 884
    .line 885
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    if-nez v0, :cond_20

    .line 890
    .line 891
    goto :goto_1a

    .line 892
    :cond_20
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 893
    .line 894
    .line 895
    move-result v0

    .line 896
    const/16 v11, 0x20

    .line 897
    .line 898
    if-ge v0, v11, :cond_21

    .line 899
    .line 900
    :try_start_a
    const-string/jumbo v0, "tag"

    .line 901
    .line 902
    .line 903
    const/4 v11, 0x0

    .line 904
    invoke-interface {v3, v11, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v0

    .line 908
    invoke-static {v0}, Landroid/app/job/JobInfo;->validateDebugTag(Ljava/lang/String;)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 912
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    goto :goto_19

    .line 916
    :catch_7
    move-exception v0

    .line 917
    const-string v11, "Invalid debug tag persisted to disk"

    .line 918
    .line 919
    invoke-static {v6, v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    .line 921
    .line 922
    :cond_21
    :goto_19
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 923
    .line 924
    .line 925
    move-result v0

    .line 926
    goto :goto_18

    .line 927
    :cond_22
    :goto_1a
    invoke-virtual {v10, v8}, Landroid/app/job/JobInfo$Builder;->addDebugTags(Ljava/util/Set;)V

    .line 928
    .line 929
    .line 930
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 931
    .line 932
    .line 933
    :cond_23
    const/4 v8, 0x0

    .line 934
    :try_start_b
    invoke-virtual {v10, v8, v8, v8, v8}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    .line 935
    .line 936
    .line 937
    move-result-object v12
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 938
    const-string v0, "android"

    .line 939
    .line 940
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    move-result v0

    .line 944
    if-eqz v0, :cond_24

    .line 945
    .line 946
    if-eqz v5, :cond_24

    .line 947
    .line 948
    const-string v0, "SyncManagerJob"

    .line 949
    .line 950
    invoke-virtual {v5, v0, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 951
    .line 952
    .line 953
    move-result v0

    .line 954
    if-eqz v0, :cond_24

    .line 955
    .line 956
    const-string/jumbo v0, "owningPackage"

    .line 957
    .line 958
    .line 959
    invoke-virtual {v5, v0, v15}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v15

    .line 963
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 964
    .line 965
    if-eqz v0, :cond_24

    .line 966
    .line 967
    const-string v0, "Fixing up sync job source package name from \'android\' to \'"

    .line 968
    .line 969
    const-string v5, "\'"

    .line 970
    .line 971
    invoke-static {v0, v15, v5, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    :cond_24
    invoke-static {v14, v15, v1, v2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    .line 975
    .line 976
    .line 977
    move-result v16

    .line 978
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    .line 979
    .line 980
    if-nez v15, :cond_25

    .line 981
    .line 982
    const/4 v5, 0x0

    .line 983
    goto :goto_1b

    .line 984
    :cond_25
    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v5

    .line 988
    :goto_1b
    iget-object v10, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 989
    .line 990
    check-cast v10, Ljava/lang/Long;

    .line 991
    .line 992
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 993
    .line 994
    .line 995
    move-result-wide v22

    .line 996
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 997
    .line 998
    check-cast v4, Ljava/lang/Long;

    .line 999
    .line 1000
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 1001
    .line 1002
    .line 1003
    move-result-wide v36

    .line 1004
    if-eqz p3, :cond_26

    .line 1005
    .line 1006
    const/4 v4, 0x0

    .line 1007
    goto :goto_1c

    .line 1008
    :cond_26
    move-object/from16 v4, v21

    .line 1009
    .line 1010
    :goto_1c
    const/16 v32, 0x0

    .line 1011
    .line 1012
    const/16 v19, 0x0

    .line 1013
    .line 1014
    const/16 v20, 0x0

    .line 1015
    .line 1016
    move-object v11, v0

    .line 1017
    move/from16 v24, v14

    .line 1018
    .line 1019
    move-object v14, v5

    .line 1020
    move/from16 v15, v24

    .line 1021
    .line 1022
    move-wide/from16 v21, v22

    .line 1023
    .line 1024
    move-wide/from16 v23, v36

    .line 1025
    .line 1026
    invoke-direct/range {v11 .. v32}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIJJJJJII)V

    .line 1027
    .line 1028
    .line 1029
    iput-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 1030
    .line 1031
    if-eqz v4, :cond_27

    .line 1032
    .line 1033
    sget-boolean v4, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    .line 1034
    .line 1035
    if-eqz v4, :cond_27

    .line 1036
    .line 1037
    const-string v4, "JobScheduler.JobStatus"

    .line 1038
    .line 1039
    const-string v5, "+ restored job with RTC times because of bad boot clock"

    .line 1040
    .line 1041
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    .line 1043
    .line 1044
    :cond_27
    if-eqz v7, :cond_28

    .line 1045
    .line 1046
    move v15, v8

    .line 1047
    :goto_1d
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 1048
    .line 1049
    .line 1050
    move-result v4

    .line 1051
    if-ge v15, v4, :cond_28

    .line 1052
    .line 1053
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v4

    .line 1057
    check-cast v4, Landroid/app/job/JobWorkItem;

    .line 1058
    .line 1059
    invoke-virtual {v0, v4}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    .line 1060
    .line 1061
    .line 1062
    add-int/lit8 v15, v15, 0x1

    .line 1063
    .line 1064
    goto :goto_1d

    .line 1065
    :cond_28
    move-object v7, v0

    .line 1066
    goto/16 :goto_22

    .line 1067
    .line 1068
    :catch_8
    move-exception v0

    .line 1069
    move-object v4, v0

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    const-string v5, "Unable to build job from XML, ignoring: "

    .line 1073
    .line 1074
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v10}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v5

    .line 1081
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    invoke-static {v6, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1089
    .line 1090
    .line 1091
    :cond_29
    :goto_1e
    const/4 v7, 0x0

    .line 1092
    goto/16 :goto_22

    .line 1093
    .line 1094
    :catch_9
    move-exception v0

    .line 1095
    move v9, v7

    .line 1096
    const-string v4, "Persisted extras contained invalid data"

    .line 1097
    .line 1098
    invoke-static {v6, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    .line 1100
    .line 1101
    goto :goto_1e

    .line 1102
    :goto_1f
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 1103
    .line 1104
    if-eqz v0, :cond_29

    .line 1105
    .line 1106
    const-string v0, "Error reading extras, skipping."

    .line 1107
    .line 1108
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .line 1110
    .line 1111
    goto :goto_1e

    .line 1112
    :goto_20
    const-string v0, "Error reading job execution criteria, skipping."

    .line 1113
    .line 1114
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    .line 1116
    .line 1117
    goto :goto_1e

    .line 1118
    :cond_2a
    const/4 v9, 0x2

    .line 1119
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 1120
    .line 1121
    if-eqz v0, :cond_29

    .line 1122
    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    const-string v4, "Invalid parameter tag, skipping - "

    .line 1126
    .line 1127
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v4

    .line 1134
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v0

    .line 1141
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    .line 1143
    .line 1144
    goto :goto_1e

    .line 1145
    :cond_2b
    move-object/from16 v33, v8

    .line 1146
    .line 1147
    move/from16 v35, v9

    .line 1148
    .line 1149
    move v9, v5

    .line 1150
    move/from16 v9, v35

    .line 1151
    .line 1152
    goto/16 :goto_c

    .line 1153
    .line 1154
    :catch_a
    move-exception v0

    .line 1155
    move-object/from16 v33, v8

    .line 1156
    .line 1157
    move/from16 v35, v9

    .line 1158
    .line 1159
    move v9, v5

    .line 1160
    move-object v4, v0

    .line 1161
    const-string v0, "Constraints contained invalid data"

    .line 1162
    .line 1163
    invoke-static {v6, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    .line 1165
    .line 1166
    goto :goto_1e

    .line 1167
    :catch_b
    move-exception v0

    .line 1168
    move-object/from16 v33, v8

    .line 1169
    .line 1170
    move/from16 v35, v9

    .line 1171
    .line 1172
    move v9, v5

    .line 1173
    move-object v4, v0

    .line 1174
    const-string v0, "Error I/O Exception."

    .line 1175
    .line 1176
    invoke-static {v6, v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    .line 1178
    .line 1179
    goto :goto_1e

    .line 1180
    :catch_c
    move-exception v0

    .line 1181
    move-object/from16 v33, v8

    .line 1182
    .line 1183
    move/from16 v35, v9

    .line 1184
    .line 1185
    move v9, v5

    .line 1186
    move-object v4, v0

    .line 1187
    const-string v0, "Error Parser Exception."

    .line 1188
    .line 1189
    invoke-static {v6, v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    .line 1191
    .line 1192
    goto :goto_1e

    .line 1193
    :catch_d
    move-object/from16 v33, v8

    .line 1194
    .line 1195
    move/from16 v35, v9

    .line 1196
    .line 1197
    move v9, v5

    .line 1198
    const-string v0, "Error reading constraints, skipping."

    .line 1199
    .line 1200
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    .line 1202
    .line 1203
    goto :goto_1e

    .line 1204
    :cond_2c
    move-object/from16 v33, v8

    .line 1205
    .line 1206
    const/4 v4, 0x1

    .line 1207
    goto/16 :goto_b

    .line 1208
    .line 1209
    :goto_21
    const-string v0, "Error parsing job\'s required fields, skipping"

    .line 1210
    .line 1211
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    .line 1213
    .line 1214
    goto :goto_1e

    .line 1215
    :goto_22
    if-eqz v7, :cond_2e

    .line 1216
    .line 1217
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 1218
    .line 1219
    if-eqz v0, :cond_2d

    .line 1220
    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    const-string v4, "Read out "

    .line 1224
    .line 1225
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v0

    .line 1235
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    .line 1237
    .line 1238
    :cond_2d
    move-object/from16 v4, v33

    .line 1239
    .line 1240
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    .line 1242
    .line 1243
    goto :goto_23

    .line 1244
    :cond_2e
    move-object/from16 v4, v33

    .line 1245
    .line 1246
    const-string v0, "Error reading job from file."

    .line 1247
    .line 1248
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    .line 1250
    .line 1251
    goto :goto_23

    .line 1252
    :cond_2f
    move-object v4, v8

    .line 1253
    move/from16 v35, v9

    .line 1254
    .line 1255
    move v9, v5

    .line 1256
    :goto_23
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1257
    .line 1258
    .line 1259
    move-result v0

    .line 1260
    const/4 v5, 0x1

    .line 1261
    if-ne v0, v5, :cond_30

    .line 1262
    .line 1263
    return-object v4

    .line 1264
    :cond_30
    move-object v8, v4

    .line 1265
    move v4, v5

    .line 1266
    move v5, v9

    .line 1267
    move/from16 v9, v35

    .line 1268
    .line 1269
    const/4 v7, 0x0

    .line 1270
    goto/16 :goto_1

    .line 1271
    .line 1272
    :cond_31
    :goto_24
    const-string v0, "Invalid version number, aborting jobs file read."

    .line 1273
    .line 1274
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    .line 1276
    .line 1277
    const/4 v1, 0x0

    .line 1278
    return-object v1

    .line 1279
    :cond_32
    move-object v1, v7

    .line 1280
    return-object v1
.end method

.method public static readJobWorkItemFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobWorkItem;
    .locals 11

    .line 1
    const-string v0, "JobStore"

    .line 2
    .line 3
    new-instance v1, Landroid/app/job/JobWorkItem$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/app/job/JobWorkItem$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string/jumbo v3, "delivery-count"

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v1, v3}, Landroid/app/job/JobWorkItem$Builder;->setDeliveryCount(I)Landroid/app/job/JobWorkItem$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string/jumbo v4, "estimated-download-bytes"

    .line 21
    .line 22
    .line 23
    const-wide/16 v5, -0x1

    .line 24
    .line 25
    invoke-interface {p0, v2, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v7

    .line 29
    const-string/jumbo v4, "estimated-upload-bytes"

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v2, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/app/job/JobWorkItem$Builder;->setEstimatedNetworkBytes(JJ)Landroid/app/job/JobWorkItem$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string/jumbo v4, "minimum-network-chunk-bytes"

    .line 41
    .line 42
    .line 43
    invoke-interface {p0, v2, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobWorkItem$Builder;->setMinimumNetworkChunkBytes(J)Landroid/app/job/JobWorkItem$Builder;

    .line 48
    .line 49
    .line 50
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v1, p0}, Landroid/app/job/JobWorkItem$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobWorkItem$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    .line 59
    .line 60
    :try_start_1
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem$Builder;->build()Landroid/app/job/JobWorkItem;

    .line 61
    .line 62
    .line 63
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    return-object p0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    const-string v1, "Invalid JobWorkItem"

    .line 67
    .line 68
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :catch_1
    move-exception p0

    .line 73
    const-string v1, "Persisted extras contained invalid data"

    .line 74
    .line 75
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    return-object v2
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "JobStore"

    .line 14
    .line 15
    const-string/jumbo v2, "jobs directory isn\'t a directory O.O"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    const-string v0, "JobStore"

    .line 40
    .line 41
    const-string v1, "Couldn\'t get job file list"

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    .line 57
    .line 58
    iget-object v5, v0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v5

    .line 61
    :try_start_1
    array-length v6, v2

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    :goto_0
    if-ge v8, v6, :cond_a

    .line 69
    .line 70
    aget-object v14, v2, v8

    .line 71
    .line 72
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string/jumbo v15, "jobs.xml"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    sget-object v0, Lcom/android/server/job/JobStore;->SPLIT_FILE_PATTERN:Ljava/util/regex/Pattern;

    .line 86
    .line 87
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_2

    .line 100
    .line 101
    move-object/from16 v16, v2

    .line 102
    .line 103
    move/from16 v18, v6

    .line 104
    .line 105
    move/from16 v20, v8

    .line 106
    .line 107
    goto/16 :goto_d

    .line 108
    .line 109
    :catchall_0
    move-exception v0

    .line 110
    goto/16 :goto_e

    .line 111
    .line 112
    :cond_2
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    new-instance v15, Landroid/util/AtomicFile;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    .line 120
    .line 121
    invoke-direct {v15, v14, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Landroid/util/SystemConfigFileCommitEventLogger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    :try_start_2
    invoke-virtual {v15}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 125
    .line 126
    .line 127
    move-result-object v15
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    iget-boolean v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 129
    .line 130
    invoke-static {v3, v4, v15, v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(JLjava/io/InputStream;Z)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 134
    move-object/from16 v16, v2

    .line 135
    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    :goto_1
    :try_start_4
    move-object v2, v0

    .line 140
    check-cast v2, Ljava/util/ArrayList;

    .line 141
    .line 142
    move-object/from16 v17, v0

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 148
    if-ge v7, v0, :cond_5

    .line 149
    .line 150
    :try_start_5
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 155
    .line 156
    iget-object v2, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 157
    .line 158
    move/from16 v18, v6

    .line 159
    .line 160
    :try_start_6
    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 161
    .line 162
    move/from16 v19, v12

    .line 163
    .line 164
    :try_start_7
    iget-object v12, v0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 165
    .line 166
    move/from16 v20, v8

    .line 167
    .line 168
    :try_start_8
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 169
    .line 170
    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getId()I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    invoke-virtual {v2, v6, v8, v12}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    if-eqz v2, :cond_3

    .line 179
    .line 180
    add-int/lit8 v13, v13, 0x1

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 184
    .line 185
    .line 186
    iput-wide v3, v0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 187
    .line 188
    iget-object v2, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 189
    .line 190
    invoke-virtual {v2, v0}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 191
    .line 192
    .line 193
    add-int/lit8 v9, v9, 0x1

    .line 194
    .line 195
    iget v2, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 196
    .line 197
    const/16 v6, 0x3e8

    .line 198
    .line 199
    if-ne v2, v6, :cond_4

    .line 200
    .line 201
    add-int/lit8 v10, v10, 0x1

    .line 202
    .line 203
    const-class v2, Lcom/android/server/content/SyncJobService;

    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget-object v0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 210
    .line 211
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 223
    if-eqz v0, :cond_4

    .line 224
    .line 225
    add-int/lit8 v11, v11, 0x1

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :goto_2
    move-object v2, v0

    .line 229
    goto :goto_7

    .line 230
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 231
    .line 232
    move-object/from16 v0, v17

    .line 233
    .line 234
    move/from16 v6, v18

    .line 235
    .line 236
    move/from16 v12, v19

    .line 237
    .line 238
    move/from16 v8, v20

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :catchall_1
    move-exception v0

    .line 242
    goto :goto_2

    .line 243
    :catchall_2
    move-exception v0

    .line 244
    move/from16 v20, v8

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :catchall_3
    move-exception v0

    .line 248
    goto :goto_5

    .line 249
    :catchall_4
    move-exception v0

    .line 250
    :goto_4
    move/from16 v18, v6

    .line 251
    .line 252
    :goto_5
    move/from16 v20, v8

    .line 253
    .line 254
    move/from16 v19, v12

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_5
    move/from16 v18, v6

    .line 258
    .line 259
    move/from16 v20, v8

    .line 260
    .line 261
    move/from16 v19, v12

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :catchall_5
    move-exception v0

    .line 265
    goto :goto_4

    .line 266
    :goto_6
    if-eqz v15, :cond_7

    .line 267
    .line 268
    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 269
    .line 270
    .line 271
    goto/16 :goto_b

    .line 272
    .line 273
    :catch_0
    move-exception v0

    .line 274
    goto :goto_9

    .line 275
    :catch_1
    move-exception v0

    .line 276
    goto :goto_a

    .line 277
    :catchall_6
    move-exception v0

    .line 278
    move-object/from16 v16, v2

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :goto_7
    if-eqz v15, :cond_6

    .line 282
    .line 283
    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 284
    .line 285
    .line 286
    goto :goto_8

    .line 287
    :catchall_7
    move-exception v0

    .line 288
    move-object v6, v0

    .line 289
    :try_start_b
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    :cond_6
    :goto_8
    throw v2
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 293
    :catch_2
    move-exception v0

    .line 294
    move-object/from16 v16, v2

    .line 295
    .line 296
    move/from16 v18, v6

    .line 297
    .line 298
    move/from16 v20, v8

    .line 299
    .line 300
    move/from16 v19, v12

    .line 301
    .line 302
    :goto_9
    :try_start_c
    const-string v2, "JobStore"

    .line 303
    .line 304
    const-string v6, "Unexpected exception"

    .line 305
    .line 306
    invoke-static {v2, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    .line 308
    .line 309
    goto :goto_b

    .line 310
    :catch_3
    move-exception v0

    .line 311
    move-object/from16 v16, v2

    .line 312
    .line 313
    move/from16 v18, v6

    .line 314
    .line 315
    move/from16 v20, v8

    .line 316
    .line 317
    move/from16 v19, v12

    .line 318
    .line 319
    :goto_a
    const-string v2, "JobStore"

    .line 320
    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    const-string v7, "Error in "

    .line 327
    .line 328
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-static {v2, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .line 344
    .line 345
    goto :goto_b

    .line 346
    :catch_4
    move-object/from16 v16, v2

    .line 347
    .line 348
    move/from16 v18, v6

    .line 349
    .line 350
    move/from16 v20, v8

    .line 351
    .line 352
    move/from16 v19, v12

    .line 353
    .line 354
    :catch_5
    const-string v0, "JobStore"

    .line 355
    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    const-string v6, "Could not find jobs file: "

    .line 362
    .line 363
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    :cond_7
    :goto_b
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    .line 381
    .line 382
    iget-boolean v0, v0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 383
    .line 384
    const/4 v2, 0x1

    .line 385
    if-eqz v0, :cond_8

    .line 386
    .line 387
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    const-string/jumbo v6, "jobs_"

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-nez v0, :cond_9

    .line 399
    .line 400
    :goto_c
    move v12, v2

    .line 401
    goto :goto_d

    .line 402
    :cond_8
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    const-string/jumbo v6, "jobs_"

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_9

    .line 414
    .line 415
    goto :goto_c

    .line 416
    :cond_9
    move/from16 v12, v19

    .line 417
    .line 418
    :goto_d
    add-int/lit8 v8, v20, 0x1

    .line 419
    .line 420
    move-object/from16 v2, v16

    .line 421
    .line 422
    move/from16 v6, v18

    .line 423
    .line 424
    goto/16 :goto_0

    .line 425
    .line 426
    :cond_a
    move/from16 v19, v12

    .line 427
    .line 428
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    .line 429
    .line 430
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 431
    .line 432
    iget v2, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 433
    .line 434
    if-gez v2, :cond_b

    .line 435
    .line 436
    iput v9, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 437
    .line 438
    iput v10, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 439
    .line 440
    iput v11, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 441
    .line 442
    :cond_b
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 443
    const-string v0, "JobStore"

    .line 444
    .line 445
    const-string v2, "Read "

    .line 446
    .line 447
    const-string v3, " jobs"

    .line 448
    .line 449
    invoke-static {v9, v2, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    if-eqz v19, :cond_c

    .line 453
    .line 454
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    .line 455
    .line 456
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->migrateJobFilesAsync()V

    .line 457
    .line 458
    .line 459
    :cond_c
    if-lez v13, :cond_d

    .line 460
    .line 461
    const-string v0, "JobStore"

    .line 462
    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    const-string v3, "Encountered "

    .line 466
    .line 467
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string v3, " duplicate persisted jobs"

    .line 474
    .line 475
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    :cond_d
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    .line 486
    .line 487
    iput v9, v0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 488
    .line 489
    iput v9, v0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    .line 490
    .line 491
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mScheduledJobHighWaterMarkLoggingRunnable:Lcom/android/server/job/JobStore$1;

    .line 492
    .line 493
    invoke-virtual {v0}, Lcom/android/server/job/JobStore$1;->run()V

    .line 494
    .line 495
    .line 496
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 497
    .line 498
    if-eqz v0, :cond_e

    .line 499
    .line 500
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 501
    .line 502
    .line 503
    :cond_e
    return-void

    .line 504
    :goto_e
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 505
    throw v0

    .line 506
    :catch_6
    move-exception v0

    .line 507
    const-string v1, "JobStore"

    .line 508
    .line 509
    const-string v2, "Not allowed to read job file directory"

    .line 510
    .line 511
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    .line 513
    .line 514
    return-void
.end method
