.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/pm/pkg/AndroidPackage;

.field public final synthetic f$3:Lcom/android/server/pm/pkg/AndroidPackage;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$2:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$3:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$4:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$5:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    iget-boolean v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$1:Z

    .line 7
    .line 8
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$2:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 9
    .line 10
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$3:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 11
    .line 12
    iget-boolean v14, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$4:Z

    .line 13
    .line 14
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$5:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    if-eqz v2, :cond_11

    .line 20
    .line 21
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v9, Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-direct {v9, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-ge v2, v0, :cond_1

    .line 36
    .line 37
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 46
    .line 47
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v9, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_0
    add-int/2addr v2, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    const/4 v7, 0x0

    .line 83
    :goto_1
    if-ge v7, v8, :cond_4

    .line 84
    .line 85
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    and-int/2addr v3, v1

    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-nez v3, :cond_2

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    :goto_2
    move-object v6, v2

    .line 114
    goto :goto_3

    .line 115
    :cond_2
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    goto :goto_2

    .line 124
    :goto_3
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    move-object v4, v2

    .line 129
    check-cast v4, Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v6, :cond_3

    .line 132
    .line 133
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_3

    .line 138
    .line 139
    iget-object v2, v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 142
    .line 143
    .line 144
    move-result-object v16

    .line 145
    iget-object v3, v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 146
    .line 147
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;

    .line 148
    .line 149
    move-object/from16 p0, v2

    .line 150
    .line 151
    move-object v10, v3

    .line 152
    move-object v3, v11

    .line 153
    move-object/from16 v18, v4

    .line 154
    .line 155
    move-object/from16 v4, v16

    .line 156
    .line 157
    move-object/from16 v16, v6

    .line 158
    .line 159
    move-object v6, v12

    .line 160
    move/from16 v19, v7

    .line 161
    .line 162
    move-object/from16 v7, v18

    .line 163
    .line 164
    move/from16 v18, v8

    .line 165
    .line 166
    move-object/from16 v8, v16

    .line 167
    .line 168
    move-object/from16 v16, v9

    .line 169
    .line 170
    move v9, v0

    .line 171
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_3
    move/from16 v19, v7

    .line 179
    .line 180
    move/from16 v18, v8

    .line 181
    .line 182
    move-object/from16 v16, v9

    .line 183
    .line 184
    :goto_4
    add-int/lit8 v7, v19, 0x1

    .line 185
    .line 186
    move-object/from16 v9, v16

    .line 187
    .line 188
    move/from16 v8, v18

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_4
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    const/16 v2, 0x1d

    .line 196
    .line 197
    if-lt v0, v2, :cond_5

    .line 198
    .line 199
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-ge v0, v2, :cond_5

    .line 204
    .line 205
    move v10, v1

    .line 206
    goto :goto_5

    .line 207
    :cond_5
    const/4 v10, 0x0

    .line 208
    :goto_5
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-ge v0, v2, :cond_6

    .line 213
    .line 214
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-lt v0, v2, :cond_6

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_6
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_7

    .line 226
    .line 227
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_7

    .line 232
    .line 233
    move v9, v1

    .line 234
    goto :goto_7

    .line 235
    :cond_7
    :goto_6
    const/4 v9, 0x0

    .line 236
    :goto_7
    if-nez v9, :cond_9

    .line 237
    .line 238
    if-nez v10, :cond_9

    .line 239
    .line 240
    :cond_8
    const/16 v17, 0x0

    .line 241
    .line 242
    goto/16 :goto_c

    .line 243
    .line 244
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 245
    .line 246
    .line 247
    move-result v16

    .line 248
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    array-length v7, v8

    .line 253
    const/4 v6, 0x0

    .line 254
    :goto_8
    if-ge v6, v7, :cond_8

    .line 255
    .line 256
    aget v5, v8, v6

    .line 257
    .line 258
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v18

    .line 266
    :cond_a
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_e

    .line 271
    .line 272
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Ljava/lang/String;

    .line 277
    .line 278
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    const/4 v4, 0x0

    .line 283
    invoke-virtual {v11, v4, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    if-nez v3, :cond_b

    .line 288
    .line 289
    goto :goto_9

    .line 290
    :cond_b
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    .line 291
    .line 292
    iget-object v2, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 293
    .line 294
    check-cast v0, Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_c

    .line 301
    .line 302
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    .line 303
    .line 304
    iget-object v2, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 305
    .line 306
    check-cast v0, Landroid/util/ArraySet;

    .line 307
    .line 308
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-nez v0, :cond_c

    .line 313
    .line 314
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    .line 315
    .line 316
    iget-object v2, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 317
    .line 318
    check-cast v0, Landroid/util/ArraySet;

    .line 319
    .line 320
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_a

    .line 325
    .line 326
    :cond_c
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iget-object v2, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 331
    .line 332
    const-string v4, "default:0"

    .line 333
    .line 334
    invoke-virtual {v11, v0, v2, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    and-int/lit8 v0, v0, 0x14

    .line 339
    .line 340
    if-eqz v0, :cond_d

    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_d
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v4, "Revoking permission "

    .line 354
    .line 355
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v4, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v4, " from package "

    .line 364
    .line 365
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v4, " as either the sdk downgraded "

    .line 376
    .line 377
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v4, " or newly requested legacy full storage "

    .line 384
    .line 385
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    const-string v4, "171430330"

    .line 396
    .line 397
    filled-new-array {v4, v0, v2}, [Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    const v2, 0x534e4554

    .line 402
    .line 403
    .line 404
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 405
    .line 406
    .line 407
    :try_start_0
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    iget-object v4, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 412
    .line 413
    iget-object v2, v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 414
    .line 415
    const/16 v19, 0x0

    .line 416
    .line 417
    const/16 v20, 0x0

    .line 418
    .line 419
    const/16 v21, 0x0

    .line 420
    .line 421
    move-object/from16 v22, v2

    .line 422
    .line 423
    move-object v2, v11

    .line 424
    move-object v1, v3

    .line 425
    move-object v3, v0

    .line 426
    const/16 v17, 0x0

    .line 427
    .line 428
    move/from16 p0, v5

    .line 429
    .line 430
    move/from16 v5, v19

    .line 431
    .line 432
    move/from16 v19, v6

    .line 433
    .line 434
    move/from16 v6, v21

    .line 435
    .line 436
    move/from16 v21, v7

    .line 437
    .line 438
    move/from16 v7, v16

    .line 439
    .line 440
    move-object/from16 v23, v8

    .line 441
    .line 442
    move/from16 v8, p0

    .line 443
    .line 444
    move/from16 v24, v9

    .line 445
    .line 446
    move-object/from16 v9, v20

    .line 447
    .line 448
    move/from16 v20, v10

    .line 449
    .line 450
    move-object/from16 v10, v22

    .line 451
    .line 452
    :try_start_1
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 453
    .line 454
    .line 455
    move/from16 v1, p0

    .line 456
    .line 457
    goto :goto_b

    .line 458
    :catch_0
    move-exception v0

    .line 459
    goto :goto_a

    .line 460
    :catch_1
    move-exception v0

    .line 461
    move-object v1, v3

    .line 462
    move/from16 p0, v5

    .line 463
    .line 464
    move/from16 v19, v6

    .line 465
    .line 466
    move/from16 v21, v7

    .line 467
    .line 468
    move-object/from16 v23, v8

    .line 469
    .line 470
    move/from16 v24, v9

    .line 471
    .line 472
    move/from16 v20, v10

    .line 473
    .line 474
    const/16 v17, 0x0

    .line 475
    .line 476
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    const-string/jumbo v3, "unable to revoke "

    .line 479
    .line 480
    .line 481
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 485
    .line 486
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v1, " for "

    .line 490
    .line 491
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v1, " user "

    .line 502
    .line 503
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    move/from16 v1, p0

    .line 507
    .line 508
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    const-string v3, "PermissionManager"

    .line 516
    .line 517
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .line 519
    .line 520
    :goto_b
    move v5, v1

    .line 521
    move/from16 v6, v19

    .line 522
    .line 523
    move/from16 v10, v20

    .line 524
    .line 525
    move/from16 v7, v21

    .line 526
    .line 527
    move-object/from16 v8, v23

    .line 528
    .line 529
    move/from16 v9, v24

    .line 530
    .line 531
    const/4 v1, 0x1

    .line 532
    goto/16 :goto_9

    .line 533
    .line 534
    :cond_e
    move v2, v1

    .line 535
    move/from16 v19, v6

    .line 536
    .line 537
    move/from16 v21, v7

    .line 538
    .line 539
    move-object/from16 v23, v8

    .line 540
    .line 541
    move/from16 v24, v9

    .line 542
    .line 543
    move/from16 v20, v10

    .line 544
    .line 545
    const/16 v17, 0x0

    .line 546
    .line 547
    add-int/lit8 v6, v19, 0x1

    .line 548
    .line 549
    goto/16 :goto_8

    .line 550
    .line 551
    :goto_c
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    const/16 v1, 0x17

    .line 556
    .line 557
    if-ge v0, v1, :cond_12

    .line 558
    .line 559
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-lt v0, v1, :cond_12

    .line 564
    .line 565
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 570
    .line 571
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    if-nez v0, :cond_f

    .line 576
    .line 577
    goto/16 :goto_10

    .line 578
    .line 579
    :cond_f
    iget-object v1, v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 580
    .line 581
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 582
    .line 583
    monitor-enter v1

    .line 584
    :try_start_2
    iget-object v0, v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 585
    .line 586
    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 587
    .line 588
    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    iget-object v1, v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 594
    .line 595
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    new-instance v2, Landroid/util/ArraySet;

    .line 604
    .line 605
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v11, v12, v1, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    .line 609
    .line 610
    .line 611
    move-result v1

    .line 612
    if-nez v1, :cond_12

    .line 613
    .line 614
    invoke-virtual {v11, v12, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    if-eqz v0, :cond_10

    .line 619
    .line 620
    goto :goto_10

    .line 621
    :cond_10
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    array-length v8, v1

    .line 626
    move/from16 v10, v17

    .line 627
    .line 628
    :goto_d
    if-ge v10, v8, :cond_12

    .line 629
    .line 630
    aget v9, v1, v10

    .line 631
    .line 632
    :try_start_3
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    const-string v4, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 637
    .line 638
    iget-object v7, v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 639
    .line 640
    const/4 v5, 0x0

    .line 641
    move-object v2, v11

    .line 642
    move v6, v9

    .line 643
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 644
    .line 645
    .line 646
    :goto_e
    const/4 v2, 0x1

    .line 647
    goto :goto_f

    .line 648
    :catch_2
    move-exception v0

    .line 649
    const-string v2, "PermissionManager"

    .line 650
    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    const-string/jumbo v4, "unable to revoke SYSTEM_ALERT_WINDOW for "

    .line 654
    .line 655
    .line 656
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    const-string v4, " user "

    .line 667
    .line 668
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    .line 680
    .line 681
    goto :goto_e

    .line 682
    :goto_f
    add-int/2addr v10, v2

    .line 683
    goto :goto_d

    .line 684
    :catchall_0
    move-exception v0

    .line 685
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 686
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 687
    .line 688
    throw v0

    .line 689
    :cond_11
    const/16 v17, 0x0

    .line 690
    .line 691
    :cond_12
    :goto_10
    if-eqz v14, :cond_15

    .line 692
    .line 693
    iget-object v0, v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 694
    .line 695
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 704
    .line 705
    .line 706
    move-result v8

    .line 707
    move/from16 v10, v17

    .line 708
    .line 709
    :goto_11
    if-ge v10, v1, :cond_15

    .line 710
    .line 711
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    move-object v5, v2

    .line 716
    check-cast v5, Ljava/lang/String;

    .line 717
    .line 718
    iget-object v2, v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 719
    .line 720
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 721
    .line 722
    monitor-enter v2

    .line 723
    :try_start_5
    iget-object v3, v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 724
    .line 725
    invoke-virtual {v3, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    if-eqz v3, :cond_14

    .line 730
    .line 731
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    .line 732
    .line 733
    .line 734
    move-result v4

    .line 735
    if-nez v4, :cond_13

    .line 736
    .line 737
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 738
    .line 739
    .line 740
    move-result v4

    .line 741
    if-nez v4, :cond_13

    .line 742
    .line 743
    goto :goto_13

    .line 744
    :catchall_1
    move-exception v0

    .line 745
    goto :goto_15

    .line 746
    :cond_13
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    .line 747
    .line 748
    .line 749
    move-result v6

    .line 750
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 751
    iget-object v9, v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 752
    .line 753
    new-instance v12, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;

    .line 754
    .line 755
    move-object v2, v12

    .line 756
    move-object v3, v11

    .line 757
    move-object v4, v0

    .line 758
    move v7, v8

    .line 759
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;ZI)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 763
    .line 764
    .line 765
    :goto_12
    const/4 v3, 0x1

    .line 766
    goto :goto_14

    .line 767
    :cond_14
    :goto_13
    :try_start_6
    monitor-exit v2

    .line 768
    goto :goto_12

    .line 769
    :goto_14
    add-int/2addr v10, v3

    .line 770
    goto :goto_11

    .line 771
    :goto_15
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 772
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 773
    .line 774
    throw v0

    .line 775
    :cond_15
    return-void
.end method
