.class public abstract Lcom/android/server/usage/UsageStatsXmlV1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V
    .locals 3

    .line 1
    const-string v0, "count"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 9
    .line 10
    const-string/jumbo v0, "time"

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const-string/jumbo v3, "package"

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x1

    .line 13
    const-string v8, "UsageStatsXmlV1"

    .line 14
    .line 15
    iget-object v9, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v9, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    .line 23
    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    iput-object v9, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 27
    .line 28
    iget-object v10, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 29
    .line 30
    invoke-virtual {v10}, Landroid/app/usage/EventList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-wide v10, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 34
    .line 35
    const-string v12, "endTime"

    .line 36
    .line 37
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v12

    .line 41
    add-long/2addr v12, v10

    .line 42
    iput-wide v12, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 43
    .line 44
    :try_start_0
    const-string/jumbo v10, "majorVersion"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    iput v10, v1, Lcom/android/server/usage/IntervalStats;->majorVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    const-string v10, "Failed to parse majorVersion"

    .line 55
    .line 56
    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    :try_start_1
    const-string/jumbo v10, "minorVersion"

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    iput v10, v1, Lcom/android/server/usage/IntervalStats;->minorVersion:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_1
    const-string v10, "Failed to parse minorVersion"

    .line 70
    .line 71
    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-eq v11, v7, :cond_1c

    .line 83
    .line 84
    if-ne v11, v6, :cond_0

    .line 85
    .line 86
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-le v12, v10, :cond_1c

    .line 91
    .line 92
    :cond_0
    if-eq v11, v5, :cond_1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    const-string v12, "count"

    .line 103
    .line 104
    const-string/jumbo v13, "timeActive"

    .line 105
    .line 106
    .line 107
    const-string v14, "lastTimeActive"

    .line 108
    .line 109
    const-string/jumbo v15, "no package attribute present"

    .line 110
    .line 111
    .line 112
    const/16 v16, -0x1

    .line 113
    .line 114
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v17

    .line 118
    sparse-switch v17, :sswitch_data_0

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :sswitch_0
    const-string v5, "interactive"

    .line 123
    .line 124
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_2

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_2
    const/16 v16, 0x6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :sswitch_1
    const-string v5, "keyguard-shown"

    .line 135
    .line 136
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-nez v5, :cond_3

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_3
    move/from16 v16, v2

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :sswitch_2
    const-string v5, "event"

    .line 147
    .line 148
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-nez v5, :cond_4

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    const/16 v16, 0x4

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :sswitch_3
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-nez v5, :cond_5

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    move/from16 v16, v6

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :sswitch_4
    const-string/jumbo v5, "non-interactive"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-nez v5, :cond_6

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_6
    const/16 v16, 0x2

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :sswitch_5
    const-string v5, "keyguard-hidden"

    .line 182
    .line 183
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-nez v5, :cond_7

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_7
    move/from16 v16, v7

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :sswitch_6
    const-string v5, "config"

    .line 194
    .line 195
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-nez v5, :cond_8

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_8
    move/from16 v16, v4

    .line 203
    .line 204
    :goto_3
    packed-switch v16, :pswitch_data_0

    .line 205
    .line 206
    .line 207
    :goto_4
    move/from16 v16, v10

    .line 208
    .line 209
    goto/16 :goto_11

    .line 210
    .line 211
    :pswitch_0
    iget-object v5, v1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 212
    .line 213
    invoke-static {v0, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :pswitch_1
    iget-object v5, v1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 218
    .line 219
    invoke-static {v0, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :pswitch_2
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    if-eqz v5, :cond_10

    .line 228
    .line 229
    const-string v11, "class"

    .line 230
    .line 231
    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    new-instance v12, Landroid/app/usage/UsageEvents$Event;

    .line 236
    .line 237
    invoke-direct {v12}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v5}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    iput-object v5, v12, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 245
    .line 246
    if-eqz v11, :cond_9

    .line 247
    .line 248
    invoke-virtual {v1, v11}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    iput-object v5, v12, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 253
    .line 254
    :cond_9
    const-string v5, "flags"

    .line 255
    .line 256
    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    iput v5, v12, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 261
    .line 262
    iget-wide v13, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 263
    .line 264
    const-string/jumbo v5, "time"

    .line 265
    .line 266
    .line 267
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 268
    .line 269
    .line 270
    move-result-wide v15

    .line 271
    add-long/2addr v13, v15

    .line 272
    iput-wide v13, v12, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 273
    .line 274
    const-string/jumbo v5, "type"

    .line 275
    .line 276
    .line 277
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    iput v5, v12, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 282
    .line 283
    :try_start_2
    const-string v5, "instanceId"

    .line 284
    .line 285
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    iput v5, v12, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :catch_2
    const-string v5, "Failed to parse mInstanceId"

    .line 293
    .line 294
    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    :goto_5
    iget v5, v12, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 298
    .line 299
    if-eq v5, v2, :cond_f

    .line 300
    .line 301
    const/16 v11, 0x8

    .line 302
    .line 303
    if-eq v5, v11, :cond_d

    .line 304
    .line 305
    const/16 v11, 0xb

    .line 306
    .line 307
    if-eq v5, v11, :cond_c

    .line 308
    .line 309
    const/16 v11, 0xc

    .line 310
    .line 311
    if-eq v5, v11, :cond_a

    .line 312
    .line 313
    goto :goto_8

    .line 314
    :cond_a
    const-string/jumbo v5, "notificationChannel"

    .line 315
    .line 316
    .line 317
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    if-eqz v5, :cond_b

    .line 322
    .line 323
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    goto :goto_6

    .line 328
    :cond_b
    move-object v5, v9

    .line 329
    :goto_6
    iput-object v5, v12, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_c
    const-string/jumbo v5, "standbyBucket"

    .line 333
    .line 334
    .line 335
    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    iput v5, v12, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_d
    const-string/jumbo v5, "shortcutId"

    .line 343
    .line 344
    .line 345
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    if-eqz v5, :cond_e

    .line 350
    .line 351
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    goto :goto_7

    .line 356
    :cond_e
    move-object v5, v9

    .line 357
    :goto_7
    iput-object v5, v12, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_f
    new-instance v5, Landroid/content/res/Configuration;

    .line 361
    .line 362
    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    .line 363
    .line 364
    .line 365
    iput-object v5, v12, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 366
    .line 367
    invoke-static {v0, v5}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 368
    .line 369
    .line 370
    :goto_8
    invoke-virtual {v1, v12}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 371
    .line 372
    .line 373
    goto/16 :goto_4

    .line 374
    .line 375
    :cond_10
    new-instance v0, Ljava/net/ProtocolException;

    .line 376
    .line 377
    invoke-direct {v0, v15}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v0

    .line 381
    :pswitch_3
    invoke-interface {v0, v9, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    if-eqz v5, :cond_1a

    .line 386
    .line 387
    invoke-virtual {v1, v5}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    move/from16 v16, v10

    .line 392
    .line 393
    iget-wide v9, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 394
    .line 395
    invoke-static {v0, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 396
    .line 397
    .line 398
    move-result-wide v14

    .line 399
    add-long/2addr v14, v9

    .line 400
    iput-wide v14, v5, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 401
    .line 402
    :try_start_3
    iget-wide v9, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 403
    .line 404
    const-string v14, "lastTimeVisible"

    .line 405
    .line 406
    invoke-static {v0, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 407
    .line 408
    .line 409
    move-result-wide v14

    .line 410
    add-long/2addr v9, v14

    .line 411
    iput-wide v9, v5, Landroid/app/usage/UsageStats;->mLastTimeVisible:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 412
    .line 413
    goto :goto_9

    .line 414
    :catch_3
    const-string v9, "Failed to parse mLastTimeVisible"

    .line 415
    .line 416
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    :goto_9
    :try_start_4
    iget-wide v9, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 420
    .line 421
    const-string v14, "lastTimeServiceUsed"

    .line 422
    .line 423
    invoke-static {v0, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 424
    .line 425
    .line 426
    move-result-wide v14

    .line 427
    add-long/2addr v9, v14

    .line 428
    iput-wide v9, v5, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 429
    .line 430
    goto :goto_a

    .line 431
    :catch_4
    const-string v9, "Failed to parse mLastTimeForegroundServiceUsed"

    .line 432
    .line 433
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    :goto_a
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 437
    .line 438
    .line 439
    move-result-wide v9

    .line 440
    iput-wide v9, v5, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 441
    .line 442
    :try_start_5
    const-string/jumbo v9, "timeVisible"

    .line 443
    .line 444
    .line 445
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 446
    .line 447
    .line 448
    move-result-wide v9

    .line 449
    iput-wide v9, v5, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 450
    .line 451
    goto :goto_b

    .line 452
    :catch_5
    const-string v9, "Failed to parse mTotalTimeVisible"

    .line 453
    .line 454
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    :goto_b
    :try_start_6
    const-string/jumbo v9, "timeServiceUsed"

    .line 458
    .line 459
    .line 460
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 461
    .line 462
    .line 463
    move-result-wide v9

    .line 464
    iput-wide v9, v5, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 465
    .line 466
    goto :goto_c

    .line 467
    :catch_6
    const-string v9, "Failed to parse mTotalTimeForegroundServiceUsed"

    .line 468
    .line 469
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    :goto_c
    const-string v9, "lastEvent"

    .line 473
    .line 474
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    iput v9, v5, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 479
    .line 480
    const-string v9, "appLaunchCount"

    .line 481
    .line 482
    invoke-static {v0, v9, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 483
    .line 484
    .line 485
    move-result v9

    .line 486
    iput v9, v5, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 487
    .line 488
    :goto_d
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 489
    .line 490
    .line 491
    move-result v9

    .line 492
    if-eq v9, v7, :cond_1b

    .line 493
    .line 494
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v10

    .line 498
    if-ne v9, v6, :cond_11

    .line 499
    .line 500
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v13

    .line 504
    if-eqz v13, :cond_11

    .line 505
    .line 506
    goto/16 :goto_11

    .line 507
    .line 508
    :cond_11
    const/4 v13, 0x2

    .line 509
    if-eq v9, v13, :cond_12

    .line 510
    .line 511
    goto :goto_d

    .line 512
    :cond_12
    const-string v9, "chosen_action"

    .line 513
    .line 514
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v10

    .line 518
    if-eqz v10, :cond_19

    .line 519
    .line 520
    const-string/jumbo v10, "name"

    .line 521
    .line 522
    .line 523
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v13

    .line 527
    if-nez v13, :cond_13

    .line 528
    .line 529
    goto :goto_10

    .line 530
    :cond_13
    iget-object v14, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 531
    .line 532
    if-nez v14, :cond_14

    .line 533
    .line 534
    new-instance v14, Landroid/util/ArrayMap;

    .line 535
    .line 536
    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 537
    .line 538
    .line 539
    iput-object v14, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 540
    .line 541
    :cond_14
    iget-object v14, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 542
    .line 543
    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v14

    .line 547
    if-nez v14, :cond_15

    .line 548
    .line 549
    new-instance v14, Landroid/util/ArrayMap;

    .line 550
    .line 551
    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 552
    .line 553
    .line 554
    iget-object v15, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 555
    .line 556
    invoke-virtual {v15, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    :cond_15
    :goto_e
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 560
    .line 561
    .line 562
    move-result v14

    .line 563
    if-eq v14, v7, :cond_19

    .line 564
    .line 565
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v15

    .line 569
    if-ne v14, v6, :cond_16

    .line 570
    .line 571
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v18

    .line 575
    if-eqz v18, :cond_16

    .line 576
    .line 577
    goto :goto_10

    .line 578
    :cond_16
    const/4 v2, 0x2

    .line 579
    if-eq v14, v2, :cond_18

    .line 580
    .line 581
    :cond_17
    :goto_f
    const/4 v2, 0x5

    .line 582
    goto :goto_e

    .line 583
    :cond_18
    const-string v14, "category"

    .line 584
    .line 585
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v14

    .line 589
    if-eqz v14, :cond_17

    .line 590
    .line 591
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v14

    .line 595
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 596
    .line 597
    .line 598
    move-result v15

    .line 599
    iget-object v2, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 600
    .line 601
    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    check-cast v2, Landroid/util/ArrayMap;

    .line 606
    .line 607
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 608
    .line 609
    .line 610
    move-result-object v15

    .line 611
    invoke-virtual {v2, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    goto :goto_f

    .line 615
    :cond_19
    :goto_10
    const/4 v2, 0x5

    .line 616
    goto :goto_d

    .line 617
    :cond_1a
    new-instance v0, Ljava/net/ProtocolException;

    .line 618
    .line 619
    invoke-direct {v0, v15}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    throw v0

    .line 623
    :pswitch_4
    move/from16 v16, v10

    .line 624
    .line 625
    iget-object v2, v1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 626
    .line 627
    invoke-static {v0, v2}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 628
    .line 629
    .line 630
    goto :goto_11

    .line 631
    :pswitch_5
    move/from16 v16, v10

    .line 632
    .line 633
    iget-object v2, v1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 634
    .line 635
    invoke-static {v0, v2}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 636
    .line 637
    .line 638
    goto :goto_11

    .line 639
    :pswitch_6
    move/from16 v16, v10

    .line 640
    .line 641
    new-instance v2, Landroid/content/res/Configuration;

    .line 642
    .line 643
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 644
    .line 645
    .line 646
    invoke-static {v0, v2}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v1, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    iget-wide v9, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 654
    .line 655
    invoke-static {v0, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 656
    .line 657
    .line 658
    move-result-wide v14

    .line 659
    add-long/2addr v14, v9

    .line 660
    iput-wide v14, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 661
    .line 662
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 663
    .line 664
    .line 665
    move-result-wide v9

    .line 666
    iput-wide v9, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 667
    .line 668
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    iput v5, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 673
    .line 674
    const-string v5, "active"

    .line 675
    .line 676
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 677
    .line 678
    .line 679
    move-result v5

    .line 680
    if-eqz v5, :cond_1b

    .line 681
    .line 682
    iget-object v2, v2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 683
    .line 684
    iput-object v2, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 685
    .line 686
    :cond_1b
    :goto_11
    move/from16 v10, v16

    .line 687
    .line 688
    const/4 v2, 0x5

    .line 689
    const/4 v5, 0x2

    .line 690
    const/4 v9, 0x0

    .line 691
    goto/16 :goto_2

    .line 692
    .line 693
    :cond_1c
    return-void

    .line 694
    nop

    .line 695
    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_6
        -0x45b2e24f -> :sswitch_5
        -0x301c401e -> :sswitch_4
        -0x301acbba -> :sswitch_3
        0x5c6729a -> :sswitch_2
        0x1f63682a -> :sswitch_1
        0x6deacee2 -> :sswitch_0
    .end sparse-switch

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
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
