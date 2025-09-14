.class public final Lcom/android/server/devicepolicy/PolicyDefinition;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final POLICY_DEFINITIONS:Ljava/util/Map;

.field public static final SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

.field public static final USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final USER_RESTRICTION_FLAGS:Ljava/util/Map;


# instance fields
.field public final mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

.field public final mPolicyFlags:I

.field public final mPolicyKey:Landroid/app/admin/PolicyKey;

.field public final mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

.field public final mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;


# direct methods
.method static constructor <clinit>()V
    .locals 61

    .line 1
    new-instance v2, Lcom/android/server/devicepolicy/MostRestrictive;

    .line 2
    .line 3
    new-instance v0, Landroid/app/admin/BooleanPolicyValue;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v7

    .line 10
    invoke-direct {v0, v6}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    invoke-direct {v1, v3}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v2, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/android/server/devicepolicy/MostRestrictive;

    .line 31
    .line 32
    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    .line 33
    .line 34
    invoke-direct {v1, v3}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Landroid/app/admin/BooleanPolicyValue;

    .line 38
    .line 39
    invoke-direct {v4, v6}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 50
    .line 51
    new-instance v15, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 52
    .line 53
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 54
    .line 55
    const-string v5, "autoTimezone"

    .line 56
    .line 57
    invoke-direct {v10, v5}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-direct {v13, v1}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v14, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 67
    .line 68
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    const/4 v12, 0x1

    .line 72
    move-object v9, v15

    .line 73
    move-object v11, v0

    .line 74
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 75
    .line 76
    .line 77
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 78
    .line 79
    new-instance v1, Landroid/app/admin/PackagePermissionPolicyKey;

    .line 80
    .line 81
    const-string/jumbo v14, "permissionGrant"

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v14}, Landroid/app/admin/PackagePermissionPolicyKey;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v9, Lcom/android/server/devicepolicy/MostRestrictive;

    .line 88
    .line 89
    new-instance v10, Landroid/app/admin/IntegerPolicyValue;

    .line 90
    .line 91
    const/4 v11, 0x2

    .line 92
    invoke-direct {v10, v11}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 93
    .line 94
    .line 95
    new-instance v11, Landroid/app/admin/IntegerPolicyValue;

    .line 96
    .line 97
    invoke-direct {v11, v3}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 98
    .line 99
    .line 100
    new-instance v3, Landroid/app/admin/IntegerPolicyValue;

    .line 101
    .line 102
    invoke-direct {v3, v6}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-static {v10, v11, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-direct {v9, v3}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 113
    .line 114
    const/16 v10, 0x12

    .line 115
    .line 116
    invoke-direct {v3, v10}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 117
    .line 118
    .line 119
    new-instance v21, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 120
    .line 121
    invoke-direct/range {v21 .. v21}, Ljava/lang/Object;-><init>()V

    .line 122
    .line 123
    .line 124
    const/16 v19, 0x2

    .line 125
    .line 126
    move-object/from16 v16, v4

    .line 127
    .line 128
    move-object/from16 v17, v1

    .line 129
    .line 130
    move-object/from16 v18, v9

    .line 131
    .line 132
    move-object/from16 v20, v3

    .line 133
    .line 134
    invoke-direct/range {v16 .. v21}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 135
    .line 136
    .line 137
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 138
    .line 139
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 140
    .line 141
    const-string/jumbo v1, "securityLogging"

    .line 142
    .line 143
    .line 144
    invoke-direct {v10, v1}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 148
    .line 149
    const/4 v9, 0x1

    .line 150
    invoke-direct {v13, v9}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 151
    .line 152
    .line 153
    new-instance v16, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 154
    .line 155
    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    .line 156
    .line 157
    .line 158
    const/4 v12, 0x1

    .line 159
    move-object v9, v3

    .line 160
    move-object v11, v0

    .line 161
    move-object/from16 v22, v14

    .line 162
    .line 163
    move-object/from16 v14, v16

    .line 164
    .line 165
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 166
    .line 167
    .line 168
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 169
    .line 170
    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 171
    .line 172
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 173
    .line 174
    const-string v13, "auditLogging"

    .line 175
    .line 176
    invoke-direct {v10, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v12, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    const/4 v9, 0x2

    .line 182
    invoke-direct {v12, v9}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 183
    .line 184
    .line 185
    new-instance v16, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 186
    .line 187
    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    .line 188
    .line 189
    .line 190
    const/16 v17, 0x1

    .line 191
    .line 192
    move-object v9, v14

    .line 193
    move-object v11, v0

    .line 194
    move-object/from16 v18, v12

    .line 195
    .line 196
    move/from16 v12, v17

    .line 197
    .line 198
    move-object/from16 v23, v13

    .line 199
    .line 200
    move-object/from16 v13, v18

    .line 201
    .line 202
    move-object v6, v14

    .line 203
    move-object/from16 v14, v16

    .line 204
    .line 205
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 206
    .line 207
    .line 208
    sput-object v6, Lcom/android/server/devicepolicy/PolicyDefinition;->AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 209
    .line 210
    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 211
    .line 212
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 213
    .line 214
    const-string/jumbo v13, "lockTask"

    .line 215
    .line 216
    .line 217
    invoke-direct {v9, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    new-instance v10, Lcom/android/server/devicepolicy/TopPriority;

    .line 221
    .line 222
    const-string/jumbo v11, "role:android.app.role.SYSTEM_FINANCED_DEVICE_CONTROLLER"

    .line 223
    .line 224
    .line 225
    const-string/jumbo v12, "enterprise"

    .line 226
    .line 227
    .line 228
    move-object/from16 v16, v1

    .line 229
    .line 230
    invoke-static {v11, v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-direct {v10, v1}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    .line 235
    .line 236
    .line 237
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 238
    .line 239
    move-object/from16 v18, v3

    .line 240
    .line 241
    const/4 v3, 0x3

    .line 242
    invoke-direct {v1, v3}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 243
    .line 244
    .line 245
    new-instance v29, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;

    .line 246
    .line 247
    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    .line 248
    .line 249
    .line 250
    const/16 v27, 0x2

    .line 251
    .line 252
    move-object/from16 v24, v14

    .line 253
    .line 254
    move-object/from16 v25, v9

    .line 255
    .line 256
    move-object/from16 v26, v10

    .line 257
    .line 258
    move-object/from16 v28, v1

    .line 259
    .line 260
    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 261
    .line 262
    .line 263
    sput-object v14, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 264
    .line 265
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 266
    .line 267
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 268
    .line 269
    const-string/jumbo v10, "userControlDisabledPackages"

    .line 270
    .line 271
    .line 272
    invoke-direct {v1, v10}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    new-instance v32, Lcom/android/server/devicepolicy/PackageSetUnion;

    .line 276
    .line 277
    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    .line 278
    .line 279
    .line 280
    new-instance v9, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 281
    .line 282
    move-object/from16 v19, v4

    .line 283
    .line 284
    const/4 v4, 0x4

    .line 285
    invoke-direct {v9, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 286
    .line 287
    .line 288
    new-instance v35, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    .line 289
    .line 290
    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 291
    .line 292
    .line 293
    const/16 v33, 0x0

    .line 294
    .line 295
    move-object/from16 v30, v3

    .line 296
    .line 297
    move-object/from16 v31, v1

    .line 298
    .line 299
    move-object/from16 v34, v9

    .line 300
    .line 301
    invoke-direct/range {v30 .. v35}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 302
    .line 303
    .line 304
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 305
    .line 306
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 307
    .line 308
    new-instance v1, Landroid/app/admin/IntentFilterPolicyKey;

    .line 309
    .line 310
    const-string/jumbo v9, "persistentPreferredActivity"

    .line 311
    .line 312
    .line 313
    invoke-direct {v1, v9}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    move-object/from16 v20, v3

    .line 317
    .line 318
    new-instance v3, Lcom/android/server/devicepolicy/TopPriority;

    .line 319
    .line 320
    invoke-static {v11, v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    invoke-direct {v3, v11}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    .line 325
    .line 326
    .line 327
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 328
    .line 329
    const/4 v12, 0x5

    .line 330
    invoke-direct {v11, v12}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 331
    .line 332
    .line 333
    new-instance v29, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;

    .line 334
    .line 335
    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    .line 336
    .line 337
    .line 338
    const/16 v27, 0x2

    .line 339
    .line 340
    move-object/from16 v24, v4

    .line 341
    .line 342
    move-object/from16 v25, v1

    .line 343
    .line 344
    move-object/from16 v26, v3

    .line 345
    .line 346
    move-object/from16 v28, v11

    .line 347
    .line 348
    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 349
    .line 350
    .line 351
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 352
    .line 353
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 354
    .line 355
    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    .line 356
    .line 357
    const-string/jumbo v12, "packageUninstallBlocked"

    .line 358
    .line 359
    .line 360
    invoke-direct {v1, v12}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 364
    .line 365
    move-object/from16 v21, v4

    .line 366
    .line 367
    const/4 v4, 0x6

    .line 368
    invoke-direct {v11, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 369
    .line 370
    .line 371
    new-instance v4, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 372
    .line 373
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 374
    .line 375
    .line 376
    const/16 v24, 0x2

    .line 377
    .line 378
    move-object/from16 v36, v9

    .line 379
    .line 380
    move-object v9, v3

    .line 381
    move-object/from16 v37, v10

    .line 382
    .line 383
    move-object v10, v1

    .line 384
    move-object v1, v11

    .line 385
    move-object v11, v0

    .line 386
    move-object/from16 v25, v8

    .line 387
    .line 388
    move-object v8, v12

    .line 389
    move/from16 v12, v24

    .line 390
    .line 391
    move-object/from16 v38, v13

    .line 392
    .line 393
    move-object v13, v1

    .line 394
    move-object v1, v14

    .line 395
    move-object v14, v4

    .line 396
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 397
    .line 398
    .line 399
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 400
    .line 401
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 402
    .line 403
    new-instance v9, Landroid/app/admin/PackagePolicyKey;

    .line 404
    .line 405
    const-string v14, "applicationRestrictions"

    .line 406
    .line 407
    invoke-direct {v9, v14}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    new-instance v28, Lcom/android/server/devicepolicy/MostRecent;

    .line 411
    .line 412
    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 413
    .line 414
    .line 415
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 416
    .line 417
    const/4 v11, 0x7

    .line 418
    invoke-direct {v10, v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 419
    .line 420
    .line 421
    new-instance v31, Lcom/android/server/devicepolicy/BundlePolicySerializer;

    .line 422
    .line 423
    invoke-direct/range {v31 .. v31}, Ljava/lang/Object;-><init>()V

    .line 424
    .line 425
    .line 426
    const/16 v29, 0x2e

    .line 427
    .line 428
    move-object/from16 v26, v4

    .line 429
    .line 430
    move-object/from16 v27, v9

    .line 431
    .line 432
    move-object/from16 v30, v10

    .line 433
    .line 434
    invoke-direct/range {v26 .. v31}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 435
    .line 436
    .line 437
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 438
    .line 439
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 440
    .line 441
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 442
    .line 443
    const-string/jumbo v12, "resetPasswordToken"

    .line 444
    .line 445
    .line 446
    invoke-direct {v9, v12}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    new-instance v41, Lcom/android/server/devicepolicy/MostRecent;

    .line 450
    .line 451
    invoke-direct/range {v41 .. v41}, Ljava/lang/Object;-><init>()V

    .line 452
    .line 453
    .line 454
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 455
    .line 456
    const/16 v11, 0x8

    .line 457
    .line 458
    invoke-direct {v10, v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 459
    .line 460
    .line 461
    new-instance v44, Lcom/android/server/devicepolicy/LongPolicySerializer;

    .line 462
    .line 463
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 464
    .line 465
    .line 466
    const/16 v42, 0xa

    .line 467
    .line 468
    move-object/from16 v39, v13

    .line 469
    .line 470
    move-object/from16 v40, v9

    .line 471
    .line 472
    move-object/from16 v43, v10

    .line 473
    .line 474
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 475
    .line 476
    .line 477
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 478
    .line 479
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 480
    .line 481
    const-string/jumbo v10, "keyguardDisabledFeatures"

    .line 482
    .line 483
    .line 484
    invoke-direct {v9, v10}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    new-instance v28, Lcom/android/server/devicepolicy/FlagUnion;

    .line 488
    .line 489
    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 490
    .line 491
    .line 492
    move-object/from16 v24, v1

    .line 493
    .line 494
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 495
    .line 496
    move-object/from16 v32, v3

    .line 497
    .line 498
    const/16 v3, 0xa

    .line 499
    .line 500
    invoke-direct {v1, v3}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 501
    .line 502
    .line 503
    new-instance v31, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 504
    .line 505
    invoke-direct/range {v31 .. v31}, Ljava/lang/Object;-><init>()V

    .line 506
    .line 507
    .line 508
    const/16 v29, 0x2

    .line 509
    .line 510
    move-object/from16 v26, v11

    .line 511
    .line 512
    move-object/from16 v27, v9

    .line 513
    .line 514
    move-object/from16 v30, v1

    .line 515
    .line 516
    invoke-direct/range {v26 .. v31}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 517
    .line 518
    .line 519
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 520
    .line 521
    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    .line 522
    .line 523
    const-string v9, "applicationHidden"

    .line 524
    .line 525
    invoke-direct {v1, v9}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    move-object/from16 v26, v12

    .line 529
    .line 530
    new-instance v12, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 531
    .line 532
    move-object/from16 v27, v4

    .line 533
    .line 534
    const/16 v4, 0xb

    .line 535
    .line 536
    invoke-direct {v12, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 537
    .line 538
    .line 539
    new-instance v4, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 540
    .line 541
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 542
    .line 543
    .line 544
    const/16 v28, 0x6

    .line 545
    .line 546
    move-object/from16 v45, v9

    .line 547
    .line 548
    move-object v9, v3

    .line 549
    move-object/from16 v46, v10

    .line 550
    .line 551
    move-object v10, v1

    .line 552
    move-object v1, v11

    .line 553
    move-object v11, v0

    .line 554
    move-object/from16 v29, v7

    .line 555
    .line 556
    move-object/from16 v7, v26

    .line 557
    .line 558
    move-object/from16 v26, v12

    .line 559
    .line 560
    move/from16 v12, v28

    .line 561
    .line 562
    move-object/from16 v47, v13

    .line 563
    .line 564
    move-object/from16 v13, v26

    .line 565
    .line 566
    move-object/from16 v26, v7

    .line 567
    .line 568
    move-object v7, v14

    .line 569
    move-object v14, v4

    .line 570
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 571
    .line 572
    .line 573
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 574
    .line 575
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 576
    .line 577
    new-instance v10, Landroid/app/admin/AccountTypePolicyKey;

    .line 578
    .line 579
    const-string v14, "accountManagementDisabled"

    .line 580
    .line 581
    invoke-direct {v10, v14}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 585
    .line 586
    const/16 v9, 0xc

    .line 587
    .line 588
    invoke-direct {v13, v9}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 589
    .line 590
    .line 591
    new-instance v28, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 592
    .line 593
    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 594
    .line 595
    .line 596
    const/4 v12, 0x6

    .line 597
    move-object v9, v4

    .line 598
    move-object v11, v0

    .line 599
    move-object/from16 v48, v14

    .line 600
    .line 601
    move-object/from16 v14, v28

    .line 602
    .line 603
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 604
    .line 605
    .line 606
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 607
    .line 608
    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 609
    .line 610
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 611
    .line 612
    const-string/jumbo v13, "permittedInputMethods"

    .line 613
    .line 614
    .line 615
    invoke-direct {v9, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    new-instance v41, Lcom/android/server/devicepolicy/MostRecent;

    .line 619
    .line 620
    invoke-direct/range {v41 .. v41}, Ljava/lang/Object;-><init>()V

    .line 621
    .line 622
    .line 623
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 624
    .line 625
    const/16 v11, 0xd

    .line 626
    .line 627
    invoke-direct {v10, v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 628
    .line 629
    .line 630
    new-instance v44, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    .line 631
    .line 632
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 633
    .line 634
    .line 635
    const/16 v42, 0x6

    .line 636
    .line 637
    move-object/from16 v39, v14

    .line 638
    .line 639
    move-object/from16 v40, v9

    .line 640
    .line 641
    move-object/from16 v43, v10

    .line 642
    .line 643
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 644
    .line 645
    .line 646
    sput-object v14, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 647
    .line 648
    new-instance v12, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 649
    .line 650
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 651
    .line 652
    const-string/jumbo v11, "screenCaptureDisabled"

    .line 653
    .line 654
    .line 655
    invoke-direct {v10, v11}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    new-instance v9, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 659
    .line 660
    move-object/from16 v28, v1

    .line 661
    .line 662
    const/16 v1, 0xe

    .line 663
    .line 664
    invoke-direct {v9, v1}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 665
    .line 666
    .line 667
    new-instance v1, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 668
    .line 669
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 670
    .line 671
    .line 672
    const/16 v30, 0x4

    .line 673
    .line 674
    move-object/from16 v31, v9

    .line 675
    .line 676
    move-object v9, v12

    .line 677
    move-object/from16 v49, v11

    .line 678
    .line 679
    move-object v11, v0

    .line 680
    move-object v0, v12

    .line 681
    move/from16 v12, v30

    .line 682
    .line 683
    move-object/from16 v50, v13

    .line 684
    .line 685
    move-object/from16 v13, v31

    .line 686
    .line 687
    move-object/from16 v51, v14

    .line 688
    .line 689
    move-object v14, v1

    .line 690
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 691
    .line 692
    .line 693
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 694
    .line 695
    new-instance v9, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 696
    .line 697
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 698
    .line 699
    const-string/jumbo v10, "personalAppsSuspended"

    .line 700
    .line 701
    .line 702
    invoke-direct {v1, v10}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    new-instance v41, Lcom/android/server/devicepolicy/MostRecent;

    .line 706
    .line 707
    invoke-direct/range {v41 .. v41}, Ljava/lang/Object;-><init>()V

    .line 708
    .line 709
    .line 710
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 711
    .line 712
    const/16 v12, 0xf

    .line 713
    .line 714
    invoke-direct {v11, v12}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 715
    .line 716
    .line 717
    new-instance v44, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 718
    .line 719
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 720
    .line 721
    .line 722
    const/16 v42, 0x6

    .line 723
    .line 724
    move-object/from16 v39, v9

    .line 725
    .line 726
    move-object/from16 v40, v1

    .line 727
    .line 728
    move-object/from16 v43, v11

    .line 729
    .line 730
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 731
    .line 732
    .line 733
    sput-object v9, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 734
    .line 735
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 736
    .line 737
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 738
    .line 739
    const-string/jumbo v12, "usbDataSignaling"

    .line 740
    .line 741
    .line 742
    invoke-direct {v1, v12}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 746
    .line 747
    const/16 v14, 0x10

    .line 748
    .line 749
    invoke-direct {v13, v14}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 750
    .line 751
    .line 752
    new-instance v14, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 753
    .line 754
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 755
    .line 756
    .line 757
    const/16 v30, 0x1

    .line 758
    .line 759
    move-object/from16 v52, v0

    .line 760
    .line 761
    move-object v0, v11

    .line 762
    move-object/from16 v53, v16

    .line 763
    .line 764
    move-object/from16 v54, v24

    .line 765
    .line 766
    move-object/from16 v55, v28

    .line 767
    .line 768
    move-object/from16 v56, v3

    .line 769
    .line 770
    move-object/from16 v16, v12

    .line 771
    .line 772
    move-object/from16 v12, v18

    .line 773
    .line 774
    move-object/from16 v18, v9

    .line 775
    .line 776
    move-object/from16 v9, v20

    .line 777
    .line 778
    move-object/from16 v20, v10

    .line 779
    .line 780
    move-object/from16 v10, v32

    .line 781
    .line 782
    move/from16 v3, v30

    .line 783
    .line 784
    move-object/from16 v60, v4

    .line 785
    .line 786
    move-object/from16 v57, v19

    .line 787
    .line 788
    move-object/from16 v58, v21

    .line 789
    .line 790
    move-object/from16 v59, v27

    .line 791
    .line 792
    move-object v4, v13

    .line 793
    move-object v13, v5

    .line 794
    move-object v5, v14

    .line 795
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 796
    .line 797
    .line 798
    sput-object v11, Lcom/android/server/devicepolicy/PolicyDefinition;->USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 799
    .line 800
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 801
    .line 802
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 803
    .line 804
    const-string/jumbo v2, "contentProtection"

    .line 805
    .line 806
    .line 807
    invoke-direct {v1, v2}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    new-instance v32, Lcom/android/server/devicepolicy/MostRecent;

    .line 811
    .line 812
    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    .line 813
    .line 814
    .line 815
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 816
    .line 817
    const/16 v4, 0x11

    .line 818
    .line 819
    invoke-direct {v3, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 820
    .line 821
    .line 822
    new-instance v35, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 823
    .line 824
    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 825
    .line 826
    .line 827
    const/16 v33, 0x2

    .line 828
    .line 829
    move-object/from16 v30, v0

    .line 830
    .line 831
    move-object/from16 v31, v1

    .line 832
    .line 833
    move-object/from16 v34, v3

    .line 834
    .line 835
    invoke-direct/range {v30 .. v35}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 836
    .line 837
    .line 838
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 839
    .line 840
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 841
    .line 842
    new-instance v3, Landroid/app/admin/NoArgsPolicyKey;

    .line 843
    .line 844
    const-string/jumbo v4, "passwordComplexity"

    .line 845
    .line 846
    .line 847
    invoke-direct {v3, v4}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    new-instance v5, Lcom/android/server/devicepolicy/MostRestrictive;

    .line 851
    .line 852
    new-instance v14, Landroid/app/admin/IntegerPolicyValue;

    .line 853
    .line 854
    move-object/from16 v19, v4

    .line 855
    .line 856
    const/high16 v4, 0x50000

    .line 857
    .line 858
    invoke-direct {v14, v4}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 859
    .line 860
    .line 861
    new-instance v4, Landroid/app/admin/IntegerPolicyValue;

    .line 862
    .line 863
    move-object/from16 v21, v0

    .line 864
    .line 865
    const/high16 v0, 0x30000

    .line 866
    .line 867
    invoke-direct {v4, v0}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 868
    .line 869
    .line 870
    new-instance v0, Landroid/app/admin/IntegerPolicyValue;

    .line 871
    .line 872
    move-object/from16 v24, v2

    .line 873
    .line 874
    const/high16 v2, 0x10000

    .line 875
    .line 876
    invoke-direct {v0, v2}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 877
    .line 878
    .line 879
    new-instance v2, Landroid/app/admin/IntegerPolicyValue;

    .line 880
    .line 881
    move-object/from16 v27, v11

    .line 882
    .line 883
    const/4 v11, 0x0

    .line 884
    invoke-direct {v2, v11}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 885
    .line 886
    .line 887
    invoke-static {v14, v4, v0, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    invoke-direct {v5, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 892
    .line 893
    .line 894
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 895
    .line 896
    const/16 v2, 0xa

    .line 897
    .line 898
    invoke-direct {v0, v2}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 899
    .line 900
    .line 901
    new-instance v44, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 902
    .line 903
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 904
    .line 905
    .line 906
    const/16 v42, 0x2

    .line 907
    .line 908
    move-object/from16 v39, v1

    .line 909
    .line 910
    move-object/from16 v40, v3

    .line 911
    .line 912
    move-object/from16 v41, v5

    .line 913
    .line 914
    move-object/from16 v43, v0

    .line 915
    .line 916
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 917
    .line 918
    .line 919
    sput-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 920
    .line 921
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 922
    .line 923
    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    .line 924
    .line 925
    const-string/jumbo v3, "packagesSuspended"

    .line 926
    .line 927
    .line 928
    invoke-direct {v2, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    new-instance v32, Lcom/android/server/devicepolicy/PackageSetUnion;

    .line 932
    .line 933
    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    .line 934
    .line 935
    .line 936
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 937
    .line 938
    const/16 v5, 0xd

    .line 939
    .line 940
    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 941
    .line 942
    .line 943
    new-instance v35, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    .line 944
    .line 945
    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 946
    .line 947
    .line 948
    const/16 v33, 0x0

    .line 949
    .line 950
    move-object/from16 v30, v0

    .line 951
    .line 952
    move-object/from16 v31, v2

    .line 953
    .line 954
    move-object/from16 v34, v4

    .line 955
    .line 956
    invoke-direct/range {v30 .. v35}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 957
    .line 958
    .line 959
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 960
    .line 961
    new-instance v2, Ljava/util/HashMap;

    .line 962
    .line 963
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 964
    .line 965
    .line 966
    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 967
    .line 968
    new-instance v4, Ljava/util/HashMap;

    .line 969
    .line 970
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 971
    .line 972
    .line 973
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 974
    .line 975
    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-object/from16 v11, v22

    .line 979
    .line 980
    move-object/from16 v5, v57

    .line 981
    .line 982
    invoke-virtual {v2, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-object/from16 v5, v53

    .line 986
    .line 987
    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-object/from16 v5, v23

    .line 991
    .line 992
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-object/from16 v6, v38

    .line 996
    .line 997
    move-object/from16 v5, v54

    .line 998
    .line 999
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-object/from16 v5, v37

    .line 1003
    .line 1004
    invoke-virtual {v2, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-object/from16 v6, v36

    .line 1008
    .line 1009
    move-object/from16 v5, v58

    .line 1010
    .line 1011
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v2, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-object/from16 v5, v59

    .line 1018
    .line 1019
    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-object/from16 v6, v26

    .line 1023
    .line 1024
    move-object/from16 v5, v47

    .line 1025
    .line 1026
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-object/from16 v6, v46

    .line 1030
    .line 1031
    move-object/from16 v5, v55

    .line 1032
    .line 1033
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-object/from16 v6, v45

    .line 1037
    .line 1038
    move-object/from16 v5, v56

    .line 1039
    .line 1040
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-object/from16 v6, v48

    .line 1044
    .line 1045
    move-object/from16 v5, v60

    .line 1046
    .line 1047
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-object/from16 v6, v50

    .line 1051
    .line 1052
    move-object/from16 v5, v51

    .line 1053
    .line 1054
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-object/from16 v6, v49

    .line 1058
    .line 1059
    move-object/from16 v5, v52

    .line 1060
    .line 1061
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-object/from16 v5, v18

    .line 1065
    .line 1066
    move-object/from16 v6, v20

    .line 1067
    .line 1068
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-object/from16 v6, v16

    .line 1072
    .line 1073
    move-object/from16 v5, v27

    .line 1074
    .line 1075
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    move-object/from16 v5, v21

    .line 1079
    .line 1080
    move-object/from16 v6, v24

    .line 1081
    .line 1082
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-object/from16 v5, v19

    .line 1086
    .line 1087
    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    const-string/jumbo v0, "no_modify_accounts"

    .line 1094
    .line 1095
    .line 1096
    move-object/from16 v1, v29

    .line 1097
    .line 1098
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    const-string/jumbo v0, "no_config_wifi"

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    const-string/jumbo v0, "no_change_wifi_state"

    .line 1108
    .line 1109
    .line 1110
    move-object/from16 v2, v25

    .line 1111
    .line 1112
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    const-string/jumbo v0, "no_wifi_tethering"

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    const-string/jumbo v0, "no_grant_admin"

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    const-string/jumbo v0, "no_sharing_admin_configured_wifi"

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    .line 1132
    .line 1133
    const-string/jumbo v0, "no_wifi_direct"

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    const-string/jumbo v0, "no_add_wifi_config"

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    const-string/jumbo v0, "no_config_locale"

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    const-string/jumbo v0, "no_install_apps"

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    const-string/jumbo v0, "no_uninstall_apps"

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    const-string/jumbo v0, "no_share_location"

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    const-string/jumbo v0, "no_airplane_mode"

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    const-string/jumbo v0, "no_config_brightness"

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    .line 1180
    .line 1181
    const-string/jumbo v0, "no_ambient_display"

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    .line 1186
    .line 1187
    const-string/jumbo v0, "no_config_screen_timeout"

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    const-string/jumbo v0, "no_install_unknown_sources"

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    const-string/jumbo v0, "no_install_unknown_sources_globally"

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    const-string/jumbo v0, "no_config_bluetooth"

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    const-string/jumbo v0, "no_bluetooth"

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    const-string/jumbo v0, "no_bluetooth_sharing"

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    const-string/jumbo v0, "no_usb_file_transfer"

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    const-string/jumbo v0, "no_config_credentials"

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    const-string/jumbo v0, "no_remove_user"

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    const-string/jumbo v0, "no_remove_managed_profile"

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    const-string/jumbo v0, "no_debugging_features"

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    const-string/jumbo v0, "no_config_vpn"

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    const-string/jumbo v0, "no_config_location"

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    const-string/jumbo v0, "no_config_date_time"

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    const-string/jumbo v0, "no_config_tethering"

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    const-string/jumbo v0, "no_network_reset"

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    const-string/jumbo v0, "no_factory_reset"

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    .line 1288
    .line 1289
    const-string/jumbo v0, "no_add_user"

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    const-string/jumbo v0, "no_add_managed_profile"

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    const-string/jumbo v0, "no_add_clone_profile"

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    .line 1306
    .line 1307
    const-string/jumbo v0, "no_add_private_profile"

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    const-string/jumbo v0, "ensure_verify_apps"

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    const-string/jumbo v0, "no_config_cell_broadcasts"

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    const-string/jumbo v0, "no_config_mobile_networks"

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    .line 1330
    .line 1331
    const-string/jumbo v0, "no_control_apps"

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    const-string/jumbo v0, "no_physical_media"

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    .line 1342
    .line 1343
    const-string/jumbo v0, "no_unmute_microphone"

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    .line 1348
    .line 1349
    const-string/jumbo v0, "no_adjust_volume"

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    const-string/jumbo v0, "no_outgoing_calls"

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    .line 1360
    .line 1361
    const-string/jumbo v0, "no_sms"

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    .line 1366
    .line 1367
    const-string/jumbo v0, "no_fun"

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    const-string/jumbo v0, "no_create_windows"

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    const-string/jumbo v0, "no_system_error_dialogs"

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    .line 1384
    .line 1385
    const-string/jumbo v0, "no_cross_profile_copy_paste"

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    const-string/jumbo v0, "no_outgoing_beam"

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    const-string/jumbo v0, "no_wallpaper"

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    .line 1402
    .line 1403
    const-string/jumbo v0, "no_set_wallpaper"

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    .line 1408
    .line 1409
    const-string/jumbo v0, "no_safe_boot"

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    .line 1414
    .line 1415
    const-string/jumbo v0, "no_record_audio"

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    .line 1420
    .line 1421
    const-string/jumbo v0, "no_run_in_background"

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    .line 1426
    .line 1427
    const-string/jumbo v0, "no_camera"

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    const-string/jumbo v0, "disallow_unmute_device"

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    const-string/jumbo v0, "no_data_roaming"

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    const-string/jumbo v0, "no_set_user_icon"

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    .line 1450
    .line 1451
    const-string/jumbo v0, "no_oem_unlock"

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    const-string/jumbo v0, "no_unified_password"

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    .line 1462
    .line 1463
    const-string v0, "allow_parent_profile_app_linking"

    .line 1464
    .line 1465
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    .line 1467
    .line 1468
    const-string/jumbo v0, "no_autofill"

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    .line 1473
    .line 1474
    const-string/jumbo v0, "no_content_capture"

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    .line 1479
    .line 1480
    const-string/jumbo v0, "no_content_suggestions"

    .line 1481
    .line 1482
    .line 1483
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    .line 1485
    .line 1486
    const-string/jumbo v0, "no_user_switch"

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    const-string/jumbo v0, "no_sharing_into_profile"

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    .line 1497
    .line 1498
    const-string/jumbo v0, "no_printing"

    .line 1499
    .line 1500
    .line 1501
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    .line 1503
    .line 1504
    const-string/jumbo v0, "disallow_config_private_dns"

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    .line 1509
    .line 1510
    const-string/jumbo v0, "disallow_microphone_toggle"

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    .line 1515
    .line 1516
    const-string/jumbo v0, "disallow_camera_toggle"

    .line 1517
    .line 1518
    .line 1519
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    .line 1521
    .line 1522
    const-string/jumbo v0, "disallow_biometric"

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    .line 1527
    .line 1528
    const-string/jumbo v0, "disallow_config_default_apps"

    .line 1529
    .line 1530
    .line 1531
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    .line 1533
    .line 1534
    const-string/jumbo v0, "no_cellular_2g"

    .line 1535
    .line 1536
    .line 1537
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    .line 1539
    .line 1540
    const-string/jumbo v0, "no_ultra_wideband_radio"

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    .line 1545
    .line 1546
    const-string/jumbo v0, "no_sim_globally"

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    .line 1551
    .line 1552
    const-string/jumbo v0, "no_assist_content"

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    .line 1557
    .line 1558
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/Flags;->threadUserRestrictionEnabled()Z

    .line 1559
    .line 1560
    .line 1561
    move-result v3

    .line 1562
    if-eqz v3, :cond_0

    .line 1563
    .line 1564
    const-string/jumbo v3, "no_thread_network"

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    .line 1569
    .line 1570
    :cond_0
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    .line 1572
    .line 1573
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v0

    .line 1577
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v0

    .line 1581
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1582
    .line 1583
    .line 1584
    move-result v1

    .line 1585
    if-eqz v1, :cond_1

    .line 1586
    .line 1587
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v1

    .line 1591
    check-cast v1, Ljava/lang/String;

    .line 1592
    .line 1593
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 1594
    .line 1595
    check-cast v2, Ljava/util/HashMap;

    .line 1596
    .line 1597
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v2

    .line 1601
    check-cast v2, Ljava/lang/Integer;

    .line 1602
    .line 1603
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1604
    .line 1605
    .line 1606
    move-result v2

    .line 1607
    invoke-static {v1}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v3

    .line 1611
    new-instance v10, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 1612
    .line 1613
    invoke-direct {v10, v3, v1}, Landroid/app/admin/UserRestrictionPolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    .line 1615
    .line 1616
    or-int/lit8 v7, v2, 0x14

    .line 1617
    .line 1618
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 1619
    .line 1620
    new-instance v8, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 1621
    .line 1622
    const/16 v2, 0x9

    .line 1623
    .line 1624
    invoke-direct {v8, v2}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1625
    .line 1626
    .line 1627
    new-instance v9, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 1628
    .line 1629
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1630
    .line 1631
    .line 1632
    sget-object v6, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 1633
    .line 1634
    move-object v4, v1

    .line 1635
    move-object v5, v10

    .line 1636
    invoke-direct/range {v4 .. v9}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 1637
    .line 1638
    .line 1639
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 1640
    .line 1641
    invoke-virtual {v10}, Landroid/app/admin/UserRestrictionPolicyKey;->getIdentifier()Ljava/lang/String;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v3

    .line 1645
    check-cast v2, Ljava/util/HashMap;

    .line 1646
    .line 1647
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    .line 1649
    .line 1650
    goto :goto_0

    .line 1651
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    and-int/lit8 p0, p3, 0x2

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    const-string p1, "Non-coexistable global policies not supported,please add support."

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public static ACCOUNT_MANAGEMENT_DISABLED(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroid/app/admin/AccountTypePolicyKey;

    .line 7
    .line 8
    const-string v2, "accountManagementDisabled"

    .line 9
    .line 10
    invoke-direct {v1, v2, p0}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static APPLICATION_RESTRICTIONS(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    .line 7
    .line 8
    const-string v2, "applicationRestrictions"

    .line 9
    .line 10
    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static PERSISTENT_PREFERRED_ACTIVITY(Landroid/content/IntentFilter;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroid/app/admin/IntentFilterPolicyKey;

    .line 7
    .line 8
    const-string/jumbo v2, "persistentPreferredActivity"

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2, p0}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getPolicyDefinitionForUserRestriction(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "Unsupported user restriction "

    .line 28
    .line 29
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/app/admin/PolicyKey;->readGenericPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "PolicyDefinition"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Error parsing PolicyKey, GenericPolicyKey is null"

    .line 11
    .line 12
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v3, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "Error parsing PolicyKey, Unknown generic policy key: "

    .line 35
    .line 36
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_1
    iget-object v0, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Landroid/app/admin/PolicyKey;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method


# virtual methods
.method public final createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v1, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public final isGlobalOnlyPolicy()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final isNonCoexistablePolicy()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x8

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PolicyDefinition{ mPolicyKey= "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mResolutionMechanism= "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mPolicyFlags= "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 29
    .line 30
    const-string v1, " }"

    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
