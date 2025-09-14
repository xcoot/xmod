.class final enum Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final sAppApiMaskToKey:Ljava/util/Map;


# instance fields
.field private adminMapKey:Ljava/lang/String;

.field private mask:I

.field private table:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 48

    .line 1
    new-instance v6, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v4, "PackageNameDisabledList"

    .line 6
    const-string v3, "PKGNAME_DISABLED_LIST"

    .line 8
    const/4 v2, 0x2

    .line 9
    const-string v5, "APPLICATION"

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 17
    const/4 v8, 0x1

    .line 18
    const-string v11, "PackageNameInstallationBlacklist"

    .line 20
    const-string v10, "PKGNAME_INSTALLATION_BLACKLIST"

    .line 22
    const/4 v9, 0x4

    .line 23
    const-string v12, "APPLICATION"

    .line 25
    move-object v7, v1

    .line 26
    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 31
    const/4 v14, 0x2

    .line 32
    const-string v17, "PackageNameInstallationWhitelist"

    .line 34
    const-string v16, "PKGNAME_INSTALLATION_WHITELIST"

    .line 36
    const/16 v15, 0x8

    .line 38
    const-string v18, "APPLICATION"

    .line 40
    move-object v13, v2

    .line 41
    invoke-direct/range {v13 .. v18}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 46
    const/4 v8, 0x3

    .line 47
    const-string v11, "PermissionInstallationBlacklist"

    .line 49
    const-string v10, "PERMISSION_INSTALLATION_BLACKLIST"

    .line 51
    const/4 v9, 0x0

    .line 52
    const-string v12, "APPLICATION_PERMISSION"

    .line 54
    move-object v7, v3

    .line 55
    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 60
    const/4 v14, 0x4

    .line 61
    const-string v17, "SignatureInstallationBlacklist"

    .line 63
    const-string v16, "SIGNATURE_INSTALLATION_BLACKLIST"

    .line 65
    const/4 v15, 0x1

    .line 66
    const-string/jumbo v18, "signature"

    .line 69
    move-object v13, v4

    .line 70
    invoke-direct/range {v13 .. v18}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v5, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 75
    const/4 v8, 0x5

    .line 76
    const-string v11, "SignatureInstallationWhitelist"

    .line 78
    const-string v10, "SIGNATURE_INSTALLATION_WHITELIST"

    .line 80
    const/4 v9, 0x2

    .line 81
    const-string/jumbo v12, "signature"

    .line 84
    move-object v7, v5

    .line 85
    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v7, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 90
    const/4 v14, 0x6

    .line 91
    const-string v17, "PackageNameStopBlacklist"

    .line 93
    const-string v16, "PKGNAME_STOP_BLACKLIST"

    .line 95
    const/16 v15, 0x10

    .line 97
    const-string v18, "APPLICATION"

    .line 99
    move-object v13, v7

    .line 100
    invoke-direct/range {v13 .. v18}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v14, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 105
    const/4 v9, 0x7

    .line 106
    const-string v12, "PackageNameStopWhitelist"

    .line 108
    const-string v11, "PKGNAME_STOP_WHITELIST"

    .line 110
    const/16 v10, 0x20

    .line 112
    const-string v13, "APPLICATION"

    .line 114
    move-object v8, v14

    .line 115
    invoke-direct/range {v8 .. v13}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v8, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 120
    const/16 v16, 0x8

    .line 122
    const-string v19, "PackageNameWidgetWhitelist"

    .line 124
    const-string v18, "PKGNAME_WIDGET_WHITELIST"

    .line 126
    const/16 v17, 0x80

    .line 128
    const-string v20, "APPLICATION"

    .line 130
    move-object v15, v8

    .line 131
    invoke-direct/range {v15 .. v20}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v9, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 136
    const/16 v22, 0x9

    .line 138
    const-string v25, "PackageNameWidgetBlacklist"

    .line 140
    const-string v24, "PKGNAME_WIDGET_BLACKLIST"

    .line 142
    const/16 v23, 0x40

    .line 144
    const-string v26, "APPLICATION"

    .line 146
    move-object/from16 v21, v9

    .line 148
    invoke-direct/range {v21 .. v26}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v10, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 153
    const/16 v16, 0xa

    .line 155
    const-string v19, "PackageNameNotificationBlacklist"

    .line 157
    const-string v18, "PKGNAME_NOTIFICATION_BLACKLIST"

    .line 159
    const/16 v17, 0x100

    .line 161
    const-string v20, "APPLICATION"

    .line 163
    move-object v15, v10

    .line 164
    invoke-direct/range {v15 .. v20}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v11, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 169
    const/16 v22, 0xb

    .line 171
    const-string v25, "PackageNameNotificationWhitelist"

    .line 173
    const-string v24, "PKGNAME_NOTIFICATION_WHITELIST"

    .line 175
    const/16 v23, 0x200

    .line 177
    const-string v26, "APPLICATION"

    .line 179
    move-object/from16 v21, v11

    .line 181
    invoke-direct/range {v21 .. v26}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v12, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 186
    const/16 v16, 0xc

    .line 188
    const-string v19, "PackageNameClearDataBlacklist"

    .line 190
    const-string v18, "PKGNAME_CLEARDATA_BLACKLIST"

    .line 192
    const/16 v17, 0x2000

    .line 194
    const-string v20, "APPLICATION"

    .line 196
    move-object v15, v12

    .line 197
    invoke-direct/range {v15 .. v20}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v13, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 202
    const/16 v22, 0xd

    .line 204
    const-string v25, "PackageNameClearDataWhitelist"

    .line 206
    const-string v24, "PKGNAME_CLEARDATA_WHITELIST"

    .line 208
    const/16 v23, 0x4000

    .line 210
    const-string v26, "APPLICATION"

    .line 212
    move-object/from16 v21, v13

    .line 214
    invoke-direct/range {v21 .. v26}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v21, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 219
    const/16 v16, 0xe

    .line 221
    const-string v19, "PackageNameClearCacheBlacklist"

    .line 223
    const-string v18, "PKGNAME_CLEARCACHE_BLACKLIST"

    .line 225
    const v17, 0x8000

    .line 228
    const-string v20, "APPLICATION"

    .line 230
    move-object/from16 v15, v21

    .line 232
    invoke-direct/range {v15 .. v20}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v15, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 237
    const/16 v23, 0xf

    .line 239
    const-string v26, "PackageNameClearCacheWhitelist"

    .line 241
    const-string v25, "PKGNAME_CLEARCACHE_WHITELIST"

    .line 243
    const/high16 v24, 0x10000

    .line 245
    const-string v27, "APPLICATION"

    .line 247
    move-object/from16 v22, v15

    .line 249
    invoke-direct/range {v22 .. v27}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v16, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 254
    const/16 v29, 0x10

    .line 256
    const-string v32, "PackageNameStartBlacklist"

    .line 258
    const-string v31, "PKGNAME_START_BLACKLIST"

    .line 260
    const/high16 v30, 0x80000

    .line 262
    const-string v33, "APPLICATION"

    .line 264
    move-object/from16 v28, v16

    .line 266
    invoke-direct/range {v28 .. v33}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v17, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 271
    const/16 v23, 0x11

    .line 273
    const-string v26, "PackageNameStartWhitelist"

    .line 275
    const-string v25, "PKGNAME_START_WHITELIST"

    .line 277
    const/16 v24, 0x0

    .line 279
    const-string v27, "INVALID_TABLE"

    .line 281
    move-object/from16 v22, v17

    .line 283
    invoke-direct/range {v22 .. v27}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v18, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 288
    const/16 v29, 0x12

    .line 290
    const-string v32, "PackageNameDisableClipboardBlackList"

    .line 292
    const-string v31, "PKGNAME_CLIPBOARD_BLACKLIST"

    .line 294
    const/high16 v30, 0x200000

    .line 296
    const-string v33, "APPLICATION"

    .line 298
    move-object/from16 v28, v18

    .line 300
    invoke-direct/range {v28 .. v33}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v19, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 305
    const/16 v23, 0x13

    .line 307
    const-string v26, "PackageNameDisableClipboardWhitelist"

    .line 309
    const-string v25, "PKGNAME_CLIPBOARD_WHITELIST"

    .line 311
    const/high16 v24, 0x400000

    .line 313
    const-string v27, "APPLICATION"

    .line 315
    move-object/from16 v22, v19

    .line 317
    invoke-direct/range {v22 .. v27}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v20, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 322
    const/16 v29, 0x14

    .line 324
    const-string v32, "PackageNameFocusMonitoringList"

    .line 326
    const-string v31, "PKGNAME_FOCUSMONITORING_LIST"

    .line 328
    const/high16 v30, 0x800000

    .line 330
    const-string v33, "APPLICATION"

    .line 332
    move-object/from16 v28, v20

    .line 334
    invoke-direct/range {v28 .. v33}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v28, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 339
    const/16 v23, 0x15

    .line 341
    const-string v26, "PackageNameFocusMonitoringWhiteList"

    .line 343
    const-string v25, "PKGNAME_FOCUSMONITORING_WHITELIST"

    .line 345
    const/16 v24, 0x0

    .line 347
    const-string v27, "INVALID_TABLE"

    .line 349
    move-object/from16 v22, v28

    .line 351
    invoke-direct/range {v22 .. v27}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v22, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 356
    const/16 v30, 0x16

    .line 358
    const-string v33, "PackageNameDozeModeWhiteList"

    .line 360
    const-string v32, "PKGNAME_DOZEMODE_WHITELIST"

    .line 362
    const/high16 v31, 0x1000000

    .line 364
    const-string v34, "APPLICATION"

    .line 366
    move-object/from16 v29, v22

    .line 368
    invoke-direct/range {v29 .. v34}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v23, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 373
    const/16 v36, 0x17

    .line 375
    const-string v39, "PackageNameAvrWhitelist"

    .line 377
    const-string v38, "PKGNAME_AVR_WHITELIST"

    .line 379
    const/high16 v37, 0x20000000

    .line 381
    const-string v40, "APPLICATION"

    .line 383
    move-object/from16 v35, v23

    .line 385
    invoke-direct/range {v35 .. v40}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v24, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 390
    const/16 v30, 0x18

    .line 392
    const-string v33, "RevocationCheck"

    .line 394
    const-string v32, "PKGNAME_REVOCATION_CHECK"

    .line 396
    const/16 v31, 0x800

    .line 398
    const-string v34, "APPLICATION"

    .line 400
    move-object/from16 v29, v24

    .line 402
    invoke-direct/range {v29 .. v34}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v25, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 407
    const/16 v36, 0x19

    .line 409
    const-string v39, "OcspCheck"

    .line 411
    const-string v38, "PKGNAME_OCSP_CHECK"

    .line 413
    const/16 v37, 0x1000

    .line 415
    const-string v40, "APPLICATION"

    .line 417
    move-object/from16 v35, v25

    .line 419
    invoke-direct/range {v35 .. v40}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    new-instance v26, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 424
    const/16 v30, 0x1a

    .line 426
    const-string v33, "PackageNameUpdateWhitelist"

    .line 428
    const-string v32, "PKGNAME_UPDATE_WHITELIST"

    .line 430
    const/high16 v31, 0x40000

    .line 432
    const-string v34, "APPLICATION"

    .line 434
    move-object/from16 v29, v26

    .line 436
    invoke-direct/range {v29 .. v34}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    new-instance v27, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 441
    const/16 v36, 0x1b

    .line 443
    const-string v39, "PackageNameUpdateBlacklist"

    .line 445
    const-string v38, "PKGNAME_UPDATE_BLACKLIST"

    .line 447
    const/high16 v37, 0x20000

    .line 449
    const-string v40, "APPLICATION"

    .line 451
    move-object/from16 v35, v27

    .line 453
    invoke-direct/range {v35 .. v40}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v35, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 458
    const/16 v30, 0x1c

    .line 460
    const-string v33, "UninstallationBlacklist"

    .line 462
    const-string v32, "UNINSTALLATION_BLACKLIST"

    .line 464
    const/16 v31, 0x1

    .line 466
    const-string v34, "APPLICATION"

    .line 468
    move-object/from16 v29, v35

    .line 470
    invoke-direct/range {v29 .. v34}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v29, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 475
    const/16 v37, 0x1d

    .line 477
    const-string v40, "UninstallationWhitelist"

    .line 479
    const-string v39, "UNINSTALLATION_WHITELIST"

    .line 481
    const/16 v38, 0x400

    .line 483
    const-string v41, "APPLICATION"

    .line 485
    move-object/from16 v36, v29

    .line 487
    invoke-direct/range {v36 .. v41}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v30, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 492
    const/16 v43, 0x1e

    .line 494
    const-string v46, "PackageNameInstallerWhiteList"

    .line 496
    const-string v45, "PKGNAME_INSTALLER_WHITELIST"

    .line 498
    const/high16 v44, 0x2000000

    .line 500
    const-string v47, "APPLICATION"

    .line 502
    move-object/from16 v42, v30

    .line 504
    invoke-direct/range {v42 .. v47}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    new-instance v31, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 509
    const/16 v37, 0x1f

    .line 511
    const-string v40, "PackageNameInstallerBlackList"

    .line 513
    const-string v39, "PKGNAME_INSTALLER_BLACKLIST"

    .line 515
    const/high16 v38, 0x4000000

    .line 517
    const-string v41, "APPLICATION"

    .line 519
    move-object/from16 v36, v31

    .line 521
    invoke-direct/range {v36 .. v41}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v32, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 526
    const/16 v43, 0x20

    .line 528
    const-string v46, "PackageNameCameraAllowlist"

    .line 530
    const-string v45, "PKGNAME_CAMERA_ALLOWLIST"

    .line 532
    const/high16 v44, 0x40000000    # 2.0f

    .line 534
    const-string v47, "APPLICATION"

    .line 536
    move-object/from16 v42, v32

    .line 538
    invoke-direct/range {v42 .. v47}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance v33, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 543
    const/16 v37, 0x21

    .line 545
    const-string v40, "SignatureCameraAllowlist"

    .line 547
    const-string v39, "SIGNATURE_CAMERA_ALLOWLIST"

    .line 549
    const/16 v38, 0x4

    .line 551
    const-string/jumbo v41, "signature"

    .line 554
    move-object/from16 v36, v33

    .line 556
    invoke-direct/range {v36 .. v41}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    move-object v0, v6

    .line 560
    move-object v6, v7

    .line 561
    move-object v7, v14

    .line 562
    move-object/from16 v14, v21

    .line 564
    move-object/from16 v21, v28

    .line 566
    move-object/from16 v28, v35

    .line 568
    filled-new-array/range {v0 .. v33}, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 571
    move-result-object v0

    .line 572
    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->$VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 574
    new-instance v0, Ljava/util/HashMap;

    .line 576
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 579
    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->sAppApiMaskToKey:Ljava/util/Map;

    .line 581
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->values()[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 584
    move-result-object v0

    .line 585
    array-length v1, v0

    .line 586
    const/4 v2, 0x0

    .line 587
    :goto_0
    if-ge v2, v1, :cond_1

    .line 589
    aget-object v3, v0, v2

    .line 591
    iget-object v4, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->table:Ljava/lang/String;

    .line 593
    const-string v5, "APPLICATION"

    .line 595
    if-ne v4, v5, :cond_0

    .line 597
    sget-object v4, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->sAppApiMaskToKey:Ljava/util/Map;

    .line 599
    iget v5, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->mask:I

    .line 601
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 604
    move-result-object v5

    .line 605
    iget-object v3, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    .line 607
    check-cast v4, Ljava/util/HashMap;

    .line 609
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 614
    goto :goto_0

    .line 615
    :cond_1
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->mask:I

    .line 8
    iput-object p5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->table:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->$VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getAdminMapKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method
