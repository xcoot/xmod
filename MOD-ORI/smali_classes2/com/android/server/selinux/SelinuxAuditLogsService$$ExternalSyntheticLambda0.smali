.class public final synthetic Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/selinux/SelinuxAuditLogsService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/selinux/SelinuxAuditLogsService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "path"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/selinux/SelinuxAuditLogsService;

    .line 9
    .line 10
    iget-object v5, v0, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 11
    .line 12
    sget v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v6, Lcom/android/server/selinux/SelinuxAuditLogsService;->LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

    .line 18
    .line 19
    iget-object v7, v6, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mAuditLogsCollector:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    .line 20
    .line 21
    iget-object v0, v7, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v6, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v8, "SelinuxAuditLogs"

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const-string v0, "Selinux audit job is already running, ignore start request."

    .line 37
    .line 38
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto/16 :goto_15

    .line 42
    .line 43
    :cond_0
    iget-object v0, v6, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    .line 47
    .line 48
    sget v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    .line 49
    .line 50
    new-instance v9, Ljava/util/ArrayDeque;

    .line 51
    .line 52
    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v10, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    :try_start_0
    filled-new-array {v0}, [I

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0, v10}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v11, "Error reading event logs"

    .line 70
    .line 71
    invoke-static {v8, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v0, v7, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 75
    .line 76
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    const-wide/16 v12, 0x0

    .line 85
    .line 86
    if-eqz v11, :cond_4

    .line 87
    .line 88
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    check-cast v11, Landroid/util/EventLog$Event;

    .line 93
    .line 94
    invoke-virtual {v11}, Landroid/util/EventLog$Event;->getTimeNanos()J

    .line 95
    .line 96
    .line 97
    move-result-wide v14

    .line 98
    invoke-static {v12, v13, v14, v15}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    invoke-virtual {v12, v0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    if-eqz v13, :cond_1

    .line 107
    .line 108
    move-object v0, v12

    .line 109
    :cond_1
    iget-object v13, v7, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 110
    .line 111
    invoke-virtual {v12, v13}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    if-gtz v12, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {v11}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    instance-of v12, v12, Ljava/lang/String;

    .line 123
    .line 124
    if-nez v12, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v9, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    new-instance v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;

    .line 132
    .line 133
    invoke-direct {v10}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    move v11, v2

    .line 137
    :goto_2
    iget-object v14, v7, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    .line 139
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    sget-boolean v15, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->DEBUG:Z

    .line 144
    .line 145
    if-nez v14, :cond_1f

    .line 146
    .line 147
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    if-nez v14, :cond_1f

    .line 152
    .line 153
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    check-cast v14, Landroid/util/EventLog$Event;

    .line 158
    .line 159
    invoke-virtual {v14}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v16

    .line 163
    move-object/from16 v3, v16

    .line 164
    .line 165
    check-cast v3, Ljava/lang/String;

    .line 166
    .line 167
    move-object/from16 p0, v3

    .line 168
    .line 169
    invoke-virtual {v14}, Landroid/util/EventLog$Event;->getTimeNanos()J

    .line 170
    .line 171
    .line 172
    move-result-wide v2

    .line 173
    invoke-static {v12, v13, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    sget-object v3, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->SELINUX_MATCHER:Ljava/util/regex/Matcher;

    .line 178
    .line 179
    move-object/from16 v14, p0

    .line 180
    .line 181
    invoke-virtual {v3, v14}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    if-nez v14, :cond_5

    .line 190
    .line 191
    move-object/from16 v17, v1

    .line 192
    .line 193
    goto/16 :goto_f

    .line 194
    .line 195
    :cond_5
    const-string v14, "denial"

    .line 196
    .line 197
    invoke-virtual {v3, v14}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    new-instance v14, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda0;

    .line 206
    .line 207
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v14}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    const/4 v14, 0x0

    .line 215
    new-array v12, v14, [Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v3, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    check-cast v3, [Ljava/lang/String;

    .line 222
    .line 223
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    iput-object v3, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 232
    .line 233
    iget-object v3, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    .line 234
    .line 235
    iput-boolean v14, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    .line 236
    .line 237
    const/4 v12, 0x0

    .line 238
    iput-object v12, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    .line 239
    .line 240
    iput-object v12, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    .line 241
    .line 242
    iput-object v12, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    .line 243
    .line 244
    iput-object v12, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    .line 245
    .line 246
    iput-object v12, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    .line 247
    .line 248
    iput-object v12, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    .line 249
    .line 250
    iput-object v12, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    .line 251
    .line 252
    iput-boolean v14, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    .line 253
    .line 254
    :goto_3
    iget-object v13, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 255
    .line 256
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    if-eqz v13, :cond_18

    .line 261
    .line 262
    iget-object v13, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 263
    .line 264
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v13

    .line 268
    check-cast v13, Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    const-string v14, ",c"

    .line 274
    .line 275
    const/16 v17, -0x1

    .line 276
    .line 277
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 278
    .line 279
    .line 280
    move-result v18

    .line 281
    sparse-switch v18, :sswitch_data_0

    .line 282
    .line 283
    .line 284
    goto/16 :goto_5

    .line 285
    .line 286
    :sswitch_0
    const-string/jumbo v12, "tcontext"

    .line 287
    .line 288
    .line 289
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    if-nez v12, :cond_6

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_6
    const/4 v12, 0x7

    .line 297
    goto :goto_4

    .line 298
    :sswitch_1
    const-string v12, "granted"

    .line 299
    .line 300
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v12

    .line 304
    if-nez v12, :cond_7

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_7
    const/4 v12, 0x6

    .line 308
    goto :goto_4

    .line 309
    :sswitch_2
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v12

    .line 313
    if-nez v12, :cond_8

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_8
    const/4 v12, 0x5

    .line 317
    goto :goto_4

    .line 318
    :sswitch_3
    const-string/jumbo v12, "{"

    .line 319
    .line 320
    .line 321
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v12

    .line 325
    if-nez v12, :cond_9

    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_9
    const/4 v12, 0x4

    .line 329
    goto :goto_4

    .line 330
    :sswitch_4
    const-string/jumbo v12, "scontext"

    .line 331
    .line 332
    .line 333
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v12

    .line 337
    if-nez v12, :cond_a

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_a
    const/4 v12, 0x3

    .line 341
    goto :goto_4

    .line 342
    :sswitch_5
    const-string/jumbo v12, "permissive"

    .line 343
    .line 344
    .line 345
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v12

    .line 349
    if-nez v12, :cond_b

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_b
    const/4 v12, 0x2

    .line 353
    :goto_4
    move/from16 v17, v12

    .line 354
    .line 355
    goto :goto_5

    .line 356
    :sswitch_6
    const-string/jumbo v12, "tclass"

    .line 357
    .line 358
    .line 359
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    if-nez v12, :cond_c

    .line 364
    .line 365
    goto :goto_5

    .line 366
    :cond_c
    const/16 v17, 0x1

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :sswitch_7
    const-string v12, "denied"

    .line 370
    .line 371
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v12

    .line 375
    if-nez v12, :cond_d

    .line 376
    .line 377
    goto :goto_5

    .line 378
    :cond_d
    const/16 v17, 0x0

    .line 379
    .line 380
    :goto_5
    packed-switch v17, :pswitch_data_0

    .line 381
    .line 382
    .line 383
    :cond_e
    :goto_6
    move-object/from16 v17, v1

    .line 384
    .line 385
    goto/16 :goto_d

    .line 386
    .line 387
    :pswitch_0
    iget-object v12, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    .line 388
    .line 389
    invoke-virtual {v10, v12}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    .line 390
    .line 391
    .line 392
    move-result v12

    .line 393
    if-nez v12, :cond_f

    .line 394
    .line 395
    move-object/from16 v17, v1

    .line 396
    .line 397
    :goto_7
    const/4 v3, 0x0

    .line 398
    goto/16 :goto_e

    .line 399
    .line 400
    :cond_f
    iget-object v12, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    .line 401
    .line 402
    const-string/jumbo v13, "ttype"

    .line 403
    .line 404
    .line 405
    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v12

    .line 409
    iput-object v12, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    .line 410
    .line 411
    iget-object v12, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    .line 412
    .line 413
    const-string/jumbo v13, "tcategories"

    .line 414
    .line 415
    .line 416
    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v12

    .line 420
    if-nez v12, :cond_10

    .line 421
    .line 422
    const/4 v12, 0x0

    .line 423
    const/4 v14, 0x1

    .line 424
    goto :goto_8

    .line 425
    :cond_10
    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v12

    .line 429
    invoke-static {v12}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 430
    .line 431
    .line 432
    move-result-object v12

    .line 433
    new-instance v13, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 434
    .line 435
    const/4 v14, 0x1

    .line 436
    invoke-direct {v13, v14}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 437
    .line 438
    .line 439
    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 440
    .line 441
    .line 442
    move-result-object v12

    .line 443
    invoke-interface {v12}, Ljava/util/stream/IntStream;->toArray()[I

    .line 444
    .line 445
    .line 446
    move-result-object v12

    .line 447
    :goto_8
    iput-object v12, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    .line 448
    .line 449
    goto :goto_6

    .line 450
    :pswitch_1
    const/4 v14, 0x1

    .line 451
    iput-boolean v14, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    .line 452
    .line 453
    goto :goto_6

    .line 454
    :pswitch_2
    iget-object v12, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    .line 455
    .line 456
    invoke-virtual {v10, v12}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    .line 457
    .line 458
    .line 459
    move-result v12

    .line 460
    if-eqz v12, :cond_e

    .line 461
    .line 462
    iget-object v12, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    .line 463
    .line 464
    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v12

    .line 468
    iput-object v12, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    .line 469
    .line 470
    goto :goto_6

    .line 471
    :pswitch_3
    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    .line 472
    .line 473
    .line 474
    move-result-object v12

    .line 475
    const/4 v13, 0x0

    .line 476
    :goto_9
    if-nez v13, :cond_12

    .line 477
    .line 478
    iget-object v14, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 479
    .line 480
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 481
    .line 482
    .line 483
    move-result v14

    .line 484
    if-eqz v14, :cond_12

    .line 485
    .line 486
    iget-object v14, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 487
    .line 488
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v14

    .line 492
    check-cast v14, Ljava/lang/String;

    .line 493
    .line 494
    move-object/from16 v17, v1

    .line 495
    .line 496
    const-string/jumbo v1, "}"

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    if-eqz v1, :cond_11

    .line 504
    .line 505
    const/4 v13, 0x1

    .line 506
    goto :goto_a

    .line 507
    :cond_11
    invoke-interface {v12, v14}, Ljava/util/stream/Stream$Builder;->add(Ljava/lang/Object;)Ljava/util/stream/Stream$Builder;

    .line 508
    .line 509
    .line 510
    :goto_a
    move-object/from16 v1, v17

    .line 511
    .line 512
    goto :goto_9

    .line 513
    :cond_12
    move-object/from16 v17, v1

    .line 514
    .line 515
    if-nez v13, :cond_13

    .line 516
    .line 517
    :goto_b
    goto :goto_7

    .line 518
    :cond_13
    invoke-interface {v12}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    new-instance v12, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda1;

    .line 523
    .line 524
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 525
    .line 526
    .line 527
    invoke-interface {v1, v12}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    check-cast v1, [Ljava/lang/String;

    .line 532
    .line 533
    iput-object v1, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    .line 534
    .line 535
    goto/16 :goto_d

    .line 536
    .line 537
    :pswitch_4
    move-object/from16 v17, v1

    .line 538
    .line 539
    iget-object v1, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    .line 540
    .line 541
    invoke-virtual {v10, v1}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    if-nez v1, :cond_14

    .line 546
    .line 547
    goto :goto_b

    .line 548
    :cond_14
    iget-object v1, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    .line 549
    .line 550
    const-string/jumbo v12, "stype"

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    iput-object v1, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    .line 558
    .line 559
    iget-object v1, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    .line 560
    .line 561
    const-string/jumbo v12, "scategories"

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    if-nez v1, :cond_15

    .line 569
    .line 570
    const/4 v1, 0x0

    .line 571
    goto :goto_c

    .line 572
    :cond_15
    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    new-instance v12, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 581
    .line 582
    const/4 v13, 0x1

    .line 583
    invoke-direct {v12, v13}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 584
    .line 585
    .line 586
    invoke-interface {v1, v12}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    :goto_c
    iput-object v1, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    .line 595
    .line 596
    goto :goto_d

    .line 597
    :pswitch_5
    move-object/from16 v17, v1

    .line 598
    .line 599
    iget-object v1, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 600
    .line 601
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 602
    .line 603
    .line 604
    move-result v1

    .line 605
    if-nez v1, :cond_16

    .line 606
    .line 607
    goto :goto_b

    .line 608
    :cond_16
    iget-object v1, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 609
    .line 610
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    const-string v12, "1"

    .line 615
    .line 616
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    iput-boolean v1, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    .line 621
    .line 622
    goto :goto_d

    .line 623
    :pswitch_6
    move-object/from16 v17, v1

    .line 624
    .line 625
    iget-object v1, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 626
    .line 627
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    if-nez v1, :cond_17

    .line 632
    .line 633
    goto :goto_b

    .line 634
    :cond_17
    iget-object v1, v10, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 635
    .line 636
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    check-cast v1, Ljava/lang/String;

    .line 641
    .line 642
    iput-object v1, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    .line 643
    .line 644
    goto :goto_d

    .line 645
    :pswitch_7
    move-object/from16 v17, v1

    .line 646
    .line 647
    const/4 v1, 0x0

    .line 648
    iput-boolean v1, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    .line 649
    .line 650
    :goto_d
    move-object/from16 v1, v17

    .line 651
    .line 652
    const/4 v12, 0x0

    .line 653
    goto/16 :goto_3

    .line 654
    .line 655
    :cond_18
    move-object/from16 v17, v1

    .line 656
    .line 657
    :goto_e
    if-nez v3, :cond_19

    .line 658
    .line 659
    :goto_f
    move-object/from16 v1, v17

    .line 660
    .line 661
    const/4 v2, 0x0

    .line 662
    const/4 v3, 0x1

    .line 663
    :goto_10
    const-wide/16 v12, 0x0

    .line 664
    .line 665
    goto/16 :goto_2

    .line 666
    .line 667
    :cond_19
    iget-object v1, v7, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mQuotaLimiter:Lcom/android/server/selinux/QuotaLimiter;

    .line 668
    .line 669
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    sget-object v12, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    .line 673
    .line 674
    iget-object v13, v1, Lcom/android/server/selinux/QuotaLimiter;->mClock:Lcom/android/internal/os/Clock;

    .line 675
    .line 676
    invoke-virtual {v13}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    .line 677
    .line 678
    .line 679
    move-result-wide v13

    .line 680
    invoke-static {v13, v14}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 681
    .line 682
    .line 683
    move-result-object v13

    .line 684
    invoke-static {v12, v13}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    .line 685
    .line 686
    .line 687
    move-result-object v12

    .line 688
    iget-object v13, v1, Lcom/android/server/selinux/QuotaLimiter;->mWindowSize:Ljava/time/Duration;

    .line 689
    .line 690
    invoke-virtual {v12, v13}, Ljava/time/Duration;->dividedBy(Ljava/time/Duration;)J

    .line 691
    .line 692
    .line 693
    move-result-wide v12

    .line 694
    move-object v14, v4

    .line 695
    move-object/from16 v18, v5

    .line 696
    .line 697
    iget-wide v4, v1, Lcom/android/server/selinux/QuotaLimiter;->mCurrentWindow:J

    .line 698
    .line 699
    cmp-long v4, v12, v4

    .line 700
    .line 701
    if-lez v4, :cond_1a

    .line 702
    .line 703
    iput-wide v12, v1, Lcom/android/server/selinux/QuotaLimiter;->mCurrentWindow:J

    .line 704
    .line 705
    const/4 v4, 0x0

    .line 706
    iput v4, v1, Lcom/android/server/selinux/QuotaLimiter;->mPermitsGranted:I

    .line 707
    .line 708
    :cond_1a
    iget v4, v1, Lcom/android/server/selinux/QuotaLimiter;->mPermitsGranted:I

    .line 709
    .line 710
    iget v5, v1, Lcom/android/server/selinux/QuotaLimiter;->mMaxPermits:I

    .line 711
    .line 712
    if-ge v4, v5, :cond_1d

    .line 713
    .line 714
    const/4 v5, 0x1

    .line 715
    add-int/2addr v4, v5

    .line 716
    iput v4, v1, Lcom/android/server/selinux/QuotaLimiter;->mPermitsGranted:I

    .line 717
    .line 718
    iget-object v1, v7, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    .line 719
    .line 720
    iget-object v4, v1, Lcom/android/server/selinux/RateLimiter;->mClock:Lcom/android/internal/os/Clock;

    .line 721
    .line 722
    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    .line 723
    .line 724
    .line 725
    move-result-wide v4

    .line 726
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    iget-object v5, v1, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    .line 731
    .line 732
    invoke-virtual {v5, v4}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    if-eqz v5, :cond_1b

    .line 737
    .line 738
    sget-object v5, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 739
    .line 740
    iget-object v12, v1, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    .line 741
    .line 742
    invoke-virtual {v5, v4, v12}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    .line 743
    .line 744
    .line 745
    move-result-wide v4

    .line 746
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 747
    .line 748
    .line 749
    iget-object v4, v1, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    .line 750
    .line 751
    iget-object v5, v1, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    .line 752
    .line 753
    invoke-virtual {v4, v5}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    iput-object v4, v1, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    .line 758
    .line 759
    goto :goto_11

    .line 760
    :cond_1b
    iget-object v5, v1, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    .line 761
    .line 762
    invoke-virtual {v4, v5}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    .line 763
    .line 764
    .line 765
    move-result-object v4

    .line 766
    iput-object v4, v1, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    .line 767
    .line 768
    :goto_11
    iget-boolean v1, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    .line 769
    .line 770
    iget-object v4, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    .line 771
    .line 772
    iget-object v5, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    .line 773
    .line 774
    iget-object v12, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    .line 775
    .line 776
    iget-object v13, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    .line 777
    .line 778
    iget-object v15, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    .line 779
    .line 780
    move-object/from16 p0, v10

    .line 781
    .line 782
    iget-object v10, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    .line 783
    .line 784
    move-object/from16 v29, v6

    .line 785
    .line 786
    iget-object v6, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    .line 787
    .line 788
    iget-boolean v3, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    .line 789
    .line 790
    const/16 v19, 0x31f

    .line 791
    .line 792
    move/from16 v20, v1

    .line 793
    .line 794
    move-object/from16 v21, v4

    .line 795
    .line 796
    move-object/from16 v22, v5

    .line 797
    .line 798
    move-object/from16 v23, v12

    .line 799
    .line 800
    move-object/from16 v24, v13

    .line 801
    .line 802
    move-object/from16 v25, v15

    .line 803
    .line 804
    move-object/from16 v26, v10

    .line 805
    .line 806
    move-object/from16 v27, v6

    .line 807
    .line 808
    move/from16 v28, v3

    .line 809
    .line 810
    invoke-static/range {v19 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZ[Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;Z)V

    .line 811
    .line 812
    .line 813
    const/4 v1, 0x1

    .line 814
    add-int/2addr v11, v1

    .line 815
    iget-object v3, v7, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 816
    .line 817
    invoke-virtual {v2, v3}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    .line 818
    .line 819
    .line 820
    move-result v3

    .line 821
    if-eqz v3, :cond_1c

    .line 822
    .line 823
    iput-object v2, v7, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 824
    .line 825
    :cond_1c
    move-object/from16 v10, p0

    .line 826
    .line 827
    move v3, v1

    .line 828
    move-object v4, v14

    .line 829
    move-object/from16 v1, v17

    .line 830
    .line 831
    move-object/from16 v5, v18

    .line 832
    .line 833
    move-object/from16 v6, v29

    .line 834
    .line 835
    const/4 v2, 0x0

    .line 836
    goto/16 :goto_10

    .line 837
    .line 838
    :cond_1d
    move-object/from16 v29, v6

    .line 839
    .line 840
    if-eqz v15, :cond_1e

    .line 841
    .line 842
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v1

    .line 850
    const-string v2, "Running out of quota after %d logs."

    .line 851
    .line 852
    invoke-static {v8, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    :cond_1e
    const-string v1, "Too many SELinux logs in the queue, I am giving up."

    .line 856
    .line 857
    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .line 859
    .line 860
    iput-object v0, v7, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 861
    .line 862
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->clear()V

    .line 863
    .line 864
    .line 865
    goto :goto_12

    .line 866
    :cond_1f
    move-object v14, v4

    .line 867
    move-object/from16 v18, v5

    .line 868
    .line 869
    move-object/from16 v29, v6

    .line 870
    .line 871
    if-eqz v15, :cond_20

    .line 872
    .line 873
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    const-string v1, "Written %d logs"

    .line 882
    .line 883
    invoke-static {v8, v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    .line 885
    .line 886
    :cond_20
    :goto_12
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 887
    .line 888
    .line 889
    move-result v0

    .line 890
    if-eqz v0, :cond_21

    .line 891
    .line 892
    move-object/from16 v1, v18

    .line 893
    .line 894
    const/4 v2, 0x0

    .line 895
    invoke-virtual {v14, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 896
    .line 897
    .line 898
    :goto_13
    move-object/from16 v1, v29

    .line 899
    .line 900
    goto :goto_14

    .line 901
    :cond_21
    const/4 v2, 0x0

    .line 902
    goto :goto_13

    .line 903
    :goto_14
    iget-object v0, v1, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 904
    .line 905
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 906
    .line 907
    .line 908
    :goto_15
    return-void

    .line 909
    :sswitch_data_0
    .sparse-switch
        -0x4f988465 -> :sswitch_7
        -0x34682e7c -> :sswitch_6
        -0x1eda3961 -> :sswitch_5
        -0x1d21a224 -> :sswitch_4
        0x7b -> :sswitch_3
        0x346425 -> :sswitch_2
        0x10b4f6bb -> :sswitch_1
        0x4abf8abb -> :sswitch_0
    .end sparse-switch

    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
