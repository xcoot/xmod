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

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "android.app.REQUIRED_APP_MANAGED_USER"

    .line 9
    .line 10
    const-string v2, "android.app.action.PROVISION_MANAGED_USER"

    .line 11
    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v1, "android.app.REQUIRED_APP_MANAGED_PROFILE"

    .line 16
    .line 17
    const-string v3, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 18
    .line 19
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v1, "android.app.REQUIRED_APP_MANAGED_DEVICE"

    .line 23
    .line 24
    const-string v4, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 25
    .line 26
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    check-cast p2, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 24
    .line 25
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iput-object p3, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mRecursiveStringArrayResourceResolver:Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;

    .line 29
    .line 30
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "SalesCode"

    .line 35
    .line 36
    const-string p3, ""

    .line 37
    .line 38
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final getNonRequiredApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v4, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 8
    .line 9
    const-string v5, "android.app.action.PROVISION_MANAGED_USER"

    .line 10
    .line 11
    const-string v9, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object v10, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    .line 17
    .line 18
    check-cast v10, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-virtual {v10, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v10

    .line 24
    invoke-static {v10}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 25
    .line 26
    .line 27
    new-instance v10, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v11, "android.intent.action.MAIN"

    .line 30
    .line 31
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v11, "android.intent.category.LAUNCHER"

    .line 35
    .line 36
    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object v11, v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    const v12, 0xc2200

    .line 42
    .line 43
    .line 44
    invoke-virtual {v11, v10, v12, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    new-instance v11, Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    if-eqz v12, :cond_0

    .line 62
    .line 63
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 68
    .line 69
    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 70
    .line 71
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    new-instance v12, Landroid/util/ArraySet;

    .line 82
    .line 83
    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const-string v13, "Provisioning type "

    .line 90
    .line 91
    const-string v14, " not supported."

    .line 92
    .line 93
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v15

    .line 97
    sparse-switch v15, :sswitch_data_0

    .line 98
    .line 99
    .line 100
    :goto_1
    const/4 v15, -0x1

    .line 101
    goto :goto_2

    .line 102
    :sswitch_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    if-nez v15, :cond_1

    .line 107
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

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    if-nez v15, :cond_2

    .line 116
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

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    if-nez v15, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    const/4 v15, 0x0

    .line 128
    :goto_2
    packed-switch v15, :pswitch_data_0

    .line 129
    .line 130
    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    invoke-static {v13, v2, v14}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :pswitch_0
    const v15, 0x10701f7

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :pswitch_1
    const v15, 0x10701f8

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :pswitch_2
    const v15, 0x10701f6

    .line 150
    .line 151
    .line 152
    :goto_3
    invoke-virtual {v0, v15}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 157
    .line 158
    .line 159
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    sparse-switch v15, :sswitch_data_1

    .line 164
    .line 165
    .line 166
    :goto_4
    const/4 v15, -0x1

    .line 167
    goto :goto_5

    .line 168
    :sswitch_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    if-nez v15, :cond_4

    .line 173
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

    .line 178
    .line 179
    .line 180
    move-result v15

    .line 181
    if-nez v15, :cond_5

    .line 182
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

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-nez v15, :cond_6

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_6
    const/4 v15, 0x0

    .line 194
    :goto_5
    packed-switch v15, :pswitch_data_1

    .line 195
    .line 196
    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 198
    .line 199
    invoke-static {v13, v2, v14}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :pswitch_3
    const v15, 0x1070209

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :pswitch_4
    const v15, 0x107020a

    .line 212
    .line 213
    .line 214
    goto :goto_6

    .line 215
    :pswitch_5
    const v15, 0x1070208

    .line 216
    .line 217
    .line 218
    :goto_6
    invoke-virtual {v0, v15}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    .line 219
    .line 220
    .line 221
    move-result-object v15

    .line 222
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 223
    .line 224
    .line 225
    iget-object v15, v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    .line 226
    .line 227
    const-string v3, "ATT"

    .line 228
    .line 229
    const-string v6, "AIO"

    .line 230
    .line 231
    const-string v8, "SPR"

    .line 232
    .line 233
    const-string v7, "XAS"

    .line 234
    .line 235
    const-string v1, "BST"

    .line 236
    .line 237
    move-object/from16 v17, v11

    .line 238
    .line 239
    const-string v11, "VMU"

    .line 240
    .line 241
    move-object/from16 p1, v10

    .line 242
    .line 243
    const-string v10, "TMB"

    .line 244
    .line 245
    move-object/from16 v18, v12

    .line 246
    .line 247
    const-string v12, "VZW"

    .line 248
    .line 249
    const-string v0, "VPP"

    .line 250
    .line 251
    move-object/from16 v19, v0

    .line 252
    .line 253
    const-string v0, "USC"

    .line 254
    .line 255
    move-object/from16 v20, v0

    .line 256
    .line 257
    const-string v0, "DCM"

    .line 258
    .line 259
    move-object/from16 v21, v0

    .line 260
    .line 261
    const-string v0, "SBM"

    .line 262
    .line 263
    move-object/from16 v22, v0

    .line 264
    .line 265
    const-string v0, "KDI"

    .line 266
    .line 267
    move-object/from16 v23, v0

    .line 268
    .line 269
    const-string v0, "CCT"

    .line 270
    .line 271
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 272
    .line 273
    .line 274
    move-result v24

    .line 275
    sparse-switch v24, :sswitch_data_2

    .line 276
    .line 277
    .line 278
    :goto_7
    const/16 v24, -0x1

    .line 279
    .line 280
    goto :goto_8

    .line 281
    :sswitch_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v24

    .line 285
    if-nez v24, :cond_7

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_7
    const/16 v24, 0x2

    .line 289
    .line 290
    goto :goto_8

    .line 291
    :sswitch_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v24

    .line 295
    if-nez v24, :cond_8

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_8
    const/16 v24, 0x1

    .line 299
    .line 300
    goto :goto_8

    .line 301
    :sswitch_8
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v24

    .line 305
    if-nez v24, :cond_9

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_9
    const/16 v24, 0x0

    .line 309
    .line 310
    :goto_8
    packed-switch v24, :pswitch_data_2

    .line 311
    .line 312
    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 314
    .line 315
    invoke-static {v13, v2, v14}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :pswitch_6
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v24

    .line 327
    if-nez v24, :cond_a

    .line 328
    .line 329
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v24

    .line 333
    if-eqz v24, :cond_b

    .line 334
    .line 335
    :cond_a
    move-object/from16 v25, v5

    .line 336
    .line 337
    move-object/from16 v24, v13

    .line 338
    .line 339
    move-object/from16 v13, v19

    .line 340
    .line 341
    move-object/from16 v5, v21

    .line 342
    .line 343
    move-object/from16 v2, v23

    .line 344
    .line 345
    move-object/from16 v21, v4

    .line 346
    .line 347
    move-object/from16 v19, v14

    .line 348
    .line 349
    move-object/from16 v14, v20

    .line 350
    .line 351
    move-object/from16 v4, v22

    .line 352
    .line 353
    goto/16 :goto_d

    .line 354
    .line 355
    :cond_b
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v24

    .line 359
    if-nez v24, :cond_c

    .line 360
    .line 361
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v24

    .line 365
    if-nez v24, :cond_c

    .line 366
    .line 367
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v24

    .line 371
    if-nez v24, :cond_c

    .line 372
    .line 373
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v24

    .line 377
    if-eqz v24, :cond_d

    .line 378
    .line 379
    :cond_c
    move-object/from16 v25, v5

    .line 380
    .line 381
    move-object/from16 v24, v13

    .line 382
    .line 383
    move-object/from16 v13, v19

    .line 384
    .line 385
    move-object/from16 v5, v21

    .line 386
    .line 387
    move-object/from16 v2, v23

    .line 388
    .line 389
    move-object/from16 v21, v4

    .line 390
    .line 391
    move-object/from16 v19, v14

    .line 392
    .line 393
    move-object/from16 v14, v20

    .line 394
    .line 395
    move-object/from16 v4, v22

    .line 396
    .line 397
    goto/16 :goto_c

    .line 398
    .line 399
    :cond_d
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v24

    .line 403
    if-eqz v24, :cond_e

    .line 404
    .line 405
    const v24, 0x1070038

    .line 406
    .line 407
    .line 408
    move-object/from16 v25, v5

    .line 409
    .line 410
    move-object/from16 v5, v21

    .line 411
    .line 412
    move-object/from16 v2, v23

    .line 413
    .line 414
    move-object/from16 v21, v4

    .line 415
    .line 416
    move-object/from16 v4, v22

    .line 417
    .line 418
    move/from16 v29, v24

    .line 419
    .line 420
    move-object/from16 v24, v13

    .line 421
    .line 422
    move-object/from16 v13, v19

    .line 423
    .line 424
    move-object/from16 v19, v14

    .line 425
    .line 426
    move-object/from16 v14, v20

    .line 427
    .line 428
    move/from16 v20, v29

    .line 429
    .line 430
    goto/16 :goto_e

    .line 431
    .line 432
    :cond_e
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v24

    .line 436
    if-nez v24, :cond_15

    .line 437
    .line 438
    move-object/from16 v24, v13

    .line 439
    .line 440
    move-object/from16 v13, v19

    .line 441
    .line 442
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v19

    .line 446
    if-eqz v19, :cond_f

    .line 447
    .line 448
    move-object/from16 v25, v5

    .line 449
    .line 450
    move-object/from16 v19, v14

    .line 451
    .line 452
    move-object/from16 v14, v20

    .line 453
    .line 454
    move-object/from16 v5, v21

    .line 455
    .line 456
    move-object/from16 v2, v23

    .line 457
    .line 458
    move-object/from16 v21, v4

    .line 459
    .line 460
    :goto_9
    move-object/from16 v4, v22

    .line 461
    .line 462
    goto/16 :goto_b

    .line 463
    .line 464
    :cond_f
    move-object/from16 v19, v14

    .line 465
    .line 466
    move-object/from16 v14, v20

    .line 467
    .line 468
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v20

    .line 472
    if-eqz v20, :cond_10

    .line 473
    .line 474
    const v20, 0x1070039

    .line 475
    .line 476
    .line 477
    move-object/from16 v25, v5

    .line 478
    .line 479
    move-object/from16 v5, v21

    .line 480
    .line 481
    move-object/from16 v2, v23

    .line 482
    .line 483
    move-object/from16 v21, v4

    .line 484
    .line 485
    move-object/from16 v4, v22

    .line 486
    .line 487
    goto :goto_e

    .line 488
    :cond_10
    move-object/from16 v25, v5

    .line 489
    .line 490
    move-object/from16 v5, v21

    .line 491
    .line 492
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v20

    .line 496
    if-eqz v20, :cond_11

    .line 497
    .line 498
    const v20, 0x1070033

    .line 499
    .line 500
    .line 501
    move-object/from16 v21, v4

    .line 502
    .line 503
    move-object/from16 v4, v22

    .line 504
    .line 505
    :goto_a
    move-object/from16 v2, v23

    .line 506
    .line 507
    goto :goto_e

    .line 508
    :cond_11
    move-object/from16 v21, v4

    .line 509
    .line 510
    move-object/from16 v4, v22

    .line 511
    .line 512
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v20

    .line 516
    if-eqz v20, :cond_12

    .line 517
    .line 518
    const v20, 0x1070036

    .line 519
    .line 520
    .line 521
    goto :goto_a

    .line 522
    :cond_12
    move-object/from16 v2, v23

    .line 523
    .line 524
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v20

    .line 528
    if-eqz v20, :cond_13

    .line 529
    .line 530
    const v20, 0x1070035

    .line 531
    .line 532
    .line 533
    goto :goto_e

    .line 534
    :cond_13
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v20

    .line 538
    if-eqz v20, :cond_14

    .line 539
    .line 540
    const v20, 0x1070032

    .line 541
    .line 542
    .line 543
    goto :goto_e

    .line 544
    :cond_14
    const v20, 0x1070034

    .line 545
    .line 546
    .line 547
    goto :goto_e

    .line 548
    :cond_15
    move-object/from16 v25, v5

    .line 549
    .line 550
    move-object/from16 v24, v13

    .line 551
    .line 552
    move-object/from16 v13, v19

    .line 553
    .line 554
    move-object/from16 v5, v21

    .line 555
    .line 556
    move-object/from16 v2, v23

    .line 557
    .line 558
    move-object/from16 v21, v4

    .line 559
    .line 560
    move-object/from16 v19, v14

    .line 561
    .line 562
    move-object/from16 v14, v20

    .line 563
    .line 564
    goto :goto_9

    .line 565
    :goto_b
    const v20, 0x107003a

    .line 566
    .line 567
    .line 568
    goto :goto_e

    .line 569
    :goto_c
    const v20, 0x1070037

    .line 570
    .line 571
    .line 572
    goto :goto_e

    .line 573
    :goto_d
    const v20, 0x1070031

    .line 574
    .line 575
    .line 576
    :goto_e
    move-object/from16 v23, v2

    .line 577
    .line 578
    :goto_f
    move/from16 v29, v20

    .line 579
    .line 580
    move-object/from16 v20, v1

    .line 581
    .line 582
    move/from16 v1, v29

    .line 583
    .line 584
    goto/16 :goto_15

    .line 585
    .line 586
    :pswitch_7
    move-object/from16 v25, v5

    .line 587
    .line 588
    move-object/from16 v24, v13

    .line 589
    .line 590
    move-object/from16 v13, v19

    .line 591
    .line 592
    move-object/from16 v5, v21

    .line 593
    .line 594
    move-object/from16 v2, v23

    .line 595
    .line 596
    move-object/from16 v21, v4

    .line 597
    .line 598
    move-object/from16 v19, v14

    .line 599
    .line 600
    move-object/from16 v14, v20

    .line 601
    .line 602
    move-object/from16 v4, v22

    .line 603
    .line 604
    const v20, 0x107003b

    .line 605
    .line 606
    .line 607
    goto :goto_f

    .line 608
    :pswitch_8
    move-object/from16 v25, v5

    .line 609
    .line 610
    move-object/from16 v24, v13

    .line 611
    .line 612
    move-object/from16 v13, v19

    .line 613
    .line 614
    move-object/from16 v5, v21

    .line 615
    .line 616
    move-object/from16 v2, v23

    .line 617
    .line 618
    move-object/from16 v21, v4

    .line 619
    .line 620
    move-object/from16 v19, v14

    .line 621
    .line 622
    move-object/from16 v14, v20

    .line 623
    .line 624
    move-object/from16 v4, v22

    .line 625
    .line 626
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v20

    .line 630
    if-nez v20, :cond_16

    .line 631
    .line 632
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v20

    .line 636
    if-eqz v20, :cond_17

    .line 637
    .line 638
    :cond_16
    move-object/from16 v20, v1

    .line 639
    .line 640
    goto/16 :goto_13

    .line 641
    .line 642
    :cond_17
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v20

    .line 646
    if-nez v20, :cond_18

    .line 647
    .line 648
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v20

    .line 652
    if-nez v20, :cond_18

    .line 653
    .line 654
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v20

    .line 658
    if-nez v20, :cond_18

    .line 659
    .line 660
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v20

    .line 664
    if-eqz v20, :cond_19

    .line 665
    .line 666
    :cond_18
    move-object/from16 v20, v1

    .line 667
    .line 668
    goto/16 :goto_12

    .line 669
    .line 670
    :cond_19
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v20

    .line 674
    if-nez v20, :cond_22

    .line 675
    .line 676
    move-object/from16 v20, v1

    .line 677
    .line 678
    const-string v1, "TMK"

    .line 679
    .line 680
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v1

    .line 684
    if-eqz v1, :cond_1a

    .line 685
    .line 686
    goto :goto_11

    .line 687
    :cond_1a
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    if-nez v1, :cond_21

    .line 692
    .line 693
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    if-eqz v1, :cond_1b

    .line 698
    .line 699
    goto :goto_10

    .line 700
    :cond_1b
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    if-eqz v1, :cond_1c

    .line 705
    .line 706
    const v1, 0x107002f

    .line 707
    .line 708
    .line 709
    goto :goto_14

    .line 710
    :cond_1c
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v1

    .line 714
    if-eqz v1, :cond_1d

    .line 715
    .line 716
    const v1, 0x1070029

    .line 717
    .line 718
    .line 719
    goto :goto_14

    .line 720
    :cond_1d
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 721
    .line 722
    .line 723
    move-result v1

    .line 724
    if-eqz v1, :cond_1e

    .line 725
    .line 726
    const v1, 0x107002c

    .line 727
    .line 728
    .line 729
    goto :goto_14

    .line 730
    :cond_1e
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    move-result v1

    .line 734
    if-eqz v1, :cond_1f

    .line 735
    .line 736
    const v1, 0x107002b

    .line 737
    .line 738
    .line 739
    goto :goto_14

    .line 740
    :cond_1f
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    move-result v1

    .line 744
    if-eqz v1, :cond_20

    .line 745
    .line 746
    const v1, 0x1070028

    .line 747
    .line 748
    .line 749
    goto :goto_14

    .line 750
    :cond_20
    const v1, 0x107002a

    .line 751
    .line 752
    .line 753
    goto :goto_14

    .line 754
    :cond_21
    :goto_10
    const v1, 0x1070030

    .line 755
    .line 756
    .line 757
    goto :goto_14

    .line 758
    :cond_22
    move-object/from16 v20, v1

    .line 759
    .line 760
    :goto_11
    const v1, 0x107002e

    .line 761
    .line 762
    .line 763
    goto :goto_14

    .line 764
    :goto_12
    const v1, 0x107002d

    .line 765
    .line 766
    .line 767
    goto :goto_14

    .line 768
    :goto_13
    const v1, 0x1070027

    .line 769
    .line 770
    .line 771
    :goto_14
    move-object/from16 v23, v2

    .line 772
    .line 773
    :goto_15
    new-instance v2, Landroid/util/ArraySet;

    .line 774
    .line 775
    move-object/from16 v22, v0

    .line 776
    .line 777
    move-object/from16 v26, v4

    .line 778
    .line 779
    move-object v0, v13

    .line 780
    move-object/from16 v13, p0

    .line 781
    .line 782
    iget-object v4, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 783
    .line 784
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 785
    .line 786
    .line 787
    move-result-object v4

    .line 788
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v1

    .line 792
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 797
    .line 798
    .line 799
    move-object/from16 v1, v18

    .line 800
    .line 801
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 802
    .line 803
    .line 804
    move-object/from16 v2, p1

    .line 805
    .line 806
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-object/from16 v2, v17

    .line 810
    .line 811
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 812
    .line 813
    .line 814
    iget-object v1, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 815
    .line 816
    move/from16 v4, p2

    .line 817
    .line 818
    move-object/from16 v17, v5

    .line 819
    .line 820
    move-object/from16 v5, v20

    .line 821
    .line 822
    invoke-interface {v1, v4}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getInputMethodListAsUser(I)Ljava/util/List;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    move-object/from16 v18, v1

    .line 827
    .line 828
    new-instance v1, Landroid/util/ArraySet;

    .line 829
    .line 830
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 831
    .line 832
    .line 833
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 834
    .line 835
    .line 836
    move-result-object v4

    .line 837
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 838
    .line 839
    .line 840
    move-result v20

    .line 841
    if-eqz v20, :cond_24

    .line 842
    .line 843
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v20

    .line 847
    check-cast v20, Landroid/view/inputmethod/InputMethodInfo;

    .line 848
    .line 849
    move-object/from16 p1, v4

    .line 850
    .line 851
    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 852
    .line 853
    .line 854
    move-result-object v4

    .line 855
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 856
    .line 857
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 858
    .line 859
    .line 860
    move-result v4

    .line 861
    if-eqz v4, :cond_23

    .line 862
    .line 863
    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v4

    .line 867
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    :cond_23
    move-object/from16 v4, p1

    .line 871
    .line 872
    goto :goto_16

    .line 873
    :cond_24
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 874
    .line 875
    .line 876
    new-instance v1, Landroid/util/ArraySet;

    .line 877
    .line 878
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 879
    .line 880
    .line 881
    move-object/from16 v4, p3

    .line 882
    .line 883
    move-object/from16 v27, v23

    .line 884
    .line 885
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result v20

    .line 889
    if-eqz v20, :cond_27

    .line 890
    .line 891
    const-string/jumbo v20, "persist.ril.config.defaultmsgapp"

    .line 892
    .line 893
    .line 894
    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v20

    .line 898
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 899
    .line 900
    .line 901
    move-result v23

    .line 902
    if-eqz v23, :cond_26

    .line 903
    .line 904
    move-object/from16 v23, v14

    .line 905
    .line 906
    const-string/jumbo v14, "defaultmsgapp empty"

    .line 907
    .line 908
    .line 909
    move-object/from16 p1, v0

    .line 910
    .line 911
    const-string v0, "OverlayPackagesProvider"

    .line 912
    .line 913
    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    .line 915
    .line 916
    iget-object v14, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 917
    .line 918
    invoke-static {v14}, Lcom/android/internal/telephony/SmsApplication;->setDefaultMessageAppConfig(Landroid/content/Context;)V

    .line 919
    .line 920
    .line 921
    iget-object v14, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 922
    .line 923
    move-object/from16 v28, v12

    .line 924
    .line 925
    const/4 v12, 0x1

    .line 926
    invoke-static {v14, v12}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 927
    .line 928
    .line 929
    move-result-object v14

    .line 930
    if-eqz v14, :cond_25

    .line 931
    .line 932
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v14

    .line 936
    const-string/jumbo v12, "getDefaultSmsApplication = "

    .line 937
    .line 938
    .line 939
    invoke-static {v12, v14, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    goto :goto_18

    .line 943
    :cond_25
    const-string/jumbo v12, "getDefaultSmsApplication returned null"

    .line 944
    .line 945
    .line 946
    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    .line 948
    .line 949
    goto :goto_17

    .line 950
    :cond_26
    move-object/from16 p1, v0

    .line 951
    .line 952
    move-object/from16 v28, v12

    .line 953
    .line 954
    move-object/from16 v23, v14

    .line 955
    .line 956
    :goto_17
    move-object/from16 v14, v20

    .line 957
    .line 958
    :goto_18
    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    goto :goto_19

    .line 962
    :cond_27
    move-object/from16 p1, v0

    .line 963
    .line 964
    move-object/from16 v28, v12

    .line 965
    .line 966
    move-object/from16 v23, v14

    .line 967
    .line 968
    :goto_19
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 969
    .line 970
    .line 971
    new-instance v0, Landroid/util/ArraySet;

    .line 972
    .line 973
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 974
    .line 975
    .line 976
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 977
    .line 978
    .line 979
    move-result v1

    .line 980
    sparse-switch v1, :sswitch_data_3

    .line 981
    .line 982
    .line 983
    move-object/from16 v1, v21

    .line 984
    .line 985
    :goto_1a
    move-object/from16 v12, v25

    .line 986
    .line 987
    :goto_1b
    const/4 v14, -0x1

    .line 988
    goto :goto_1d

    .line 989
    :sswitch_9
    move-object/from16 v1, v21

    .line 990
    .line 991
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 992
    .line 993
    .line 994
    move-result v12

    .line 995
    if-nez v12, :cond_28

    .line 996
    .line 997
    goto :goto_1a

    .line 998
    :cond_28
    move-object/from16 v12, v25

    .line 999
    .line 1000
    const/4 v14, 0x2

    .line 1001
    goto :goto_1d

    .line 1002
    :sswitch_a
    move-object/from16 v1, v21

    .line 1003
    .line 1004
    move-object/from16 v12, v25

    .line 1005
    .line 1006
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    move-result v14

    .line 1010
    if-nez v14, :cond_29

    .line 1011
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

    .line 1016
    .line 1017
    move-object/from16 v12, v25

    .line 1018
    .line 1019
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1020
    .line 1021
    .line 1022
    move-result v14

    .line 1023
    if-nez v14, :cond_2a

    .line 1024
    .line 1025
    :goto_1c
    goto :goto_1b

    .line 1026
    :cond_2a
    const/4 v14, 0x0

    .line 1027
    :goto_1d
    packed-switch v14, :pswitch_data_3

    .line 1028
    .line 1029
    .line 1030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1031
    .line 1032
    move-object/from16 v1, v19

    .line 1033
    .line 1034
    move-object/from16 v14, v24

    .line 1035
    .line 1036
    invoke-static {v14, v4, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v1

    .line 1040
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    throw v0

    .line 1044
    :pswitch_9
    move-object/from16 v14, v24

    .line 1045
    .line 1046
    move-object/from16 v29, v19

    .line 1047
    .line 1048
    move-object/from16 v19, v2

    .line 1049
    .line 1050
    move-object/from16 v2, v29

    .line 1051
    .line 1052
    const v20, 0x10701e2

    .line 1053
    .line 1054
    .line 1055
    :goto_1e
    move-object/from16 v21, v10

    .line 1056
    .line 1057
    move/from16 v10, v20

    .line 1058
    .line 1059
    goto :goto_1f

    .line 1060
    :pswitch_a
    move-object/from16 v14, v24

    .line 1061
    .line 1062
    move-object/from16 v29, v19

    .line 1063
    .line 1064
    move-object/from16 v19, v2

    .line 1065
    .line 1066
    move-object/from16 v2, v29

    .line 1067
    .line 1068
    const v20, 0x10701e3

    .line 1069
    .line 1070
    .line 1071
    goto :goto_1e

    .line 1072
    :pswitch_b
    move-object/from16 v14, v24

    .line 1073
    .line 1074
    move-object/from16 v29, v19

    .line 1075
    .line 1076
    move-object/from16 v19, v2

    .line 1077
    .line 1078
    move-object/from16 v2, v29

    .line 1079
    .line 1080
    const v20, 0x10701e1

    .line 1081
    .line 1082
    .line 1083
    goto :goto_1e

    .line 1084
    :goto_1f
    invoke-virtual {v13, v10}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v10

    .line 1088
    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 1092
    .line 1093
    .line 1094
    move-result v10

    .line 1095
    sparse-switch v10, :sswitch_data_4

    .line 1096
    .line 1097
    .line 1098
    :goto_20
    const/4 v10, -0x1

    .line 1099
    goto :goto_21

    .line 1100
    :sswitch_c
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v10

    .line 1104
    if-nez v10, :cond_2b

    .line 1105
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

    .line 1110
    .line 1111
    .line 1112
    move-result v10

    .line 1113
    if-nez v10, :cond_2c

    .line 1114
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

    .line 1119
    .line 1120
    .line 1121
    move-result v10

    .line 1122
    if-nez v10, :cond_2d

    .line 1123
    .line 1124
    goto :goto_20

    .line 1125
    :cond_2d
    const/4 v10, 0x0

    .line 1126
    :goto_21
    packed-switch v10, :pswitch_data_4

    .line 1127
    .line 1128
    .line 1129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1130
    .line 1131
    invoke-static {v14, v4, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v1

    .line 1135
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    throw v0

    .line 1139
    :pswitch_c
    const v10, 0x1070205

    .line 1140
    .line 1141
    .line 1142
    goto :goto_22

    .line 1143
    :pswitch_d
    const v10, 0x1070206

    .line 1144
    .line 1145
    .line 1146
    goto :goto_22

    .line 1147
    :pswitch_e
    const v10, 0x1070204

    .line 1148
    .line 1149
    .line 1150
    :goto_22
    invoke-virtual {v13, v10}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v10

    .line 1154
    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 1158
    .line 1159
    .line 1160
    move-result v10

    .line 1161
    sparse-switch v10, :sswitch_data_5

    .line 1162
    .line 1163
    .line 1164
    :goto_23
    const/16 v16, -0x1

    .line 1165
    .line 1166
    goto :goto_24

    .line 1167
    :sswitch_f
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v1

    .line 1171
    if-nez v1, :cond_2e

    .line 1172
    .line 1173
    goto :goto_23

    .line 1174
    :cond_2e
    const/16 v16, 0x2

    .line 1175
    .line 1176
    goto :goto_24

    .line 1177
    :sswitch_10
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1178
    .line 1179
    .line 1180
    move-result v1

    .line 1181
    if-nez v1, :cond_2f

    .line 1182
    .line 1183
    goto :goto_23

    .line 1184
    :cond_2f
    const/16 v16, 0x1

    .line 1185
    .line 1186
    goto :goto_24

    .line 1187
    :sswitch_11
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1188
    .line 1189
    .line 1190
    move-result v1

    .line 1191
    if-nez v1, :cond_30

    .line 1192
    .line 1193
    goto :goto_23

    .line 1194
    :cond_30
    const/16 v16, 0x0

    .line 1195
    .line 1196
    :goto_24
    packed-switch v16, :pswitch_data_5

    .line 1197
    .line 1198
    .line 1199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1200
    .line 1201
    invoke-static {v14, v4, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v1

    .line 1205
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    throw v0

    .line 1209
    :pswitch_f
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1210
    .line 1211
    .line 1212
    move-result v1

    .line 1213
    if-nez v1, :cond_3c

    .line 1214
    .line 1215
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1216
    .line 1217
    .line 1218
    move-result v1

    .line 1219
    if-eqz v1, :cond_31

    .line 1220
    .line 1221
    goto/16 :goto_27

    .line 1222
    .line 1223
    :cond_31
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1224
    .line 1225
    .line 1226
    move-result v1

    .line 1227
    if-nez v1, :cond_3b

    .line 1228
    .line 1229
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result v1

    .line 1233
    if-nez v1, :cond_3b

    .line 1234
    .line 1235
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1236
    .line 1237
    .line 1238
    move-result v1

    .line 1239
    if-nez v1, :cond_3b

    .line 1240
    .line 1241
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1242
    .line 1243
    .line 1244
    move-result v1

    .line 1245
    if-eqz v1, :cond_32

    .line 1246
    .line 1247
    goto/16 :goto_26

    .line 1248
    .line 1249
    :cond_32
    move-object/from16 v1, v21

    .line 1250
    .line 1251
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1252
    .line 1253
    .line 1254
    move-result v1

    .line 1255
    if-eqz v1, :cond_33

    .line 1256
    .line 1257
    const v1, 0x1070022

    .line 1258
    .line 1259
    .line 1260
    goto :goto_28

    .line 1261
    :cond_33
    move-object/from16 v2, v28

    .line 1262
    .line 1263
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v1

    .line 1267
    if-nez v1, :cond_3a

    .line 1268
    .line 1269
    move-object/from16 v9, p1

    .line 1270
    .line 1271
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1272
    .line 1273
    .line 1274
    move-result v1

    .line 1275
    if-eqz v1, :cond_34

    .line 1276
    .line 1277
    goto :goto_25

    .line 1278
    :cond_34
    move-object/from16 v10, v23

    .line 1279
    .line 1280
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v1

    .line 1284
    if-eqz v1, :cond_35

    .line 1285
    .line 1286
    const v1, 0x1070023

    .line 1287
    .line 1288
    .line 1289
    goto :goto_28

    .line 1290
    :cond_35
    move-object/from16 v12, v17

    .line 1291
    .line 1292
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1293
    .line 1294
    .line 1295
    move-result v1

    .line 1296
    if-eqz v1, :cond_36

    .line 1297
    .line 1298
    const v1, 0x107001d

    .line 1299
    .line 1300
    .line 1301
    goto :goto_28

    .line 1302
    :cond_36
    move-object/from16 v14, v26

    .line 1303
    .line 1304
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1305
    .line 1306
    .line 1307
    move-result v1

    .line 1308
    if-eqz v1, :cond_37

    .line 1309
    .line 1310
    const v1, 0x1070020

    .line 1311
    .line 1312
    .line 1313
    goto :goto_28

    .line 1314
    :cond_37
    move-object/from16 v1, v27

    .line 1315
    .line 1316
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1317
    .line 1318
    .line 1319
    move-result v1

    .line 1320
    if-eqz v1, :cond_38

    .line 1321
    .line 1322
    const v1, 0x107001f

    .line 1323
    .line 1324
    .line 1325
    goto :goto_28

    .line 1326
    :cond_38
    move-object/from16 v1, v22

    .line 1327
    .line 1328
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1329
    .line 1330
    .line 1331
    move-result v1

    .line 1332
    if-eqz v1, :cond_39

    .line 1333
    .line 1334
    const v1, 0x107001c

    .line 1335
    .line 1336
    .line 1337
    goto :goto_28

    .line 1338
    :cond_39
    const v1, 0x107001e

    .line 1339
    .line 1340
    .line 1341
    goto :goto_28

    .line 1342
    :cond_3a
    :goto_25
    const v1, 0x1070024

    .line 1343
    .line 1344
    .line 1345
    goto :goto_28

    .line 1346
    :cond_3b
    :goto_26
    const v1, 0x1070021

    .line 1347
    .line 1348
    .line 1349
    goto :goto_28

    .line 1350
    :cond_3c
    :goto_27
    const v1, 0x107001b

    .line 1351
    .line 1352
    .line 1353
    :goto_28
    move-object/from16 p1, v0

    .line 1354
    .line 1355
    goto/16 :goto_2d

    .line 1356
    .line 1357
    :pswitch_10
    const v1, 0x1070025

    .line 1358
    .line 1359
    .line 1360
    goto :goto_28

    .line 1361
    :pswitch_11
    move-object/from16 v9, p1

    .line 1362
    .line 1363
    move-object/from16 p1, v0

    .line 1364
    .line 1365
    move-object/from16 v12, v17

    .line 1366
    .line 1367
    move-object/from16 v1, v21

    .line 1368
    .line 1369
    move-object/from16 v0, v22

    .line 1370
    .line 1371
    move-object/from16 v10, v23

    .line 1372
    .line 1373
    move-object/from16 v14, v26

    .line 1374
    .line 1375
    move-object/from16 v4, v27

    .line 1376
    .line 1377
    move-object/from16 v2, v28

    .line 1378
    .line 1379
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1380
    .line 1381
    .line 1382
    move-result v3

    .line 1383
    if-nez v3, :cond_48

    .line 1384
    .line 1385
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1386
    .line 1387
    .line 1388
    move-result v3

    .line 1389
    if-eqz v3, :cond_3d

    .line 1390
    .line 1391
    goto/16 :goto_2c

    .line 1392
    .line 1393
    :cond_3d
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1394
    .line 1395
    .line 1396
    move-result v3

    .line 1397
    if-nez v3, :cond_47

    .line 1398
    .line 1399
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1400
    .line 1401
    .line 1402
    move-result v3

    .line 1403
    if-nez v3, :cond_47

    .line 1404
    .line 1405
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v3

    .line 1409
    if-nez v3, :cond_47

    .line 1410
    .line 1411
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v3

    .line 1415
    if-eqz v3, :cond_3e

    .line 1416
    .line 1417
    goto :goto_2b

    .line 1418
    :cond_3e
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v1

    .line 1422
    if-eqz v1, :cond_3f

    .line 1423
    .line 1424
    const v0, 0x1070018

    .line 1425
    .line 1426
    .line 1427
    :goto_29
    move v1, v0

    .line 1428
    goto :goto_2d

    .line 1429
    :cond_3f
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1430
    .line 1431
    .line 1432
    move-result v1

    .line 1433
    if-nez v1, :cond_46

    .line 1434
    .line 1435
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1436
    .line 1437
    .line 1438
    move-result v1

    .line 1439
    if-eqz v1, :cond_40

    .line 1440
    .line 1441
    goto :goto_2a

    .line 1442
    :cond_40
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1443
    .line 1444
    .line 1445
    move-result v1

    .line 1446
    if-eqz v1, :cond_41

    .line 1447
    .line 1448
    const v0, 0x1070019

    .line 1449
    .line 1450
    .line 1451
    goto :goto_29

    .line 1452
    :cond_41
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1453
    .line 1454
    .line 1455
    move-result v1

    .line 1456
    if-eqz v1, :cond_42

    .line 1457
    .line 1458
    const v0, 0x1070013

    .line 1459
    .line 1460
    .line 1461
    goto :goto_29

    .line 1462
    :cond_42
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1463
    .line 1464
    .line 1465
    move-result v1

    .line 1466
    if-eqz v1, :cond_43

    .line 1467
    .line 1468
    const v0, 0x1070016

    .line 1469
    .line 1470
    .line 1471
    goto :goto_29

    .line 1472
    :cond_43
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1473
    .line 1474
    .line 1475
    move-result v1

    .line 1476
    if-eqz v1, :cond_44

    .line 1477
    .line 1478
    const v0, 0x1070015

    .line 1479
    .line 1480
    .line 1481
    goto :goto_29

    .line 1482
    :cond_44
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v0

    .line 1486
    if-eqz v0, :cond_45

    .line 1487
    .line 1488
    const v0, 0x1070012

    .line 1489
    .line 1490
    .line 1491
    goto :goto_29

    .line 1492
    :cond_45
    const v0, 0x1070014

    .line 1493
    .line 1494
    .line 1495
    goto :goto_29

    .line 1496
    :cond_46
    :goto_2a
    const v0, 0x107001a

    .line 1497
    .line 1498
    .line 1499
    goto :goto_29

    .line 1500
    :cond_47
    :goto_2b
    const v0, 0x1070017

    .line 1501
    .line 1502
    .line 1503
    goto :goto_29

    .line 1504
    :cond_48
    :goto_2c
    const v0, 0x1070011

    .line 1505
    .line 1506
    .line 1507
    goto :goto_29

    .line 1508
    :goto_2d
    new-instance v0, Landroid/util/ArraySet;

    .line 1509
    .line 1510
    iget-object v2, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 1511
    .line 1512
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v2

    .line 1516
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v1

    .line 1520
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v1

    .line 1524
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1525
    .line 1526
    .line 1527
    move-object/from16 v1, p1

    .line 1528
    .line 1529
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1530
    .line 1531
    .line 1532
    move-object/from16 v0, v19

    .line 1533
    .line 1534
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1535
    .line 1536
    .line 1537
    new-instance v1, Ljava/util/HashSet;

    .line 1538
    .line 1539
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v2

    .line 1546
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1547
    .line 1548
    .line 1549
    move-result v3

    .line 1550
    if-eqz v3, :cond_4d

    .line 1551
    .line 1552
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v3

    .line 1556
    check-cast v3, Ljava/lang/String;

    .line 1557
    .line 1558
    :try_start_0
    iget-object v4, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1559
    .line 1560
    const/4 v5, 0x0

    .line 1561
    :try_start_1
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1562
    .line 1563
    .line 1564
    move-object/from16 v4, v18

    .line 1565
    .line 1566
    goto :goto_31

    .line 1567
    :catch_0
    :goto_2f
    move-object/from16 v4, v18

    .line 1568
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

    .line 1573
    .line 1574
    .line 1575
    move-result-object v6

    .line 1576
    if-eqz v6, :cond_4c

    .line 1577
    .line 1578
    :goto_31
    :try_start_2
    iget-object v6, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    .line 1579
    .line 1580
    const/16 v7, 0x80

    .line 1581
    .line 1582
    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1586
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1587
    .line 1588
    if-eqz v7, :cond_49

    .line 1589
    .line 1590
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1591
    .line 1592
    if-nez v7, :cond_4a

    .line 1593
    .line 1594
    :catch_2
    :cond_49
    move-object/from16 v8, p3

    .line 1595
    .line 1596
    goto :goto_32

    .line 1597
    :cond_4a
    sget-object v7, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    .line 1598
    .line 1599
    check-cast v7, Ljava/util/HashMap;

    .line 1600
    .line 1601
    move-object/from16 v8, p3

    .line 1602
    .line 1603
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v7

    .line 1607
    check-cast v7, Ljava/lang/String;

    .line 1608
    .line 1609
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1610
    .line 1611
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1612
    .line 1613
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 1614
    .line 1615
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

    .line 1620
    .line 1621
    :goto_34
    move-object/from16 v18, v4

    .line 1622
    .line 1623
    goto :goto_2e

    .line 1624
    :cond_4b
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1625
    .line 1626
    .line 1627
    goto :goto_34

    .line 1628
    :cond_4c
    move-object/from16 v8, p3

    .line 1629
    .line 1630
    goto :goto_34

    .line 1631
    :cond_4d
    move-object/from16 v4, v18

    .line 1632
    .line 1633
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 1634
    .line 1635
    .line 1636
    new-instance v1, Ljava/util/HashSet;

    .line 1637
    .line 1638
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1639
    .line 1640
    .line 1641
    iget-object v2, v13, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 1642
    .line 1643
    invoke-interface {v4, v2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getDevicePolicyManagementRoleHolderPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v2

    .line 1647
    if-eqz v2, :cond_4e

    .line 1648
    .line 1649
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1650
    .line 1651
    .line 1652
    :cond_4e
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 1653
    .line 1654
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

    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    :sswitch_data_1
    .sparse-switch
        -0x36de2734 -> :sswitch_5
        -0x1ea9303f -> :sswitch_4
        -0x1450e22d -> :sswitch_3
    .end sparse-switch

    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    :sswitch_data_2
    .sparse-switch
        -0x36de2734 -> :sswitch_8
        -0x1ea9303f -> :sswitch_7
        -0x1450e22d -> :sswitch_6
    .end sparse-switch

    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    :sswitch_data_3
    .sparse-switch
        -0x36de2734 -> :sswitch_b
        -0x1ea9303f -> :sswitch_a
        -0x1450e22d -> :sswitch_9
    .end sparse-switch

    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    :sswitch_data_4
    .sparse-switch
        -0x36de2734 -> :sswitch_e
        -0x1ea9303f -> :sswitch_d
        -0x1450e22d -> :sswitch_c
    .end sparse-switch

    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    :sswitch_data_5
    .sparse-switch
        -0x36de2734 -> :sswitch_11
        -0x1ea9303f -> :sswitch_10
        -0x1450e22d -> :sswitch_f
    .end sparse-switch

    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mRecursiveStringArrayResourceResolver:Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;->resolve(ILjava/lang/String;Ljava/util/Collection;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method
