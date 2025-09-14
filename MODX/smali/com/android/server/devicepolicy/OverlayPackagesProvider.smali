.class public final Lcom/android/server/devicepolicy/OverlayPackagesProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sActionToMetadataKeyMap:Ljava/util/Map;

.field public static final sAllowedActions:Ljava/util/Set;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mRecursiveStringArrayResourceResolver:Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;

.field public final salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    .line 8
    const-string v1, "android.app.REQUIRED_APP_MANAGED_USER"

    .line 10
    const-string v2, "android.app.action.PROVISION_MANAGED_USER"

    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v1, "android.app.REQUIRED_APP_MANAGED_PROFILE"

    .line 17
    const-string v3, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 19
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "android.app.REQUIRED_APP_MANAGED_DEVICE"

    .line 24
    const-string v4, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 26
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    .line 31
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 34
    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    .line 36
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Landroid/content/pm/PackageManager;

    .line 16
    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    check-cast p2, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 23
    iput-object p2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 25
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mRecursiveStringArrayResourceResolver:Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;

    .line 30
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 33
    move-result-object p1

    .line 34
    const-string p2, "SalesCode"

    .line 36
    const-string p3, ""

    .line 38
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final getNonRequiredApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    const-string v4, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 9
    const-string v5, "android.app.action.PROVISION_MANAGED_USER"

    .line 11
    const-string v9, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 13
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v10, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    .line 18
    check-cast v10, Ljava/util/HashSet;

    .line 20
    invoke-virtual {v10, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 23
    move-result v10

    .line 24
    invoke-static {v10}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 27
    new-instance v10, Landroid/content/Intent;

    .line 29
    const-string v11, "android.intent.action.MAIN"

    .line 31
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v11, "android.intent.category.LAUNCHER"

    .line 36
    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object v11, v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    .line 41
    const v12, 0xc2200

    .line 44
    invoke-virtual {v11, v10, v12, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 47
    move-result-object v10

    .line 48
    new-instance v11, Landroid/util/ArraySet;

    .line 50
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 53
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v10

    .line 57
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v12

    .line 61
    if-eqz v12, :cond_0

    .line 63
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v12

    .line 67
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 69
    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 71
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 73
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 80
    move-result-object v10

    .line 81
    new-instance v12, Landroid/util/ArraySet;

    .line 83
    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 86
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    const-string v13, "Provisioning type "

    .line 91
    const-string v14, " not supported."

    .line 93
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 96
    move-result v15

    .line 97
    sparse-switch v15, :sswitch_data_0

    .line 100
    :goto_1
    const/4 v15, -0x1

    .line 101
    goto :goto_2

    .line 102
    :sswitch_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v15

    .line 106
    if-nez v15, :cond_1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const/4 v15, 0x2

    .line 110
    goto :goto_2

    .line 111
    :sswitch_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v15

    .line 115
    if-nez v15, :cond_2

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    const/4 v15, 0x1

    .line 119
    goto :goto_2

    .line 120
    :sswitch_2
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v15

    .line 124
    if-nez v15, :cond_3

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    const/4 v15, 0x0

    .line 128
    :goto_2
    packed-switch v15, :pswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 133
    invoke-static {v13, v2, v14}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    throw v0

    .line 141
    :pswitch_0
    const v15, 0x10701f7

    .line 144
    goto :goto_3

    .line 145
    :pswitch_1
    const v15, 0x10701f8

    .line 148
    goto :goto_3

    .line 149
    :pswitch_2
    const v15, 0x10701f6

    .line 152
    :goto_3
    invoke-virtual {v0, v15}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    .line 155
    move-result-object v15

    .line 156
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 162
    move-result v15

    .line 163
    sparse-switch v15, :sswitch_data_1

    .line 166
    :goto_4
    const/4 v15, -0x1

    .line 167
    goto :goto_5

    .line 168
    :sswitch_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v15

    .line 172
    if-nez v15, :cond_4

    .line 174
    goto :goto_4

    .line 175
    :cond_4
    const/4 v15, 0x2

    .line 176
    goto :goto_5

    .line 177
    :sswitch_4
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v15

    .line 181
    if-nez v15, :cond_5

    .line 183
    goto :goto_4

    .line 184
    :cond_5
    const/4 v15, 0x1

    .line 185
    goto :goto_5

    .line 186
    :sswitch_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v15

    .line 190
    if-nez v15, :cond_6

    .line 192
    goto :goto_4

    .line 193
    :cond_6
    const/4 v15, 0x0

    .line 194
    :goto_5
    packed-switch v15, :pswitch_data_1

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 199
    invoke-static {v13, v2, v14}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    move-result-object v1

    .line 203
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 206
    throw v0

    .line 207
    :pswitch_3
    const v15, 0x1070209

    .line 210
    goto :goto_6

    .line 211
    :pswitch_4
    const v15, 0x107020a

    .line 214
    goto :goto_6

    .line 215
    :pswitch_5
    const v15, 0x1070208

    .line 218
    :goto_6
    invoke-virtual {v0, v15}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    .line 221
    move-result-object v15

    .line 222
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 225
    iget-object v15, v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    .line 227
    const-string v3, "ATT"

    .line 229
    const-string v6, "AIO"

    .line 231
    const-string v8, "SPR"

    .line 233
    const-string v7, "XAS"

    .line 235
    const-string v1, "BST"

    .line 237
    move-object/from16 v17, v11

    .line 239
    const-string v11, "VMU"

    .line 241
    move-object/from16 p1, v10

    .line 243
    const-string v10, "TMB"

    .line 245
    move-object/from16 v18, v12

    .line 247
    const-string v12, "VZW"

    .line 249
    const-string v0, "VPP"

    .line 251
    move-object/from16 v19, v0

    .line 253
    const-string v0, "USC"

    .line 255
    move-object/from16 v20, v0

    .line 257
    const-string v0, "DCM"

    .line 259
    move-object/from16 v21, v0

    .line 261
    const-string v0, "SBM"

    .line 263
    move-object/from16 v22, v0

    .line 265
    const-string v0, "KDI"

    .line 267
    move-object/from16 v23, v0

    .line 269
    const-string v0, "CCT"

    .line 271
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 274
    move-result v24

    .line 275
    sparse-switch v24, :sswitch_data_2

    .line 278
    :goto_7
    const/16 v24, -0x1

    .line 280
    goto :goto_8

    .line 281
    :sswitch_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    move-result v24

    .line 285
    if-nez v24, :cond_7

    .line 287
    goto :goto_7

    .line 288
    :cond_7
    const/16 v24, 0x2

    .line 290
    goto :goto_8

    .line 291
    :sswitch_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    move-result v24

    .line 295
    if-nez v24, :cond_8

    .line 297
    goto :goto_7

    .line 298
    :cond_8
    const/16 v24, 0x1

    .line 300
    goto :goto_8

    .line 301
    :sswitch_8
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    move-result v24

    .line 305
    if-nez v24, :cond_9

    .line 307
    goto :goto_7

    .line 308
    :cond_9
    const/16 v24, 0x0

    .line 310
    :goto_8
    packed-switch v24, :pswitch_data_2

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 315
    invoke-static {v13, v2, v14}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    move-result-object v1

    .line 319
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 322
    throw v0

    .line 323
    :pswitch_6
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    move-result v24

    .line 327
    if-nez v24, :cond_a

    .line 329
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    move-result v24

    .line 333
    if-eqz v24, :cond_b

    .line 335
    :cond_a
    move-object/from16 v25, v5

    .line 337
    move-object/from16 v24, v13

    .line 339
    move-object/from16 v13, v19

    .line 341
    move-object/from16 v5, v21

    .line 343
    move-object/from16 v2, v23

    .line 345
    move-object/from16 v21, v4

    .line 347
    move-object/from16 v19, v14

    .line 349
    move-object/from16 v14, v20

    .line 351
    move-object/from16 v4, v22

    .line 353
    goto/16 :goto_d

    .line 355
    :cond_b
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    move-result v24

    .line 359
    if-nez v24, :cond_c

    .line 361
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    move-result v24

    .line 365
    if-nez v24, :cond_c

    .line 367
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    move-result v24

    .line 371
    if-nez v24, :cond_c

    .line 373
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    move-result v24

    .line 377
    if-eqz v24, :cond_d

    .line 379
    :cond_c
    move-object/from16 v25, v5

    .line 381
    move-object/from16 v24, v13

    .line 383
    move-object/from16 v13, v19

    .line 385
    move-object/from16 v5, v21

    .line 387
    move-object/from16 v2, v23

    .line 389
    move-object/from16 v21, v4

    .line 391
    move-object/from16 v19, v14

    .line 393
    move-object/from16 v14, v20

    .line 395
    move-object/from16 v4, v22

    .line 397
    goto/16 :goto_c

    .line 399
    :cond_d
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    move-result v24

    .line 403
    if-eqz v24, :cond_e

    .line 405
    const v24, 0x1070038

    .line 408
    move-object/from16 v25, v5

    .line 410
    move-object/from16 v5, v21

    .line 412
    move-object/from16 v2, v23

    .line 414
    move-object/from16 v21, v4

    .line 416
    move-object/from16 v4, v22

    .line 418
    move/from16 v29, v24

    .line 420
    move-object/from16 v24, v13

    .line 422
    move-object/from16 v13, v19

    .line 424
    move-object/from16 v19, v14

    .line 426
    move-object/from16 v14, v20

    .line 428
    move/from16 v20, v29

    .line 430
    goto/16 :goto_e

    .line 432
    :cond_e
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    move-result v24

    .line 436
    if-nez v24, :cond_15

    .line 438
    move-object/from16 v24, v13

    .line 440
    move-object/from16 v13, v19

    .line 442
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    move-result v19

    .line 446
    if-eqz v19, :cond_f

    .line 448
    move-object/from16 v25, v5

    .line 450
    move-object/from16 v19, v14

    .line 452
    move-object/from16 v14, v20

    .line 454
    move-object/from16 v5, v21

    .line 456
    move-object/from16 v2, v23

    .line 458
    move-object/from16 v21, v4

    .line 460
    :goto_9
    move-object/from16 v4, v22

    .line 462
    goto/16 :goto_b

    .line 464
    :cond_f
    move-object/from16 v19, v14

    .line 466
    move-object/from16 v14, v20

    .line 468
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    move-result v20

    .line 472
    if-eqz v20, :cond_10

    .line 474
    const v20, 0x1070039

    .line 477
    move-object/from16 v25, v5

    .line 479
    move-object/from16 v5, v21

    .line 481
    move-object/from16 v2, v23

    .line 483
    move-object/from16 v21, v4

    .line 485
    move-object/from16 v4, v22

    .line 487
    goto :goto_e

    .line 488
    :cond_10
    move-object/from16 v25, v5

    .line 490
    move-object/from16 v5, v21

    .line 492
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    move-result v20

    .line 496
    if-eqz v20, :cond_11

    .line 498
    const v20, 0x1070033

    .line 501
    move-object/from16 v21, v4

    .line 503
    move-object/from16 v4, v22

    .line 505
    :goto_a
    move-object/from16 v2, v23

    .line 507
    goto :goto_e

    .line 508
    :cond_11
    move-object/from16 v21, v4

    .line 510
    move-object/from16 v4, v22

    .line 512
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    move-result v20

    .line 516
    if-eqz v20, :cond_12

    .line 518
    const v20, 0x1070036

    .line 521
    goto :goto_a

    .line 522
    :cond_12
    move-object/from16 v2, v23

    .line 524
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    move-result v20

    .line 528
    if-eqz v20, :cond_13

    .line 530
    const v20, 0x1070035

    .line 533
    goto :goto_e

    .line 534
    :cond_13
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    move-result v20

    .line 538
    if-eqz v20, :cond_14

    .line 540
    const v20, 0x1070032

    .line 543
    goto :goto_e

    .line 544
    :cond_14
    const v20, 0x1070034

    .line 547
    goto :goto_e

    .line 548
    :cond_15
    move-object/from16 v25, v5

    .line 550
    move-object/from16 v24, v13

    .line 552
    move-object/from16 v13, v19

    .line 554
    move-object/from16 v5, v21

    .line 556
    move-object/from16 v2, v23

    .line 558
    move-object/from16 v21, v4

    .line 560
    move-object/from16 v19, v14

    .line 562
    move-object/from16 v14, v20

    .line 564
    goto :goto_9

    .line 565
    :goto_b
    const v20, 0x107003a

    .line 568
    goto :goto_e

    .line 569
    :goto_c
    const v20, 0x1070037

    .line 572
    goto :goto_e

    .line 573
    :goto_d
    const v20, 0x1070031

    .line 576
    :goto_e
    move-object/from16 v23, v2

    .line 578
    :goto_f
    move/from16 v29, v20

    .line 580
    move-object/from16 v20, v1

    .line 582
    move/from16 v1, v29

    .line 584
    goto/16 :goto_15

    .line 586
    :pswitch_7
    move-object/from16 v25, v5

    .line 588
    move-object/from16 v24, v13

    .line 590
    move-object/from16 v13, v19

    .line 592
    move-object/from16 v5, v21

    .line 594
    move-object/from16 v2, v23

    .line 596
    move-object/from16 v21, v4

    .line 598
    move-object/from16 v19, v14

    .line 600
    move-object/from16 v14, v20

    .line 602
    move-object/from16 v4, v22

    .line 604
    const v20, 0x107003b

    .line 607
    goto :goto_f

    .line 608
    :pswitch_8
    move-object/from16 v25, v5

    .line 610
    move-object/from16 v24, v13

    .line 612
    move-object/from16 v13, v19

    .line 614
    move-object/from16 v5, v21

    .line 616
    move-object/from16 v2, v23

    .line 618
    move-object/from16 v21, v4

    .line 620
    move-object/from16 v19, v14

    .line 622
    move-object/from16 v14, v20

    .line 624
    move-object/from16 v4, v22

    .line 626
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 629
    move-result v20

    .line 630
    if-nez v20, :cond_16

    .line 632
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    move-result v20

    .line 636
    if-eqz v20, :cond_17

    .line 638
    :cond_16
    move-object/from16 v20, v1

    .line 640
    goto/16 :goto_13

    .line 642
    :cond_17
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    move-result v20

    .line 646
    if-nez v20, :cond_18

    .line 648
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 651
    move-result v20

    .line 652
    if-nez v20, :cond_18

    .line 654
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    move-result v20

    .line 658
    if-nez v20, :cond_18

    .line 660
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    move-result v20

    .line 664
    if-eqz v20, :cond_19

    .line 666
    :cond_18
    move-object/from16 v20, v1

    .line 668
    goto/16 :goto_12

    .line 670
    :cond_19
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 673
    move-result v20

    .line 674
    if-nez v20, :cond_22

    .line 676
    move-object/from16 v20, v1

    .line 678
    const-string v1, "TMK"

    .line 680
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 683
    move-result v1

    .line 684
    if-eqz v1, :cond_1a

    .line 686
    goto :goto_11

    .line 687
    :cond_1a
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    move-result v1

    .line 691
    if-nez v1, :cond_21

    .line 693
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 696
    move-result v1

    .line 697
    if-eqz v1, :cond_1b

    .line 699
    goto :goto_10

    .line 700
    :cond_1b
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 703
    move-result v1

    .line 704
    if-eqz v1, :cond_1c

    .line 706
    const v1, 0x107002f

    .line 709
    goto :goto_14

    .line 710
    :cond_1c
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    move-result v1

    .line 714
    if-eqz v1, :cond_1d

    .line 716
    const v1, 0x1070029

    .line 719
    goto :goto_14

    .line 720
    :cond_1d
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 723
    move-result v1

    .line 724
    if-eqz v1, :cond_1e

    .line 726
    const v1, 0x107002c

    .line 729
    goto :goto_14

    .line 730
    :cond_1e
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    move-result v1

    .line 734
    if-eqz v1, :cond_1f

    .line 736
    const v1, 0x107002b

    .line 739
    goto :goto_14

    .line 740
    :cond_1f
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 743
    move-result v1

    .line 744
    if-eqz v1, :cond_20

    .line 746
    const v1, 0x1070028

    .line 749
    goto :goto_14

    .line 750
    :cond_20
    const v1, 0x107002a

    .line 753
    goto :goto_14

    .line 754
    :cond_21
    :goto_10
    const v1, 0x1070030

    .line 757
    goto :goto_14

    .line 758
    :cond_22
    move-object/from16 v20, v1

    .line 760
    :goto_11
    const v1, 0x107002e

    .line 763
    goto :goto_14

    .line 764
    :goto_12
    const v1, 0x107002d

    .line 767
    goto :goto_14

    .line 768
    :goto_13
    const v1, 0x1070027

    .line 771
    :goto_14
    move-object/from16 v23, v2

    .line 773
    :goto_15
    new-instance v2, Landroid/util/ArraySet;

    .line 775
    move-object/from16 v22, v0

    .line 777
    move-object/from16 v26, v4

    .line 779
    move-object v0, v13

    .line 780
    move-object/from16 v13, p0

    .line 782
    iget-object v4, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 784
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 787
    move-result-object v4

    .line 788
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 791
    move-result-object v1

    .line 792
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 795
    move-result-object v1

    .line 796
    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 799
    move-object/from16 v1, v18

    .line 801
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 804
    move-object/from16 v2, p1

    .line 806
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 809
    move-object/from16 v2, v17

    .line 811
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 814
    iget-object v1, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 816
    move/from16 v4, p2

    .line 818
    move-object/from16 v17, v5

    .line 820
    move-object/from16 v5, v20

    .line 822
    invoke-interface {v1, v4}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getInputMethodListAsUser(I)Ljava/util/List;

    .line 825
    move-result-object v4

    .line 826
    move-object/from16 v18, v1

    .line 828
    new-instance v1, Landroid/util/ArraySet;

    .line 830
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 833
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 836
    move-result-object v4

    .line 837
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 840
    move-result v20

    .line 841
    if-eqz v20, :cond_24

    .line 843
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 846
    move-result-object v20

    .line 847
    check-cast v20, Landroid/view/inputmethod/InputMethodInfo;

    .line 849
    move-object/from16 p1, v4

    .line 851
    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 854
    move-result-object v4

    .line 855
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 857
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 860
    move-result v4

    .line 861
    if-eqz v4, :cond_23

    .line 863
    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 866
    move-result-object v4

    .line 867
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_23
    move-object/from16 v4, p1

    .line 872
    goto :goto_16

    .line 873
    :cond_24
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 876
    new-instance v1, Landroid/util/ArraySet;

    .line 878
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 881
    move-object/from16 v4, p3

    .line 883
    move-object/from16 v27, v23

    .line 885
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 888
    move-result v20

    .line 889
    if-eqz v20, :cond_27

    .line 891
    const-string/jumbo v20, "persist.ril.config.defaultmsgapp"

    .line 894
    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 897
    move-result-object v20

    .line 898
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 901
    move-result v23

    .line 902
    if-eqz v23, :cond_26

    .line 904
    move-object/from16 v23, v14

    .line 906
    const-string/jumbo v14, "defaultmsgapp empty"

    .line 909
    move-object/from16 p1, v0

    .line 911
    const-string v0, "OverlayPackagesProvider"

    .line 913
    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v14, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 918
    invoke-static {v14}, Lcom/android/internal/telephony/SmsApplication;->setDefaultMessageAppConfig(Landroid/content/Context;)V

    .line 921
    iget-object v14, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 923
    move-object/from16 v28, v12

    .line 925
    const/4 v12, 0x1

    .line 926
    invoke-static {v14, v12}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 929
    move-result-object v14

    .line 930
    if-eqz v14, :cond_25

    .line 932
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 935
    move-result-object v14

    .line 936
    const-string/jumbo v12, "getDefaultSmsApplication = "

    .line 939
    invoke-static {v12, v14, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    goto :goto_18

    .line 943
    :cond_25
    const-string/jumbo v12, "getDefaultSmsApplication returned null"

    .line 946
    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    goto :goto_17

    .line 950
    :cond_26
    move-object/from16 p1, v0

    .line 952
    move-object/from16 v28, v12

    .line 954
    move-object/from16 v23, v14

    .line 956
    :goto_17
    move-object/from16 v14, v20

    .line 958
    :goto_18
    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 961
    goto :goto_19

    .line 962
    :cond_27
    move-object/from16 p1, v0

    .line 964
    move-object/from16 v28, v12

    .line 966
    move-object/from16 v23, v14

    .line 968
    :goto_19
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 971
    new-instance v0, Landroid/util/ArraySet;

    .line 973
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 976
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 979
    move-result v1

    .line 980
    sparse-switch v1, :sswitch_data_3

    .line 983
    move-object/from16 v1, v21

    .line 985
    :goto_1a
    move-object/from16 v12, v25

    .line 987
    :goto_1b
    const/4 v14, -0x1

    .line 988
    goto :goto_1d

    .line 989
    :sswitch_9
    move-object/from16 v1, v21

    .line 991
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 994
    move-result v12

    .line 995
    if-nez v12, :cond_28

    .line 997
    goto :goto_1a

    .line 998
    :cond_28
    move-object/from16 v12, v25

    .line 1000
    const/4 v14, 0x2

    .line 1001
    goto :goto_1d

    .line 1002
    :sswitch_a
    move-object/from16 v1, v21

    .line 1004
    move-object/from16 v12, v25

    .line 1006
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1009
    move-result v14

    .line 1010
    if-nez v14, :cond_29

    .line 1012
    goto :goto_1c

    .line 1013
    :cond_29
    const/4 v14, 0x1

    .line 1014
    goto :goto_1d

    .line 1015
    :sswitch_b
    move-object/from16 v1, v21

    .line 1017
    move-object/from16 v12, v25

    .line 1019
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1022
    move-result v14

    .line 1023
    if-nez v14, :cond_2a

    .line 1025
    :goto_1c
    goto :goto_1b

    .line 1026
    :cond_2a
    const/4 v14, 0x0

    .line 1027
    :goto_1d
    packed-switch v14, :pswitch_data_3

    .line 1030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1032
    move-object/from16 v1, v19

    .line 1034
    move-object/from16 v14, v24

    .line 1036
    invoke-static {v14, v4, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1039
    move-result-object v1

    .line 1040
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1043
    throw v0

    .line 1044
    :pswitch_9
    move-object/from16 v14, v24

    .line 1046
    move-object/from16 v29, v19

    .line 1048
    move-object/from16 v19, v2

    .line 1050
    move-object/from16 v2, v29

    .line 1052
    const v20, 0x10701e2

    .line 1055
    :goto_1e
    move-object/from16 v21, v10

    .line 1057
    move/from16 v10, v20

    .line 1059
    goto :goto_1f

    .line 1060
    :pswitch_a
    move-object/from16 v14, v24

    .line 1062
    move-object/from16 v29, v19

    .line 1064
    move-object/from16 v19, v2

    .line 1066
    move-object/from16 v2, v29

    .line 1068
    const v20, 0x10701e3

    .line 1071
    goto :goto_1e

    .line 1072
    :pswitch_b
    move-object/from16 v14, v24

    .line 1074
    move-object/from16 v29, v19

    .line 1076
    move-object/from16 v19, v2

    .line 1078
    move-object/from16 v2, v29

    .line 1080
    const v20, 0x10701e1

    .line 1083
    goto :goto_1e

    .line 1084
    :goto_1f
    invoke-virtual {v13, v10}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    .line 1087
    move-result-object v10

    .line 1088
    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1091
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 1094
    move-result v10

    .line 1095
    sparse-switch v10, :sswitch_data_4

    .line 1098
    :goto_20
    const/4 v10, -0x1

    .line 1099
    goto :goto_21

    .line 1100
    :sswitch_c
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1103
    move-result v10

    .line 1104
    if-nez v10, :cond_2b

    .line 1106
    goto :goto_20

    .line 1107
    :cond_2b
    const/4 v10, 0x2

    .line 1108
    goto :goto_21

    .line 1109
    :sswitch_d
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1112
    move-result v10

    .line 1113
    if-nez v10, :cond_2c

    .line 1115
    goto :goto_20

    .line 1116
    :cond_2c
    const/4 v10, 0x1

    .line 1117
    goto :goto_21

    .line 1118
    :sswitch_e
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1121
    move-result v10

    .line 1122
    if-nez v10, :cond_2d

    .line 1124
    goto :goto_20

    .line 1125
    :cond_2d
    const/4 v10, 0x0

    .line 1126
    :goto_21
    packed-switch v10, :pswitch_data_4

    .line 1129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1131
    invoke-static {v14, v4, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1134
    move-result-object v1

    .line 1135
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1138
    throw v0

    .line 1139
    :pswitch_c
    const v10, 0x1070205

    .line 1142
    goto :goto_22

    .line 1143
    :pswitch_d
    const v10, 0x1070206

    .line 1146
    goto :goto_22

    .line 1147
    :pswitch_e
    const v10, 0x1070204

    .line 1150
    :goto_22
    invoke-virtual {v13, v10}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    .line 1153
    move-result-object v10

    .line 1154
    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1157
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 1160
    move-result v10

    .line 1161
    sparse-switch v10, :sswitch_data_5

    .line 1164
    :goto_23
    const/16 v16, -0x1

    .line 1166
    goto :goto_24

    .line 1167
    :sswitch_f
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1170
    move-result v1

    .line 1171
    if-nez v1, :cond_2e

    .line 1173
    goto :goto_23

    .line 1174
    :cond_2e
    const/16 v16, 0x2

    .line 1176
    goto :goto_24

    .line 1177
    :sswitch_10
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1180
    move-result v1

    .line 1181
    if-nez v1, :cond_2f

    .line 1183
    goto :goto_23

    .line 1184
    :cond_2f
    const/16 v16, 0x1

    .line 1186
    goto :goto_24

    .line 1187
    :sswitch_11
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1190
    move-result v1

    .line 1191
    if-nez v1, :cond_30

    .line 1193
    goto :goto_23

    .line 1194
    :cond_30
    const/16 v16, 0x0

    .line 1196
    :goto_24
    packed-switch v16, :pswitch_data_5

    .line 1199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1201
    invoke-static {v14, v4, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1204
    move-result-object v1

    .line 1205
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1208
    throw v0

    .line 1209
    :pswitch_f
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1212
    move-result v1

    .line 1213
    if-nez v1, :cond_3c

    .line 1215
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1218
    move-result v1

    .line 1219
    if-eqz v1, :cond_31

    .line 1221
    goto/16 :goto_27

    .line 1223
    :cond_31
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1226
    move-result v1

    .line 1227
    if-nez v1, :cond_3b

    .line 1229
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1232
    move-result v1

    .line 1233
    if-nez v1, :cond_3b

    .line 1235
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1238
    move-result v1

    .line 1239
    if-nez v1, :cond_3b

    .line 1241
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1244
    move-result v1

    .line 1245
    if-eqz v1, :cond_32

    .line 1247
    goto/16 :goto_26

    .line 1249
    :cond_32
    move-object/from16 v1, v21

    .line 1251
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1254
    move-result v1

    .line 1255
    if-eqz v1, :cond_33

    .line 1257
    const v1, 0x1070022

    .line 1260
    goto :goto_28

    .line 1261
    :cond_33
    move-object/from16 v2, v28

    .line 1263
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1266
    move-result v1

    .line 1267
    if-nez v1, :cond_3a

    .line 1269
    move-object/from16 v9, p1

    .line 1271
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1274
    move-result v1

    .line 1275
    if-eqz v1, :cond_34

    .line 1277
    goto :goto_25

    .line 1278
    :cond_34
    move-object/from16 v10, v23

    .line 1280
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1283
    move-result v1

    .line 1284
    if-eqz v1, :cond_35

    .line 1286
    const v1, 0x1070023

    .line 1289
    goto :goto_28

    .line 1290
    :cond_35
    move-object/from16 v12, v17

    .line 1292
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1295
    move-result v1

    .line 1296
    if-eqz v1, :cond_36

    .line 1298
    const v1, 0x107001d

    .line 1301
    goto :goto_28

    .line 1302
    :cond_36
    move-object/from16 v14, v26

    .line 1304
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1307
    move-result v1

    .line 1308
    if-eqz v1, :cond_37

    .line 1310
    const v1, 0x1070020

    .line 1313
    goto :goto_28

    .line 1314
    :cond_37
    move-object/from16 v1, v27

    .line 1316
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1319
    move-result v1

    .line 1320
    if-eqz v1, :cond_38

    .line 1322
    const v1, 0x107001f

    .line 1325
    goto :goto_28

    .line 1326
    :cond_38
    move-object/from16 v1, v22

    .line 1328
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1331
    move-result v1

    .line 1332
    if-eqz v1, :cond_39

    .line 1334
    const v1, 0x107001c

    .line 1337
    goto :goto_28

    .line 1338
    :cond_39
    const v1, 0x107001e

    .line 1341
    goto :goto_28

    .line 1342
    :cond_3a
    :goto_25
    const v1, 0x1070024

    .line 1345
    goto :goto_28

    .line 1346
    :cond_3b
    :goto_26
    const v1, 0x1070021

    .line 1349
    goto :goto_28

    .line 1350
    :cond_3c
    :goto_27
    const v1, 0x107001b

    .line 1353
    :goto_28
    move-object/from16 p1, v0

    .line 1355
    goto/16 :goto_2d

    .line 1357
    :pswitch_10
    const v1, 0x1070025

    .line 1360
    goto :goto_28

    .line 1361
    :pswitch_11
    move-object/from16 v9, p1

    .line 1363
    move-object/from16 p1, v0

    .line 1365
    move-object/from16 v12, v17

    .line 1367
    move-object/from16 v1, v21

    .line 1369
    move-object/from16 v0, v22

    .line 1371
    move-object/from16 v10, v23

    .line 1373
    move-object/from16 v14, v26

    .line 1375
    move-object/from16 v4, v27

    .line 1377
    move-object/from16 v2, v28

    .line 1379
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1382
    move-result v3

    .line 1383
    if-nez v3, :cond_48

    .line 1385
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1388
    move-result v3

    .line 1389
    if-eqz v3, :cond_3d

    .line 1391
    goto/16 :goto_2c

    .line 1393
    :cond_3d
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1396
    move-result v3

    .line 1397
    if-nez v3, :cond_47

    .line 1399
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1402
    move-result v3

    .line 1403
    if-nez v3, :cond_47

    .line 1405
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1408
    move-result v3

    .line 1409
    if-nez v3, :cond_47

    .line 1411
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1414
    move-result v3

    .line 1415
    if-eqz v3, :cond_3e

    .line 1417
    goto :goto_2b

    .line 1418
    :cond_3e
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1421
    move-result v1

    .line 1422
    if-eqz v1, :cond_3f

    .line 1424
    const v0, 0x1070018

    .line 1427
    :goto_29
    move v1, v0

    .line 1428
    goto :goto_2d

    .line 1429
    :cond_3f
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1432
    move-result v1

    .line 1433
    if-nez v1, :cond_46

    .line 1435
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1438
    move-result v1

    .line 1439
    if-eqz v1, :cond_40

    .line 1441
    goto :goto_2a

    .line 1442
    :cond_40
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1445
    move-result v1

    .line 1446
    if-eqz v1, :cond_41

    .line 1448
    const v0, 0x1070019

    .line 1451
    goto :goto_29

    .line 1452
    :cond_41
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1455
    move-result v1

    .line 1456
    if-eqz v1, :cond_42

    .line 1458
    const v0, 0x1070013

    .line 1461
    goto :goto_29

    .line 1462
    :cond_42
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1465
    move-result v1

    .line 1466
    if-eqz v1, :cond_43

    .line 1468
    const v0, 0x1070016

    .line 1471
    goto :goto_29

    .line 1472
    :cond_43
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1475
    move-result v1

    .line 1476
    if-eqz v1, :cond_44

    .line 1478
    const v0, 0x1070015

    .line 1481
    goto :goto_29

    .line 1482
    :cond_44
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1485
    move-result v0

    .line 1486
    if-eqz v0, :cond_45

    .line 1488
    const v0, 0x1070012

    .line 1491
    goto :goto_29

    .line 1492
    :cond_45
    const v0, 0x1070014

    .line 1495
    goto :goto_29

    .line 1496
    :cond_46
    :goto_2a
    const v0, 0x107001a

    .line 1499
    goto :goto_29

    .line 1500
    :cond_47
    :goto_2b
    const v0, 0x1070017

    .line 1503
    goto :goto_29

    .line 1504
    :cond_48
    :goto_2c
    const v0, 0x1070011

    .line 1507
    goto :goto_29

    .line 1508
    :goto_2d
    new-instance v0, Landroid/util/ArraySet;

    .line 1510
    iget-object v2, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 1512
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1515
    move-result-object v2

    .line 1516
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 1519
    move-result-object v1

    .line 1520
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1523
    move-result-object v1

    .line 1524
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1527
    move-object/from16 v1, p1

    .line 1529
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1532
    move-object/from16 v0, v19

    .line 1534
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1537
    new-instance v1, Ljava/util/HashSet;

    .line 1539
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1542
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 1545
    move-result-object v2

    .line 1546
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1549
    move-result v3

    .line 1550
    if-eqz v3, :cond_4d

    .line 1552
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1555
    move-result-object v3

    .line 1556
    check-cast v3, Ljava/lang/String;

    .line 1558
    :try_start_0
    iget-object v4, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1560
    const/4 v5, 0x0

    .line 1561
    :try_start_1
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1564
    move-object/from16 v4, v18

    .line 1566
    goto :goto_31

    .line 1567
    :catch_0
    :goto_2f
    move-object/from16 v4, v18

    .line 1569
    goto :goto_30

    .line 1570
    :catch_1
    const/4 v5, 0x0

    .line 1571
    goto :goto_2f

    .line 1572
    :goto_30
    invoke-interface {v4, v3}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 1575
    move-result-object v6

    .line 1576
    if-eqz v6, :cond_4c

    .line 1578
    :goto_31
    :try_start_2
    iget-object v6, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    .line 1580
    const/16 v7, 0x80

    .line 1582
    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1585
    move-result-object v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1586
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1588
    if-eqz v7, :cond_49

    .line 1590
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1592
    if-nez v7, :cond_4a

    .line 1594
    :catch_2
    :cond_49
    move-object/from16 v8, p3

    .line 1596
    goto :goto_32

    .line 1597
    :cond_4a
    sget-object v7, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    .line 1599
    check-cast v7, Ljava/util/HashMap;

    .line 1601
    move-object/from16 v8, p3

    .line 1603
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    move-result-object v7

    .line 1607
    check-cast v7, Ljava/lang/String;

    .line 1609
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1611
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1613
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 1616
    move-result v6

    .line 1617
    goto :goto_33

    .line 1618
    :goto_32
    move v6, v5

    .line 1619
    :goto_33
    if-nez v6, :cond_4b

    .line 1621
    :goto_34
    move-object/from16 v18, v4

    .line 1623
    goto :goto_2e

    .line 1624
    :cond_4b
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1627
    goto :goto_34

    .line 1628
    :cond_4c
    move-object/from16 v8, p3

    .line 1630
    goto :goto_34

    .line 1631
    :cond_4d
    move-object/from16 v4, v18

    .line 1633
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 1636
    new-instance v1, Ljava/util/HashSet;

    .line 1638
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1641
    iget-object v2, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 1643
    invoke-interface {v4, v2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getDevicePolicyManagementRoleHolderPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 1646
    move-result-object v2

    .line 1647
    if-eqz v2, :cond_4e

    .line 1649
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1652
    :cond_4e
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 1655
    return-object v0

    .line 1656
    nop

    .line 1657
    :sswitch_data_0
    .sparse-switch
        -0x36de2734 -> :sswitch_2
        -0x1ea9303f -> :sswitch_1
        -0x1450e22d -> :sswitch_0
    .end sparse-switch

    .line 1671
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1681
    :sswitch_data_1
    .sparse-switch
        -0x36de2734 -> :sswitch_5
        -0x1ea9303f -> :sswitch_4
        -0x1450e22d -> :sswitch_3
    .end sparse-switch

    .line 1695
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1705
    :sswitch_data_2
    .sparse-switch
        -0x36de2734 -> :sswitch_8
        -0x1ea9303f -> :sswitch_7
        -0x1450e22d -> :sswitch_6
    .end sparse-switch

    .line 1719
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1729
    :sswitch_data_3
    .sparse-switch
        -0x36de2734 -> :sswitch_b
        -0x1ea9303f -> :sswitch_a
        -0x1450e22d -> :sswitch_9
    .end sparse-switch

    .line 1743
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 1753
    :sswitch_data_4
    .sparse-switch
        -0x36de2734 -> :sswitch_e
        -0x1ea9303f -> :sswitch_d
        -0x1450e22d -> :sswitch_c
    .end sparse-switch

    .line 1767
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 1777
    :sswitch_data_5
    .sparse-switch
        -0x36de2734 -> :sswitch_11
        -0x1ea9303f -> :sswitch_10
        -0x1450e22d -> :sswitch_f
    .end sparse-switch

    .line 1791
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public final resolveStringArray(I)Ljava/util/Set;
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/admin/flags/Flags;->isRecursiveRequiredAppMergingEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mRecursiveStringArrayResourceResolver:Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;->resolve(ILjava/lang/String;Ljava/util/Collection;)Ljava/util/Set;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 29
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 46
    return-object v0
.end method
