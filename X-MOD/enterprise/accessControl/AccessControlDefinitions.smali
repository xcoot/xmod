.class public abstract Lcom/android/server/enterprise/accessControl/AccessControlDefinitions;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACCESS_CONTROL_MAP:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions;->ACCESS_CONTROL_MAP:Ljava/util/HashMap;

    .line 8
    new-instance v8, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    .line 18
    move-object v1, v8

    .line 19
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 22
    const-string v1, "SET_ADMIN_REMOVABLE_TRUE"

    .line 24
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 29
    const/4 v12, 0x1

    .line 30
    const/4 v13, 0x0

    .line 31
    const/4 v10, 0x1

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v14, 0x1

    .line 34
    const-string/jumbo v15, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    .line 37
    move-object v9, v1

    .line 38
    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 41
    const-string v2, "SET_ADMIN_REMOVABLE_FALSE"

    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 48
    const/4 v6, 0x1

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x1

    .line 51
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 54
    move-object v3, v1

    .line 55
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 58
    const-string v2, "INSTALL_APPLICATION"

    .line 60
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 65
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 68
    move-object v3, v1

    .line 69
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 72
    const-string v2, "UNINSTALL_APPLICATION"

    .line 74
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 79
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 82
    move-object v3, v1

    .line 83
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 86
    const-string v2, "APPLICATION_STATE"

    .line 88
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 93
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 96
    move-object v3, v1

    .line 97
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 100
    const-string v2, "INSTALLATION_DISABLED"

    .line 102
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 107
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 110
    move-object v3, v1

    .line 111
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 114
    const-string v2, "UNINSTALLATION_DISABLED"

    .line 116
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 121
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 124
    move-object v3, v1

    .line 125
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 128
    const-string v2, "STOP_APP"

    .line 130
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 135
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 138
    move-object v3, v1

    .line 139
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 142
    const-string v2, "START_APP"

    .line 144
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 149
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 152
    move-object v3, v1

    .line 153
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 156
    const-string v2, "PREVENT_START_BLACKLIST"

    .line 158
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 163
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 166
    move-object v3, v1

    .line 167
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 170
    const-string v2, "RESTRICTION_ADMIN"

    .line 172
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 177
    const/4 v4, 0x0

    .line 178
    const/4 v5, 0x1

    .line 179
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 182
    move-object v3, v1

    .line 183
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 186
    const-string v2, "DISABLE_UPDATE_WHITELIST"

    .line 188
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 193
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 196
    move-object v3, v1

    .line 197
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 200
    const-string v2, "DISABLE_UPDATE_BLACKLIST"

    .line 202
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 207
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 210
    move-object v3, v1

    .line 211
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 214
    const-string v2, "ADD_PACKAGE_WHITE_LIST"

    .line 216
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 221
    const/4 v4, 0x1

    .line 222
    const/4 v5, 0x0

    .line 223
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 226
    move-object v3, v1

    .line 227
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 230
    const-string v2, "ADD_PACKAGE_INSTALLATION_BLACK_LIST"

    .line 232
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 237
    const/4 v7, 0x1

    .line 238
    const/4 v8, 0x0

    .line 239
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_AUTHORIZATION"

    .line 242
    move-object v3, v1

    .line 243
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 246
    const-string v2, "SET_AUTHORIZED_SCOPES"

    .line 248
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 253
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_AUTHORIZATION"

    .line 256
    move-object v3, v1

    .line 257
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 260
    const-string v2, "GET_AUTHORIZED_SCOPES"

    .line 262
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 267
    const/4 v2, 0x1

    .line 268
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    .line 271
    invoke-direct {v1, v2, v3, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 274
    const-string v4, "INJECT_KEY_EVENT"

    .line 276
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 281
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 284
    invoke-direct {v1, v2, v4, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 287
    const-string v5, "INJECT_KEY_EVENT_DEX"

    .line 289
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 294
    invoke-direct {v1, v2, v3, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 297
    const-string v5, "INJECT_POINTER_EVENT"

    .line 299
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 304
    invoke-direct {v1, v2, v4, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 307
    const-string v5, "INJECT_POINTER_EVENT_DEX"

    .line 309
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 314
    invoke-direct {v1, v2, v3, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 317
    const-string v5, "INJECT_TRACKBALL_EVENT"

    .line 319
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 324
    invoke-direct {v1, v2, v3, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 327
    const-string v3, "REMOTE_DESKTOP_CONTROL"

    .line 329
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 334
    invoke-direct {v1, v2, v4, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 337
    const-string v2, "REMOTE_DESKTOP_ADVANCED"

    .line 339
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 344
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

    .line 347
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    .line 350
    invoke-static {v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 353
    move-result-object v9

    .line 354
    const/4 v7, 0x0

    .line 355
    const/4 v8, 0x1

    .line 356
    const/4 v4, 0x0

    .line 357
    const/4 v5, 0x0

    .line 358
    const/4 v6, 0x1

    .line 359
    const/4 v10, 0x0

    .line 360
    move-object v3, v1

    .line 361
    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/util/List;I)V

    .line 364
    const-string v2, "HARD_KEY_INTENT_STATE"

    .line 366
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 371
    const/4 v6, 0x1

    .line 372
    const/4 v7, 0x0

    .line 373
    const/4 v4, 0x0

    .line 374
    const/4 v5, 0x0

    .line 375
    const/4 v8, 0x1

    .line 376
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    .line 379
    move-object v3, v1

    .line 380
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 383
    const-string v2, "HARD_KEY_INTENT_BROADCAST"

    .line 385
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 390
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 393
    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    .line 396
    invoke-static {v2, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 399
    move-result-object v9

    .line 400
    const/4 v7, 0x0

    .line 401
    const/4 v8, 0x1

    .line 402
    const/4 v4, 0x1

    .line 403
    const/4 v5, 0x0

    .line 404
    const/4 v6, 0x1

    .line 405
    const/4 v10, 0x0

    .line 406
    move-object v3, v1

    .line 407
    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/util/List;I)V

    .line 410
    const-string v3, "RESET_CREDENTIAL_STORAGE"

    .line 412
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 417
    invoke-static {v2, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 420
    move-result-object v18

    .line 421
    const/16 v16, 0x0

    .line 423
    const/16 v17, 0x1

    .line 425
    const/4 v13, 0x1

    .line 426
    const/4 v14, 0x0

    .line 427
    const/4 v15, 0x1

    .line 428
    const/16 v19, 0x0

    .line 430
    move-object v12, v1

    .line 431
    invoke-direct/range {v12 .. v19}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/util/List;I)V

    .line 434
    const-string v3, "ADD_PACKAGE_CERT_WHITE_LIST"

    .line 436
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 441
    invoke-static {v2, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 444
    move-result-object v18

    .line 445
    const/16 v16, 0x0

    .line 447
    const/16 v17, 0x1

    .line 449
    const/4 v13, 0x1

    .line 450
    const/4 v14, 0x0

    .line 451
    const/4 v15, 0x1

    .line 452
    const/16 v19, 0x0

    .line 454
    move-object v12, v1

    .line 455
    invoke-direct/range {v12 .. v19}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/util/List;I)V

    .line 458
    const-string v3, "DELETE_CERT_FROM_USER_SCOPE_KEYSTORE"

    .line 460
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 465
    const/4 v7, 0x1

    .line 466
    const/4 v8, 0x0

    .line 467
    const/4 v5, 0x0

    .line 468
    const/4 v6, 0x1

    .line 469
    const/4 v9, 0x1

    .line 470
    const-string/jumbo v10, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    .line 473
    move-object v4, v1

    .line 474
    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 477
    const-string v3, "DELETE_CERT_FROM_GLOBAL_SCOPE_KEYSTORE"

    .line 479
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 484
    invoke-static {v2, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 487
    move-result-object v18

    .line 488
    const/16 v16, 0x0

    .line 490
    const/16 v17, 0x1

    .line 492
    const/4 v13, 0x1

    .line 493
    const/4 v14, 0x0

    .line 494
    const/4 v15, 0x1

    .line 495
    const/16 v19, 0x0

    .line 497
    move-object v12, v1

    .line 498
    invoke-direct/range {v12 .. v19}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/util/List;I)V

    .line 501
    const-string v2, "INSTALL_CERT_TO_USER_SCOPE_KEYSTORE"

    .line 503
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 508
    const/4 v6, 0x1

    .line 509
    const/4 v7, 0x0

    .line 510
    const/4 v4, 0x0

    .line 511
    const/4 v5, 0x1

    .line 512
    const/4 v8, 0x1

    .line 513
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    .line 516
    move-object v3, v1

    .line 517
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 520
    const-string v2, "INSTALL_CERT_TO_GLOBAL_SCOPE_KEYSTORE"

    .line 522
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 527
    const/4 v6, 0x0

    .line 528
    const/4 v4, 0x1

    .line 529
    const/4 v5, 0x0

    .line 530
    const/4 v8, 0x0

    .line 531
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    .line 534
    move-object v3, v1

    .line 535
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 538
    const-string v2, "PROVISION_CERT_APP"

    .line 540
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 545
    const/4 v2, 0x2

    .line 546
    const/4 v3, 0x0

    .line 547
    invoke-direct {v1, v2, v11, v3}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 550
    const-string v2, "PROVISION_CERT_SYSTEM"

    .line 552
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    return-void
.end method
