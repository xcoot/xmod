.class public final Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final grantDefaultPermissions(I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 6
    .line 7
    iget-object v8, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 8
    .line 9
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    .line 13
    .line 14
    invoke-direct {v9, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "Granting permissions to platform components for user "

    .line 18
    .line 19
    const-string v1, "DefaultPermGrantPolicy"

    .line 20
    .line 21
    invoke-static {v7, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v10, 0x2000b080

    .line 31
    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v13

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v14, 0x0

    .line 47
    if-eqz v0, :cond_2f

    .line 48
    .line 49
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v15, v0

    .line 54
    check-cast v15, Landroid/content/pm/PackageInfo;

    .line 55
    .line 56
    if-nez v15, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v1, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v1, v0, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v15}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-static {v15}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const-string v0, "com.samsung.android.spayfw"

    .line 88
    .line 89
    iget-object v1, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    .line 96
    .line 97
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    iget-object v14, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 102
    .line 103
    array-length v4, v14

    .line 104
    move v3, v11

    .line 105
    :goto_1
    if-ge v3, v4, :cond_5

    .line 106
    .line 107
    aget-object v2, v14, v3

    .line 108
    .line 109
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v16

    .line 119
    const/16 v17, 0x0

    .line 120
    .line 121
    const/16 v18, 0x0

    .line 122
    .line 123
    move-object v0, v8

    .line 124
    move-object v1, v9

    .line 125
    move-object v10, v2

    .line 126
    move-object v2, v15

    .line 127
    move/from16 v19, v3

    .line 128
    .line 129
    move-object/from16 v3, v16

    .line 130
    .line 131
    move/from16 v16, v4

    .line 132
    .line 133
    move/from16 v4, v18

    .line 134
    .line 135
    move-object/from16 v18, v14

    .line 136
    .line 137
    move-object v14, v5

    .line 138
    move/from16 v5, v17

    .line 139
    .line 140
    move-object v11, v6

    .line 141
    move/from16 v6, p1

    .line 142
    .line 143
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    move-object v10, v2

    .line 148
    move/from16 v19, v3

    .line 149
    .line 150
    move/from16 v16, v4

    .line 151
    .line 152
    move-object v11, v6

    .line 153
    move-object/from16 v18, v14

    .line 154
    .line 155
    move-object v14, v5

    .line 156
    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const/4 v5, 0x0

    .line 167
    const/4 v4, 0x0

    .line 168
    move-object v0, v8

    .line 169
    move-object v1, v9

    .line 170
    move-object v2, v15

    .line 171
    move/from16 v6, p1

    .line 172
    .line 173
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 174
    .line 175
    .line 176
    :cond_4
    add-int/lit8 v3, v19, 0x1

    .line 177
    .line 178
    move-object v6, v11

    .line 179
    move-object v5, v14

    .line 180
    move/from16 v4, v16

    .line 181
    .line 182
    move-object/from16 v14, v18

    .line 183
    .line 184
    const v10, 0x2000b080

    .line 185
    .line 186
    .line 187
    const/4 v11, 0x0

    .line 188
    goto :goto_1

    .line 189
    :cond_5
    move v10, v7

    .line 190
    move-object/from16 v18, v12

    .line 191
    .line 192
    move-object/from16 v20, v13

    .line 193
    .line 194
    goto/16 :goto_15

    .line 195
    .line 196
    :cond_6
    move-object v11, v6

    .line 197
    move-object v10, v14

    .line 198
    move-object v14, v5

    .line 199
    const-string v0, "com.samsung.android.ipsgeofence"

    .line 200
    .line 201
    iget-object v1, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    const-string v6, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 208
    .line 209
    if-eqz v0, :cond_c

    .line 210
    .line 211
    iget-object v10, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 212
    .line 213
    array-length v5, v10

    .line 214
    const/4 v4, 0x0

    .line 215
    :goto_3
    if-ge v4, v5, :cond_a

    .line 216
    .line 217
    aget-object v3, v10, v4

    .line 218
    .line 219
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_7

    .line 224
    .line 225
    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 226
    .line 227
    .line 228
    move-result-object v16

    .line 229
    const/16 v18, 0x0

    .line 230
    .line 231
    const/16 v19, 0x0

    .line 232
    .line 233
    move-object v0, v8

    .line 234
    move-object v1, v9

    .line 235
    move-object v2, v15

    .line 236
    move-object/from16 v20, v3

    .line 237
    .line 238
    move-object/from16 v3, v16

    .line 239
    .line 240
    move/from16 v16, v4

    .line 241
    .line 242
    move/from16 v4, v19

    .line 243
    .line 244
    move/from16 v19, v5

    .line 245
    .line 246
    move/from16 v5, v18

    .line 247
    .line 248
    move-object/from16 v18, v10

    .line 249
    .line 250
    move-object v10, v6

    .line 251
    move/from16 v6, p1

    .line 252
    .line 253
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 254
    .line 255
    .line 256
    move-object/from16 v6, v20

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_7
    move/from16 v16, v4

    .line 260
    .line 261
    move/from16 v19, v5

    .line 262
    .line 263
    move-object/from16 v18, v10

    .line 264
    .line 265
    move-object v10, v6

    .line 266
    move-object v6, v3

    .line 267
    :goto_4
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_8

    .line 272
    .line 273
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    const/4 v5, 0x0

    .line 278
    const/4 v4, 0x0

    .line 279
    move-object v0, v8

    .line 280
    move-object v1, v9

    .line 281
    move-object v2, v15

    .line 282
    move-object/from16 v20, v13

    .line 283
    .line 284
    move-object v13, v6

    .line 285
    move/from16 v6, p1

    .line 286
    .line 287
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_8
    move-object/from16 v20, v13

    .line 292
    .line 293
    move-object v13, v6

    .line 294
    :goto_5
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_9

    .line 299
    .line 300
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    const/4 v5, 0x0

    .line 305
    const/4 v4, 0x0

    .line 306
    move-object v0, v8

    .line 307
    move-object v1, v9

    .line 308
    move-object v2, v15

    .line 309
    move/from16 v6, p1

    .line 310
    .line 311
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 312
    .line 313
    .line 314
    :cond_9
    add-int/lit8 v4, v16, 0x1

    .line 315
    .line 316
    move-object v6, v10

    .line 317
    move-object/from16 v10, v18

    .line 318
    .line 319
    move/from16 v5, v19

    .line 320
    .line 321
    move-object/from16 v13, v20

    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_a
    move-object/from16 v20, v13

    .line 325
    .line 326
    :cond_b
    move v10, v7

    .line 327
    move-object/from16 v18, v12

    .line 328
    .line 329
    goto/16 :goto_15

    .line 330
    .line 331
    :cond_c
    move-object/from16 v20, v13

    .line 332
    .line 333
    move-object v13, v10

    .line 334
    move-object v10, v6

    .line 335
    const-string v0, "com.samsung.android.networkdiagnostic"

    .line 336
    .line 337
    iget-object v1, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_10

    .line 344
    .line 345
    iget-object v13, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 346
    .line 347
    array-length v6, v13

    .line 348
    const/4 v5, 0x0

    .line 349
    :goto_6
    if-ge v5, v6, :cond_b

    .line 350
    .line 351
    aget-object v4, v13, v5

    .line 352
    .line 353
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_d

    .line 358
    .line 359
    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    const/16 v16, 0x0

    .line 364
    .line 365
    const/16 v18, 0x0

    .line 366
    .line 367
    move-object v0, v8

    .line 368
    move-object v1, v9

    .line 369
    move-object v2, v15

    .line 370
    move-object/from16 v19, v13

    .line 371
    .line 372
    move-object v13, v4

    .line 373
    move/from16 v4, v18

    .line 374
    .line 375
    move/from16 v18, v5

    .line 376
    .line 377
    move/from16 v5, v16

    .line 378
    .line 379
    move/from16 v16, v6

    .line 380
    .line 381
    move/from16 v6, p1

    .line 382
    .line 383
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 384
    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_d
    move/from16 v18, v5

    .line 388
    .line 389
    move/from16 v16, v6

    .line 390
    .line 391
    move-object/from16 v19, v13

    .line 392
    .line 393
    move-object v13, v4

    .line 394
    :goto_7
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_e

    .line 399
    .line 400
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    const/4 v5, 0x0

    .line 405
    const/4 v4, 0x0

    .line 406
    move-object v0, v8

    .line 407
    move-object v1, v9

    .line 408
    move-object v2, v15

    .line 409
    move/from16 v6, p1

    .line 410
    .line 411
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 412
    .line 413
    .line 414
    :cond_e
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-eqz v0, :cond_f

    .line 419
    .line 420
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    const/4 v5, 0x0

    .line 425
    const/4 v4, 0x0

    .line 426
    move-object v0, v8

    .line 427
    move-object v1, v9

    .line 428
    move-object v2, v15

    .line 429
    move/from16 v6, p1

    .line 430
    .line 431
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 432
    .line 433
    .line 434
    :cond_f
    add-int/lit8 v5, v18, 0x1

    .line 435
    .line 436
    move/from16 v6, v16

    .line 437
    .line 438
    move-object/from16 v13, v19

    .line 439
    .line 440
    goto :goto_6

    .line 441
    :cond_10
    const-string v0, "com.samsung.cmh"

    .line 442
    .line 443
    iget-object v1, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    const-string v10, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 450
    .line 451
    const-string v11, "android.permission.READ_MEDIA_VIDEO"

    .line 452
    .line 453
    const-string v14, "android.permission.READ_MEDIA_IMAGES"

    .line 454
    .line 455
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 456
    .line 457
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    .line 458
    .line 459
    if-eqz v0, :cond_19

    .line 460
    .line 461
    iget-object v13, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 462
    .line 463
    array-length v4, v13

    .line 464
    const/4 v3, 0x0

    .line 465
    :goto_8
    if-ge v3, v4, :cond_17

    .line 466
    .line 467
    aget-object v2, v13, v3

    .line 468
    .line 469
    const-string v0, "android.permission.READ_CONTACTS"

    .line 470
    .line 471
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_11

    .line 476
    .line 477
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 478
    .line 479
    .line 480
    move-result-object v16

    .line 481
    const/16 v18, 0x0

    .line 482
    .line 483
    const/16 v19, 0x0

    .line 484
    .line 485
    move-object v0, v8

    .line 486
    move-object v1, v9

    .line 487
    move-object/from16 v21, v2

    .line 488
    .line 489
    move-object v2, v15

    .line 490
    move/from16 v22, v3

    .line 491
    .line 492
    move-object/from16 v3, v16

    .line 493
    .line 494
    move/from16 v16, v4

    .line 495
    .line 496
    move/from16 v4, v19

    .line 497
    .line 498
    move-object/from16 v19, v13

    .line 499
    .line 500
    move-object v13, v5

    .line 501
    move/from16 v5, v18

    .line 502
    .line 503
    move-object/from16 v18, v12

    .line 504
    .line 505
    move-object v12, v6

    .line 506
    move/from16 v6, p1

    .line 507
    .line 508
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 509
    .line 510
    .line 511
    move-object/from16 v6, v21

    .line 512
    .line 513
    goto :goto_9

    .line 514
    :cond_11
    move/from16 v22, v3

    .line 515
    .line 516
    move/from16 v16, v4

    .line 517
    .line 518
    move-object/from16 v18, v12

    .line 519
    .line 520
    move-object/from16 v19, v13

    .line 521
    .line 522
    move-object v13, v5

    .line 523
    move-object v12, v6

    .line 524
    move-object v6, v2

    .line 525
    :goto_9
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-eqz v0, :cond_12

    .line 530
    .line 531
    invoke-static {v13}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    const/4 v5, 0x0

    .line 536
    const/4 v4, 0x0

    .line 537
    move-object v0, v8

    .line 538
    move-object v1, v9

    .line 539
    move-object v2, v15

    .line 540
    move-object v7, v6

    .line 541
    move/from16 v6, p1

    .line 542
    .line 543
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 544
    .line 545
    .line 546
    goto :goto_a

    .line 547
    :cond_12
    move-object v7, v6

    .line 548
    :goto_a
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-eqz v0, :cond_13

    .line 553
    .line 554
    invoke-static {v12}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    const/4 v5, 0x0

    .line 559
    const/4 v4, 0x0

    .line 560
    move-object v0, v8

    .line 561
    move-object v1, v9

    .line 562
    move-object v2, v15

    .line 563
    move/from16 v6, p1

    .line 564
    .line 565
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 566
    .line 567
    .line 568
    :cond_13
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-eqz v0, :cond_14

    .line 573
    .line 574
    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    const/4 v5, 0x0

    .line 579
    const/4 v4, 0x0

    .line 580
    move-object v0, v8

    .line 581
    move-object v1, v9

    .line 582
    move-object v2, v15

    .line 583
    move/from16 v6, p1

    .line 584
    .line 585
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 586
    .line 587
    .line 588
    :cond_14
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    if-eqz v0, :cond_15

    .line 593
    .line 594
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    const/4 v5, 0x0

    .line 599
    const/4 v4, 0x0

    .line 600
    move-object v0, v8

    .line 601
    move-object v1, v9

    .line 602
    move-object v2, v15

    .line 603
    move/from16 v6, p1

    .line 604
    .line 605
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 606
    .line 607
    .line 608
    :cond_15
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    if-eqz v0, :cond_16

    .line 613
    .line 614
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    const/4 v5, 0x0

    .line 619
    const/4 v4, 0x0

    .line 620
    move-object v0, v8

    .line 621
    move-object v1, v9

    .line 622
    move-object v2, v15

    .line 623
    move/from16 v6, p1

    .line 624
    .line 625
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 626
    .line 627
    .line 628
    :cond_16
    add-int/lit8 v3, v22, 0x1

    .line 629
    .line 630
    move/from16 v7, p1

    .line 631
    .line 632
    move-object v6, v12

    .line 633
    move-object v5, v13

    .line 634
    move/from16 v4, v16

    .line 635
    .line 636
    move-object/from16 v12, v18

    .line 637
    .line 638
    move-object/from16 v13, v19

    .line 639
    .line 640
    goto/16 :goto_8

    .line 641
    .line 642
    :cond_17
    move-object/from16 v18, v12

    .line 643
    .line 644
    :cond_18
    move/from16 v10, p1

    .line 645
    .line 646
    goto/16 :goto_15

    .line 647
    .line 648
    :cond_19
    move-object/from16 v18, v12

    .line 649
    .line 650
    move-object v7, v13

    .line 651
    move-object v13, v5

    .line 652
    move-object v12, v6

    .line 653
    const-string v0, "com.samsung.faceservice"

    .line 654
    .line 655
    iget-object v1, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 656
    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    if-eqz v0, :cond_1e

    .line 662
    .line 663
    iget-object v7, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 664
    .line 665
    array-length v10, v7

    .line 666
    const/4 v6, 0x0

    .line 667
    :goto_b
    if-ge v6, v10, :cond_18

    .line 668
    .line 669
    aget-object v5, v7, v6

    .line 670
    .line 671
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    if-eqz v0, :cond_1a

    .line 676
    .line 677
    invoke-static {v13}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    const/16 v16, 0x0

    .line 682
    .line 683
    const/4 v4, 0x0

    .line 684
    move-object v0, v8

    .line 685
    move-object v1, v9

    .line 686
    move-object v2, v15

    .line 687
    move-object/from16 v23, v5

    .line 688
    .line 689
    move/from16 v5, v16

    .line 690
    .line 691
    move/from16 v16, v6

    .line 692
    .line 693
    move/from16 v6, p1

    .line 694
    .line 695
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 696
    .line 697
    .line 698
    move-object/from16 v6, v23

    .line 699
    .line 700
    goto :goto_c

    .line 701
    :cond_1a
    move/from16 v16, v6

    .line 702
    .line 703
    move-object v6, v5

    .line 704
    :goto_c
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v0

    .line 708
    if-eqz v0, :cond_1b

    .line 709
    .line 710
    invoke-static {v12}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    const/4 v5, 0x0

    .line 715
    const/4 v4, 0x0

    .line 716
    move-object v0, v8

    .line 717
    move-object v1, v9

    .line 718
    move-object v2, v15

    .line 719
    move-object/from16 v19, v7

    .line 720
    .line 721
    move-object v7, v6

    .line 722
    move/from16 v6, p1

    .line 723
    .line 724
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 725
    .line 726
    .line 727
    goto :goto_d

    .line 728
    :cond_1b
    move-object/from16 v19, v7

    .line 729
    .line 730
    move-object v7, v6

    .line 731
    :goto_d
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    if-eqz v0, :cond_1c

    .line 736
    .line 737
    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 738
    .line 739
    .line 740
    move-result-object v3

    .line 741
    const/4 v5, 0x0

    .line 742
    const/4 v4, 0x0

    .line 743
    move-object v0, v8

    .line 744
    move-object v1, v9

    .line 745
    move-object v2, v15

    .line 746
    move/from16 v6, p1

    .line 747
    .line 748
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 749
    .line 750
    .line 751
    :cond_1c
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    if-eqz v0, :cond_1d

    .line 756
    .line 757
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    const/4 v5, 0x0

    .line 762
    const/4 v4, 0x0

    .line 763
    move-object v0, v8

    .line 764
    move-object v1, v9

    .line 765
    move-object v2, v15

    .line 766
    move/from16 v6, p1

    .line 767
    .line 768
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 769
    .line 770
    .line 771
    :cond_1d
    add-int/lit8 v6, v16, 0x1

    .line 772
    .line 773
    move-object/from16 v7, v19

    .line 774
    .line 775
    goto :goto_b

    .line 776
    :cond_1e
    const-string v0, "com.samsung.storyservice"

    .line 777
    .line 778
    iget-object v1, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 779
    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v0

    .line 784
    if-eqz v0, :cond_24

    .line 785
    .line 786
    iget-object v7, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 787
    .line 788
    array-length v6, v7

    .line 789
    const/4 v5, 0x0

    .line 790
    :goto_e
    if-ge v5, v6, :cond_18

    .line 791
    .line 792
    aget-object v4, v7, v5

    .line 793
    .line 794
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    move-result v0

    .line 798
    if-eqz v0, :cond_1f

    .line 799
    .line 800
    invoke-static {v13}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 801
    .line 802
    .line 803
    move-result-object v3

    .line 804
    const/16 v16, 0x0

    .line 805
    .line 806
    const/16 v19, 0x0

    .line 807
    .line 808
    move-object v0, v8

    .line 809
    move-object v1, v9

    .line 810
    move-object v2, v15

    .line 811
    move-object/from16 v21, v7

    .line 812
    .line 813
    move-object v7, v4

    .line 814
    move/from16 v4, v19

    .line 815
    .line 816
    move/from16 v19, v5

    .line 817
    .line 818
    move/from16 v5, v16

    .line 819
    .line 820
    move/from16 v16, v6

    .line 821
    .line 822
    move/from16 v6, p1

    .line 823
    .line 824
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 825
    .line 826
    .line 827
    goto :goto_f

    .line 828
    :cond_1f
    move/from16 v19, v5

    .line 829
    .line 830
    move/from16 v16, v6

    .line 831
    .line 832
    move-object/from16 v21, v7

    .line 833
    .line 834
    move-object v7, v4

    .line 835
    :goto_f
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    if-eqz v0, :cond_20

    .line 840
    .line 841
    invoke-static {v12}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 842
    .line 843
    .line 844
    move-result-object v3

    .line 845
    const/4 v5, 0x0

    .line 846
    const/4 v4, 0x0

    .line 847
    move-object v0, v8

    .line 848
    move-object v1, v9

    .line 849
    move-object v2, v15

    .line 850
    move/from16 v6, p1

    .line 851
    .line 852
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 853
    .line 854
    .line 855
    :cond_20
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    if-eqz v0, :cond_21

    .line 860
    .line 861
    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 862
    .line 863
    .line 864
    move-result-object v3

    .line 865
    const/4 v5, 0x0

    .line 866
    const/4 v4, 0x0

    .line 867
    move-object v0, v8

    .line 868
    move-object v1, v9

    .line 869
    move-object v2, v15

    .line 870
    move/from16 v6, p1

    .line 871
    .line 872
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 873
    .line 874
    .line 875
    :cond_21
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    move-result v0

    .line 879
    if-eqz v0, :cond_22

    .line 880
    .line 881
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    const/4 v5, 0x0

    .line 886
    const/4 v4, 0x0

    .line 887
    move-object v0, v8

    .line 888
    move-object v1, v9

    .line 889
    move-object v2, v15

    .line 890
    move/from16 v6, p1

    .line 891
    .line 892
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 893
    .line 894
    .line 895
    :cond_22
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 896
    .line 897
    .line 898
    move-result v0

    .line 899
    if-eqz v0, :cond_23

    .line 900
    .line 901
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    const/4 v5, 0x0

    .line 906
    const/4 v4, 0x0

    .line 907
    move-object v0, v8

    .line 908
    move-object v1, v9

    .line 909
    move-object v2, v15

    .line 910
    move/from16 v6, p1

    .line 911
    .line 912
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 913
    .line 914
    .line 915
    :cond_23
    add-int/lit8 v5, v19, 0x1

    .line 916
    .line 917
    move/from16 v6, v16

    .line 918
    .line 919
    move-object/from16 v7, v21

    .line 920
    .line 921
    goto/16 :goto_e

    .line 922
    .line 923
    :cond_24
    const-string v0, "com.samsung.ipservice"

    .line 924
    .line 925
    iget-object v1, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 926
    .line 927
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 928
    .line 929
    .line 930
    move-result v0

    .line 931
    if-eqz v0, :cond_29

    .line 932
    .line 933
    iget-object v7, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 934
    .line 935
    array-length v10, v7

    .line 936
    const/4 v6, 0x0

    .line 937
    :goto_10
    if-ge v6, v10, :cond_18

    .line 938
    .line 939
    aget-object v5, v7, v6

    .line 940
    .line 941
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 942
    .line 943
    .line 944
    move-result v0

    .line 945
    if-eqz v0, :cond_25

    .line 946
    .line 947
    invoke-static {v13}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    const/16 v16, 0x0

    .line 952
    .line 953
    const/4 v4, 0x0

    .line 954
    move-object v0, v8

    .line 955
    move-object v1, v9

    .line 956
    move-object v2, v15

    .line 957
    move-object/from16 v24, v5

    .line 958
    .line 959
    move/from16 v5, v16

    .line 960
    .line 961
    move/from16 v16, v6

    .line 962
    .line 963
    move/from16 v6, p1

    .line 964
    .line 965
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 966
    .line 967
    .line 968
    move-object/from16 v6, v24

    .line 969
    .line 970
    goto :goto_11

    .line 971
    :cond_25
    move/from16 v16, v6

    .line 972
    .line 973
    move-object v6, v5

    .line 974
    :goto_11
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    move-result v0

    .line 978
    if-eqz v0, :cond_26

    .line 979
    .line 980
    invoke-static {v12}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 981
    .line 982
    .line 983
    move-result-object v3

    .line 984
    const/4 v5, 0x0

    .line 985
    const/4 v4, 0x0

    .line 986
    move-object v0, v8

    .line 987
    move-object v1, v9

    .line 988
    move-object v2, v15

    .line 989
    move-object/from16 v19, v7

    .line 990
    .line 991
    move-object v7, v6

    .line 992
    move/from16 v6, p1

    .line 993
    .line 994
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 995
    .line 996
    .line 997
    goto :goto_12

    .line 998
    :cond_26
    move-object/from16 v19, v7

    .line 999
    .line 1000
    move-object v7, v6

    .line 1001
    :goto_12
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v0

    .line 1005
    if-eqz v0, :cond_27

    .line 1006
    .line 1007
    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    const/4 v5, 0x0

    .line 1012
    const/4 v4, 0x0

    .line 1013
    move-object v0, v8

    .line 1014
    move-object v1, v9

    .line 1015
    move-object v2, v15

    .line 1016
    move/from16 v6, p1

    .line 1017
    .line 1018
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 1019
    .line 1020
    .line 1021
    :cond_27
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    move-result v0

    .line 1025
    if-eqz v0, :cond_28

    .line 1026
    .line 1027
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v3

    .line 1031
    const/4 v5, 0x0

    .line 1032
    const/4 v4, 0x0

    .line 1033
    move-object v0, v8

    .line 1034
    move-object v1, v9

    .line 1035
    move-object v2, v15

    .line 1036
    move/from16 v6, p1

    .line 1037
    .line 1038
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 1039
    .line 1040
    .line 1041
    :cond_28
    add-int/lit8 v6, v16, 0x1

    .line 1042
    .line 1043
    move-object/from16 v7, v19

    .line 1044
    .line 1045
    goto :goto_10

    .line 1046
    :cond_29
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1047
    .line 1048
    const-string v1, "com.samsung.android.scloud"

    .line 1049
    .line 1050
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v0

    .line 1054
    if-eqz v0, :cond_2d

    .line 1055
    .line 1056
    const-string/jumbo v0, "ro.product.first_api_level"

    .line 1057
    .line 1058
    .line 1059
    const/4 v2, 0x0

    .line 1060
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1061
    .line 1062
    .line 1063
    move-result v0

    .line 1064
    const/16 v2, 0x1f

    .line 1065
    .line 1066
    if-lt v0, v2, :cond_2c

    .line 1067
    .line 1068
    move/from16 v10, p1

    .line 1069
    .line 1070
    invoke-virtual {v8, v9, v10, v15, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;ILandroid/content/pm/PackageInfo;Ljava/util/Set;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v6

    .line 1077
    if-eqz v6, :cond_2e

    .line 1078
    .line 1079
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v0

    .line 1083
    if-eqz v0, :cond_2e

    .line 1084
    .line 1085
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1086
    .line 1087
    array-length v11, v7

    .line 1088
    const/4 v12, 0x0

    .line 1089
    :goto_13
    if-ge v12, v11, :cond_2e

    .line 1090
    .line 1091
    aget-object v1, v7, v12

    .line 1092
    .line 1093
    invoke-virtual {v9, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v0

    .line 1097
    if-nez v0, :cond_2a

    .line 1098
    .line 1099
    goto :goto_14

    .line 1100
    :cond_2a
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    if-eqz v0, :cond_2b

    .line 1105
    .line 1106
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v5

    .line 1110
    const/16 v3, 0x10

    .line 1111
    .line 1112
    const/4 v4, 0x0

    .line 1113
    move-object v0, v9

    .line 1114
    move-object v2, v6

    .line 1115
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 1116
    .line 1117
    .line 1118
    :cond_2b
    :goto_14
    add-int/lit8 v12, v12, 0x1

    .line 1119
    .line 1120
    goto :goto_13

    .line 1121
    :cond_2c
    move/from16 v10, p1

    .line 1122
    .line 1123
    invoke-virtual {v8, v9, v10, v15, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;ILandroid/content/pm/PackageInfo;Ljava/util/Set;)V

    .line 1124
    .line 1125
    .line 1126
    goto :goto_15

    .line 1127
    :cond_2d
    move/from16 v10, p1

    .line 1128
    .line 1129
    invoke-virtual {v8, v9, v10, v15, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;ILandroid/content/pm/PackageInfo;Ljava/util/Set;)V

    .line 1130
    .line 1131
    .line 1132
    :cond_2e
    :goto_15
    move v7, v10

    .line 1133
    move-object/from16 v12, v18

    .line 1134
    .line 1135
    move-object/from16 v13, v20

    .line 1136
    .line 1137
    const v10, 0x2000b080

    .line 1138
    .line 1139
    .line 1140
    const/4 v11, 0x0

    .line 1141
    goto/16 :goto_0

    .line 1142
    .line 1143
    :cond_2f
    move v10, v7

    .line 1144
    move-object/from16 v18, v12

    .line 1145
    .line 1146
    move-object v7, v14

    .line 1147
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v6

    .line 1151
    :cond_30
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1152
    .line 1153
    .line 1154
    move-result v0

    .line 1155
    if-eqz v0, :cond_32

    .line 1156
    .line 1157
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    move-object v2, v0

    .line 1162
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1163
    .line 1164
    if-eqz v2, :cond_30

    .line 1165
    .line 1166
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v0

    .line 1170
    if-eqz v0, :cond_30

    .line 1171
    .line 1172
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1173
    .line 1174
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v0

    .line 1178
    if-nez v0, :cond_30

    .line 1179
    .line 1180
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 1181
    .line 1182
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v1

    .line 1186
    invoke-virtual {v9, v0, v2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    .line 1187
    .line 1188
    .line 1189
    move-result v0

    .line 1190
    if-eqz v0, :cond_30

    .line 1191
    .line 1192
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1193
    .line 1194
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    invoke-virtual {v9, v0, v2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    .line 1199
    .line 1200
    .line 1201
    move-result v0

    .line 1202
    if-eqz v0, :cond_30

    .line 1203
    .line 1204
    invoke-virtual {v9, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v0

    .line 1208
    if-eqz v0, :cond_31

    .line 1209
    .line 1210
    goto :goto_16

    .line 1211
    :cond_31
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v5

    .line 1215
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 1216
    .line 1217
    const/16 v3, 0x10

    .line 1218
    .line 1219
    const/4 v4, 0x0

    .line 1220
    move-object v0, v9

    .line 1221
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 1222
    .line 1223
    .line 1224
    goto :goto_16

    .line 1225
    :cond_32
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_NAL_GET_APP_LIST:Z

    .line 1226
    .line 1227
    if-eqz v0, :cond_35

    .line 1228
    .line 1229
    const-string v0, "Granting GET_APP_LIST to system components for user "

    .line 1230
    .line 1231
    const-string v1, "DefaultPermGrantPolicy"

    .line 1232
    .line 1233
    invoke-static {v10, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1237
    .line 1238
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    const v1, 0x2000b080

    .line 1243
    .line 1244
    .line 1245
    const/4 v2, 0x0

    .line 1246
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v11

    .line 1254
    :cond_33
    :goto_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1255
    .line 1256
    .line 1257
    move-result v0

    .line 1258
    if-eqz v0, :cond_35

    .line 1259
    .line 1260
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    move-object v2, v0

    .line 1265
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1266
    .line 1267
    if-eqz v2, :cond_33

    .line 1268
    .line 1269
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1270
    .line 1271
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 1272
    .line 1273
    .line 1274
    move-result v0

    .line 1275
    if-nez v0, :cond_34

    .line 1276
    .line 1277
    goto :goto_17

    .line 1278
    :cond_34
    new-instance v3, Landroid/util/ArraySet;

    .line 1279
    .line 1280
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1281
    .line 1282
    .line 1283
    const-string v0, "com.samsung.android.permission.GET_APP_LIST"

    .line 1284
    .line 1285
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1286
    .line 1287
    .line 1288
    const/4 v5, 0x0

    .line 1289
    const/4 v4, 0x1

    .line 1290
    move-object v0, v8

    .line 1291
    move-object v1, v9

    .line 1292
    move/from16 v6, p1

    .line 1293
    .line 1294
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 1295
    .line 1296
    .line 1297
    goto :goto_17

    .line 1298
    :cond_35
    invoke-virtual {v8, v9, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;I)V

    .line 1299
    .line 1300
    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    const-string v1, "Granting Notification permissions to platform signature apps for user "

    .line 1304
    .line 1305
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v0

    .line 1315
    const-string v1, "DefaultPermGrantPolicy"

    .line 1316
    .line 1317
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    .line 1319
    .line 1320
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1321
    .line 1322
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v0

    .line 1326
    const v1, 0x2000b080

    .line 1327
    .line 1328
    .line 1329
    const/4 v11, 0x0

    .line 1330
    invoke-virtual {v0, v1, v11}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0

    .line 1338
    :cond_36
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1339
    .line 1340
    .line 1341
    move-result v1

    .line 1342
    if-eqz v1, :cond_38

    .line 1343
    .line 1344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v1

    .line 1348
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1349
    .line 1350
    if-eqz v1, :cond_36

    .line 1351
    .line 1352
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1353
    .line 1354
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 1355
    .line 1356
    .line 1357
    move-result v2

    .line 1358
    if-eqz v2, :cond_36

    .line 1359
    .line 1360
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1361
    .line 1362
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    .line 1363
    .line 1364
    .line 1365
    move-result v2

    .line 1366
    if-nez v2, :cond_37

    .line 1367
    .line 1368
    goto :goto_18

    .line 1369
    :cond_37
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 1370
    .line 1371
    invoke-virtual {v8, v9, v10, v1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;ILandroid/content/pm/PackageInfo;Ljava/util/Set;)V

    .line 1372
    .line 1373
    .line 1374
    goto :goto_18

    .line 1375
    :cond_38
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;

    .line 1376
    .line 1377
    const/4 v12, 0x1

    .line 1378
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1379
    .line 1380
    .line 1381
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 1382
    .line 1383
    monitor-enter v1

    .line 1384
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1385
    .line 1386
    if-nez v0, :cond_39

    .line 1387
    .line 1388
    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v0

    .line 1392
    iput-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1393
    .line 1394
    goto :goto_19

    .line 1395
    :catchall_0
    move-exception v0

    .line 1396
    goto/16 :goto_23

    .line 1397
    .line 1398
    :cond_39
    :goto_19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1400
    .line 1401
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 1402
    .line 1403
    .line 1404
    move-result v13

    .line 1405
    move-object v14, v7

    .line 1406
    move v7, v11

    .line 1407
    :goto_1a
    if-ge v7, v13, :cond_3e

    .line 1408
    .line 1409
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1410
    .line 1411
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v0

    .line 1415
    check-cast v0, Ljava/lang/String;

    .line 1416
    .line 1417
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v15

    .line 1421
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1422
    .line 1423
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v0

    .line 1427
    move-object v6, v0

    .line 1428
    check-cast v6, Ljava/util/List;

    .line 1429
    .line 1430
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1431
    .line 1432
    .line 1433
    move-result v5

    .line 1434
    move-object v0, v14

    .line 1435
    move v14, v11

    .line 1436
    :goto_1b
    if-ge v14, v5, :cond_3d

    .line 1437
    .line 1438
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v1

    .line 1442
    check-cast v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 1443
    .line 1444
    iget-object v2, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    .line 1445
    .line 1446
    invoke-virtual {v9, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v2

    .line 1450
    if-nez v2, :cond_3b

    .line 1451
    .line 1452
    :cond_3a
    move/from16 v17, v5

    .line 1453
    .line 1454
    move-object/from16 v16, v6

    .line 1455
    .line 1456
    goto :goto_1e

    .line 1457
    :cond_3b
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 1458
    .line 1459
    .line 1460
    move-result v2

    .line 1461
    if-ne v2, v12, :cond_3a

    .line 1462
    .line 1463
    if-nez v0, :cond_3c

    .line 1464
    .line 1465
    new-instance v0, Landroid/util/ArraySet;

    .line 1466
    .line 1467
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1468
    .line 1469
    .line 1470
    :goto_1c
    move-object v4, v0

    .line 1471
    goto :goto_1d

    .line 1472
    :cond_3c
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1473
    .line 1474
    .line 1475
    goto :goto_1c

    .line 1476
    :goto_1d
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    .line 1477
    .line 1478
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1479
    .line 1480
    .line 1481
    iget-boolean v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    .line 1482
    .line 1483
    iget-boolean v2, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->whitelisted:Z

    .line 1484
    .line 1485
    move-object v0, v8

    .line 1486
    move-object v1, v9

    .line 1487
    move/from16 v16, v2

    .line 1488
    .line 1489
    move-object v2, v15

    .line 1490
    move/from16 v17, v3

    .line 1491
    .line 1492
    move-object v3, v4

    .line 1493
    move-object/from16 v18, v4

    .line 1494
    .line 1495
    move/from16 v4, v17

    .line 1496
    .line 1497
    move/from16 v17, v5

    .line 1498
    .line 1499
    move/from16 v5, v16

    .line 1500
    .line 1501
    move-object/from16 v16, v6

    .line 1502
    .line 1503
    move/from16 v6, p1

    .line 1504
    .line 1505
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZI)V

    .line 1506
    .line 1507
    .line 1508
    move-object/from16 v0, v18

    .line 1509
    .line 1510
    goto :goto_1f

    .line 1511
    :goto_1e
    const-string v2, "DefaultPermGrantPolicy"

    .line 1512
    .line 1513
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1514
    .line 1515
    const-string v4, "Ignoring permission "

    .line 1516
    .line 1517
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1518
    .line 1519
    .line 1520
    iget-object v1, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    .line 1521
    .line 1522
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    .line 1524
    .line 1525
    const-string v1, " which isn\'t dangerous"

    .line 1526
    .line 1527
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v1

    .line 1534
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    .line 1536
    .line 1537
    :goto_1f
    add-int/lit8 v14, v14, 0x1

    .line 1538
    .line 1539
    move-object/from16 v6, v16

    .line 1540
    .line 1541
    move/from16 v5, v17

    .line 1542
    .line 1543
    goto :goto_1b

    .line 1544
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    .line 1545
    .line 1546
    move-object v14, v0

    .line 1547
    goto/16 :goto_1a

    .line 1548
    .line 1549
    :cond_3e
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 1550
    .line 1551
    .line 1552
    move v2, v11

    .line 1553
    :goto_20
    iget-object v0, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    .line 1554
    .line 1555
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 1556
    .line 1557
    .line 1558
    move-result v0

    .line 1559
    if-ge v2, v0, :cond_40

    .line 1560
    .line 1561
    move v1, v11

    .line 1562
    :goto_21
    iget-object v0, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    .line 1563
    .line 1564
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v0

    .line 1568
    check-cast v0, Landroid/util/ArrayMap;

    .line 1569
    .line 1570
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 1571
    .line 1572
    .line 1573
    move-result v0

    .line 1574
    if-ge v1, v0, :cond_3f

    .line 1575
    .line 1576
    :try_start_1
    iget-object v0, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    .line 1577
    .line 1578
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v0

    .line 1582
    check-cast v0, Landroid/util/ArrayMap;

    .line 1583
    .line 1584
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v0

    .line 1588
    check-cast v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    .line 1589
    .line 1590
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->apply()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1591
    .line 1592
    .line 1593
    goto :goto_22

    .line 1594
    :catch_0
    move-exception v0

    .line 1595
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1596
    .line 1597
    const-string v4, "Cannot set permission "

    .line 1598
    .line 1599
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1600
    .line 1601
    .line 1602
    iget-object v4, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    .line 1603
    .line 1604
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v4

    .line 1608
    check-cast v4, Landroid/util/ArrayMap;

    .line 1609
    .line 1610
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v4

    .line 1614
    check-cast v4, Ljava/lang/String;

    .line 1615
    .line 1616
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    .line 1618
    .line 1619
    const-string v4, " of uid "

    .line 1620
    .line 1621
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    .line 1624
    iget-object v4, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    .line 1625
    .line 1626
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1627
    .line 1628
    .line 1629
    move-result v4

    .line 1630
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1631
    .line 1632
    .line 1633
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v3

    .line 1637
    const-string v4, "DefaultPermGrantPolicy"

    .line 1638
    .line 1639
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1640
    .line 1641
    .line 1642
    :goto_22
    add-int/lit8 v1, v1, 0x1

    .line 1643
    .line 1644
    goto :goto_21

    .line 1645
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    .line 1646
    .line 1647
    goto :goto_20

    .line 1648
    :cond_40
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 1649
    .line 1650
    .line 1651
    return-void

    .line 1652
    :goto_23
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1653
    throw v0
.end method
