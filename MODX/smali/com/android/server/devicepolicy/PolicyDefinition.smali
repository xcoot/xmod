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

    .line 3
    new-instance v0, Landroid/app/admin/BooleanPolicyValue;

    .line 5
    const/4 v6, 0x0

    .line 6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v7

    .line 10
    invoke-direct {v0, v6}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 13
    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v8

    .line 20
    invoke-direct {v1, v3}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 23
    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v2, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 30
    new-instance v0, Lcom/android/server/devicepolicy/MostRestrictive;

    .line 32
    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    .line 34
    invoke-direct {v1, v3}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 37
    new-instance v4, Landroid/app/admin/BooleanPolicyValue;

    .line 39
    invoke-direct {v4, v6}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 42
    invoke-static {v1, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 49
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 51
    new-instance v15, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 53
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 55
    const-string v5, "autoTimezone"

    .line 57
    invoke-direct {v10, v5}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-direct {v13, v1}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 66
    new-instance v14, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 68
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v12, 0x1

    .line 72
    move-object v9, v15

    .line 73
    move-object v11, v0

    .line 74
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 77
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 79
    new-instance v1, Landroid/app/admin/PackagePermissionPolicyKey;

    .line 81
    const-string/jumbo v14, "permissionGrant"

    .line 84
    invoke-direct {v1, v14}, Landroid/app/admin/PackagePermissionPolicyKey;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v9, Lcom/android/server/devicepolicy/MostRestrictive;

    .line 89
    new-instance v10, Landroid/app/admin/IntegerPolicyValue;

    .line 91
    const/4 v11, 0x2

    .line 92
    invoke-direct {v10, v11}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 95
    new-instance v11, Landroid/app/admin/IntegerPolicyValue;

    .line 97
    invoke-direct {v11, v3}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 100
    new-instance v3, Landroid/app/admin/IntegerPolicyValue;

    .line 102
    invoke-direct {v3, v6}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 105
    invoke-static {v10, v11, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 108
    move-result-object v3

    .line 109
    invoke-direct {v9, v3}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 112
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 114
    const/16 v10, 0x12

    .line 116
    invoke-direct {v3, v10}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 119
    new-instance v21, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 121
    invoke-direct/range {v21 .. v21}, Ljava/lang/Object;-><init>()V

    .line 124
    const/16 v19, 0x2

    .line 126
    move-object/from16 v16, v4

    .line 128
    move-object/from16 v17, v1

    .line 130
    move-object/from16 v18, v9

    .line 132
    move-object/from16 v20, v3

    .line 134
    invoke-direct/range {v16 .. v21}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 137
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 139
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 141
    const-string/jumbo v1, "securityLogging"

    .line 144
    invoke-direct {v10, v1}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 149
    const/4 v9, 0x1

    .line 150
    invoke-direct {v13, v9}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 153
    new-instance v16, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 155
    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v12, 0x1

    .line 159
    move-object v9, v3

    .line 160
    move-object v11, v0

    .line 161
    move-object/from16 v22, v14

    .line 163
    move-object/from16 v14, v16

    .line 165
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 168
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 170
    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 172
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 174
    const-string v13, "auditLogging"

    .line 176
    invoke-direct {v10, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v12, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 181
    const/4 v9, 0x2

    .line 182
    invoke-direct {v12, v9}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 185
    new-instance v16, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 187
    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    .line 190
    const/16 v17, 0x1

    .line 192
    move-object v9, v14

    .line 193
    move-object v11, v0

    .line 194
    move-object/from16 v18, v12

    .line 196
    move/from16 v12, v17

    .line 198
    move-object/from16 v23, v13

    .line 200
    move-object/from16 v13, v18

    .line 202
    move-object v6, v14

    .line 203
    move-object/from16 v14, v16

    .line 205
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 208
    sput-object v6, Lcom/android/server/devicepolicy/PolicyDefinition;->AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 210
    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 212
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 214
    const-string/jumbo v13, "lockTask"

    .line 217
    invoke-direct {v9, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance v10, Lcom/android/server/devicepolicy/TopPriority;

    .line 222
    const-string/jumbo v11, "role:android.app.role.SYSTEM_FINANCED_DEVICE_CONTROLLER"

    .line 225
    const-string/jumbo v12, "enterprise"

    .line 228
    move-object/from16 v16, v1

    .line 230
    invoke-static {v11, v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 233
    move-result-object v1

    .line 234
    invoke-direct {v10, v1}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    .line 237
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 239
    move-object/from16 v18, v3

    .line 241
    const/4 v3, 0x3

    .line 242
    invoke-direct {v1, v3}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 245
    new-instance v29, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;

    .line 247
    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    .line 250
    const/16 v27, 0x2

    .line 252
    move-object/from16 v24, v14

    .line 254
    move-object/from16 v25, v9

    .line 256
    move-object/from16 v26, v10

    .line 258
    move-object/from16 v28, v1

    .line 260
    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 263
    sput-object v14, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 265
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 267
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 269
    const-string/jumbo v10, "userControlDisabledPackages"

    .line 272
    invoke-direct {v1, v10}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 275
    new-instance v32, Lcom/android/server/devicepolicy/PackageSetUnion;

    .line 277
    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v9, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 282
    move-object/from16 v19, v4

    .line 284
    const/4 v4, 0x4

    .line 285
    invoke-direct {v9, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 288
    new-instance v35, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    .line 290
    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 293
    const/16 v33, 0x0

    .line 295
    move-object/from16 v30, v3

    .line 297
    move-object/from16 v31, v1

    .line 299
    move-object/from16 v34, v9

    .line 301
    invoke-direct/range {v30 .. v35}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 304
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 306
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 308
    new-instance v1, Landroid/app/admin/IntentFilterPolicyKey;

    .line 310
    const-string/jumbo v9, "persistentPreferredActivity"

    .line 313
    invoke-direct {v1, v9}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;)V

    .line 316
    move-object/from16 v20, v3

    .line 318
    new-instance v3, Lcom/android/server/devicepolicy/TopPriority;

    .line 320
    invoke-static {v11, v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 323
    move-result-object v11

    .line 324
    invoke-direct {v3, v11}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    .line 327
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 329
    const/4 v12, 0x5

    .line 330
    invoke-direct {v11, v12}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 333
    new-instance v29, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;

    .line 335
    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    .line 338
    const/16 v27, 0x2

    .line 340
    move-object/from16 v24, v4

    .line 342
    move-object/from16 v25, v1

    .line 344
    move-object/from16 v26, v3

    .line 346
    move-object/from16 v28, v11

    .line 348
    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 351
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 353
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 355
    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    .line 357
    const-string/jumbo v12, "packageUninstallBlocked"

    .line 360
    invoke-direct {v1, v12}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    .line 363
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 365
    move-object/from16 v21, v4

    .line 367
    const/4 v4, 0x6

    .line 368
    invoke-direct {v11, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 371
    new-instance v4, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 373
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 376
    const/16 v24, 0x2

    .line 378
    move-object/from16 v36, v9

    .line 380
    move-object v9, v3

    .line 381
    move-object/from16 v37, v10

    .line 383
    move-object v10, v1

    .line 384
    move-object v1, v11

    .line 385
    move-object v11, v0

    .line 386
    move-object/from16 v25, v8

    .line 388
    move-object v8, v12

    .line 389
    move/from16 v12, v24

    .line 391
    move-object/from16 v38, v13

    .line 393
    move-object v13, v1

    .line 394
    move-object v1, v14

    .line 395
    move-object v14, v4

    .line 396
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 399
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 401
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 403
    new-instance v9, Landroid/app/admin/PackagePolicyKey;

    .line 405
    const-string v14, "applicationRestrictions"

    .line 407
    invoke-direct {v9, v14}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    .line 410
    new-instance v28, Lcom/android/server/devicepolicy/MostRecent;

    .line 412
    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 415
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 417
    const/4 v11, 0x7

    .line 418
    invoke-direct {v10, v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 421
    new-instance v31, Lcom/android/server/devicepolicy/BundlePolicySerializer;

    .line 423
    invoke-direct/range {v31 .. v31}, Ljava/lang/Object;-><init>()V

    .line 426
    const/16 v29, 0x2e

    .line 428
    move-object/from16 v26, v4

    .line 430
    move-object/from16 v27, v9

    .line 432
    move-object/from16 v30, v10

    .line 434
    invoke-direct/range {v26 .. v31}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 437
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 439
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 441
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 443
    const-string/jumbo v12, "resetPasswordToken"

    .line 446
    invoke-direct {v9, v12}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 449
    new-instance v41, Lcom/android/server/devicepolicy/MostRecent;

    .line 451
    invoke-direct/range {v41 .. v41}, Ljava/lang/Object;-><init>()V

    .line 454
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 456
    const/16 v11, 0x8

    .line 458
    invoke-direct {v10, v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 461
    new-instance v44, Lcom/android/server/devicepolicy/LongPolicySerializer;

    .line 463
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 466
    const/16 v42, 0xa

    .line 468
    move-object/from16 v39, v13

    .line 470
    move-object/from16 v40, v9

    .line 472
    move-object/from16 v43, v10

    .line 474
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 477
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 479
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 481
    const-string/jumbo v10, "keyguardDisabledFeatures"

    .line 484
    invoke-direct {v9, v10}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 487
    new-instance v28, Lcom/android/server/devicepolicy/FlagUnion;

    .line 489
    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 492
    move-object/from16 v24, v1

    .line 494
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 496
    move-object/from16 v32, v3

    .line 498
    const/16 v3, 0xa

    .line 500
    invoke-direct {v1, v3}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 503
    new-instance v31, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 505
    invoke-direct/range {v31 .. v31}, Ljava/lang/Object;-><init>()V

    .line 508
    const/16 v29, 0x2

    .line 510
    move-object/from16 v26, v11

    .line 512
    move-object/from16 v27, v9

    .line 514
    move-object/from16 v30, v1

    .line 516
    invoke-direct/range {v26 .. v31}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 519
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 521
    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    .line 523
    const-string v9, "applicationHidden"

    .line 525
    invoke-direct {v1, v9}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    .line 528
    move-object/from16 v26, v12

    .line 530
    new-instance v12, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 532
    move-object/from16 v27, v4

    .line 534
    const/16 v4, 0xb

    .line 536
    invoke-direct {v12, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 539
    new-instance v4, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 541
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 544
    const/16 v28, 0x6

    .line 546
    move-object/from16 v45, v9

    .line 548
    move-object v9, v3

    .line 549
    move-object/from16 v46, v10

    .line 551
    move-object v10, v1

    .line 552
    move-object v1, v11

    .line 553
    move-object v11, v0

    .line 554
    move-object/from16 v29, v7

    .line 556
    move-object/from16 v7, v26

    .line 558
    move-object/from16 v26, v12

    .line 560
    move/from16 v12, v28

    .line 562
    move-object/from16 v47, v13

    .line 564
    move-object/from16 v13, v26

    .line 566
    move-object/from16 v26, v7

    .line 568
    move-object v7, v14

    .line 569
    move-object v14, v4

    .line 570
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 573
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 575
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 577
    new-instance v10, Landroid/app/admin/AccountTypePolicyKey;

    .line 579
    const-string v14, "accountManagementDisabled"

    .line 581
    invoke-direct {v10, v14}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;)V

    .line 584
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 586
    const/16 v9, 0xc

    .line 588
    invoke-direct {v13, v9}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 591
    new-instance v28, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 593
    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 596
    const/4 v12, 0x6

    .line 597
    move-object v9, v4

    .line 598
    move-object v11, v0

    .line 599
    move-object/from16 v48, v14

    .line 601
    move-object/from16 v14, v28

    .line 603
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 606
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 608
    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 610
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 612
    const-string/jumbo v13, "permittedInputMethods"

    .line 615
    invoke-direct {v9, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 618
    new-instance v41, Lcom/android/server/devicepolicy/MostRecent;

    .line 620
    invoke-direct/range {v41 .. v41}, Ljava/lang/Object;-><init>()V

    .line 623
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 625
    const/16 v11, 0xd

    .line 627
    invoke-direct {v10, v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 630
    new-instance v44, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    .line 632
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 635
    const/16 v42, 0x6

    .line 637
    move-object/from16 v39, v14

    .line 639
    move-object/from16 v40, v9

    .line 641
    move-object/from16 v43, v10

    .line 643
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 646
    sput-object v14, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 648
    new-instance v12, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 650
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 652
    const-string/jumbo v11, "screenCaptureDisabled"

    .line 655
    invoke-direct {v10, v11}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 658
    new-instance v9, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 660
    move-object/from16 v28, v1

    .line 662
    const/16 v1, 0xe

    .line 664
    invoke-direct {v9, v1}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 667
    new-instance v1, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 669
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 672
    const/16 v30, 0x4

    .line 674
    move-object/from16 v31, v9

    .line 676
    move-object v9, v12

    .line 677
    move-object/from16 v49, v11

    .line 679
    move-object v11, v0

    .line 680
    move-object v0, v12

    .line 681
    move/from16 v12, v30

    .line 683
    move-object/from16 v50, v13

    .line 685
    move-object/from16 v13, v31

    .line 687
    move-object/from16 v51, v14

    .line 689
    move-object v14, v1

    .line 690
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 693
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 695
    new-instance v9, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 697
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 699
    const-string/jumbo v10, "personalAppsSuspended"

    .line 702
    invoke-direct {v1, v10}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 705
    new-instance v41, Lcom/android/server/devicepolicy/MostRecent;

    .line 707
    invoke-direct/range {v41 .. v41}, Ljava/lang/Object;-><init>()V

    .line 710
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 712
    const/16 v12, 0xf

    .line 714
    invoke-direct {v11, v12}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 717
    new-instance v44, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 719
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 722
    const/16 v42, 0x6

    .line 724
    move-object/from16 v39, v9

    .line 726
    move-object/from16 v40, v1

    .line 728
    move-object/from16 v43, v11

    .line 730
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 733
    sput-object v9, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 735
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 737
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 739
    const-string/jumbo v12, "usbDataSignaling"

    .line 742
    invoke-direct {v1, v12}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 745
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 747
    const/16 v14, 0x10

    .line 749
    invoke-direct {v13, v14}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 752
    new-instance v14, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 754
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 757
    const/16 v30, 0x1

    .line 759
    move-object/from16 v52, v0

    .line 761
    move-object v0, v11

    .line 762
    move-object/from16 v53, v16

    .line 764
    move-object/from16 v54, v24

    .line 766
    move-object/from16 v55, v28

    .line 768
    move-object/from16 v56, v3

    .line 770
    move-object/from16 v16, v12

    .line 772
    move-object/from16 v12, v18

    .line 774
    move-object/from16 v18, v9

    .line 776
    move-object/from16 v9, v20

    .line 778
    move-object/from16 v20, v10

    .line 780
    move-object/from16 v10, v32

    .line 782
    move/from16 v3, v30

    .line 784
    move-object/from16 v60, v4

    .line 786
    move-object/from16 v57, v19

    .line 788
    move-object/from16 v58, v21

    .line 790
    move-object/from16 v59, v27

    .line 792
    move-object v4, v13

    .line 793
    move-object v13, v5

    .line 794
    move-object v5, v14

    .line 795
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 798
    sput-object v11, Lcom/android/server/devicepolicy/PolicyDefinition;->USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 800
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 802
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 804
    const-string/jumbo v2, "contentProtection"

    .line 807
    invoke-direct {v1, v2}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 810
    new-instance v32, Lcom/android/server/devicepolicy/MostRecent;

    .line 812
    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    .line 815
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 817
    const/16 v4, 0x11

    .line 819
    invoke-direct {v3, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 822
    new-instance v35, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 824
    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 827
    const/16 v33, 0x2

    .line 829
    move-object/from16 v30, v0

    .line 831
    move-object/from16 v31, v1

    .line 833
    move-object/from16 v34, v3

    .line 835
    invoke-direct/range {v30 .. v35}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 838
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 840
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 842
    new-instance v3, Landroid/app/admin/NoArgsPolicyKey;

    .line 844
    const-string/jumbo v4, "passwordComplexity"

    .line 847
    invoke-direct {v3, v4}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 850
    new-instance v5, Lcom/android/server/devicepolicy/MostRestrictive;

    .line 852
    new-instance v14, Landroid/app/admin/IntegerPolicyValue;

    .line 854
    move-object/from16 v19, v4

    .line 856
    const/high16 v4, 0x50000

    .line 858
    invoke-direct {v14, v4}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 861
    new-instance v4, Landroid/app/admin/IntegerPolicyValue;

    .line 863
    move-object/from16 v21, v0

    .line 865
    const/high16 v0, 0x30000

    .line 867
    invoke-direct {v4, v0}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 870
    new-instance v0, Landroid/app/admin/IntegerPolicyValue;

    .line 872
    move-object/from16 v24, v2

    .line 874
    const/high16 v2, 0x10000

    .line 876
    invoke-direct {v0, v2}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 879
    new-instance v2, Landroid/app/admin/IntegerPolicyValue;

    .line 881
    move-object/from16 v27, v11

    .line 883
    const/4 v11, 0x0

    .line 884
    invoke-direct {v2, v11}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 887
    invoke-static {v14, v4, v0, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 890
    move-result-object v0

    .line 891
    invoke-direct {v5, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 894
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 896
    const/16 v2, 0xa

    .line 898
    invoke-direct {v0, v2}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 901
    new-instance v44, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 903
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 906
    const/16 v42, 0x2

    .line 908
    move-object/from16 v39, v1

    .line 910
    move-object/from16 v40, v3

    .line 912
    move-object/from16 v41, v5

    .line 914
    move-object/from16 v43, v0

    .line 916
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 919
    sput-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 921
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 923
    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    .line 925
    const-string/jumbo v3, "packagesSuspended"

    .line 928
    invoke-direct {v2, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 931
    new-instance v32, Lcom/android/server/devicepolicy/PackageSetUnion;

    .line 933
    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    .line 936
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 938
    const/16 v5, 0xd

    .line 940
    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 943
    new-instance v35, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    .line 945
    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 948
    const/16 v33, 0x0

    .line 950
    move-object/from16 v30, v0

    .line 952
    move-object/from16 v31, v2

    .line 954
    move-object/from16 v34, v4

    .line 956
    invoke-direct/range {v30 .. v35}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 959
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 961
    new-instance v2, Ljava/util/HashMap;

    .line 963
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 966
    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 968
    new-instance v4, Ljava/util/HashMap;

    .line 970
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 973
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 975
    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    move-object/from16 v11, v22

    .line 980
    move-object/from16 v5, v57

    .line 982
    invoke-virtual {v2, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    move-object/from16 v5, v53

    .line 987
    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    move-object/from16 v5, v23

    .line 992
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    move-object/from16 v6, v38

    .line 997
    move-object/from16 v5, v54

    .line 999
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    move-object/from16 v5, v37

    .line 1004
    invoke-virtual {v2, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    move-object/from16 v6, v36

    .line 1009
    move-object/from16 v5, v58

    .line 1011
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    invoke-virtual {v2, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    move-object/from16 v5, v59

    .line 1019
    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    move-object/from16 v6, v26

    .line 1024
    move-object/from16 v5, v47

    .line 1026
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    move-object/from16 v6, v46

    .line 1031
    move-object/from16 v5, v55

    .line 1033
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    move-object/from16 v6, v45

    .line 1038
    move-object/from16 v5, v56

    .line 1040
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    move-object/from16 v6, v48

    .line 1045
    move-object/from16 v5, v60

    .line 1047
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    move-object/from16 v6, v50

    .line 1052
    move-object/from16 v5, v51

    .line 1054
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    move-object/from16 v6, v49

    .line 1059
    move-object/from16 v5, v52

    .line 1061
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    move-object/from16 v5, v18

    .line 1066
    move-object/from16 v6, v20

    .line 1068
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    move-object/from16 v6, v16

    .line 1073
    move-object/from16 v5, v27

    .line 1075
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    move-object/from16 v5, v21

    .line 1080
    move-object/from16 v6, v24

    .line 1082
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    move-object/from16 v5, v19

    .line 1087
    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    const-string/jumbo v0, "no_modify_accounts"

    .line 1096
    move-object/from16 v1, v29

    .line 1098
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string/jumbo v0, "no_config_wifi"

    .line 1104
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    const-string/jumbo v0, "no_change_wifi_state"

    .line 1110
    move-object/from16 v2, v25

    .line 1112
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    const-string/jumbo v0, "no_wifi_tethering"

    .line 1118
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const-string/jumbo v0, "no_grant_admin"

    .line 1124
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string/jumbo v0, "no_sharing_admin_configured_wifi"

    .line 1130
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    const-string/jumbo v0, "no_wifi_direct"

    .line 1136
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string/jumbo v0, "no_add_wifi_config"

    .line 1142
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    const-string/jumbo v0, "no_config_locale"

    .line 1148
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    const-string/jumbo v0, "no_install_apps"

    .line 1154
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    const-string/jumbo v0, "no_uninstall_apps"

    .line 1160
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    const-string/jumbo v0, "no_share_location"

    .line 1166
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string/jumbo v0, "no_airplane_mode"

    .line 1172
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    const-string/jumbo v0, "no_config_brightness"

    .line 1178
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    const-string/jumbo v0, "no_ambient_display"

    .line 1184
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    const-string/jumbo v0, "no_config_screen_timeout"

    .line 1190
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const-string/jumbo v0, "no_install_unknown_sources"

    .line 1196
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string/jumbo v0, "no_install_unknown_sources_globally"

    .line 1202
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const-string/jumbo v0, "no_config_bluetooth"

    .line 1208
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const-string/jumbo v0, "no_bluetooth"

    .line 1214
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const-string/jumbo v0, "no_bluetooth_sharing"

    .line 1220
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const-string/jumbo v0, "no_usb_file_transfer"

    .line 1226
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    const-string/jumbo v0, "no_config_credentials"

    .line 1232
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    const-string/jumbo v0, "no_remove_user"

    .line 1238
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    const-string/jumbo v0, "no_remove_managed_profile"

    .line 1244
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    const-string/jumbo v0, "no_debugging_features"

    .line 1250
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    const-string/jumbo v0, "no_config_vpn"

    .line 1256
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const-string/jumbo v0, "no_config_location"

    .line 1262
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    const-string/jumbo v0, "no_config_date_time"

    .line 1268
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    const-string/jumbo v0, "no_config_tethering"

    .line 1274
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const-string/jumbo v0, "no_network_reset"

    .line 1280
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string/jumbo v0, "no_factory_reset"

    .line 1286
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    const-string/jumbo v0, "no_add_user"

    .line 1292
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string/jumbo v0, "no_add_managed_profile"

    .line 1298
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    const-string/jumbo v0, "no_add_clone_profile"

    .line 1304
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    const-string/jumbo v0, "no_add_private_profile"

    .line 1310
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    const-string/jumbo v0, "ensure_verify_apps"

    .line 1316
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    const-string/jumbo v0, "no_config_cell_broadcasts"

    .line 1322
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    const-string/jumbo v0, "no_config_mobile_networks"

    .line 1328
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    const-string/jumbo v0, "no_control_apps"

    .line 1334
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    const-string/jumbo v0, "no_physical_media"

    .line 1340
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    const-string/jumbo v0, "no_unmute_microphone"

    .line 1346
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    const-string/jumbo v0, "no_adjust_volume"

    .line 1352
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    const-string/jumbo v0, "no_outgoing_calls"

    .line 1358
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    const-string/jumbo v0, "no_sms"

    .line 1364
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    const-string/jumbo v0, "no_fun"

    .line 1370
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    const-string/jumbo v0, "no_create_windows"

    .line 1376
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    const-string/jumbo v0, "no_system_error_dialogs"

    .line 1382
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    const-string/jumbo v0, "no_cross_profile_copy_paste"

    .line 1388
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    const-string/jumbo v0, "no_outgoing_beam"

    .line 1394
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    const-string/jumbo v0, "no_wallpaper"

    .line 1400
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    const-string/jumbo v0, "no_set_wallpaper"

    .line 1406
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    const-string/jumbo v0, "no_safe_boot"

    .line 1412
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    const-string/jumbo v0, "no_record_audio"

    .line 1418
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    const-string/jumbo v0, "no_run_in_background"

    .line 1424
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    const-string/jumbo v0, "no_camera"

    .line 1430
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    const-string/jumbo v0, "disallow_unmute_device"

    .line 1436
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    const-string/jumbo v0, "no_data_roaming"

    .line 1442
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    const-string/jumbo v0, "no_set_user_icon"

    .line 1448
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    const-string/jumbo v0, "no_oem_unlock"

    .line 1454
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    const-string/jumbo v0, "no_unified_password"

    .line 1460
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    const-string v0, "allow_parent_profile_app_linking"

    .line 1465
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    const-string/jumbo v0, "no_autofill"

    .line 1471
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    const-string/jumbo v0, "no_content_capture"

    .line 1477
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    const-string/jumbo v0, "no_content_suggestions"

    .line 1483
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    const-string/jumbo v0, "no_user_switch"

    .line 1489
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    const-string/jumbo v0, "no_sharing_into_profile"

    .line 1495
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    const-string/jumbo v0, "no_printing"

    .line 1501
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    const-string/jumbo v0, "disallow_config_private_dns"

    .line 1507
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const-string/jumbo v0, "disallow_microphone_toggle"

    .line 1513
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    const-string/jumbo v0, "disallow_camera_toggle"

    .line 1519
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    const-string/jumbo v0, "disallow_biometric"

    .line 1525
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const-string/jumbo v0, "disallow_config_default_apps"

    .line 1531
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const-string/jumbo v0, "no_cellular_2g"

    .line 1537
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    const-string/jumbo v0, "no_ultra_wideband_radio"

    .line 1543
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    const-string/jumbo v0, "no_sim_globally"

    .line 1549
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const-string/jumbo v0, "no_assist_content"

    .line 1555
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/Flags;->threadUserRestrictionEnabled()Z

    .line 1561
    move-result v3

    .line 1562
    if-eqz v3, :cond_0

    .line 1564
    const-string/jumbo v3, "no_thread_network"

    .line 1567
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    :cond_0
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1576
    move-result-object v0

    .line 1577
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1580
    move-result-object v0

    .line 1581
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1584
    move-result v1

    .line 1585
    if-eqz v1, :cond_1

    .line 1587
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1590
    move-result-object v1

    .line 1591
    check-cast v1, Ljava/lang/String;

    .line 1593
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 1595
    check-cast v2, Ljava/util/HashMap;

    .line 1597
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    move-result-object v2

    .line 1601
    check-cast v2, Ljava/lang/Integer;

    .line 1603
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1606
    move-result v2

    .line 1607
    invoke-static {v1}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    .line 1610
    move-result-object v3

    .line 1611
    new-instance v10, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 1613
    invoke-direct {v10, v3, v1}, Landroid/app/admin/UserRestrictionPolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    or-int/lit8 v7, v2, 0x14

    .line 1618
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 1620
    new-instance v8, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 1622
    const/16 v2, 0x9

    .line 1624
    invoke-direct {v8, v2}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1627
    new-instance v9, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 1629
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1632
    sget-object v6, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 1634
    move-object v4, v1

    .line 1635
    move-object v5, v10

    .line 1636
    invoke-direct/range {v4 .. v9}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 1639
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 1641
    invoke-virtual {v10}, Landroid/app/admin/UserRestrictionPolicyKey;->getIdentifier()Ljava/lang/String;

    .line 1644
    move-result-object v3

    .line 1645
    check-cast v2, Ljava/util/HashMap;

    .line 1647
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 8
    iput p3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    .line 12
    iput-object p5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 20
    and-int/lit8 p0, p3, 0x2

    .line 22
    if-eqz p0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 27
    const-string p1, "Non-coexistable global policies not supported,please add support."

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

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

    .line 3
    if-nez p0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroid/app/admin/AccountTypePolicyKey;

    .line 8
    const-string v2, "accountManagementDisabled"

    .line 10
    invoke-direct {v1, v2, p0}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static APPLICATION_RESTRICTIONS(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 3
    if-nez p0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    .line 8
    const-string v2, "applicationRestrictions"

    .line 10
    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static PERSISTENT_PREFERRED_ACTIVITY(Landroid/content/IntentFilter;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 3
    if-nez p0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroid/app/admin/IntentFilterPolicyKey;

    .line 8
    const-string/jumbo v2, "persistentPreferredActivity"

    .line 11
    invoke-direct {v1, v2, p0}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getPolicyDefinitionForUserRestriction(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Ljava/util/HashMap;

    .line 10
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 18
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 24
    return-object p0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string v1, "Unsupported user restriction "

    .line 29
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0
.end method

.method public static readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/app/admin/PolicyKey;->readGenericPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "PolicyDefinition"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "Error parsing PolicyKey, GenericPolicyKey is null"

    .line 12
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-object v1

    .line 16
    :cond_0
    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 18
    invoke-virtual {v0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    check-cast v3, Ljava/util/HashMap;

    .line 24
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 30
    if-nez v3, :cond_1

    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    const-string v3, "Error parsing PolicyKey, Unknown generic policy key: "

    .line 36
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-object v1

    .line 50
    :cond_1
    iget-object v0, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 52
    invoke-virtual {v0, p0}, Landroid/app/admin/PolicyKey;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

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

    .line 3
    iget-object v4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    .line 5
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 7
    iget v3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 9
    iget-object v5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 11
    move-object v0, v6

    .line 12
    move-object v1, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 16
    return-object v6
.end method

.method public final isGlobalOnlyPolicy()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

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

    .line 3
    and-int/lit8 p0, p0, 0x8

    .line 5
    if-eqz p0, :cond_0

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

    .line 3
    const-string v1, "PolicyDefinition{ mPolicyKey= "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mResolutionMechanism= "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mPolicyFlags= "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 30
    const-string v1, " }"

    .line 32
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
