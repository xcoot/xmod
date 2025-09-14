.class public final Lcom/android/server/pm/PackageHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doHandleMessage(Landroid/os/Message;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, v1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v3, v2, :cond_1b

    .line 10
    .line 11
    const/16 v5, 0x9

    .line 12
    .line 13
    if-eq v3, v5, :cond_17

    .line 14
    .line 15
    const/16 v5, 0xa

    .line 16
    .line 17
    if-eq v3, v5, :cond_16

    .line 18
    .line 19
    const/16 v5, 0xc

    .line 20
    .line 21
    if-eq v3, v5, :cond_12

    .line 22
    .line 23
    const/16 v5, 0xd

    .line 24
    .line 25
    if-eq v3, v5, :cond_11

    .line 26
    .line 27
    const/16 v5, 0xf

    .line 28
    .line 29
    if-eq v3, v5, :cond_e

    .line 30
    .line 31
    const/16 v5, 0x10

    .line 32
    .line 33
    if-eq v3, v5, :cond_a

    .line 34
    .line 35
    const/16 v5, -0x16

    .line 36
    .line 37
    const-wide/32 v6, 0x40000

    .line 38
    .line 39
    .line 40
    packed-switch v3, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    goto/16 :goto_c

    .line 44
    .line 45
    :pswitch_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v1, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string/jumbo v1, "unused_static_shared_lib_min_cache_period"

    .line 68
    .line 69
    .line 70
    sget-wide v4, Lcom/android/server/pm/PackageManagerService;->DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    .line 71
    .line 72
    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    const-wide v4, 0x7fffffffffffffffL

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto/16 :goto_c

    .line 85
    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "PackageManager"

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "Failed to prune unused static shared libraries :"

    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto/16 :goto_c

    .line 111
    .line 112
    :pswitch_1
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 113
    .line 114
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 119
    .line 120
    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 123
    .line 124
    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->runMessage(ILjava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto/16 :goto_c

    .line 128
    .line 129
    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 130
    .line 131
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 132
    .line 133
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 134
    .line 135
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 140
    .line 141
    if-eqz v3, :cond_22

    .line 142
    .line 143
    iget-boolean v8, v3, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    .line 144
    .line 145
    if-nez v8, :cond_22

    .line 146
    .line 147
    iget-object v8, v3, Lcom/android/server/pm/PackageVerificationState;->mVerifyingSession:Lcom/android/server/pm/VerifyingSession;

    .line 148
    .line 149
    iget-object v9, v8, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 150
    .line 151
    iget-object v9, v9, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 152
    .line 153
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    new-instance v10, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v11, "Integrity verification timed out for "

    .line 160
    .line 161
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    const-string v10, "PackageManager"

    .line 172
    .line 173
    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    iput-boolean v2, v3, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    .line 177
    .line 178
    invoke-virtual {v8, v5, v9}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_0

    .line 186
    .line 187
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 188
    .line 189
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 192
    .line 193
    .line 194
    :cond_0
    const-string v0, "integrity_verification"

    .line 195
    .line 196
    invoke-static {v6, v7, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 197
    .line 198
    .line 199
    iput-boolean v4, v8, Lcom/android/server/pm/VerifyingSession;->mWaitForIntegrityVerificationToComplete:Z

    .line 200
    .line 201
    invoke-virtual {v8}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_c

    .line 205
    .line 206
    :pswitch_3
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 207
    .line 208
    iget-object v8, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 209
    .line 210
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 211
    .line 212
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    check-cast v8, Lcom/android/server/pm/PackageVerificationState;

    .line 217
    .line 218
    if-nez v8, :cond_1

    .line 219
    .line 220
    const-string v0, "PackageManager"

    .line 221
    .line 222
    const-string v1, "Integrity verification with id "

    .line 223
    .line 224
    const-string v2, " not found. It may be invalid or overridden by verifier"

    .line 225
    .line 226
    invoke-static {v3, v1, v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_c

    .line 230
    .line 231
    :cond_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v1, Ljava/lang/Integer;

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    iget-object v9, v8, Lcom/android/server/pm/PackageVerificationState;->mVerifyingSession:Lcom/android/server/pm/VerifyingSession;

    .line 240
    .line 241
    iget-object v10, v9, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 242
    .line 243
    iget-object v10, v10, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 244
    .line 245
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    iput-boolean v2, v8, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    .line 250
    .line 251
    if-ne v1, v2, :cond_2

    .line 252
    .line 253
    const-string v1, "PackageManager"

    .line 254
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v5, "Integrity check passed for "

    .line 258
    .line 259
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v2, "Integrity check failed for "

    .line 276
    .line 277
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v9, v5, v1}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_3

    .line 295
    .line 296
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 297
    .line 298
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 299
    .line 300
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 301
    .line 302
    .line 303
    :cond_3
    const-string v0, "integrity_verification"

    .line 304
    .line 305
    invoke-static {v6, v7, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    iput-boolean v4, v9, Lcom/android/server/pm/VerifyingSession;->mWaitForIntegrityVerificationToComplete:Z

    .line 309
    .line 310
    invoke-virtual {v9}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_c

    .line 314
    .line 315
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v1, Ljava/lang/String;

    .line 318
    .line 319
    if-eqz v1, :cond_22

    .line 320
    .line 321
    const/16 v5, 0x1d

    .line 322
    .line 323
    if-ne v3, v5, :cond_4

    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_4
    move v2, v4

    .line 327
    :goto_1
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 328
    .line 329
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_c

    .line 333
    .line 334
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v1, Lcom/android/server/pm/CleanUpArgs;

    .line 337
    .line 338
    if-eqz v1, :cond_22

    .line 339
    .line 340
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 341
    .line 342
    iget-object v2, v1, Lcom/android/server/pm/CleanUpArgs;->mPackageName:Ljava/lang/String;

    .line 343
    .line 344
    iget-object v3, v1, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    .line 345
    .line 346
    iget-object v1, v1, Lcom/android/server/pm/CleanUpArgs;->mInstructionSets:[Ljava/lang/String;

    .line 347
    .line 348
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 349
    .line 350
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_c

    .line 354
    .line 355
    :pswitch_6
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 356
    .line 357
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 358
    .line 359
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 360
    .line 361
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 362
    .line 363
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    check-cast v3, Lcom/android/server/pm/VerifyingSession;

    .line 368
    .line 369
    if-eqz v3, :cond_22

    .line 370
    .line 371
    iget-object v5, v3, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 372
    .line 373
    iget-object v5, v5, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 374
    .line 375
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    const-string v8, "PackageManager"

    .line 380
    .line 381
    new-instance v9, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v10, "Enable rollback timed out for "

    .line 384
    .line 385
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v9

    .line 395
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    iget-object v8, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 399
    .line 400
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 401
    .line 402
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 403
    .line 404
    .line 405
    const-string v8, "PackageManager"

    .line 406
    .line 407
    new-instance v9, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    const-string v10, "Continuing with installation of "

    .line 410
    .line 411
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    const-string v5, "enable_rollback"

    .line 425
    .line 426
    invoke-static {v6, v7, v5, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 427
    .line 428
    .line 429
    iput-boolean v4, v3, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    .line 430
    .line 431
    invoke-virtual {v3}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 432
    .line 433
    .line 434
    new-instance v2, Landroid/content/Intent;

    .line 435
    .line 436
    const-string v3, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    .line 437
    .line 438
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const-string v3, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    .line 442
    .line 443
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    .line 445
    .line 446
    const/high16 v1, 0x14000000

    .line 447
    .line 448
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    .line 450
    .line 451
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 452
    .line 453
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 454
    .line 455
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 456
    .line 457
    const-string v3, "android.permission.PACKAGE_ROLLBACK_AGENT"

    .line 458
    .line 459
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_c

    .line 463
    .line 464
    :pswitch_7
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 465
    .line 466
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 467
    .line 468
    iget-object v5, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 469
    .line 470
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 471
    .line 472
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    check-cast v5, Lcom/android/server/pm/VerifyingSession;

    .line 477
    .line 478
    if-nez v5, :cond_5

    .line 479
    .line 480
    const-string v0, "PackageManager"

    .line 481
    .line 482
    const-string v1, "Invalid rollback enabled token "

    .line 483
    .line 484
    const-string v2, " received"

    .line 485
    .line 486
    invoke-static {v3, v1, v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_c

    .line 490
    .line 491
    :cond_5
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 492
    .line 493
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 494
    .line 495
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 496
    .line 497
    .line 498
    if-eq v1, v2, :cond_6

    .line 499
    .line 500
    iget-object v0, v5, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 501
    .line 502
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 503
    .line 504
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    const-string v1, "PackageManager"

    .line 509
    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    const-string v8, "Failed to enable rollback for "

    .line 513
    .line 514
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    const-string v1, "PackageManager"

    .line 528
    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    const-string v8, "Continuing with installation of "

    .line 532
    .line 533
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    :cond_6
    const-string v0, "enable_rollback"

    .line 547
    .line 548
    invoke-static {v6, v7, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 549
    .line 550
    .line 551
    iput-boolean v4, v5, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    .line 552
    .line 553
    invoke-virtual {v5}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_c

    .line 557
    .line 558
    :pswitch_8
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 559
    .line 560
    iget-object v12, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 561
    .line 562
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 567
    .line 568
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 569
    .line 570
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 571
    .line 572
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 573
    .line 574
    check-cast v1, Landroid/content/pm/InstantAppRequest;

    .line 575
    .line 576
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 577
    .line 578
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 579
    .line 580
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    .line 581
    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 583
    .line 584
    .line 585
    move-result-wide v13

    .line 586
    iget-object v15, v1, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    .line 587
    .line 588
    const-string v10, "["

    .line 589
    .line 590
    const-string v9, "PackageManager"

    .line 591
    .line 592
    sget-boolean v16, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    .line 593
    .line 594
    if-eqz v16, :cond_7

    .line 595
    .line 596
    const-string v4, "] Phase2; resolving"

    .line 597
    .line 598
    invoke-static {v10, v15, v4, v9}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    :cond_7
    iget-object v7, v1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 602
    .line 603
    invoke-static {v7}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 604
    .line 605
    .line 606
    move-result-object v17

    .line 607
    new-instance v8, Lcom/android/server/pm/InstantAppResolver$1;

    .line 608
    .line 609
    move-object v4, v8

    .line 610
    move-object v2, v8

    .line 611
    move-object v8, v15

    .line 612
    move-object/from16 v19, v9

    .line 613
    .line 614
    move-object v9, v1

    .line 615
    move-object/from16 v20, v10

    .line 616
    .line 617
    move-object/from16 v10, v17

    .line 618
    .line 619
    invoke-direct/range {v4 .. v12}, Lcom/android/server/pm/InstantAppResolver$1;-><init>(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/InstantAppRequest;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V

    .line 620
    .line 621
    .line 622
    :try_start_1
    new-instance v4, Landroid/content/pm/InstantAppRequestInfo;

    .line 623
    .line 624
    iget-object v5, v1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 625
    .line 626
    invoke-static {v5}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 627
    .line 628
    .line 629
    move-result-object v22

    .line 630
    iget-object v5, v1, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    .line 631
    .line 632
    iget v6, v1, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 633
    .line 634
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 635
    .line 636
    .line 637
    move-result-object v24

    .line 638
    iget-boolean v6, v1, Landroid/content/pm/InstantAppRequest;->isRequesterInstantApp:Z

    .line 639
    .line 640
    iget-object v1, v1, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    .line 641
    .line 642
    move-object/from16 v21, v4

    .line 643
    .line 644
    move-object/from16 v23, v5

    .line 645
    .line 646
    move/from16 v25, v6

    .line 647
    .line 648
    move-object/from16 v26, v1

    .line 649
    .line 650
    invoke-direct/range {v21 .. v26}, Landroid/content/pm/InstantAppRequestInfo;-><init>(Landroid/content/Intent;[ILandroid/os/UserHandle;ZLjava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    new-instance v1, Lcom/android/server/pm/InstantAppResolverConnection$1;

    .line 657
    .line 658
    invoke-direct {v1, v0, v2, v13, v14}, Lcom/android/server/pm/InstantAppResolverConnection$1;-><init>(Landroid/os/Handler;Lcom/android/server/pm/InstantAppResolver$1;J)V
    :try_end_1
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 659
    .line 660
    .line 661
    :try_start_2
    invoke-virtual {v4}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 666
    .line 667
    .line 668
    move-result-wide v5
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 669
    :try_start_3
    invoke-virtual {v3, v0}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    .line 670
    .line 671
    .line 672
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 673
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    .line 675
    .line 676
    invoke-interface {v0, v4, v1}, Landroid/app/IInstantAppResolver;->getInstantAppIntentFilterList(Landroid/content/pm/InstantAppRequestInfo;Landroid/os/IRemoteCallback;)V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_c

    .line 680
    .line 681
    :catchall_0
    move-exception v0

    .line 682
    move-object v1, v0

    .line 683
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 684
    .line 685
    .line 686
    throw v1
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_4 .. :try_end_4} :catch_1

    .line 687
    :catch_1
    move-exception v0

    .line 688
    goto :goto_2

    .line 689
    :catch_2
    :try_start_5
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    .line 690
    .line 691
    const/4 v1, 0x3

    .line 692
    invoke-direct {v0, v1}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .line 693
    .line 694
    .line 695
    throw v0

    .line 696
    :catch_3
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    .line 697
    .line 698
    const/4 v1, 0x1

    .line 699
    invoke-direct {v0, v1}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .line 700
    .line 701
    .line 702
    throw v0
    :try_end_5
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_5 .. :try_end_5} :catch_1

    .line 703
    :goto_2
    iget v0, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    .line 704
    .line 705
    const/4 v1, 0x2

    .line 706
    const/4 v2, 0x1

    .line 707
    if-ne v0, v2, :cond_8

    .line 708
    .line 709
    move v2, v1

    .line 710
    goto :goto_3

    .line 711
    :cond_8
    const/4 v2, 0x1

    .line 712
    :goto_3
    const/16 v0, 0x384

    .line 713
    .line 714
    invoke-static {v0, v2, v13, v14, v15}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IIJLjava/lang/String;)V

    .line 715
    .line 716
    .line 717
    if-eqz v16, :cond_22

    .line 718
    .line 719
    if-ne v2, v1, :cond_9

    .line 720
    .line 721
    const-string v0, "] Phase2; bind timed out"

    .line 722
    .line 723
    move-object/from16 v2, v19

    .line 724
    .line 725
    move-object/from16 v1, v20

    .line 726
    .line 727
    invoke-static {v1, v15, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    goto/16 :goto_c

    .line 731
    .line 732
    :cond_9
    move-object/from16 v2, v19

    .line 733
    .line 734
    move-object/from16 v1, v20

    .line 735
    .line 736
    const-string v0, "] Phase2; service connection error"

    .line 737
    .line 738
    invoke-static {v1, v15, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_c

    .line 742
    .line 743
    :pswitch_9
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 744
    .line 745
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 746
    .line 747
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 748
    .line 749
    monitor-enter v2

    .line 750
    :try_start_6
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 751
    .line 752
    const/16 v4, 0x13

    .line 753
    .line 754
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 755
    .line 756
    .line 757
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 758
    .line 759
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 760
    .line 761
    .line 762
    monitor-exit v2

    .line 763
    goto/16 :goto_c

    .line 764
    .line 765
    :catchall_1
    move-exception v0

    .line 766
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 767
    throw v0

    .line 768
    :cond_a
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 769
    .line 770
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 771
    .line 772
    if-eqz v3, :cond_b

    .line 773
    .line 774
    const/16 v18, 0x1

    .line 775
    .line 776
    goto :goto_4

    .line 777
    :cond_b
    move/from16 v18, v4

    .line 778
    .line 779
    :goto_4
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 780
    .line 781
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 782
    .line 783
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 788
    .line 789
    if-eqz v3, :cond_22

    .line 790
    .line 791
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    .line 792
    .line 793
    .line 794
    move-result v5

    .line 795
    if-eqz v5, :cond_c

    .line 796
    .line 797
    goto/16 :goto_c

    .line 798
    .line 799
    :cond_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v1, Lcom/android/server/pm/PackageVerificationResponse;

    .line 802
    .line 803
    if-nez v18, :cond_d

    .line 804
    .line 805
    iget v5, v1, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    .line 806
    .line 807
    iget-object v6, v3, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    .line 808
    .line 809
    invoke-virtual {v6, v5, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 810
    .line 811
    .line 812
    move-result v4

    .line 813
    if-eqz v4, :cond_d

    .line 814
    .line 815
    goto/16 :goto_c

    .line 816
    .line 817
    :cond_d
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 818
    .line 819
    invoke-static {v2, v3, v1, v0}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponseOnTimeout(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V

    .line 820
    .line 821
    .line 822
    goto/16 :goto_c

    .line 823
    .line 824
    :cond_e
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 825
    .line 826
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 827
    .line 828
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 829
    .line 830
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 835
    .line 836
    if-nez v3, :cond_f

    .line 837
    .line 838
    const-string v0, "PackageManager"

    .line 839
    .line 840
    const-string v1, "Verification with id "

    .line 841
    .line 842
    const-string v3, " not found. It may be invalid or overridden by integrity verification"

    .line 843
    .line 844
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    goto/16 :goto_c

    .line 848
    .line 849
    :cond_f
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    .line 850
    .line 851
    .line 852
    move-result v4

    .line 853
    if-eqz v4, :cond_10

    .line 854
    .line 855
    const-string v0, "PackageManager"

    .line 856
    .line 857
    const-string v1, "Verification with id "

    .line 858
    .line 859
    const-string v3, " already complete."

    .line 860
    .line 861
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    goto/16 :goto_c

    .line 865
    .line 866
    :cond_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 867
    .line 868
    check-cast v1, Lcom/android/server/pm/PackageVerificationResponse;

    .line 869
    .line 870
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 871
    .line 872
    invoke-static {v2, v3, v1, v0}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V

    .line 873
    .line 874
    .line 875
    goto/16 :goto_c

    .line 876
    .line 877
    :cond_11
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 878
    .line 879
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->writeSettings(Z)V

    .line 880
    .line 881
    .line 882
    goto/16 :goto_c

    .line 883
    .line 884
    :cond_12
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 885
    .line 886
    const/4 v3, 0x1

    .line 887
    if-ne v2, v3, :cond_13

    .line 888
    .line 889
    move v4, v3

    .line 890
    :cond_13
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 891
    .line 892
    if-ne v2, v3, :cond_14

    .line 893
    .line 894
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 899
    .line 900
    .line 901
    :cond_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 902
    .line 903
    if-eqz v1, :cond_15

    .line 904
    .line 905
    check-cast v1, Ljava/util/Set;

    .line 906
    .line 907
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 908
    .line 909
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 910
    .line 911
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {v0, v1}, Lcom/android/server/pm/AsecInstallHelper;->unloadAllContainers(Ljava/util/Set;)V

    .line 916
    .line 917
    .line 918
    :cond_15
    if-eqz v4, :cond_22

    .line 919
    .line 920
    :try_start_7
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManager()Landroid/os/storage/IStorageManager;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->finishMediaUpdate()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 925
    .line 926
    .line 927
    goto/16 :goto_c

    .line 928
    .line 929
    :catch_4
    const-string v0, "PackageManager"

    .line 930
    .line 931
    const-string v1, "StorageManagerService not running?"

    .line 932
    .line 933
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    .line 935
    .line 936
    goto/16 :goto_c

    .line 937
    .line 938
    :cond_16
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageHandler;->doHandlePostInstall(Landroid/os/Message;)V

    .line 939
    .line 940
    .line 941
    goto/16 :goto_c

    .line 942
    .line 943
    :cond_17
    iget-object v2, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 944
    .line 945
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 946
    .line 947
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 948
    .line 949
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 954
    .line 955
    if-eqz v2, :cond_18

    .line 956
    .line 957
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 958
    .line 959
    iget-object v2, v2, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 960
    .line 961
    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/PackageManagerService;->isLocaleOptimizedPackage(ILjava/lang/String;)Z

    .line 962
    .line 963
    .line 964
    move-result v4

    .line 965
    :cond_18
    if-eqz v4, :cond_1a

    .line 966
    .line 967
    iget-object v5, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 968
    .line 969
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 970
    .line 971
    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    .line 973
    .line 974
    const-string/jumbo v2, "updateLocaleOverlaysForPackage() called with: msg = ["

    .line 975
    .line 976
    .line 977
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    const-string v2, "]"

    .line 984
    .line 985
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    const-string v2, "PackageManager"

    .line 993
    .line 994
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    .line 996
    .line 997
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 998
    .line 999
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 1000
    .line 1001
    iget-object v0, v5, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 1002
    .line 1003
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 1008
    .line 1009
    sget-object v8, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_INSTALL:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    .line 1010
    .line 1011
    if-nez v0, :cond_19

    .line 1012
    .line 1013
    const/4 v10, 0x0

    .line 1014
    const/4 v11, 0x0

    .line 1015
    const/4 v9, -0x1

    .line 1016
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;)V

    .line 1017
    .line 1018
    .line 1019
    goto/16 :goto_c

    .line 1020
    .line 1021
    :cond_19
    iget-object v10, v0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 1022
    .line 1023
    const/4 v9, -0x1

    .line 1024
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->updateLocaleOverlaysForPackage(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    goto/16 :goto_c

    .line 1028
    .line 1029
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageHandler;->doHandlePostInstall(Landroid/os/Message;)V

    .line 1030
    .line 1031
    .line 1032
    goto/16 :goto_c

    .line 1033
    .line 1034
    :cond_1b
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1035
    .line 1036
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 1037
    .line 1038
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1039
    .line 1040
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1041
    .line 1042
    monitor-enter v1

    .line 1043
    :try_start_8
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1044
    .line 1045
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1046
    .line 1047
    invoke-virtual {v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->copiedMap()Landroid/util/SparseArray;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v2

    .line 1051
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 1052
    .line 1053
    .line 1054
    move-result v3

    .line 1055
    move v5, v4

    .line 1056
    move v6, v5

    .line 1057
    :goto_5
    if-ge v5, v3, :cond_1c

    .line 1058
    .line 1059
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v7

    .line 1063
    check-cast v7, Landroid/util/ArrayMap;

    .line 1064
    .line 1065
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 1066
    .line 1067
    .line 1068
    move-result v7

    .line 1069
    add-int/2addr v6, v7

    .line 1070
    const/4 v7, 0x1

    .line 1071
    add-int/2addr v5, v7

    .line 1072
    goto :goto_5

    .line 1073
    :catchall_2
    move-exception v0

    .line 1074
    goto/16 :goto_d

    .line 1075
    .line 1076
    :cond_1c
    if-nez v6, :cond_1d

    .line 1077
    .line 1078
    monitor-exit v1

    .line 1079
    goto/16 :goto_c

    .line 1080
    .line 1081
    :cond_1d
    new-array v5, v6, [Ljava/lang/String;

    .line 1082
    .line 1083
    new-array v7, v6, [Ljava/util/ArrayList;

    .line 1084
    .line 1085
    new-array v6, v6, [I

    .line 1086
    .line 1087
    move v8, v4

    .line 1088
    move v9, v8

    .line 1089
    :goto_6
    if-ge v8, v3, :cond_20

    .line 1090
    .line 1091
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1092
    .line 1093
    .line 1094
    move-result v10

    .line 1095
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v11

    .line 1099
    check-cast v11, Landroid/util/ArrayMap;

    .line 1100
    .line 1101
    invoke-static {v11}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    .line 1102
    .line 1103
    .line 1104
    move-result v12

    .line 1105
    move v13, v4

    .line 1106
    :goto_7
    if-ge v13, v12, :cond_1f

    .line 1107
    .line 1108
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v14

    .line 1112
    check-cast v14, Ljava/lang/String;

    .line 1113
    .line 1114
    aput-object v14, v5, v9

    .line 1115
    .line 1116
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v14

    .line 1120
    check-cast v14, Ljava/util/ArrayList;

    .line 1121
    .line 1122
    aput-object v14, v7, v9

    .line 1123
    .line 1124
    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1125
    .line 1126
    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1127
    .line 1128
    aget-object v15, v5, v9

    .line 1129
    .line 1130
    invoke-virtual {v14, v15}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v14

    .line 1134
    if-eqz v14, :cond_1e

    .line 1135
    .line 1136
    iget v14, v14, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 1137
    .line 1138
    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    .line 1139
    .line 1140
    .line 1141
    move-result v14

    .line 1142
    goto :goto_8

    .line 1143
    :cond_1e
    const/4 v14, -0x1

    .line 1144
    :goto_8
    aput v14, v6, v9

    .line 1145
    .line 1146
    const/4 v14, 0x1

    .line 1147
    add-int/2addr v9, v14

    .line 1148
    add-int/2addr v13, v14

    .line 1149
    goto :goto_7

    .line 1150
    :cond_1f
    const/4 v10, 0x1

    .line 1151
    add-int/2addr v8, v10

    .line 1152
    goto :goto_6

    .line 1153
    :cond_20
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1154
    .line 1155
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1156
    .line 1157
    iget-object v3, v2, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1158
    .line 1159
    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1160
    :try_start_9
    iget-object v2, v2, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    .line 1161
    .line 1162
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1163
    .line 1164
    .line 1165
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1166
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1167
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1168
    .line 1169
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    :goto_9
    if-ge v4, v9, :cond_22

    .line 1174
    .line 1175
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    .line 1176
    .line 1177
    if-eqz v2, :cond_21

    .line 1178
    .line 1179
    aget-object v2, v7, v4

    .line 1180
    .line 1181
    if-eqz v2, :cond_21

    .line 1182
    .line 1183
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1184
    .line 1185
    .line 1186
    move-result v2

    .line 1187
    const/4 v3, 0x1

    .line 1188
    if-ne v2, v3, :cond_21

    .line 1189
    .line 1190
    aget-object v2, v7, v4

    .line 1191
    .line 1192
    const-string v3, "androidx.work.impl.background.systemalarm.RescheduleReceiver"

    .line 1193
    .line 1194
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v2

    .line 1198
    if-eqz v2, :cond_21

    .line 1199
    .line 1200
    const-string v2, "PackageManager"

    .line 1201
    .line 1202
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    const-string v8, "Don\'t send PACKAGE_CHANGED for "

    .line 1205
    .line 1206
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    aget-object v8, v5, v4

    .line 1210
    .line 1211
    const-string v10, " by WorkManager"

    .line 1212
    .line 1213
    invoke-static {v3, v8, v10, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    :goto_a
    const/4 v2, 0x1

    .line 1217
    goto :goto_b

    .line 1218
    :cond_21
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 1219
    .line 1220
    aget-object v12, v5, v4

    .line 1221
    .line 1222
    aget-object v14, v7, v4

    .line 1223
    .line 1224
    aget v15, v6, v4

    .line 1225
    .line 1226
    const/16 v16, 0x0

    .line 1227
    .line 1228
    const/4 v13, 0x1

    .line 1229
    move-object v11, v1

    .line 1230
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    goto :goto_a

    .line 1234
    :goto_b
    add-int/2addr v4, v2

    .line 1235
    goto :goto_9

    .line 1236
    :catch_5
    :cond_22
    :goto_c
    return-void

    .line 1237
    :catchall_3
    move-exception v0

    .line 1238
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1239
    :try_start_c
    throw v0

    .line 1240
    :goto_d
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1241
    throw v0

    .line 1242
    nop

    .line 1243
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final doHandlePostInstall(Landroid/os/Message;)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 8
    .line 9
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 16
    .line 17
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    move v3, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v3, v4

    .line 26
    :goto_0
    iget-object v6, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 27
    .line 28
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 29
    .line 30
    iget v7, v1, Landroid/os/Message;->arg1:I

    .line 31
    .line 32
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->delete(I)V

    .line 33
    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 39
    .line 40
    .line 41
    iget v6, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 42
    .line 43
    if-ne v6, v5, :cond_5

    .line 44
    .line 45
    iget-object v6, v2, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 46
    .line 47
    if-eqz v6, :cond_5

    .line 48
    .line 49
    iget-object v7, v6, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 50
    .line 51
    iget v8, v7, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 52
    .line 53
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-nez v9, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :try_start_0
    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    if-nez v9, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 68
    .line 69
    iget-wide v11, v9, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 70
    .line 71
    iget-boolean v7, v7, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 72
    .line 73
    if-nez v7, :cond_4

    .line 74
    .line 75
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    filled-new-array {v10, v7, v8}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const v8, 0x33479

    .line 88
    .line 89
    .line 90
    invoke-static {v8, v7}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    filled-new-array {v10, v7, v8}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    const v8, 0x3347a

    .line 107
    .line 108
    .line 109
    invoke-static {v8, v7}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    :catch_0
    :goto_1
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    .line 113
    .line 114
    .line 115
    :cond_5
    iget-object v6, v2, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    .line 116
    .line 117
    if-eqz v6, :cond_6

    .line 118
    .line 119
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 120
    .line 121
    .line 122
    :cond_6
    iget-object v6, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 123
    .line 124
    if-nez v6, :cond_7

    .line 125
    .line 126
    goto/16 :goto_3d

    .line 127
    .line 128
    :cond_7
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 129
    .line 130
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    and-int/lit16 v0, v0, 0x1000

    .line 140
    .line 141
    if-nez v0, :cond_8

    .line 142
    .line 143
    move v15, v5

    .line 144
    goto :goto_2

    .line 145
    :cond_8
    move v15, v4

    .line 146
    :goto_2
    iget v0, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 147
    .line 148
    if-ne v0, v5, :cond_9

    .line 149
    .line 150
    move v14, v5

    .line 151
    goto :goto_3

    .line 152
    :cond_9
    move v14, v4

    .line 153
    :goto_3
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 154
    .line 155
    if-eqz v0, :cond_a

    .line 156
    .line 157
    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v0, :cond_a

    .line 160
    .line 161
    move/from16 v16, v5

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_a
    move/from16 v16, v4

    .line 165
    .line 166
    :goto_4
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    sget-object v9, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 171
    .line 172
    const/high16 v9, 0x8000000

    .line 173
    .line 174
    and-int/2addr v0, v9

    .line 175
    if-eqz v0, :cond_b

    .line 176
    .line 177
    move v0, v5

    .line 178
    goto :goto_5

    .line 179
    :cond_b
    move v0, v4

    .line 180
    :goto_5
    iget-object v13, v2, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v9, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 183
    .line 184
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    const/4 v11, 0x0

    .line 189
    if-eqz v14, :cond_c

    .line 190
    .line 191
    invoke-interface {v12, v13}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    move-object v10, v9

    .line 196
    goto :goto_6

    .line 197
    :cond_c
    move-object v10, v11

    .line 198
    :goto_6
    if-eqz v10, :cond_e

    .line 199
    .line 200
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-eqz v9, :cond_d

    .line 205
    .line 206
    iget-object v9, v10, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 207
    .line 208
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    iget-object v7, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 213
    .line 214
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-nez v7, :cond_d

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_d
    move v7, v4

    .line 226
    goto :goto_8

    .line 227
    :cond_e
    :goto_7
    move v7, v5

    .line 228
    :goto_8
    if-eqz v14, :cond_11

    .line 229
    .line 230
    if-eqz v7, :cond_11

    .line 231
    .line 232
    const-string v0, "PackageManager"

    .line 233
    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v4, " was removed before handlePackagePostInstall could be executed"

    .line 243
    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    const/16 v0, -0x17

    .line 255
    .line 256
    iput v0, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 257
    .line 258
    const-string v0, "Package was removed before install could complete."

    .line 259
    .line 260
    iput-object v0, v2, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    .line 261
    .line 262
    iget-object v0, v6, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 263
    .line 264
    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 265
    .line 266
    if-eqz v3, :cond_f

    .line 267
    .line 268
    iget-object v4, v3, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 269
    .line 270
    if-eqz v4, :cond_f

    .line 271
    .line 272
    iget-object v4, v4, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    .line 273
    .line 274
    goto :goto_9

    .line 275
    :cond_f
    move-object v4, v11

    .line 276
    :goto_9
    if-eqz v3, :cond_10

    .line 277
    .line 278
    iget-object v3, v3, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 279
    .line 280
    if-eqz v3, :cond_10

    .line 281
    .line 282
    iget-object v11, v3, Lcom/android/server/pm/CleanUpArgs;->mInstructionSets:[Ljava/lang/String;

    .line 283
    .line 284
    :cond_10
    invoke-virtual {v0, v13, v4, v11}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 288
    .line 289
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_3d

    .line 293
    .line 294
    :cond_11
    if-eqz v14, :cond_50

    .line 295
    .line 296
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->aslInApkAppMetadataSource()Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-eqz v7, :cond_13

    .line 301
    .line 302
    iget v7, v10, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 303
    .line 304
    if-ne v7, v5, :cond_13

    .line 305
    .line 306
    iget-object v7, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 307
    .line 308
    iget-object v8, v10, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    invoke-static {v7, v8, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-nez v7, :cond_13

    .line 319
    .line 320
    iget-object v7, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 321
    .line 322
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 323
    .line 324
    monitor-enter v7

    .line 325
    :try_start_1
    iget-object v8, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 326
    .line 327
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 328
    .line 329
    invoke-virtual {v8, v13}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    if-eqz v8, :cond_12

    .line 334
    .line 335
    iput-object v11, v8, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    .line 341
    .line 342
    .line 343
    goto :goto_a

    .line 344
    :catchall_0
    move-exception v0

    .line 345
    goto :goto_b

    .line 346
    :cond_12
    :goto_a
    monitor-exit v7

    .line 347
    goto :goto_c

    .line 348
    :goto_b
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    throw v0

    .line 350
    :cond_13
    :goto_c
    iget-object v7, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 351
    .line 352
    iput-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 353
    .line 354
    iget-object v8, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 355
    .line 356
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 361
    .line 362
    iget-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 363
    .line 364
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-interface {v7, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    if-nez v7, :cond_14

    .line 376
    .line 377
    move/from16 v17, v14

    .line 378
    .line 379
    const/4 v8, 0x0

    .line 380
    goto :goto_d

    .line 381
    :cond_14
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 382
    .line 383
    move/from16 v17, v14

    .line 384
    .line 385
    :goto_d
    if-nez v8, :cond_15

    .line 386
    .line 387
    move-object/from16 v19, v10

    .line 388
    .line 389
    move-object/from16 v22, v12

    .line 390
    .line 391
    move-object/from16 v23, v13

    .line 392
    .line 393
    const/16 v18, 0x4

    .line 394
    .line 395
    goto/16 :goto_13

    .line 396
    .line 397
    :cond_15
    iget-object v5, v11, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 398
    .line 399
    monitor-enter v5

    .line 400
    :try_start_2
    array-length v14, v9

    .line 401
    :goto_e
    if-ge v4, v14, :cond_1d

    .line 402
    .line 403
    move-object/from16 v19, v10

    .line 404
    .line 405
    aget v10, v9, v4

    .line 406
    .line 407
    invoke-interface {v7, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 408
    .line 409
    .line 410
    move-result-object v20

    .line 411
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 412
    .line 413
    .line 414
    move-result v20

    .line 415
    if-nez v20, :cond_16

    .line 416
    .line 417
    move-object/from16 v21, v7

    .line 418
    .line 419
    move-object/from16 v20, v9

    .line 420
    .line 421
    move-object/from16 v22, v12

    .line 422
    .line 423
    :goto_f
    move-object/from16 v23, v13

    .line 424
    .line 425
    move/from16 v24, v14

    .line 426
    .line 427
    const/4 v7, 0x1

    .line 428
    const/16 v18, 0x4

    .line 429
    .line 430
    goto/16 :goto_12

    .line 431
    .line 432
    :cond_16
    invoke-virtual {v11, v8, v10}, Lcom/android/server/pm/InstantAppRegistry;->propagateInstantAppPermissionsIfNeeded(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 433
    .line 434
    .line 435
    invoke-interface {v7, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 436
    .line 437
    .line 438
    move-result-object v20

    .line 439
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 440
    .line 441
    .line 442
    move-result v20

    .line 443
    if-eqz v20, :cond_17

    .line 444
    .line 445
    move-object/from16 v20, v9

    .line 446
    .line 447
    iget v9, v7, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 448
    .line 449
    invoke-virtual {v11, v10, v9}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    .line 450
    .line 451
    .line 452
    goto :goto_10

    .line 453
    :catchall_1
    move-exception v0

    .line 454
    goto/16 :goto_35

    .line 455
    .line 456
    :cond_17
    move-object/from16 v20, v9

    .line 457
    .line 458
    :goto_10
    new-instance v9, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;

    .line 459
    .line 460
    move-object/from16 v21, v7

    .line 461
    .line 462
    const/4 v7, 0x0

    .line 463
    invoke-direct {v9, v7, v8}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v11, v10, v9}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(ILjava/util/function/Predicate;)V

    .line 467
    .line 468
    .line 469
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v7

    .line 473
    invoke-static {v10, v7}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    new-instance v9, Ljava/io/File;

    .line 478
    .line 479
    move-object/from16 v22, v12

    .line 480
    .line 481
    const-string/jumbo v12, "metadata.xml"

    .line 482
    .line 483
    .line 484
    invoke-direct {v9, v7, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 488
    .line 489
    .line 490
    new-instance v9, Ljava/io/File;

    .line 491
    .line 492
    const-string v12, "icon.png"

    .line 493
    .line 494
    invoke-direct {v9, v7, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 498
    .line 499
    .line 500
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    invoke-static {v10, v7}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(ILjava/lang/String;)Ljava/io/File;

    .line 505
    .line 506
    .line 507
    move-result-object v7

    .line 508
    if-nez v7, :cond_18

    .line 509
    .line 510
    goto :goto_f

    .line 511
    :cond_18
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v9

    .line 515
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 516
    .line 517
    .line 518
    move-result v12

    .line 519
    const/16 v18, 0x4

    .line 520
    .line 521
    add-int/lit8 v12, v12, -0x4

    .line 522
    .line 523
    move-object/from16 v23, v13

    .line 524
    .line 525
    const/4 v13, 0x7

    .line 526
    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v9

    .line 530
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 531
    .line 532
    .line 533
    move-result-object v12

    .line 534
    const/4 v13, 0x1

    .line 535
    invoke-virtual {v12, v9, v13}, Landroid/content/pm/SigningDetails;->checkCapability(Ljava/lang/String;I)Z

    .line 536
    .line 537
    .line 538
    move-result v12

    .line 539
    if-eqz v12, :cond_19

    .line 540
    .line 541
    monitor-exit v5

    .line 542
    goto/16 :goto_13

    .line 543
    .line 544
    :cond_19
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 545
    .line 546
    .line 547
    move-result-object v12

    .line 548
    invoke-virtual {v12}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 549
    .line 550
    .line 551
    move-result-object v12

    .line 552
    invoke-static {v12}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v12

    .line 556
    array-length v13, v12

    .line 557
    move/from16 v24, v14

    .line 558
    .line 559
    const/4 v14, 0x0

    .line 560
    :goto_11
    if-ge v14, v13, :cond_1b

    .line 561
    .line 562
    move/from16 v25, v13

    .line 563
    .line 564
    aget-object v13, v12, v14

    .line 565
    .line 566
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v13

    .line 570
    if-eqz v13, :cond_1a

    .line 571
    .line 572
    monitor-exit v5

    .line 573
    goto :goto_13

    .line 574
    :cond_1a
    const/4 v13, 0x1

    .line 575
    add-int/2addr v14, v13

    .line 576
    move/from16 v13, v25

    .line 577
    .line 578
    goto :goto_11

    .line 579
    :cond_1b
    const-string v9, "InstantAppRegistry"

    .line 580
    .line 581
    new-instance v12, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .line 585
    .line 586
    const-string v13, "Signature for package "

    .line 587
    .line 588
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v13

    .line 595
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    const-string v13, " changed - dropping cookie"

    .line 599
    .line 600
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v12

    .line 607
    invoke-static {v9, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    iget-object v9, v11, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 611
    .line 612
    invoke-virtual {v9, v10, v8}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v9, v8, v10}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/internal/os/SomeArgs;

    .line 616
    .line 617
    .line 618
    move-result-object v9

    .line 619
    if-eqz v9, :cond_1c

    .line 620
    .line 621
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 622
    .line 623
    .line 624
    :cond_1c
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 625
    .line 626
    .line 627
    const/4 v7, 0x1

    .line 628
    :goto_12
    add-int/2addr v4, v7

    .line 629
    move-object/from16 v10, v19

    .line 630
    .line 631
    move-object/from16 v9, v20

    .line 632
    .line 633
    move-object/from16 v7, v21

    .line 634
    .line 635
    move-object/from16 v12, v22

    .line 636
    .line 637
    move-object/from16 v13, v23

    .line 638
    .line 639
    move/from16 v14, v24

    .line 640
    .line 641
    goto/16 :goto_e

    .line 642
    .line 643
    :cond_1d
    move-object/from16 v19, v10

    .line 644
    .line 645
    move-object/from16 v22, v12

    .line 646
    .line 647
    move-object/from16 v23, v13

    .line 648
    .line 649
    const/16 v18, 0x4

    .line 650
    .line 651
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 652
    :goto_13
    iget-object v4, v2, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 653
    .line 654
    iget-object v5, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 655
    .line 656
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v5

    .line 660
    if-nez v5, :cond_1e

    .line 661
    .line 662
    iget-object v5, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 663
    .line 664
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 665
    .line 666
    iget-object v7, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 667
    .line 668
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v7

    .line 672
    iget-object v8, v5, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    .line 673
    .line 674
    monitor-enter v8

    .line 675
    :try_start_3
    iget-object v5, v5, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    .line 676
    .line 677
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    monitor-exit v8

    .line 681
    goto :goto_14

    .line 682
    :catchall_2
    move-exception v0

    .line 683
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 684
    throw v0

    .line 685
    :cond_1e
    :goto_14
    iget-object v5, v6, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 686
    .line 687
    iget-object v7, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 688
    .line 689
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    new-instance v8, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 693
    .line 694
    invoke-direct {v8, v7}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 695
    .line 696
    .line 697
    iget-object v11, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 698
    .line 699
    iget-object v7, v11, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 700
    .line 701
    iget-object v14, v11, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 702
    .line 703
    iget-object v13, v11, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 704
    .line 705
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v12

    .line 712
    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 713
    .line 714
    if-eqz v9, :cond_20

    .line 715
    .line 716
    iget-boolean v10, v9, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 717
    .line 718
    if-eqz v10, :cond_1f

    .line 719
    .line 720
    iget-object v10, v9, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 721
    .line 722
    filled-new-array {v10}, [Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v10

    .line 726
    iget v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 727
    .line 728
    filled-new-array {v9}, [I

    .line 729
    .line 730
    .line 731
    move-result-object v9

    .line 732
    move-object/from16 v20, v12

    .line 733
    .line 734
    move-object/from16 v21, v13

    .line 735
    .line 736
    const/4 v12, 0x0

    .line 737
    const/4 v13, 0x1

    .line 738
    invoke-virtual {v5, v12, v13, v10, v9}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    .line 739
    .line 740
    .line 741
    const/16 v29, 0x0

    .line 742
    .line 743
    const/16 v30, 0x1

    .line 744
    .line 745
    const/16 v33, 0x0

    .line 746
    .line 747
    move-object/from16 v27, v5

    .line 748
    .line 749
    move-object/from16 v28, v8

    .line 750
    .line 751
    move-object/from16 v31, v10

    .line 752
    .line 753
    move-object/from16 v32, v9

    .line 754
    .line 755
    invoke-virtual/range {v27 .. v33}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[ILcom/android/server/pm/AsecInstallHelper$3;)V

    .line 756
    .line 757
    .line 758
    goto :goto_15

    .line 759
    :cond_1f
    move-object/from16 v20, v12

    .line 760
    .line 761
    move-object/from16 v21, v13

    .line 762
    .line 763
    :goto_15
    iget-object v10, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 764
    .line 765
    const/4 v13, 0x0

    .line 766
    const/16 v24, 0x0

    .line 767
    .line 768
    move-object v9, v5

    .line 769
    move-object/from16 v12, v19

    .line 770
    .line 771
    move-object/from16 v35, v12

    .line 772
    .line 773
    move-object/from16 v36, v20

    .line 774
    .line 775
    move-object/from16 v34, v22

    .line 776
    .line 777
    move v12, v15

    .line 778
    move-object/from16 v27, v21

    .line 779
    .line 780
    move-object/from16 p0, v23

    .line 781
    .line 782
    move-object v1, v14

    .line 783
    move/from16 v28, v17

    .line 784
    .line 785
    move/from16 v14, v24

    .line 786
    .line 787
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 788
    .line 789
    .line 790
    goto :goto_16

    .line 791
    :cond_20
    move-object/from16 v36, v12

    .line 792
    .line 793
    move-object/from16 v27, v13

    .line 794
    .line 795
    move-object v1, v14

    .line 796
    move/from16 v28, v17

    .line 797
    .line 798
    move-object/from16 v35, v19

    .line 799
    .line 800
    move-object/from16 v34, v22

    .line 801
    .line 802
    move-object/from16 p0, v23

    .line 803
    .line 804
    :goto_16
    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 805
    .line 806
    iget-object v10, v2, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 807
    .line 808
    iget-object v11, v2, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 809
    .line 810
    iget-object v12, v2, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 811
    .line 812
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v13

    .line 816
    if-eqz v13, :cond_21

    .line 817
    .line 818
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v13

    .line 822
    goto :goto_17

    .line 823
    :cond_21
    iget-object v13, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 824
    .line 825
    if-eqz v13, :cond_22

    .line 826
    .line 827
    iget-object v13, v13, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 828
    .line 829
    goto :goto_17

    .line 830
    :cond_22
    const/4 v13, 0x0

    .line 831
    :goto_17
    new-instance v14, Landroid/os/Bundle;

    .line 832
    .line 833
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 834
    .line 835
    .line 836
    move/from16 v30, v15

    .line 837
    .line 838
    move-object/from16 v15, v36

    .line 839
    .line 840
    move-object/from16 v31, v4

    .line 841
    .line 842
    if-eqz v15, :cond_23

    .line 843
    .line 844
    const-string v4, "com.android.vending"

    .line 845
    .line 846
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 847
    .line 848
    .line 849
    move-result v4

    .line 850
    if-eqz v4, :cond_23

    .line 851
    .line 852
    const-string v4, "certificate_policy"

    .line 853
    .line 854
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 855
    .line 856
    .line 857
    move-result-object v4

    .line 858
    invoke-static {v4}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    .line 859
    .line 860
    .line 861
    move-result-object v4

    .line 862
    if-eqz v4, :cond_23

    .line 863
    .line 864
    move-object/from16 v32, v6

    .line 865
    .line 866
    const/4 v6, 0x0

    .line 867
    const/4 v15, 0x0

    .line 868
    :try_start_4
    invoke-interface {v4, v6, v15}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 869
    .line 870
    .line 871
    move-result v4

    .line 872
    if-eqz v4, :cond_24

    .line 873
    .line 874
    const-string v4, "isMarketInstallation"

    .line 875
    .line 876
    const/4 v15, 0x1

    .line 877
    invoke-virtual {v14, v4, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 878
    .line 879
    .line 880
    goto :goto_18

    .line 881
    :cond_23
    move-object/from16 v32, v6

    .line 882
    .line 883
    const/4 v6, 0x0

    .line 884
    :catch_1
    :cond_24
    :goto_18
    iget v4, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 885
    .line 886
    const-string v15, "android.intent.extra.UID"

    .line 887
    .line 888
    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 889
    .line 890
    .line 891
    if-eqz v16, :cond_25

    .line 892
    .line 893
    const-string v4, "android.intent.extra.REPLACING"

    .line 894
    .line 895
    const/4 v15, 0x1

    .line 896
    invoke-virtual {v14, v4, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 897
    .line 898
    .line 899
    goto :goto_19

    .line 900
    :cond_25
    const/4 v15, 0x1

    .line 901
    :goto_19
    if-eqz v0, :cond_26

    .line 902
    .line 903
    const-string v4, "android.intent.extra.ARCHIVAL"

    .line 904
    .line 905
    invoke-virtual {v14, v4, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 906
    .line 907
    .line 908
    :cond_26
    const-string v4, "android.content.pm.extra.DATA_LOADER_TYPE"

    .line 909
    .line 910
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    .line 911
    .line 912
    .line 913
    move-result v15

    .line 914
    invoke-virtual {v14, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 915
    .line 916
    .line 917
    iget-object v4, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 918
    .line 919
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v4

    .line 923
    if-eqz v13, :cond_27

    .line 924
    .line 925
    if-eqz v4, :cond_27

    .line 926
    .line 927
    iget-object v15, v2, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 928
    .line 929
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 930
    .line 931
    const/16 v25, 0x0

    .line 932
    .line 933
    const/16 v26, 0x0

    .line 934
    .line 935
    const/16 v21, 0x0

    .line 936
    .line 937
    const/16 v24, 0x0

    .line 938
    .line 939
    move-object/from16 v17, v5

    .line 940
    .line 941
    move-object/from16 v19, p0

    .line 942
    .line 943
    move-object/from16 v20, v14

    .line 944
    .line 945
    move-object/from16 v22, v13

    .line 946
    .line 947
    move-object/from16 v23, v15

    .line 948
    .line 949
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 950
    .line 951
    .line 952
    :cond_27
    iget-object v15, v8, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 953
    .line 954
    invoke-virtual {v15}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 955
    .line 956
    .line 957
    move-result-object v15

    .line 958
    if-nez v4, :cond_3a

    .line 959
    .line 960
    iget v4, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 961
    .line 962
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 963
    .line 964
    .line 965
    move-result v22

    .line 966
    iget-boolean v4, v2, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 967
    .line 968
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 969
    .line 970
    .line 971
    move-result v17

    .line 972
    const/high16 v18, 0x10000

    .line 973
    .line 974
    and-int v17, v17, v18

    .line 975
    .line 976
    if-eqz v17, :cond_28

    .line 977
    .line 978
    const/16 v21, 0x1

    .line 979
    .line 980
    goto :goto_1a

    .line 981
    :cond_28
    const/16 v21, 0x0

    .line 982
    .line 983
    :goto_1a
    if-nez v4, :cond_2a

    .line 984
    .line 985
    if-eqz v21, :cond_29

    .line 986
    .line 987
    goto :goto_1b

    .line 988
    :cond_29
    const/16 v20, 0x0

    .line 989
    .line 990
    goto :goto_1c

    .line 991
    :cond_2a
    :goto_1b
    const/16 v20, 0x1

    .line 992
    .line 993
    :goto_1c
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    .line 994
    .line 995
    .line 996
    move-result v26

    .line 997
    move-object/from16 v17, v5

    .line 998
    .line 999
    move-object/from16 v18, v15

    .line 1000
    .line 1001
    move-object/from16 v19, p0

    .line 1002
    .line 1003
    move-object/from16 v23, v9

    .line 1004
    .line 1005
    move-object/from16 v24, v10

    .line 1006
    .line 1007
    move/from16 v25, v0

    .line 1008
    .line 1009
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V

    .line 1010
    .line 1011
    .line 1012
    iget-object v4, v5, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 1013
    .line 1014
    const/16 v6, 0x3e8

    .line 1015
    .line 1016
    move-object/from16 v36, v8

    .line 1017
    .line 1018
    move-object/from16 v8, p0

    .line 1019
    .line 1020
    invoke-interface {v15, v6, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v6

    .line 1024
    move/from16 p0, v0

    .line 1025
    .line 1026
    invoke-interface {v15}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-virtual {v4, v15, v6, v11, v0}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v25

    .line 1034
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 1035
    .line 1036
    const/16 v22, 0x0

    .line 1037
    .line 1038
    const/16 v26, 0x0

    .line 1039
    .line 1040
    const/16 v21, 0x0

    .line 1041
    .line 1042
    move-object/from16 v19, v8

    .line 1043
    .line 1044
    move-object/from16 v20, v14

    .line 1045
    .line 1046
    move-object/from16 v23, v11

    .line 1047
    .line 1048
    move-object/from16 v24, v12

    .line 1049
    .line 1050
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1051
    .line 1052
    .line 1053
    if-eqz v13, :cond_2b

    .line 1054
    .line 1055
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 1056
    .line 1057
    const/16 v25, 0x0

    .line 1058
    .line 1059
    const/16 v26, 0x0

    .line 1060
    .line 1061
    const/16 v21, 0x0

    .line 1062
    .line 1063
    move-object/from16 v17, v5

    .line 1064
    .line 1065
    move-object/from16 v19, v8

    .line 1066
    .line 1067
    move-object/from16 v20, v14

    .line 1068
    .line 1069
    move-object/from16 v22, v13

    .line 1070
    .line 1071
    move-object/from16 v23, v11

    .line 1072
    .line 1073
    move-object/from16 v24, v12

    .line 1074
    .line 1075
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1076
    .line 1077
    .line 1078
    :cond_2b
    iget-object v0, v5, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 1079
    .line 1080
    invoke-static {v0}, Lcom/android/server/pm/BroadcastHelper;->isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v0

    .line 1084
    if-eqz v0, :cond_2c

    .line 1085
    .line 1086
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 1087
    .line 1088
    const/16 v25, 0x0

    .line 1089
    .line 1090
    const/16 v26, 0x0

    .line 1091
    .line 1092
    const/16 v21, 0x0

    .line 1093
    .line 1094
    move-object/from16 v17, v5

    .line 1095
    .line 1096
    move-object/from16 v19, v8

    .line 1097
    .line 1098
    move-object/from16 v20, v14

    .line 1099
    .line 1100
    move-object/from16 v22, v7

    .line 1101
    .line 1102
    move-object/from16 v23, v11

    .line 1103
    .line 1104
    move-object/from16 v24, v12

    .line 1105
    .line 1106
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1107
    .line 1108
    .line 1109
    :cond_2c
    array-length v0, v1

    .line 1110
    const/4 v7, 0x0

    .line 1111
    :goto_1d
    if-ge v7, v0, :cond_2e

    .line 1112
    .line 1113
    aget-object v4, v1, v7

    .line 1114
    .line 1115
    if-eqz v4, :cond_2d

    .line 1116
    .line 1117
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1118
    .line 1119
    .line 1120
    move-result v6

    .line 1121
    if-nez v6, :cond_2d

    .line 1122
    .line 1123
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 1124
    .line 1125
    const/16 v25, 0x0

    .line 1126
    .line 1127
    const/16 v26, 0x0

    .line 1128
    .line 1129
    const/16 v21, 0x0

    .line 1130
    .line 1131
    move-object/from16 v17, v5

    .line 1132
    .line 1133
    move-object/from16 v19, v8

    .line 1134
    .line 1135
    move-object/from16 v20, v14

    .line 1136
    .line 1137
    move-object/from16 v22, v4

    .line 1138
    .line 1139
    move-object/from16 v23, v11

    .line 1140
    .line 1141
    move-object/from16 v24, v12

    .line 1142
    .line 1143
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1144
    .line 1145
    .line 1146
    :cond_2d
    const/4 v4, 0x1

    .line 1147
    add-int/2addr v7, v4

    .line 1148
    goto :goto_1d

    .line 1149
    :cond_2e
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 1150
    .line 1151
    const/16 v25, 0x0

    .line 1152
    .line 1153
    const/16 v26, 0x0

    .line 1154
    .line 1155
    const/high16 v21, 0x1000000

    .line 1156
    .line 1157
    move-object/from16 v17, v5

    .line 1158
    .line 1159
    move-object/from16 v19, v8

    .line 1160
    .line 1161
    move-object/from16 v20, v14

    .line 1162
    .line 1163
    move-object/from16 v22, v27

    .line 1164
    .line 1165
    move-object/from16 v23, v9

    .line 1166
    .line 1167
    move-object/from16 v24, v12

    .line 1168
    .line 1169
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1170
    .line 1171
    .line 1172
    if-eqz v16, :cond_33

    .line 1173
    .line 1174
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 1175
    .line 1176
    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 1177
    .line 1178
    const-string v18, "android.intent.action.PACKAGE_REPLACED"

    .line 1179
    .line 1180
    const/16 v21, 0x0

    .line 1181
    .line 1182
    const/16 v26, 0x0

    .line 1183
    .line 1184
    const/16 v22, 0x0

    .line 1185
    .line 1186
    move-object/from16 v17, v5

    .line 1187
    .line 1188
    move-object/from16 v19, v8

    .line 1189
    .line 1190
    move-object/from16 v20, v14

    .line 1191
    .line 1192
    move-object/from16 v23, v11

    .line 1193
    .line 1194
    move-object/from16 v24, v12

    .line 1195
    .line 1196
    move-object/from16 v25, v0

    .line 1197
    .line 1198
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1199
    .line 1200
    .line 1201
    if-eqz v13, :cond_2f

    .line 1202
    .line 1203
    const-string v18, "android.intent.action.PACKAGE_REPLACED"

    .line 1204
    .line 1205
    const/16 v25, 0x0

    .line 1206
    .line 1207
    const/16 v26, 0x0

    .line 1208
    .line 1209
    const/16 v21, 0x0

    .line 1210
    .line 1211
    move-object/from16 v17, v5

    .line 1212
    .line 1213
    move-object/from16 v19, v8

    .line 1214
    .line 1215
    move-object/from16 v20, v14

    .line 1216
    .line 1217
    move-object/from16 v22, v13

    .line 1218
    .line 1219
    move-object/from16 v23, v11

    .line 1220
    .line 1221
    move-object/from16 v24, v12

    .line 1222
    .line 1223
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1224
    .line 1225
    .line 1226
    :cond_2f
    array-length v0, v1

    .line 1227
    const/4 v7, 0x0

    .line 1228
    :goto_1e
    if-ge v7, v0, :cond_31

    .line 1229
    .line 1230
    aget-object v3, v1, v7

    .line 1231
    .line 1232
    if-eqz v3, :cond_30

    .line 1233
    .line 1234
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v4

    .line 1238
    if-nez v4, :cond_30

    .line 1239
    .line 1240
    const-string v18, "android.intent.action.PACKAGE_REPLACED"

    .line 1241
    .line 1242
    const/16 v25, 0x0

    .line 1243
    .line 1244
    const/16 v26, 0x0

    .line 1245
    .line 1246
    const/16 v21, 0x0

    .line 1247
    .line 1248
    move-object/from16 v17, v5

    .line 1249
    .line 1250
    move-object/from16 v19, v8

    .line 1251
    .line 1252
    move-object/from16 v20, v14

    .line 1253
    .line 1254
    move-object/from16 v22, v3

    .line 1255
    .line 1256
    move-object/from16 v23, v11

    .line 1257
    .line 1258
    move-object/from16 v24, v12

    .line 1259
    .line 1260
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1261
    .line 1262
    .line 1263
    :cond_30
    const/4 v3, 0x1

    .line 1264
    add-int/2addr v7, v3

    .line 1265
    goto :goto_1e

    .line 1266
    :cond_31
    iget-object v0, v5, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1267
    .line 1268
    if-eqz v0, :cond_32

    .line 1269
    .line 1270
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 1271
    .line 1272
    .line 1273
    move-result-wide v0

    .line 1274
    :goto_1f
    move-wide/from16 v18, v0

    .line 1275
    .line 1276
    goto :goto_20

    .line 1277
    :cond_32
    const-wide/16 v0, 0x2710

    .line 1278
    .line 1279
    goto :goto_1f

    .line 1280
    :goto_20
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v0

    .line 1284
    const/16 v20, 0x0

    .line 1285
    .line 1286
    const-string v22, ""

    .line 1287
    .line 1288
    const/16 v21, 0x137

    .line 1289
    .line 1290
    move-object/from16 v17, v0

    .line 1291
    .line 1292
    invoke-virtual/range {v17 .. v22}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v26

    .line 1299
    const-string v18, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 1300
    .line 1301
    const/16 v20, 0x0

    .line 1302
    .line 1303
    const/16 v21, 0x0

    .line 1304
    .line 1305
    const/16 v19, 0x0

    .line 1306
    .line 1307
    const/16 v25, 0x0

    .line 1308
    .line 1309
    move-object/from16 v17, v5

    .line 1310
    .line 1311
    move-object/from16 v22, v8

    .line 1312
    .line 1313
    move-object/from16 v23, v11

    .line 1314
    .line 1315
    move-object/from16 v24, v12

    .line 1316
    .line 1317
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1318
    .line 1319
    .line 1320
    goto :goto_21

    .line 1321
    :cond_33
    if-eqz v3, :cond_34

    .line 1322
    .line 1323
    iget-boolean v0, v2, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 1324
    .line 1325
    if-nez v0, :cond_34

    .line 1326
    .line 1327
    invoke-virtual {v5, v8, v13, v9, v10}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    .line 1328
    .line 1329
    .line 1330
    :cond_34
    :goto_21
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1331
    .line 1332
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 1333
    .line 1334
    .line 1335
    move-result v0

    .line 1336
    if-eqz v0, :cond_39

    .line 1337
    .line 1338
    if-nez v16, :cond_38

    .line 1339
    .line 1340
    iget-object v0, v5, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 1341
    .line 1342
    const-class v1, Landroid/os/storage/StorageManager;

    .line 1343
    .line 1344
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1349
    .line 1350
    iget-object v1, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1351
    .line 1352
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v1

    .line 1356
    invoke-static {v1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v1

    .line 1360
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v1

    .line 1364
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v0

    .line 1368
    sget-boolean v1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 1369
    .line 1370
    if-eqz v0, :cond_37

    .line 1371
    .line 1372
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v0

    .line 1376
    if-eqz v0, :cond_37

    .line 1377
    .line 1378
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 1379
    .line 1380
    .line 1381
    move-result v1

    .line 1382
    if-eqz v1, :cond_35

    .line 1383
    .line 1384
    const/4 v0, 0x1

    .line 1385
    goto :goto_22

    .line 1386
    :cond_35
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 1387
    .line 1388
    .line 1389
    move-result v0

    .line 1390
    if-eqz v0, :cond_36

    .line 1391
    .line 1392
    const/4 v0, 0x2

    .line 1393
    goto :goto_22

    .line 1394
    :cond_36
    const/4 v0, 0x3

    .line 1395
    goto :goto_22

    .line 1396
    :cond_37
    const/4 v0, 0x0

    .line 1397
    :goto_22
    if-eqz v0, :cond_38

    .line 1398
    .line 1399
    const/16 v1, 0xb5

    .line 1400
    .line 1401
    invoke-static {v1, v0, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    .line 1402
    .line 1403
    .line 1404
    :cond_38
    if-nez p0, :cond_39

    .line 1405
    .line 1406
    filled-new-array {v8}, [Ljava/lang/String;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v0

    .line 1410
    iget-object v1, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1411
    .line 1412
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 1413
    .line 1414
    .line 1415
    move-result v1

    .line 1416
    filled-new-array {v1}, [I

    .line 1417
    .line 1418
    .line 1419
    move-result-object v1

    .line 1420
    const/16 v19, 0x1

    .line 1421
    .line 1422
    const/16 v20, 0x1

    .line 1423
    .line 1424
    const/16 v23, 0x0

    .line 1425
    .line 1426
    move-object/from16 v17, v5

    .line 1427
    .line 1428
    move-object/from16 v18, v36

    .line 1429
    .line 1430
    move-object/from16 v21, v0

    .line 1431
    .line 1432
    move-object/from16 v22, v1

    .line 1433
    .line 1434
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[ILcom/android/server/pm/AsecInstallHelper$3;)V

    .line 1435
    .line 1436
    .line 1437
    const/4 v3, 0x1

    .line 1438
    invoke-virtual {v5, v3, v3, v0, v1}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    .line 1439
    .line 1440
    .line 1441
    goto :goto_24

    .line 1442
    :cond_39
    const/4 v3, 0x1

    .line 1443
    goto :goto_24

    .line 1444
    :cond_3a
    const/4 v3, 0x1

    .line 1445
    move-object/from16 v8, p0

    .line 1446
    .line 1447
    move/from16 p0, v0

    .line 1448
    .line 1449
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    .line 1450
    .line 1451
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 1452
    .line 1453
    .line 1454
    move-result v1

    .line 1455
    if-nez v1, :cond_3b

    .line 1456
    .line 1457
    xor-int/lit8 v1, v16, 0x1

    .line 1458
    .line 1459
    const/4 v7, 0x0

    .line 1460
    :goto_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1461
    .line 1462
    .line 1463
    move-result v3

    .line 1464
    if-ge v7, v3, :cond_3b

    .line 1465
    .line 1466
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v3

    .line 1470
    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1471
    .line 1472
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v19

    .line 1476
    new-instance v4, Ljava/util/ArrayList;

    .line 1477
    .line 1478
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v6

    .line 1482
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v6

    .line 1486
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1487
    .line 1488
    .line 1489
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 1490
    .line 1491
    .line 1492
    move-result v22

    .line 1493
    const/16 v23, 0x0

    .line 1494
    .line 1495
    move-object/from16 v17, v5

    .line 1496
    .line 1497
    move-object/from16 v18, v15

    .line 1498
    .line 1499
    move/from16 v20, v1

    .line 1500
    .line 1501
    move-object/from16 v21, v4

    .line 1502
    .line 1503
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    .line 1504
    .line 1505
    .line 1506
    const/4 v3, 0x1

    .line 1507
    add-int/2addr v7, v3

    .line 1508
    goto :goto_23

    .line 1509
    :cond_3b
    :goto_24
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    .line 1510
    .line 1511
    if-eqz v0, :cond_3d

    .line 1512
    .line 1513
    array-length v0, v0

    .line 1514
    if-nez v0, :cond_3c

    .line 1515
    .line 1516
    goto :goto_25

    .line 1517
    :cond_3c
    move-object/from16 v1, v32

    .line 1518
    .line 1519
    goto :goto_27

    .line 1520
    :cond_3d
    :goto_25
    if-nez v16, :cond_3c

    .line 1521
    .line 1522
    move-object/from16 v1, v32

    .line 1523
    .line 1524
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1525
    .line 1526
    iget v3, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 1527
    .line 1528
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 1529
    .line 1530
    iget-object v4, v0, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    .line 1531
    .line 1532
    monitor-enter v4

    .line 1533
    :try_start_5
    iget-object v0, v0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    .line 1534
    .line 1535
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1536
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 1537
    .line 1538
    .line 1539
    move-result v4

    .line 1540
    const/4 v7, 0x0

    .line 1541
    :goto_26
    if-ge v7, v4, :cond_3e

    .line 1542
    .line 1543
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v5

    .line 1547
    check-cast v5, Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 1548
    .line 1549
    invoke-interface {v5, v8, v3}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageAdded(Ljava/lang/String;I)V

    .line 1550
    .line 1551
    .line 1552
    const/4 v5, 0x1

    .line 1553
    add-int/2addr v7, v5

    .line 1554
    goto :goto_26

    .line 1555
    :catchall_3
    move-exception v0

    .line 1556
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1557
    throw v0

    .line 1558
    :goto_27
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1559
    .line 1560
    iget v3, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 1561
    .line 1562
    invoke-virtual {v0, v3, v8}, Lcom/android/server/pm/PackageManagerService;->notifyPackageChanged(ILjava/lang/String;)V

    .line 1563
    .line 1564
    .line 1565
    :cond_3e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 1566
    .line 1567
    .line 1568
    move-result v0

    .line 1569
    if-eqz v0, :cond_3f

    .line 1570
    .line 1571
    invoke-static {}, Landroid/security/Flags;->extendEcmToAllSettings()Z

    .line 1572
    .line 1573
    .line 1574
    move-result v0

    .line 1575
    if-eqz v0, :cond_3f

    .line 1576
    .line 1577
    iget v13, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 1578
    .line 1579
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1580
    .line 1581
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1582
    .line 1583
    new-instance v3, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;

    .line 1584
    .line 1585
    const/4 v14, 0x0

    .line 1586
    move-object v9, v3

    .line 1587
    move-object v10, v1

    .line 1588
    move-object/from16 v11, v31

    .line 1589
    .line 1590
    move-object v12, v8

    .line 1591
    invoke-direct/range {v9 .. v14}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallPackageHelper;[ILjava/lang/String;II)V

    .line 1592
    .line 1593
    .line 1594
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1595
    .line 1596
    .line 1597
    goto :goto_2a

    .line 1598
    :cond_3f
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 1599
    .line 1600
    if-nez v0, :cond_40

    .line 1601
    .line 1602
    const/4 v3, 0x3

    .line 1603
    const/4 v7, 0x0

    .line 1604
    goto :goto_28

    .line 1605
    :cond_40
    iget v7, v0, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    .line 1606
    .line 1607
    const/4 v3, 0x3

    .line 1608
    :goto_28
    if-eq v7, v3, :cond_42

    .line 1609
    .line 1610
    if-nez v0, :cond_41

    .line 1611
    .line 1612
    const/4 v0, 0x4

    .line 1613
    const/4 v7, 0x0

    .line 1614
    goto :goto_29

    .line 1615
    :cond_41
    iget v7, v0, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    .line 1616
    .line 1617
    const/4 v0, 0x4

    .line 1618
    :goto_29
    if-ne v7, v0, :cond_43

    .line 1619
    .line 1620
    :cond_42
    iget v13, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 1621
    .line 1622
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1623
    .line 1624
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1625
    .line 1626
    new-instance v3, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;

    .line 1627
    .line 1628
    const/4 v14, 0x1

    .line 1629
    move-object v9, v3

    .line 1630
    move-object v10, v1

    .line 1631
    move-object/from16 v11, v31

    .line 1632
    .line 1633
    move-object v12, v8

    .line 1634
    invoke-direct/range {v9 .. v14}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallPackageHelper;[ILjava/lang/String;II)V

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1638
    .line 1639
    .line 1640
    :cond_43
    :goto_2a
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 1641
    .line 1642
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v0

    .line 1646
    const-string v3, "install_non_market_apps"

    .line 1647
    .line 1648
    const/4 v4, -0x1

    .line 1649
    const/4 v7, 0x0

    .line 1650
    invoke-static {v0, v3, v4, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1651
    .line 1652
    .line 1653
    move-result v0

    .line 1654
    const/16 v3, 0xc26

    .line 1655
    .line 1656
    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1657
    .line 1658
    .line 1659
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 1660
    .line 1661
    if-eqz v0, :cond_44

    .line 1662
    .line 1663
    iget-object v11, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 1664
    .line 1665
    goto :goto_2b

    .line 1666
    :cond_44
    const/4 v11, 0x0

    .line 1667
    :goto_2b
    if-eqz v11, :cond_47

    .line 1668
    .line 1669
    if-nez v30, :cond_46

    .line 1670
    .line 1671
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1672
    .line 1673
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1674
    .line 1675
    const/16 v3, 0x17

    .line 1676
    .line 1677
    invoke-virtual {v0, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v3

    .line 1681
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveInstallDontKill()Z

    .line 1682
    .line 1683
    .line 1684
    move-result v5

    .line 1685
    if-eqz v5, :cond_45

    .line 1686
    .line 1687
    new-instance v5, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;

    .line 1688
    .line 1689
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1690
    .line 1691
    .line 1692
    invoke-static {v5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v5

    .line 1696
    check-cast v5, Ljava/lang/Long;

    .line 1697
    .line 1698
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1699
    .line 1700
    .line 1701
    move-result-wide v5

    .line 1702
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1703
    .line 1704
    const-string v10, "Delaying the deletion of <"

    .line 1705
    .line 1706
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1707
    .line 1708
    .line 1709
    iget-object v10, v11, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    .line 1710
    .line 1711
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v10

    .line 1715
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    .line 1717
    .line 1718
    const-string v10, "> by "

    .line 1719
    .line 1720
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    .line 1722
    .line 1723
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1724
    .line 1725
    .line 1726
    const-string/jumbo v10, "ms or till the next reboot"

    .line 1727
    .line 1728
    .line 1729
    const-string v11, "PackageManager"

    .line 1730
    .line 1731
    invoke-static {v9, v10, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    .line 1733
    .line 1734
    goto :goto_2c

    .line 1735
    :cond_45
    const-wide/16 v5, 0xbb8

    .line 1736
    .line 1737
    :goto_2c
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1738
    .line 1739
    .line 1740
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveInstallDontKill()Z

    .line 1741
    .line 1742
    .line 1743
    move-result v0

    .line 1744
    if-eqz v0, :cond_48

    .line 1745
    .line 1746
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1747
    .line 1748
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1749
    .line 1750
    iget-object v0, v3, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 1751
    .line 1752
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1753
    .line 1754
    .line 1755
    :try_start_7
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1756
    .line 1757
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1758
    .line 1759
    move-object/from16 v9, v35

    .line 1760
    .line 1761
    iget-object v5, v9, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 1762
    .line 1763
    iget-object v6, v9, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 1764
    .line 1765
    invoke-static {v0, v8, v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkFilesToOldDirs(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/util/Set;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 1769
    .line 1770
    .line 1771
    goto :goto_2e

    .line 1772
    :catchall_4
    move-exception v0

    .line 1773
    move-object v1, v0

    .line 1774
    :try_start_8
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1775
    .line 1776
    .line 1777
    goto :goto_2d

    .line 1778
    :catchall_5
    move-exception v0

    .line 1779
    move-object v2, v0

    .line 1780
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1781
    .line 1782
    .line 1783
    :goto_2d
    throw v1

    .line 1784
    :cond_46
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 1785
    .line 1786
    iget-object v3, v11, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    .line 1787
    .line 1788
    iget-object v5, v11, Lcom/android/server/pm/CleanUpArgs;->mInstructionSets:[Ljava/lang/String;

    .line 1789
    .line 1790
    invoke-virtual {v0, v8, v3, v5}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 1791
    .line 1792
    .line 1793
    goto :goto_2e

    .line 1794
    :cond_47
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v0

    .line 1798
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 1799
    .line 1800
    .line 1801
    :cond_48
    :goto_2e
    if-nez p0, :cond_4b

    .line 1802
    .line 1803
    move-object/from16 v0, v31

    .line 1804
    .line 1805
    array-length v3, v0

    .line 1806
    move v5, v7

    .line 1807
    :goto_2f
    if-ge v5, v3, :cond_4c

    .line 1808
    .line 1809
    aget v14, v0, v5

    .line 1810
    .line 1811
    const-wide/16 v9, 0x0

    .line 1812
    .line 1813
    move-object/from16 v6, v34

    .line 1814
    .line 1815
    invoke-interface {v6, v8, v9, v10, v14}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v9

    .line 1819
    if-eqz v9, :cond_49

    .line 1820
    .line 1821
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 1822
    .line 1823
    if-eq v14, v4, :cond_4a

    .line 1824
    .line 1825
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1826
    .line 1827
    .line 1828
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1829
    .line 1830
    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1831
    .line 1832
    iget-object v13, v11, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1833
    .line 1834
    iget-object v15, v11, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1835
    .line 1836
    filled-new-array {v12, v13, v15}, [Ljava/lang/String;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v13

    .line 1840
    iget-object v12, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1841
    .line 1842
    iget-object v15, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1843
    .line 1844
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 1845
    .line 1846
    move-object v9, v10

    .line 1847
    move-object v10, v12

    .line 1848
    move-object v12, v11

    .line 1849
    move-object v11, v15

    .line 1850
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1851
    .line 1852
    .line 1853
    :cond_49
    const/4 v9, 0x1

    .line 1854
    goto :goto_30

    .line 1855
    :cond_4a
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1856
    .line 1857
    .line 1858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1859
    .line 1860
    const-string/jumbo v1, "notifyPackageInstalled called with USER_ALL"

    .line 1861
    .line 1862
    .line 1863
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1864
    .line 1865
    .line 1866
    throw v0

    .line 1867
    :goto_30
    add-int/2addr v5, v9

    .line 1868
    move-object/from16 v34, v6

    .line 1869
    .line 1870
    goto :goto_2f

    .line 1871
    :cond_4b
    move-object/from16 v0, v31

    .line 1872
    .line 1873
    new-instance v11, Lcom/android/server/pm/PackageRemovedInfo;

    .line 1874
    .line 1875
    invoke-direct {v11}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 1876
    .line 1877
    .line 1878
    iput-object v8, v11, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 1879
    .line 1880
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v3

    .line 1884
    iput-object v3, v11, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 1885
    .line 1886
    iput-object v0, v11, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 1887
    .line 1888
    iput-object v0, v11, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 1889
    .line 1890
    iget v0, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 1891
    .line 1892
    iput v0, v11, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 1893
    .line 1894
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1895
    .line 1896
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 1897
    .line 1898
    .line 1899
    move-result-wide v3

    .line 1900
    iput-wide v3, v11, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 1901
    .line 1902
    const/4 v3, 0x1

    .line 1903
    iput-boolean v3, v11, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 1904
    .line 1905
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 1906
    .line 1907
    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1908
    .line 1909
    const/4 v14, 0x0

    .line 1910
    const/4 v15, 0x1

    .line 1911
    const/4 v13, 0x0

    .line 1912
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 1913
    .line 1914
    .line 1915
    :cond_4c
    :try_start_9
    const-string v0, "PackageManager_ASKS"

    .line 1916
    .line 1917
    const-string v3, "call checkDeletableList."

    .line 1918
    .line 1919
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    .line 1921
    .line 1922
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v0

    .line 1926
    invoke-interface {v0}, Landroid/content/pm/IASKSManager;->checkDeletableListForASKS()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 1927
    .line 1928
    .line 1929
    goto :goto_31

    .line 1930
    :catch_2
    move-exception v0

    .line 1931
    const-string v3, "PackageManager"

    .line 1932
    .line 1933
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1934
    .line 1935
    const-string v5, "Exception during postASKSsetup() : "

    .line 1936
    .line 1937
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1938
    .line 1939
    .line 1940
    invoke-static {v0, v4, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1941
    .line 1942
    .line 1943
    :goto_31
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 1944
    .line 1945
    if-eqz v0, :cond_51

    .line 1946
    .line 1947
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 1948
    .line 1949
    .line 1950
    move-result-object v0

    .line 1951
    if-eqz v0, :cond_4d

    .line 1952
    .line 1953
    const-string v3, "PrePackageInstaller"

    .line 1954
    .line 1955
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1956
    .line 1957
    .line 1958
    move-result v0

    .line 1959
    :goto_32
    const/4 v3, 0x1

    .line 1960
    xor-int/2addr v0, v3

    .line 1961
    goto :goto_33

    .line 1962
    :cond_4d
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 1963
    .line 1964
    .line 1965
    move-result-object v0

    .line 1966
    if-eqz v0, :cond_4e

    .line 1967
    .line 1968
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 1969
    .line 1970
    .line 1971
    move-result-object v0

    .line 1972
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 1973
    .line 1974
    if-eqz v0, :cond_4e

    .line 1975
    .line 1976
    const-string v0, "PrePackageInstaller"

    .line 1977
    .line 1978
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v3

    .line 1982
    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 1983
    .line 1984
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1985
    .line 1986
    .line 1987
    move-result v0

    .line 1988
    goto :goto_32

    .line 1989
    :cond_4e
    move v0, v7

    .line 1990
    :goto_33
    if-eqz v8, :cond_51

    .line 1991
    .line 1992
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 1993
    .line 1994
    invoke-virtual {v3, v8}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->isMonetizedPreloadApp(Ljava/lang/String;)Z

    .line 1995
    .line 1996
    .line 1997
    move-result v3

    .line 1998
    if-eqz v3, :cond_51

    .line 1999
    .line 2000
    if-eqz v0, :cond_51

    .line 2001
    .line 2002
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 2003
    .line 2004
    array-length v3, v0

    .line 2005
    move v4, v7

    .line 2006
    :goto_34
    if-ge v4, v3, :cond_51

    .line 2007
    .line 2008
    aget v5, v0, v4

    .line 2009
    .line 2010
    if-nez v5, :cond_4f

    .line 2011
    .line 2012
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 2013
    .line 2014
    const/4 v5, 0x1

    .line 2015
    invoke-virtual {v0, v8, v5, v5, v5}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 2016
    .line 2017
    .line 2018
    goto :goto_36

    .line 2019
    :cond_4f
    const/4 v5, 0x1

    .line 2020
    add-int/2addr v4, v5

    .line 2021
    goto :goto_34

    .line 2022
    :goto_35
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2023
    throw v0

    .line 2024
    :cond_50
    move v7, v4

    .line 2025
    move-object v1, v6

    .line 2026
    move-object v8, v13

    .line 2027
    move/from16 v28, v14

    .line 2028
    .line 2029
    move/from16 v30, v15

    .line 2030
    .line 2031
    :cond_51
    :goto_36
    if-eqz v28, :cond_53

    .line 2032
    .line 2033
    iget-boolean v0, v2, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    .line 2034
    .line 2035
    if-eqz v0, :cond_53

    .line 2036
    .line 2037
    :try_start_b
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2038
    .line 2039
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 2040
    .line 2041
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    .line 2042
    .line 2043
    .line 2044
    move-result-object v0

    .line 2045
    invoke-virtual {v0}, Lcom/android/server/pm/AsecInstallHelper;->getMountedExternalVolume()Landroid/os/storage/VolumeInfo;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v3

    .line 2049
    if-eqz v3, :cond_52

    .line 2050
    .line 2051
    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 2052
    .line 2053
    if-eqz v4, :cond_52

    .line 2054
    .line 2055
    sget-object v4, Lcom/android/server/pm/AsecInstallHelper;->mContext:Landroid/content/Context;

    .line 2056
    .line 2057
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v4

    .line 2061
    new-instance v5, Lcom/android/server/pm/AsecInstallHelper$1;

    .line 2062
    .line 2063
    invoke-direct {v5, v0, v4, v2}, Lcom/android/server/pm/AsecInstallHelper$1;-><init>(Lcom/android/server/pm/AsecInstallHelper;Landroid/content/pm/PackageManager;Lcom/android/server/pm/InstallRequest;)V

    .line 2064
    .line 2065
    .line 2066
    iget-object v0, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2067
    .line 2068
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 2069
    .line 2070
    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    .line 2071
    .line 2072
    .line 2073
    :try_start_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v0

    .line 2077
    iget-object v3, v3, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 2078
    .line 2079
    invoke-interface {v0, v8, v3}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3

    .line 2080
    .line 2081
    .line 2082
    goto/16 :goto_38

    .line 2083
    .line 2084
    :catch_3
    move-exception v0

    .line 2085
    goto :goto_37

    .line 2086
    :catch_4
    move-exception v0

    .line 2087
    :try_start_d
    const-string v3, "PackageManager"

    .line 2088
    .line 2089
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2090
    .line 2091
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2092
    .line 2093
    .line 2094
    const-string v5, "RemoteException - "

    .line 2095
    .line 2096
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    .line 2098
    .line 2099
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2100
    .line 2101
    .line 2102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v0

    .line 2106
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    .line 2108
    .line 2109
    goto :goto_38

    .line 2110
    :cond_52
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2111
    .line 2112
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    .line 2113
    .line 2114
    .line 2115
    goto :goto_38

    .line 2116
    :goto_37
    const-string v3, "PackageManager"

    .line 2117
    .line 2118
    const-string v4, "Automatic move failed"

    .line 2119
    .line 2120
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2121
    .line 2122
    .line 2123
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2124
    .line 2125
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 2126
    .line 2127
    .line 2128
    goto :goto_38

    .line 2129
    :cond_53
    if-eqz v28, :cond_55

    .line 2130
    .line 2131
    if-eqz v16, :cond_55

    .line 2132
    .line 2133
    if-eqz v30, :cond_54

    .line 2134
    .line 2135
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2136
    .line 2137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2138
    .line 2139
    .line 2140
    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2141
    .line 2142
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2143
    .line 2144
    .line 2145
    move-result-object v3

    .line 2146
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    .line 2147
    .line 2148
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    .line 2150
    .line 2151
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 2152
    .line 2153
    const/16 v4, 0x1d

    .line 2154
    .line 2155
    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v3

    .line 2159
    const-wide/16 v4, 0x3e8

    .line 2160
    .line 2161
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2162
    .line 2163
    .line 2164
    goto :goto_38

    .line 2165
    :cond_54
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2166
    .line 2167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2168
    .line 2169
    .line 2170
    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2171
    .line 2172
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v3

    .line 2176
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    .line 2177
    .line 2178
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    .line 2180
    .line 2181
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 2182
    .line 2183
    const/16 v4, 0x18

    .line 2184
    .line 2185
    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v3

    .line 2189
    const-wide/16 v4, 0x1f4

    .line 2190
    .line 2191
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2192
    .line 2193
    .line 2194
    goto :goto_38

    .line 2195
    :cond_55
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2196
    .line 2197
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 2198
    .line 2199
    .line 2200
    :goto_38
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2201
    .line 2202
    const/4 v3, 0x1

    .line 2203
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 2204
    .line 2205
    .line 2206
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2207
    .line 2208
    if-nez v0, :cond_56

    .line 2209
    .line 2210
    const/4 v11, 0x0

    .line 2211
    goto :goto_39

    .line 2212
    :cond_56
    iget-object v11, v0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    .line 2213
    .line 2214
    :goto_39
    if-eqz v11, :cond_59

    .line 2215
    .line 2216
    if-nez v0, :cond_57

    .line 2217
    .line 2218
    const/4 v11, 0x0

    .line 2219
    goto :goto_3a

    .line 2220
    :cond_57
    iget-object v11, v0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    .line 2221
    .line 2222
    :goto_3a
    if-nez v0, :cond_58

    .line 2223
    .line 2224
    move v4, v7

    .line 2225
    :goto_3b
    const-wide/32 v5, 0x40000

    .line 2226
    .line 2227
    .line 2228
    goto :goto_3c

    .line 2229
    :cond_58
    iget v4, v0, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    .line 2230
    .line 2231
    goto :goto_3b

    .line 2232
    :goto_3c
    invoke-static {v5, v6, v11, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2233
    .line 2234
    .line 2235
    :cond_59
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2236
    .line 2237
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    .line 2238
    .line 2239
    iget-object v1, v2, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 2240
    .line 2241
    move/from16 v4, v28

    .line 2242
    .line 2243
    invoke-virtual {v0, v8, v4, v1}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->onPackageInstalled(Ljava/lang/String;Z[I)V

    .line 2244
    .line 2245
    .line 2246
    :goto_3d
    const-string/jumbo v0, "postInstall"

    .line 2247
    .line 2248
    .line 2249
    move-object/from16 v1, p1

    .line 2250
    .line 2251
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2252
    .line 2253
    const-wide/32 v2, 0x40000

    .line 2254
    .line 2255
    .line 2256
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2257
    .line 2258
    .line 2259
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method
