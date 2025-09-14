.class public final Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mParams:Landroid/app/job/JobParameters;

.field public final synthetic this$0:Lcom/android/server/pm/DynamicCodeLoggingService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 7
    .line 8
    const-string p1, "DynamicCodeLoggingService_IdleLoggingJob"

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 17
    .line 18
    const-string p1, "DynamicCodeLoggingService_AuditWatchingJob"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, -0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x1

    .line 8
    iget v0, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->$r8$classId:I

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    :try_start_0
    const-string v7, "auditd"

    .line 16
    .line 17
    invoke-static {v7}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    filled-new-array {v7}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    aget v8, v7, v5

    .line 26
    .line 27
    if-ne v8, v4, :cond_0

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    sget-object v4, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 34
    .line 35
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 40
    .line 41
    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 42
    .line 43
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 44
    .line 45
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 46
    .line 47
    new-instance v8, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {v7, v8}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    sget-object v7, Lcom/android/server/pm/DynamicCodeLoggingService;->EXECUTE_NATIVE_AUDIT_PATTERN:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    move v9, v5

    .line 62
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-ge v9, v10, :cond_b

    .line 67
    .line 68
    iget-object v10, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 69
    .line 70
    iget-boolean v10, v10, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    .line 71
    .line 72
    if-eqz v10, :cond_1

    .line 73
    .line 74
    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    const-string v2, "Stopping AuditWatchingJob run at scheduler request"

    .line 77
    .line 78
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :catch_0
    move-exception v0

    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    check-cast v10, Landroid/util/EventLog$Event;

    .line 91
    .line 92
    invoke-virtual {v10}, Landroid/util/EventLog$Event;->getUid()I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    invoke-static {v11}, Landroid/os/Process;->isApplicationUid(I)Z

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    if-nez v12, :cond_2

    .line 101
    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :cond_2
    invoke-virtual {v10}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    instance-of v12, v10, Ljava/lang/String;

    .line 109
    .line 110
    if-nez v12, :cond_3

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_3
    check-cast v10, Ljava/lang/String;

    .line 114
    .line 115
    const-string/jumbo v12, "type=1400 "

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-nez v12, :cond_4

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-nez v10, :cond_5

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_5
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    if-nez v10, :cond_8

    .line 140
    .line 141
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    if-eqz v10, :cond_7

    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    if-nez v12, :cond_6

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    invoke-static {v10, v5}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    new-instance v12, Ljava/lang/String;

    .line 159
    .line 160
    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    .line 161
    .line 162
    .line 163
    move-object v10, v12

    .line 164
    goto :goto_2

    .line 165
    :cond_7
    :goto_1
    move-object v10, v0

    .line 166
    :cond_8
    :goto_2
    move-object/from16 v16, v10

    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    invoke-interface {v10, v11}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    if-eqz v10, :cond_a

    .line 180
    .line 181
    array-length v12, v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    if-nez v12, :cond_9

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_9
    :try_start_2
    aget-object v17, v10, v5

    .line 186
    .line 187
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    iget-object v12, v4, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 192
    .line 193
    const/16 v13, 0x4e

    .line 194
    .line 195
    move-object/from16 v15, v17

    .line 196
    .line 197
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-eqz v10, :cond_a

    .line 202
    .line 203
    iget-object v10, v4, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 204
    .line 205
    invoke-virtual {v10, v2}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 206
    .line 207
    .line 208
    :catch_1
    :cond_a
    :goto_3
    add-int/2addr v9, v6

    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :goto_4
    sget-object v2, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    .line 212
    .line 213
    const-string v3, "AuditWatchingJob failed"

    .line 214
    .line 215
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    .line 217
    .line 218
    :cond_b
    :goto_5
    iget-object v0, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 219
    .line 220
    iget-object v1, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    .line 221
    .line 222
    invoke-virtual {v0, v1, v5}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 223
    .line 224
    .line 225
    :goto_6
    return-void

    .line 226
    :pswitch_0
    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    .line 227
    .line 228
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 229
    .line 230
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 235
    .line 236
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 237
    .line 238
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 239
    .line 240
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 241
    .line 242
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getDexUseManagerLocal()Lcom/android/server/art/DexUseManagerLocal;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-nez v0, :cond_c

    .line 247
    .line 248
    goto/16 :goto_9

    .line 249
    .line 250
    :cond_c
    const-class v8, Lcom/android/server/pm/PackageManagerLocal;

    .line 251
    .line 252
    invoke-static {v8}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    check-cast v8, Lcom/android/server/pm/PackageManagerLocal;

    .line 257
    .line 258
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    :try_start_3
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    if-eqz v10, :cond_10

    .line 282
    .line 283
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    check-cast v10, Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v0, v10}, Lcom/android/server/art/DexUseManagerLocal;->getSecondaryDexContainerFileUseInfo(Ljava/lang/String;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v17

    .line 297
    :cond_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    if-eqz v11, :cond_d

    .line 302
    .line 303
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    move-object/from16 v18, v11

    .line 308
    .line 309
    check-cast v18, Lcom/android/server/art/model/DexContainerFileUseInfo;

    .line 310
    .line 311
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/art/model/DexContainerFileUseInfo;->getLoadingPackages()Ljava/util/Set;

    .line 312
    .line 313
    .line 314
    move-result-object v11

    .line 315
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v19

    .line 319
    :cond_f
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v11

    .line 323
    if-eqz v11, :cond_e

    .line 324
    .line 325
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v11

    .line 329
    move-object/from16 v16, v11

    .line 330
    .line 331
    check-cast v16, Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/art/model/DexContainerFileUseInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    .line 338
    .line 339
    .line 340
    move-result v13

    .line 341
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/art/model/DexContainerFileUseInfo;->getDexContainerFile()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v15

    .line 345
    iget-object v11, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 346
    .line 347
    const/16 v12, 0x44

    .line 348
    .line 349
    move-object v14, v10

    .line 350
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v11

    .line 354
    if-eqz v11, :cond_f

    .line 355
    .line 356
    iget-object v11, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 357
    .line 358
    invoke-virtual {v11, v2}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    .line 360
    .line 361
    goto :goto_7

    .line 362
    :goto_8
    move-object v1, v0

    .line 363
    goto/16 :goto_1c

    .line 364
    .line 365
    :catchall_0
    move-exception v0

    .line 366
    goto :goto_8

    .line 367
    :cond_10
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    .line 368
    .line 369
    .line 370
    :goto_9
    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 371
    .line 372
    iget-object v9, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    .line 373
    .line 374
    monitor-enter v9

    .line 375
    :try_start_4
    new-instance v8, Ljava/util/HashSet;

    .line 376
    .line 377
    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    .line 378
    .line 379
    check-cast v0, Ljava/util/HashMap;

    .line 380
    .line 381
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 386
    .line 387
    .line 388
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 389
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_21

    .line 398
    .line 399
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    move-object v15, v0

    .line 404
    check-cast v15, Ljava/lang/String;

    .line 405
    .line 406
    iget-object v0, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 407
    .line 408
    iget-boolean v0, v0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    .line 409
    .line 410
    if-eqz v0, :cond_11

    .line 411
    .line 412
    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    .line 413
    .line 414
    const-string v1, "Stopping IdleLoggingJob run at scheduler request"

    .line 415
    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    goto/16 :goto_1b

    .line 420
    .line 421
    :cond_11
    invoke-virtual {v7, v15}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    if-nez v0, :cond_12

    .line 426
    .line 427
    move-object v1, v2

    .line 428
    move v13, v4

    .line 429
    move-object/from16 v21, v8

    .line 430
    .line 431
    goto/16 :goto_1a

    .line 432
    .line 433
    :cond_12
    new-instance v14, Landroid/util/SparseArray;

    .line 434
    .line 435
    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 436
    .line 437
    .line 438
    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    .line 439
    .line 440
    check-cast v0, Ljava/util/HashMap;

    .line 441
    .line 442
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 447
    .line 448
    .line 449
    move-result-object v16

    .line 450
    move v0, v5

    .line 451
    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 452
    .line 453
    .line 454
    move-result v9

    .line 455
    if-eqz v9, :cond_1f

    .line 456
    .line 457
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v9

    .line 461
    check-cast v9, Ljava/util/Map$Entry;

    .line 462
    .line 463
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v10

    .line 467
    move-object v13, v10

    .line 468
    check-cast v13, Ljava/lang/String;

    .line 469
    .line 470
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v9

    .line 474
    move-object v12, v9

    .line 475
    check-cast v12, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 476
    .line 477
    iget v11, v12, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 478
    .line 479
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 480
    .line 481
    .line 482
    move-result v9

    .line 483
    const-string v10, "DynamicCodeLogger"

    .line 484
    .line 485
    const-wide/16 v3, 0x0

    .line 486
    .line 487
    if-ltz v9, :cond_14

    .line 488
    .line 489
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v9

    .line 493
    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 494
    .line 495
    :cond_13
    :goto_c
    move v3, v0

    .line 496
    move-object v4, v9

    .line 497
    goto :goto_f

    .line 498
    :cond_14
    :try_start_5
    invoke-virtual {v7}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 499
    .line 500
    .line 501
    move-result-object v9

    .line 502
    invoke-interface {v9, v15, v3, v4, v11}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 503
    .line 504
    .line 505
    move-result-object v9

    .line 506
    if-nez v9, :cond_15

    .line 507
    .line 508
    goto :goto_d

    .line 509
    :cond_15
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 510
    .line 511
    goto :goto_e

    .line 512
    :catch_2
    :goto_d
    move-object v9, v2

    .line 513
    :goto_e
    invoke-virtual {v14, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    if-nez v9, :cond_13

    .line 517
    .line 518
    new-instance v6, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v3, "Could not find package "

    .line 521
    .line 522
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    const-string v3, " for user "

    .line 529
    .line 530
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    iget-object v3, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 544
    .line 545
    invoke-virtual {v3, v11, v15}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(ILjava/lang/String;)Z

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    or-int/2addr v0, v3

    .line 550
    goto :goto_c

    .line 551
    :goto_f
    if-nez v4, :cond_16

    .line 552
    .line 553
    move v0, v3

    .line 554
    const/4 v3, 0x2

    .line 555
    const/4 v4, -0x1

    .line 556
    const/4 v6, 0x1

    .line 557
    goto :goto_b

    .line 558
    :cond_16
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 559
    .line 560
    invoke-static {v13, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    if-eqz v0, :cond_17

    .line 565
    .line 566
    const/4 v0, 0x2

    .line 567
    goto :goto_10

    .line 568
    :cond_17
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 569
    .line 570
    invoke-static {v13, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-eqz v0, :cond_1e

    .line 575
    .line 576
    const/4 v0, 0x1

    .line 577
    :goto_10
    :try_start_6
    iget-object v6, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    .line 578
    .line 579
    iget v9, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 580
    .line 581
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {v6}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 584
    .line 585
    .line 586
    move-result v20

    .line 587
    if-nez v20, :cond_18

    .line 588
    .line 589
    new-array v0, v5, [B

    .line 590
    .line 591
    move-object/from16 v21, v8

    .line 592
    .line 593
    move-object v5, v10

    .line 594
    move v8, v11

    .line 595
    move-object v1, v12

    .line 596
    move-object v6, v13

    .line 597
    move-object v2, v14

    .line 598
    goto/16 :goto_13

    .line 599
    .line 600
    :cond_18
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    .line 601
    .line 602
    .line 603
    move-result-object v5

    .line 604
    invoke-interface {v5, v13}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_6

    .line 605
    .line 606
    .line 607
    :try_start_7
    iget-object v5, v6, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 608
    .line 609
    move v6, v9

    .line 610
    move-object v9, v5

    .line 611
    move-object v5, v10

    .line 612
    move-object v10, v13

    .line 613
    move-object/from16 v21, v8

    .line 614
    .line 615
    move v8, v11

    .line 616
    move-object v11, v15

    .line 617
    move-object v1, v12

    .line 618
    move v12, v6

    .line 619
    move-object v6, v13

    .line 620
    move-object v13, v2

    .line 621
    move-object v2, v14

    .line 622
    move v14, v0

    .line 623
    :try_start_8
    invoke-interface/range {v9 .. v14}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    .line 624
    .line 625
    .line 626
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 627
    goto :goto_13

    .line 628
    :catch_3
    move-exception v0

    .line 629
    goto :goto_11

    .line 630
    :catch_4
    move-exception v0

    .line 631
    move-object/from16 v21, v8

    .line 632
    .line 633
    move-object v5, v10

    .line 634
    move v8, v11

    .line 635
    move-object v1, v12

    .line 636
    move-object v6, v13

    .line 637
    move-object v2, v14

    .line 638
    :goto_11
    :try_start_9
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 639
    .line 640
    .line 641
    const/4 v9, 0x0

    .line 642
    throw v9
    :try_end_9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_9 .. :try_end_9} :catch_5

    .line 643
    :catch_5
    move-exception v0

    .line 644
    goto :goto_12

    .line 645
    :catch_6
    move-exception v0

    .line 646
    move-object/from16 v21, v8

    .line 647
    .line 648
    move-object v5, v10

    .line 649
    move v8, v11

    .line 650
    move-object v1, v12

    .line 651
    move-object v6, v13

    .line 652
    move-object v2, v14

    .line 653
    :goto_12
    const-string v9, "Got InstallerException when hashing file "

    .line 654
    .line 655
    const-string v10, ": "

    .line 656
    .line 657
    invoke-static {v9, v6, v10}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    move-result-object v9

    .line 661
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .line 674
    .line 675
    const/4 v0, 0x0

    .line 676
    :goto_13
    iget-char v9, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    .line 677
    .line 678
    const/16 v10, 0x44

    .line 679
    .line 680
    if-ne v9, v10, :cond_19

    .line 681
    .line 682
    const-string v9, "dcl"

    .line 683
    .line 684
    goto :goto_14

    .line 685
    :cond_19
    const-string v9, "dcln"

    .line 686
    .line 687
    :goto_14
    new-instance v10, Ljava/io/File;

    .line 688
    .line 689
    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v10

    .line 696
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 697
    .line 698
    .line 699
    move-result-object v10

    .line 700
    invoke-static {v10}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v10

    .line 704
    if-eqz v0, :cond_1a

    .line 705
    .line 706
    array-length v11, v0

    .line 707
    const/16 v12, 0x20

    .line 708
    .line 709
    if-ne v11, v12, :cond_1a

    .line 710
    .line 711
    new-instance v5, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-static {v0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v10

    .line 733
    move v0, v3

    .line 734
    goto :goto_15

    .line 735
    :cond_1a
    const-string v0, "Got no hash for "

    .line 736
    .line 737
    invoke-static {v0, v6, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 741
    .line 742
    invoke-virtual {v0, v8, v15, v6}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(ILjava/lang/String;Ljava/lang/String;)Z

    .line 743
    .line 744
    .line 745
    move-result v0

    .line 746
    or-int/2addr v0, v3

    .line 747
    :goto_15
    iget-object v1, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    .line 748
    .line 749
    check-cast v1, Ljava/util/HashSet;

    .line 750
    .line 751
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    :cond_1b
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 756
    .line 757
    .line 758
    move-result v3

    .line 759
    if-eqz v3, :cond_1d

    .line 760
    .line 761
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    check-cast v3, Ljava/lang/String;

    .line 766
    .line 767
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v5

    .line 771
    if-eqz v5, :cond_1c

    .line 772
    .line 773
    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 774
    .line 775
    const-wide/16 v11, 0x0

    .line 776
    .line 777
    :goto_17
    const/4 v13, -0x1

    .line 778
    goto :goto_18

    .line 779
    :cond_1c
    :try_start_a
    invoke-virtual {v7}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 780
    .line 781
    .line 782
    move-result-object v5
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    .line 783
    const-wide/16 v11, 0x0

    .line 784
    .line 785
    :try_start_b
    invoke-interface {v5, v3, v11, v12, v8}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 786
    .line 787
    .line 788
    move-result v3
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    .line 789
    goto :goto_17

    .line 790
    :catch_7
    const-wide/16 v11, 0x0

    .line 791
    .line 792
    :catch_8
    const/4 v3, -0x1

    .line 793
    goto :goto_17

    .line 794
    :goto_18
    if-eq v3, v13, :cond_1b

    .line 795
    .line 796
    invoke-virtual {v7, v9, v3, v10}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 797
    .line 798
    .line 799
    goto :goto_16

    .line 800
    :cond_1d
    const/4 v3, 0x2

    .line 801
    const/4 v4, -0x1

    .line 802
    const/4 v6, 0x1

    .line 803
    move-object/from16 v1, p0

    .line 804
    .line 805
    move-object v14, v2

    .line 806
    :goto_19
    move-object/from16 v8, v21

    .line 807
    .line 808
    const/4 v5, 0x0

    .line 809
    const/4 v2, 0x0

    .line 810
    goto/16 :goto_b

    .line 811
    .line 812
    :cond_1e
    move-object/from16 v21, v8

    .line 813
    .line 814
    move-object v5, v10

    .line 815
    move v8, v11

    .line 816
    move-object v6, v13

    .line 817
    move-object v2, v14

    .line 818
    const/4 v13, -0x1

    .line 819
    const-string v0, "Could not infer CE/DE storage for path "

    .line 820
    .line 821
    invoke-static {v0, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 825
    .line 826
    invoke-virtual {v0, v8, v15, v6}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(ILjava/lang/String;Ljava/lang/String;)Z

    .line 827
    .line 828
    .line 829
    move-result v0

    .line 830
    or-int/2addr v0, v3

    .line 831
    const/4 v3, 0x2

    .line 832
    const/4 v6, 0x1

    .line 833
    move-object/from16 v1, p0

    .line 834
    .line 835
    move v4, v13

    .line 836
    goto :goto_19

    .line 837
    :cond_1f
    move v13, v4

    .line 838
    move-object/from16 v21, v8

    .line 839
    .line 840
    if-eqz v0, :cond_20

    .line 841
    .line 842
    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 843
    .line 844
    const/4 v1, 0x0

    .line 845
    invoke-virtual {v0, v1}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    goto :goto_1a

    .line 849
    :cond_20
    const/4 v1, 0x0

    .line 850
    :goto_1a
    move-object v2, v1

    .line 851
    move v4, v13

    .line 852
    move-object/from16 v8, v21

    .line 853
    .line 854
    const/4 v3, 0x2

    .line 855
    const/4 v5, 0x0

    .line 856
    const/4 v6, 0x1

    .line 857
    move-object/from16 v1, p0

    .line 858
    .line 859
    goto/16 :goto_a

    .line 860
    .line 861
    :cond_21
    move-object v2, v1

    .line 862
    iget-object v0, v2, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 863
    .line 864
    iget-object v1, v2, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    .line 865
    .line 866
    const/4 v2, 0x0

    .line 867
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 868
    .line 869
    .line 870
    :goto_1b
    return-void

    .line 871
    :catchall_1
    move-exception v0

    .line 872
    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 873
    throw v0

    .line 874
    :goto_1c
    if-eqz v8, :cond_22

    .line 875
    .line 876
    :try_start_d
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 877
    .line 878
    .line 879
    goto :goto_1d

    .line 880
    :catchall_2
    move-exception v0

    .line 881
    move-object v2, v0

    .line 882
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 883
    .line 884
    .line 885
    :cond_22
    :goto_1d
    throw v1

    .line 886
    nop

    .line 887
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
