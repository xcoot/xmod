.class public final Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final INSTANCE_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mCallback:Lcom/android/server/notification/EventConditionProvider$2;

.field public final mObserver:Lcom/android/server/notification/CalendarTracker$1;

.field public mRegistered:Z

.field public final mSystemContext:Landroid/content/Context;

.field public final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "ConditionProviders"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 9
    .line 10
    const-string v8, "calendar_id"

    .line 11
    .line 12
    const-string v9, "availability"

    .line 13
    .line 14
    const-string v1, "begin"

    .line 15
    .line 16
    const-string v2, "end"

    .line 17
    .line 18
    const-string/jumbo v3, "title"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v4, "visible"

    .line 22
    .line 23
    .line 24
    const-string v5, "event_id"

    .line 25
    .line 26
    const-string v6, "calendar_displayName"

    .line 27
    .line 28
    const-string/jumbo v7, "ownerAccount"

    .line 29
    .line 30
    .line 31
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "attendeeEmail"

    .line 38
    .line 39
    const-string v1, "attendeeStatus"

    .line 40
    .line 41
    const-string v2, "event_id"

    .line 42
    .line 43
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Lcom/android/server/notification/CalendarTracker$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    const-string v4, "ConditionProviders.CT"

    .line 8
    .line 9
    sget-object v5, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 16
    .line 17
    .line 18
    const-wide/32 v6, 0x5265c00

    .line 19
    .line 20
    .line 21
    add-long/2addr v6, v2

    .line 22
    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    new-instance v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-wide v6, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    :try_start_0
    iget-object v7, v0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    sget-object v10, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 44
    .line 45
    const-string v13, "begin ASC"

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 50
    .line 51
    .line 52
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 53
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getCalendarsWithAccess()Landroid/util/ArraySet;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    :goto_0
    if-eqz v6, :cond_13

    .line 58
    .line 59
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_13

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    const/4 v11, 0x1

    .line 71
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 72
    .line 73
    .line 74
    move-result-wide v12

    .line 75
    const/4 v14, 0x2

    .line 76
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v15

    .line 80
    const/4 v14, 0x3

    .line 81
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    if-ne v14, v11, :cond_0

    .line 86
    .line 87
    move v14, v11

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    move v14, v8

    .line 90
    :goto_1
    const/4 v8, 0x4

    .line 91
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    const/4 v11, 0x5

    .line 96
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    move-object/from16 v26, v5

    .line 101
    .line 102
    const/4 v5, 0x6

    .line 103
    :try_start_2
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const/4 v0, 0x7

    .line 108
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 109
    .line 110
    .line 111
    move-result-wide v27

    .line 112
    const/16 v0, 0x8

    .line 113
    .line 114
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 115
    .line 116
    .line 117
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    move-object/from16 v29, v6

    .line 119
    .line 120
    :try_start_3
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    sget-boolean v30, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 129
    .line 130
    if-eqz v30, :cond_4

    .line 131
    .line 132
    move-object/from16 v31, v7

    .line 133
    .line 134
    const-string/jumbo v7, "title=%s time=%s-%s vis=%s availability=%s eventId=%s name=%s owner=%s calId=%s canAccessCal=%s"

    .line 135
    .line 136
    .line 137
    new-instance v1, Ljava/util/Date;

    .line 138
    .line 139
    invoke-direct {v1, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 140
    .line 141
    .line 142
    new-instance v2, Ljava/util/Date;

    .line 143
    .line 144
    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 145
    .line 146
    .line 147
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object v18

    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    const/4 v3, 0x1

    .line 154
    if-eq v0, v3, :cond_2

    .line 155
    .line 156
    const/4 v3, 0x2

    .line 157
    if-eq v0, v3, :cond_1

    .line 158
    .line 159
    const-string v3, "AVAILABILITY_UNKNOWN_"

    .line 160
    .line 161
    invoke-static {v0, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    :goto_2
    move-object/from16 v19, v3

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_1
    const-string v3, "AVAILABILITY_TENTATIVE"

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    const-string v3, "AVAILABILITY_FREE"

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_3
    const-string v3, "AVAILABILITY_BUSY"

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v20

    .line 181
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    .line 183
    .line 184
    move-result-object v23

    .line 185
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    .line 187
    .line 188
    move-result-object v24

    .line 189
    move-object/from16 v16, v1

    .line 190
    .line 191
    move-object/from16 v17, v2

    .line 192
    .line 193
    move-object/from16 v21, v11

    .line 194
    .line 195
    move-object/from16 v22, v5

    .line 196
    .line 197
    filled-new-array/range {v15 .. v24}, [Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    move-object/from16 v6, v29

    .line 211
    .line 212
    goto/16 :goto_e

    .line 213
    .line 214
    :catch_0
    move-exception v0

    .line 215
    move-object/from16 v1, v26

    .line 216
    .line 217
    :goto_4
    move-object/from16 v6, v29

    .line 218
    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :cond_4
    move-object/from16 v31, v7

    .line 222
    .line 223
    :goto_5
    cmp-long v1, p2, v9

    .line 224
    .line 225
    if-ltz v1, :cond_5

    .line 226
    .line 227
    cmp-long v1, p2, v12

    .line 228
    .line 229
    if-gez v1, :cond_5

    .line 230
    .line 231
    const/4 v1, 0x1

    .line 232
    goto :goto_6

    .line 233
    :cond_5
    const/4 v1, 0x0

    .line 234
    :goto_6
    if-eqz v14, :cond_8

    .line 235
    .line 236
    if-eqz v6, :cond_8

    .line 237
    .line 238
    move-object/from16 v2, p1

    .line 239
    .line 240
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 241
    .line 242
    if-nez v3, :cond_6

    .line 243
    .line 244
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 245
    .line 246
    if-eqz v3, :cond_7

    .line 247
    .line 248
    :cond_6
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 249
    .line 250
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-nez v3, :cond_7

    .line 259
    .line 260
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v3, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_9

    .line 267
    .line 268
    :cond_7
    const/4 v3, 0x1

    .line 269
    const/4 v6, 0x1

    .line 270
    goto :goto_7

    .line 271
    :cond_8
    move-object/from16 v2, p1

    .line 272
    .line 273
    :cond_9
    const/4 v3, 0x1

    .line 274
    const/4 v6, 0x0

    .line 275
    :goto_7
    if-eq v0, v3, :cond_a

    .line 276
    .line 277
    const/16 v25, 0x1

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_a
    const/16 v25, 0x0

    .line 281
    .line 282
    :goto_8
    if-eqz v6, :cond_11

    .line 283
    .line 284
    if-eqz v25, :cond_11

    .line 285
    .line 286
    if-eqz v30, :cond_b

    .line 287
    .line 288
    const-string v0, "  MEETS CALENDAR & AVAILABILITY"

    .line 289
    .line 290
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    :cond_b
    move-object/from16 v0, p0

    .line 294
    .line 295
    invoke-virtual {v0, v2, v8, v5}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_10

    .line 300
    .line 301
    if-eqz v30, :cond_c

    .line 302
    .line 303
    const-string v3, "    MEETS ATTENDEE"

    .line 304
    .line 305
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    :cond_c
    if-eqz v1, :cond_e

    .line 309
    .line 310
    if-eqz v30, :cond_d

    .line 311
    .line 312
    const-string v1, "      MEETS TIME"

    .line 313
    .line 314
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    .line 316
    .line 317
    :cond_d
    move-object/from16 v1, v26

    .line 318
    .line 319
    const/4 v3, 0x1

    .line 320
    :try_start_4
    iput-boolean v3, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :catch_1
    move-exception v0

    .line 324
    goto :goto_4

    .line 325
    :cond_e
    move-object/from16 v1, v26

    .line 326
    .line 327
    :goto_9
    cmp-long v3, v9, p2

    .line 328
    .line 329
    if-lez v3, :cond_f

    .line 330
    .line 331
    iget-wide v5, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 332
    .line 333
    cmp-long v3, v9, v5

    .line 334
    .line 335
    if-gez v3, :cond_f

    .line 336
    .line 337
    iput-wide v9, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 338
    .line 339
    goto :goto_b

    .line 340
    :cond_f
    cmp-long v3, v12, p2

    .line 341
    .line 342
    if-lez v3, :cond_12

    .line 343
    .line 344
    iget-wide v5, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 345
    .line 346
    cmp-long v3, v12, v5

    .line 347
    .line 348
    if-gez v3, :cond_12

    .line 349
    .line 350
    iput-wide v12, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 351
    .line 352
    goto :goto_b

    .line 353
    :cond_10
    :goto_a
    move-object/from16 v1, v26

    .line 354
    .line 355
    goto :goto_b

    .line 356
    :cond_11
    move-object/from16 v0, p0

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_12
    :goto_b
    move-object v5, v1

    .line 360
    move-object v1, v2

    .line 361
    move-object/from16 v6, v29

    .line 362
    .line 363
    move-object/from16 v7, v31

    .line 364
    .line 365
    move-wide/from16 v2, p2

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :catchall_1
    move-exception v0

    .line 370
    move-object/from16 v29, v6

    .line 371
    .line 372
    goto :goto_e

    .line 373
    :catch_2
    move-exception v0

    .line 374
    move-object/from16 v29, v6

    .line 375
    .line 376
    move-object/from16 v1, v26

    .line 377
    .line 378
    goto :goto_c

    .line 379
    :catch_3
    move-exception v0

    .line 380
    move-object v1, v5

    .line 381
    move-object/from16 v29, v6

    .line 382
    .line 383
    goto :goto_c

    .line 384
    :cond_13
    move-object v1, v5

    .line 385
    move-object/from16 v29, v6

    .line 386
    .line 387
    if-eqz v29, :cond_14

    .line 388
    .line 389
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 390
    .line 391
    .line 392
    goto :goto_d

    .line 393
    :catchall_2
    move-exception v0

    .line 394
    goto :goto_e

    .line 395
    :catch_4
    move-exception v0

    .line 396
    move-object v1, v5

    .line 397
    :goto_c
    :try_start_5
    const-string v2, "error reading calendar"

    .line 398
    .line 399
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 400
    .line 401
    .line 402
    if-eqz v6, :cond_14

    .line 403
    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 405
    .line 406
    .line 407
    :cond_14
    :goto_d
    return-object v1

    .line 408
    :goto_e
    if-eqz v6, :cond_15

    .line 409
    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 411
    .line 412
    .line 413
    :cond_15
    throw v0
.end method

.method public final getCalendarsWithAccess()Landroid/util/ArraySet;
    .locals 11

    .line 1
    const-string v0, "ConditionProviders.CT"

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    new-instance v3, Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "_id"

    .line 13
    .line 14
    filled-new-array {v4}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    const/4 v4, 0x0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    .line 27
    const-string v8, "calendar_access_level >= 500 AND sync_events = 1"

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :goto_0
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    invoke-interface {v4, p0}, Landroid/database/Cursor;->getLong(I)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_4

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    if-eqz v4, :cond_1

    .line 61
    .line 62
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :goto_2
    :try_start_1
    const-string v5, "error querying calendar content provider"

    .line 67
    .line 68
    invoke-static {v0, v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :goto_3
    sget-boolean p0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 75
    .line 76
    if-eqz p0, :cond_2

    .line 77
    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v4, "getCalendarsWithAccess took "

    .line 81
    .line 82
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    sub-long/2addr v4, v1

    .line 90
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_2
    return-object v3

    .line 101
    :goto_4
    if-eqz v4, :cond_3

    .line 102
    .line 103
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 104
    .line 105
    .line 106
    :cond_3
    throw p0
.end method

.method public final meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    const-string/jumbo v1, "meetsAttendee took "

    .line 4
    .line 5
    .line 6
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 7
    .line 8
    const-string v3, "ConditionProviders.CT"

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    const-string v9, "event_id = ? AND attendeeEmail = ?"

    .line 15
    .line 16
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    filled-new-array {v6, v0}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    move-object/from16 v6, p0

    .line 27
    .line 28
    :try_start_0
    iget-object v6, v6, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    sget-object v7, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    .line 36
    sget-object v8, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object v13

    .line 43
    const/4 v6, 0x1

    .line 44
    if-eqz v13, :cond_f

    .line 45
    .line 46
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_0

    .line 51
    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :cond_0
    move v7, v12

    .line 55
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_d

    .line 60
    .line 61
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    const/4 v11, 0x2

    .line 70
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    move-object/from16 v15, p1

    .line 75
    .line 76
    iget v12, v15, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 77
    .line 78
    if-eqz v12, :cond_5

    .line 79
    .line 80
    if-eq v12, v6, :cond_4

    .line 81
    .line 82
    if-eq v12, v11, :cond_2

    .line 83
    .line 84
    :cond_1
    const/4 v11, 0x0

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    if-ne v14, v6, :cond_1

    .line 87
    .line 88
    :cond_3
    :goto_1
    move v11, v6

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    if-eq v14, v6, :cond_3

    .line 91
    .line 92
    const/4 v11, 0x4

    .line 93
    if-ne v14, v11, :cond_1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    if-eq v14, v11, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_2
    if-eqz v2, :cond_b

    .line 100
    .line 101
    new-instance v12, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v6, ""

    .line 107
    .line 108
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    if-eqz v14, :cond_a

    .line 112
    .line 113
    const/4 v6, 0x1

    .line 114
    if-eq v14, v6, :cond_9

    .line 115
    .line 116
    const/4 v6, 0x2

    .line 117
    if-eq v14, v6, :cond_8

    .line 118
    .line 119
    const/4 v6, 0x3

    .line 120
    if-eq v14, v6, :cond_7

    .line 121
    .line 122
    const/4 v6, 0x4

    .line 123
    if-eq v14, v6, :cond_6

    .line 124
    .line 125
    const-string v6, "ATTENDEE_STATUS_UNKNOWN_"

    .line 126
    .line 127
    invoke-static {v14, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    goto :goto_3

    .line 132
    :cond_6
    const-string v6, "ATTENDEE_STATUS_TENTATIVE"

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_7
    const-string v6, "ATTENDEE_STATUS_INVITED"

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_8
    const-string v6, "ATTENDEE_STATUS_DECLINED"

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_9
    const-string v6, "ATTENDEE_STATUS_ACCEPTED"

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_a
    const-string v6, "ATTENDEE_STATUS_NONE"

    .line 145
    .line 146
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string/jumbo v15, "status="

    .line 152
    .line 153
    .line 154
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v6, ", meetsReply="

    .line 161
    .line 162
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    :cond_b
    move/from16 v6, p2

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    goto/16 :goto_8

    .line 187
    .line 188
    :catch_0
    move-exception v0

    .line 189
    goto :goto_7

    .line 190
    :goto_4
    int-to-long v14, v6

    .line 191
    cmp-long v8, v8, v14

    .line 192
    .line 193
    if-nez v8, :cond_c

    .line 194
    .line 195
    invoke-static {v10, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz v8, :cond_c

    .line 200
    .line 201
    if-eqz v11, :cond_c

    .line 202
    .line 203
    const/4 v8, 0x1

    .line 204
    goto :goto_5

    .line 205
    :cond_c
    const/4 v8, 0x0

    .line 206
    :goto_5
    or-int/2addr v7, v8

    .line 207
    const/4 v6, 0x1

    .line 208
    const/4 v12, 0x0

    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_d
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 212
    .line 213
    .line 214
    if-eqz v2, :cond_e

    .line 215
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 222
    .line 223
    .line 224
    move-result-wide v1

    .line 225
    sub-long/2addr v1, v4

    .line 226
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    :cond_e
    return v7

    .line 237
    :cond_f
    :goto_6
    if-eqz v2, :cond_10

    .line 238
    .line 239
    :try_start_1
    const-string v0, "No attendees found"

    .line 240
    .line 241
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    .line 243
    .line 244
    :cond_10
    if-eqz v13, :cond_11

    .line 245
    .line 246
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 247
    .line 248
    .line 249
    :cond_11
    if-eqz v2, :cond_12

    .line 250
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 257
    .line 258
    .line 259
    move-result-wide v1

    .line 260
    sub-long/2addr v1, v4

    .line 261
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    :cond_12
    const/4 v0, 0x1

    .line 272
    return v0

    .line 273
    :goto_7
    :try_start_2
    const-string v6, "error querying attendees content provider"

    .line 274
    .line 275
    invoke-static {v3, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    .line 277
    .line 278
    if-eqz v13, :cond_13

    .line 279
    .line 280
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 281
    .line 282
    .line 283
    :cond_13
    if-eqz v2, :cond_14

    .line 284
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 291
    .line 292
    .line 293
    move-result-wide v1

    .line 294
    sub-long/2addr v1, v4

    .line 295
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    :cond_14
    const/4 v1, 0x0

    .line 306
    return v1

    .line 307
    :goto_8
    if-eqz v13, :cond_15

    .line 308
    .line 309
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 310
    .line 311
    .line 312
    :cond_15
    if-eqz v2, :cond_16

    .line 313
    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 320
    .line 321
    .line 322
    move-result-wide v6

    .line 323
    sub-long/2addr v6, v4

    .line 324
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    :cond_16
    throw v0
.end method

.method public final setCallback(Lcom/android/server/notification/EventConditionProvider$2;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/EventConditionProvider$2;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/EventConditionProvider$2;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    move p1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 15
    .line 16
    if-ne v1, p1, :cond_2

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-boolean v3, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Lcom/android/server/notification/CalendarTracker$1;

    .line 34
    .line 35
    sget-boolean v5, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 36
    .line 37
    const-string v6, "ConditionProviders.CT"

    .line 38
    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    const-string/jumbo v3, "unregister content observer u="

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3, v6}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 53
    .line 54
    if-eqz v5, :cond_5

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo v7, "mRegistered = "

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " u="

    .line 68
    .line 69
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_5
    iget-boolean p0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 83
    .line 84
    if-eqz p0, :cond_7

    .line 85
    .line 86
    if-eqz v5, :cond_6

    .line 87
    .line 88
    const-string/jumbo p0, "register content observer u="

    .line 89
    .line 90
    .line 91
    invoke-static {v2, p0, v6}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    sget-object p0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    .line 95
    .line 96
    invoke-virtual {v1, p0, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 97
    .line 98
    .line 99
    sget-object p0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    .line 101
    invoke-virtual {v1, p0, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 102
    .line 103
    .line 104
    sget-object p0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 105
    .line 106
    invoke-virtual {v1, p0, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 107
    .line 108
    .line 109
    :cond_7
    :goto_1
    return-void
.end method
