.class public final synthetic Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/DeletePackageHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Landroid/content/pm/IPackageDeleteObserver2;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:J

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:[I

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;IZZJII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/DeletePackageHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$2:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$3:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$4:Z

    .line 13
    .line 14
    iput-wide p6, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$5:J

    .line 15
    .line 16
    iput p8, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$6:I

    .line 17
    .line 18
    iput p9, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$7:I

    .line 19
    .line 20
    iput-object p10, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$8:[I

    .line 21
    .line 22
    iput-object p11, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$9:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p12, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$10:Landroid/content/pm/IPackageDeleteObserver2;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v7, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/DeletePackageHelper;

    .line 4
    .line 5
    iget-object v8, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iget v1, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$2:I

    .line 8
    .line 9
    iget-boolean v2, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$3:Z

    .line 10
    .line 11
    iget-boolean v3, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$4:Z

    .line 12
    .line 13
    iget-wide v9, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$5:J

    .line 14
    .line 15
    iget v11, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$6:I

    .line 16
    .line 17
    iget v12, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$7:I

    .line 18
    .line 19
    iget-object v13, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$8:[I

    .line 20
    .line 21
    iget-object v14, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$9:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v15, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$10:Landroid/content/pm/IPackageDeleteObserver2;

    .line 24
    .line 25
    iget-object v6, v7, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 26
    .line 27
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/4 v4, 0x1

    .line 36
    move-object/from16 p0, v6

    .line 37
    .line 38
    const-string v6, "PackageManager"

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-interface {v5, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, -0x1

    .line 60
    move-object/from16 v21, p0

    .line 61
    .line 62
    move-object/from16 v22, v14

    .line 63
    .line 64
    move-object/from16 v20, v15

    .line 65
    .line 66
    move v15, v4

    .line 67
    move-object v14, v6

    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :cond_1
    :goto_0
    const-string v2, ", returnCode "

    .line 71
    .line 72
    const-string v1, "Package delete failed for user "

    .line 73
    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    if-nez v3, :cond_9

    .line 77
    .line 78
    const/4 v13, 0x0

    .line 79
    move-object v0, v7

    .line 80
    move-object v3, v1

    .line 81
    move v1, v11

    .line 82
    move-object/from16 v17, v2

    .line 83
    .line 84
    move v2, v12

    .line 85
    move-object/from16 v19, v3

    .line 86
    .line 87
    move-wide v3, v9

    .line 88
    move-object/from16 v20, v15

    .line 89
    .line 90
    move-object v15, v5

    .line 91
    move-object v5, v8

    .line 92
    move-object/from16 v21, p0

    .line 93
    .line 94
    move-object/from16 v22, v14

    .line 95
    .line 96
    move-object v14, v6

    .line 97
    move v6, v13

    .line 98
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/4 v13, 0x1

    .line 103
    if-ne v0, v13, :cond_8

    .line 104
    .line 105
    if-eqz v15, :cond_8

    .line 106
    .line 107
    iget-object v6, v7, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 108
    .line 109
    invoke-virtual {v6, v11, v13}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileIds(IZ)[I

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    array-length v3, v5

    .line 114
    move/from16 v4, v16

    .line 115
    .line 116
    move/from16 v16, v0

    .line 117
    .line 118
    :goto_1
    if-ge v4, v3, :cond_7

    .line 119
    .line 120
    aget v2, v5, v4

    .line 121
    .line 122
    if-ne v2, v11, :cond_3

    .line 123
    .line 124
    :cond_2
    :goto_2
    move/from16 v24, v3

    .line 125
    .line 126
    move/from16 v25, v4

    .line 127
    .line 128
    move-object/from16 v26, v5

    .line 129
    .line 130
    move-object/from16 v27, v6

    .line 131
    .line 132
    move-object/from16 v6, v17

    .line 133
    .line 134
    move-object/from16 v5, v19

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_3
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eq v0, v11, :cond_4

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    invoke-interface {v15, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_5

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    invoke-virtual {v6, v2}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_2

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_2

    .line 168
    .line 169
    const/16 v18, 0x0

    .line 170
    .line 171
    move-object v0, v7

    .line 172
    move v1, v2

    .line 173
    move/from16 v23, v2

    .line 174
    .line 175
    move v2, v12

    .line 176
    move/from16 v24, v3

    .line 177
    .line 178
    move/from16 v25, v4

    .line 179
    .line 180
    move-wide v3, v9

    .line 181
    move-object/from16 v26, v5

    .line 182
    .line 183
    move-object v5, v8

    .line 184
    move-object/from16 v27, v6

    .line 185
    .line 186
    move/from16 v6, v18

    .line 187
    .line 188
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    move-object/from16 v6, v17

    .line 193
    .line 194
    move-object/from16 v5, v19

    .line 195
    .line 196
    if-eq v0, v13, :cond_6

    .line 197
    .line 198
    move/from16 v1, v23

    .line 199
    .line 200
    invoke-static {v1, v0, v5, v6, v14}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/16 v16, -0x8

    .line 204
    .line 205
    :cond_6
    :goto_3
    add-int/lit8 v4, v25, 0x1

    .line 206
    .line 207
    move-object/from16 v19, v5

    .line 208
    .line 209
    move-object/from16 v17, v6

    .line 210
    .line 211
    move/from16 v3, v24

    .line 212
    .line 213
    move-object/from16 v5, v26

    .line 214
    .line 215
    move-object/from16 v6, v27

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_7
    move v15, v13

    .line 219
    move/from16 v0, v16

    .line 220
    .line 221
    goto/16 :goto_7

    .line 222
    .line 223
    :cond_8
    move v15, v13

    .line 224
    goto/16 :goto_7

    .line 225
    .line 226
    :cond_9
    move-object/from16 v21, p0

    .line 227
    .line 228
    move-object v5, v1

    .line 229
    move-object/from16 v22, v14

    .line 230
    .line 231
    move-object/from16 v20, v15

    .line 232
    .line 233
    move v15, v4

    .line 234
    move-object v14, v6

    .line 235
    move-object v6, v2

    .line 236
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 237
    .line 238
    array-length v2, v13

    .line 239
    move-object v3, v1

    .line 240
    move/from16 v1, v16

    .line 241
    .line 242
    :goto_4
    if-ge v1, v2, :cond_b

    .line 243
    .line 244
    aget v4, v13, v1

    .line 245
    .line 246
    invoke-interface {v0, v8, v4}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    .line 247
    .line 248
    .line 249
    move-result v17

    .line 250
    if-eqz v17, :cond_a

    .line 251
    .line 252
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_b
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_c

    .line 264
    .line 265
    const/4 v6, 0x0

    .line 266
    move-object v0, v7

    .line 267
    move v1, v11

    .line 268
    move v2, v12

    .line 269
    move-wide v3, v9

    .line 270
    move-object v5, v8

    .line 271
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    goto :goto_7

    .line 276
    :cond_c
    and-int/lit8 v12, v12, -0x3

    .line 277
    .line 278
    array-length v4, v13

    .line 279
    move/from16 v2, v16

    .line 280
    .line 281
    :goto_5
    if-ge v2, v4, :cond_f

    .line 282
    .line 283
    aget v1, v13, v2

    .line 284
    .line 285
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_e

    .line 290
    .line 291
    const/16 v16, 0x0

    .line 292
    .line 293
    move-object v0, v7

    .line 294
    move/from16 p0, v1

    .line 295
    .line 296
    move/from16 v17, v2

    .line 297
    .line 298
    move v2, v12

    .line 299
    move-object/from16 v18, v3

    .line 300
    .line 301
    move/from16 v19, v4

    .line 302
    .line 303
    move-wide v3, v9

    .line 304
    move-object/from16 v28, v5

    .line 305
    .line 306
    move-object v5, v8

    .line 307
    move-object/from16 v29, v6

    .line 308
    .line 309
    move/from16 v6, v16

    .line 310
    .line 311
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eq v0, v15, :cond_d

    .line 316
    .line 317
    move/from16 v3, p0

    .line 318
    .line 319
    move-object/from16 v2, v28

    .line 320
    .line 321
    move-object/from16 v1, v29

    .line 322
    .line 323
    invoke-static {v3, v0, v2, v1, v14}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_d
    move-object/from16 v2, v28

    .line 328
    .line 329
    move-object/from16 v1, v29

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_e
    move/from16 v17, v2

    .line 333
    .line 334
    move-object/from16 v18, v3

    .line 335
    .line 336
    move/from16 v19, v4

    .line 337
    .line 338
    move-object v2, v5

    .line 339
    move-object v1, v6

    .line 340
    :goto_6
    add-int/lit8 v0, v17, 0x1

    .line 341
    .line 342
    move-object v6, v1

    .line 343
    move-object v5, v2

    .line 344
    move-object/from16 v3, v18

    .line 345
    .line 346
    move/from16 v4, v19

    .line 347
    .line 348
    move v2, v0

    .line 349
    goto :goto_5

    .line 350
    :cond_f
    const/4 v0, -0x4

    .line 351
    :goto_7
    move-object/from16 v1, v22

    .line 352
    .line 353
    if-gez v0, :cond_10

    .line 354
    .line 355
    invoke-static {v11, v1}, Lcom/android/server/pm/PmHook;->uninstallLog(ILjava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :cond_10
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    const-string/jumbo v3, "result of delete: "

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string/jumbo v3, "{"

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-interface/range {v20 .. v20}, Landroid/content/pm/IPackageDeleteObserver2;->hashCode()I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string/jumbo v3, "}"

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-static {v2}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    const/4 v2, 0x0

    .line 399
    move-object/from16 v3, v20

    .line 400
    .line 401
    invoke-interface {v3, v1, v0, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .line 403
    .line 404
    :goto_8
    move-object/from16 v0, v21

    .line 405
    .line 406
    goto :goto_9

    .line 407
    :catch_0
    const-string v0, "Observer no longer exists."

    .line 408
    .line 409
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    goto :goto_8

    .line 413
    :goto_9
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 414
    .line 415
    .line 416
    return-void
.end method
