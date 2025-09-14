.class public final Lcom/android/server/knox/DevicePolicyManagerAnalytics;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

.field public static final DPMS_EVENTS_MAP:Ljava/util/HashMap;

.field public static final DPMS_EX_ADMINS:Ljava/util/ArrayList;

.field public static final DPMS_EX_EVENTS:Ljava/util/HashMap;

.field public static final DPMS_KA_COUNTER_EVENTS_MAP:Ljava/util/HashMap;


# instance fields
.field public final context:Landroid/content/Context;

.field public final ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

.field public final oneUiAndOSVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DEBUG:Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    sput-object v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EVENTS_MAP:Ljava/util/HashMap;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    .line 26
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    sput-object v1, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EX_EVENTS:Ljava/util/HashMap;

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    sput-object v2, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EX_ADMINS:Ljava/util/ArrayList;

    .line 38
    new-instance v3, Ljava/util/HashMap;

    .line 40
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 43
    sput-object v3, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

    .line 45
    new-instance v4, Ljava/util/HashMap;

    .line 47
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 50
    sput-object v4, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_KA_COUNTER_EVENTS_MAP:Ljava/util/HashMap;

    .line 52
    const/16 v5, 0xd9

    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v5

    .line 58
    const-string v6, "SET_APPLICATION_EXEMPTIONS"

    .line 60
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const/16 v3, 0xcc

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v3

    .line 69
    const-string v7, "GET_ACCOUNT_AUTH_TOKEN"

    .line 71
    invoke-virtual {v1, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 v8, 0x7d

    .line 76
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v8

    .line 80
    const-string v9, "CROSS_PROFILE_APPS_GET_TARGET_USER_PROFILES"

    .line 82
    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v1, "com.google.android.gms"

    .line 88
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    const-string/jumbo v1, "com.google.android.gms.supervision"

    .line 94
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v1, 0x1

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v1

    .line 102
    const-string v2, "SET_PASSWORD_QUALITY"

    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v1, 0x2

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v1

    .line 112
    const-string v2, "SET_PASSWORD_MINIMUM_LENGTH"

    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/4 v1, 0x3

    .line 118
    const-string v2, "SET_PASSWORD_MINIMUM_NUMERIC"

    .line 120
    const/4 v10, 0x4

    .line 121
    const-string v11, "SET_PASSWORD_MINIMUM_NON_LETTER"

    .line 123
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    const/4 v1, 0x5

    .line 127
    const-string v2, "SET_PASSWORD_MINIMUM_LETTERS"

    .line 129
    const/4 v10, 0x6

    .line 130
    const-string v11, "SET_PASSWORD_MINIMUM_LOWER_CASE"

    .line 132
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    const/4 v1, 0x7

    .line 136
    const-string v2, "SET_PASSWORD_MINIMUM_UPPER_CASE"

    .line 138
    const/16 v10, 0x8

    .line 140
    const-string v11, "SET_PASSWORD_MINIMUM_SYMBOLS"

    .line 142
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    const/16 v1, 0x9

    .line 147
    const-string v2, "SET_KEYGUARD_DISABLED_FEATURES"

    .line 149
    const/16 v10, 0xa

    .line 151
    const-string v11, "LOCK_NOW"

    .line 153
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    const/16 v1, 0xb

    .line 158
    const-string v2, "WIPE_DATA_WITH_REASON"

    .line 160
    const/16 v10, 0xc

    .line 162
    const-string v11, "ADD_USER_RESTRICTION"

    .line 164
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    const/16 v1, 0xd

    .line 169
    const-string v2, "REMOVE_USER_RESTRICTION"

    .line 171
    const/16 v10, 0xe

    .line 173
    const-string v11, "SET_SECURE_SETTING"

    .line 175
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    const/16 v1, 0xf

    .line 180
    const-string v2, "SET_SECURITY_LOGGING_ENABLED"

    .line 182
    const/16 v10, 0x10

    .line 184
    const-string v11, "RETRIEVE_SECURITY_LOGS"

    .line 186
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    const/16 v1, 0x11

    .line 191
    const-string v2, "RETRIEVE_PRE_REBOOT_SECURITY_LOGS"

    .line 193
    const/16 v10, 0x12

    .line 195
    const-string v11, "SET_PERMISSION_POLICY"

    .line 197
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    const/16 v1, 0x13

    .line 202
    const-string v2, "SET_PERMISSION_GRANT_STATE"

    .line 204
    const/16 v10, 0x14

    .line 206
    const-string v11, "INSTALL_KEY_PAIR"

    .line 208
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    const/16 v1, 0x15

    .line 213
    const-string v2, "INSTALL_CA_CERT"

    .line 215
    const/16 v10, 0x16

    .line 217
    const-string v11, "CHOOSE_PRIVATE_KEY_ALIAS"

    .line 219
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    const/16 v1, 0x17

    .line 224
    const-string v2, "REMOVE_KEY_PAIR"

    .line 226
    const/16 v10, 0x18

    .line 228
    const-string v11, "UNINSTALL_CA_CERTS"

    .line 230
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    const/16 v1, 0x19

    .line 235
    const-string v2, "SET_CERT_INSTALLER_PACKAGE"

    .line 237
    const/16 v10, 0x1a

    .line 239
    const-string v11, "SET_ALWAYS_ON_VPN_PACKAGE"

    .line 241
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    const/16 v1, 0x1b

    .line 246
    const-string v2, "SET_PERMITTED_INPUT_METHODS"

    .line 248
    const/16 v10, 0x1c

    .line 250
    const-string v11, "SET_PERMITTED_ACCESSIBILITY_SERVICES"

    .line 252
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    const/16 v1, 0x1d

    .line 257
    const-string v2, "SET_SCREEN_CAPTURE_DISABLED"

    .line 259
    const/16 v10, 0x1e

    .line 261
    const-string v11, "SET_CAMERA_DISABLED"

    .line 263
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    const/16 v1, 0x1f

    .line 268
    const-string v2, "QUERY_SUMMARY_FOR_USER"

    .line 270
    const/16 v10, 0x20

    .line 272
    const-string v11, "QUERY_SUMMARY"

    .line 274
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    const/16 v1, 0x21

    .line 279
    const-string v2, "QUERY_DETAILS"

    .line 281
    const/16 v10, 0x22

    .line 283
    const-string v11, "REBOOT"

    .line 285
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    const/16 v1, 0x23

    .line 290
    const-string v2, "SET_MASTER_VOLUME_MUTED"

    .line 292
    const/16 v10, 0x24

    .line 294
    const-string v11, "SET_AUTO_TIME_REQUIRED"

    .line 296
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    const/16 v1, 0x25

    .line 301
    const-string v2, "SET_KEYGUARD_DISABLED"

    .line 303
    const/16 v10, 0x26

    .line 305
    const-string v11, "SET_STATUS_BAR_DISABLED"

    .line 307
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    const/16 v1, 0x27

    .line 312
    const-string v2, "SET_ORGANIZATION_COLOR"

    .line 314
    const/16 v10, 0x28

    .line 316
    const-string v11, "SET_PROFILE_NAME"

    .line 318
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    const/16 v1, 0x29

    .line 323
    const-string v2, "SET_USER_ICON"

    .line 325
    const/16 v10, 0x2a

    .line 327
    const-string v11, "SET_DEVICE_OWNER_LOCK_SCREEN_INFO"

    .line 329
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 332
    const/16 v1, 0x2b

    .line 334
    const-string v2, "SET_SHORT_SUPPORT_MESSAGE"

    .line 336
    const/16 v10, 0x2c

    .line 338
    const-string v11, "SET_LONG_SUPPORT_MESSAGE"

    .line 340
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    const/16 v1, 0x2d

    .line 345
    const-string v2, "SET_CROSS_PROFILE_CONTACTS_SEARCH_DISABLED"

    .line 347
    const/16 v10, 0x2e

    .line 349
    const-string v11, "SET_CROSS_PROFILE_CALLER_ID_DISABLED"

    .line 351
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    const/16 v1, 0x2f

    .line 356
    const-string v2, "SET_BLUETOOTH_CONTACT_SHARING_DISABLED"

    .line 358
    const/16 v10, 0x30

    .line 360
    const-string v11, "ADD_CROSS_PROFILE_INTENT_FILTER"

    .line 362
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    const/16 v1, 0x31

    .line 367
    const-string v2, "ADD_CROSS_PROFILE_WIDGET_PROVIDER"

    .line 369
    const/16 v10, 0x32

    .line 371
    const-string v11, "SET_SYSTEM_UPDATE_POLICY"

    .line 373
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 376
    const/16 v1, 0x33

    .line 378
    const-string v2, "SET_LOCKTASK_MODE_ENABLED"

    .line 380
    const/16 v10, 0x34

    .line 382
    const-string v11, "ADD_PERSISTENT_PREFERRED_ACTIVITY"

    .line 384
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 387
    const/16 v1, 0x35

    .line 389
    const-string v2, "REQUEST_BUGREPORT"

    .line 391
    const/16 v10, 0x36

    .line 393
    const-string v11, "GET_WIFI_MAC_ADDRESS"

    .line 395
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 398
    const/16 v1, 0x37

    .line 400
    const-string v2, "REQUEST_QUIET_MODE_ENABLED"

    .line 402
    const/16 v10, 0x38

    .line 404
    const-string v11, "WORK_PROFILE_LOCATION_CHANGED"

    .line 406
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 409
    const/16 v1, 0x39

    .line 411
    const-string v2, "DO_USER_INFO_CLICKED"

    .line 413
    const/16 v10, 0x3a

    .line 415
    const-string v11, "TRANSFER_OWNERSHIP"

    .line 417
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    const/16 v1, 0x3b

    .line 422
    const-string v2, "GENERATE_KEY_PAIR"

    .line 424
    const/16 v10, 0x3c

    .line 426
    const-string v11, "SET_KEY_PAIR_CERTIFICATE"

    .line 428
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 431
    const/16 v1, 0x3d

    .line 433
    const-string v2, "SET_KEEP_UNINSTALLED_PACKAGES"

    .line 435
    const/16 v10, 0x3e

    .line 437
    const-string v11, "SET_APPLICATION_RESTRICTIONS"

    .line 439
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 442
    const/16 v1, 0x3f

    .line 444
    const-string v2, "SET_APPLICATION_HIDDEN"

    .line 446
    const/16 v10, 0x40

    .line 448
    const-string v11, "ENABLE_SYSTEM_APP"

    .line 450
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 453
    const/16 v1, 0x41

    .line 455
    const-string v2, "ENABLE_SYSTEM_APP_WITH_INTENT"

    .line 457
    const/16 v10, 0x42

    .line 459
    const-string v11, "INSTALL_EXISTING_PACKAGE"

    .line 461
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 464
    const/16 v1, 0x43

    .line 466
    const-string v2, "SET_UNINSTALL_BLOCKED"

    .line 468
    const/16 v10, 0x44

    .line 470
    const-string v11, "SET_PACKAGES_SUSPENDED"

    .line 472
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 475
    const/16 v1, 0x45

    .line 477
    const-string v2, "ON_LOCK_TASK_MODE_ENTERING"

    .line 479
    const/16 v10, 0x46

    .line 481
    const-string v11, "SET_CROSS_PROFILE_CALENDAR_PACKAGES"

    .line 483
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    const/16 v1, 0x48

    .line 488
    const-string v2, "GET_USER_PASSWORD_COMPLEXITY_LEVEL"

    .line 490
    const/16 v10, 0x49

    .line 492
    const-string v11, "INSTALL_SYSTEM_UPDATE"

    .line 494
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    const/16 v1, 0x4a

    .line 499
    const-string v2, "INSTALL_SYSTEM_UPDATE_ERROR"

    .line 501
    const/16 v10, 0x4b

    .line 503
    const-string v11, "IS_MANAGED_KIOSK"

    .line 505
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 508
    const/16 v1, 0x4c

    .line 510
    const-string v2, "IS_UNATTENDED_MANAGED_KIOSK"

    .line 512
    const/16 v10, 0x4d

    .line 514
    const-string v11, "PROVISIONING_MANAGED_PROFILE_ON_FULLY_MANAGED_DEVICE"

    .line 516
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 519
    const/16 v1, 0x4e

    .line 521
    const-string v2, "PROVISIONING_PERSISTENT_DEVICE_OWNER"

    .line 523
    const/16 v10, 0x4f

    .line 525
    const-string v11, "PROVISIONING_ENTRY_POINT_NFC"

    .line 527
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 530
    const/16 v1, 0x50

    .line 532
    const-string v2, "PROVISIONING_ENTRY_POINT_QR_CODE"

    .line 534
    const/16 v10, 0x51

    .line 536
    const-string v11, "PROVISIONING_ENTRY_POINT_CLOUD_ENROLLMENT"

    .line 538
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 541
    const/16 v1, 0x52

    .line 543
    const-string v2, "PROVISIONING_ENTRY_POINT_ADB"

    .line 545
    const/16 v10, 0x53

    .line 547
    const-string v11, "PROVISIONING_ENTRY_POINT_TRUSTED_SOURCE"

    .line 549
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 552
    const/16 v1, 0x54

    .line 554
    const-string v2, "PROVISIONING_DPC_PACKAGE_NAME"

    .line 556
    const/16 v10, 0x55

    .line 558
    const-string v11, "PROVISIONING_DPC_INSTALLED_BY_PACKAGE"

    .line 560
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 563
    const/16 v1, 0x56

    .line 565
    const-string v2, "PROVISIONING_PROVISIONING_ACTIVITY_TIME_MS"

    .line 567
    const/16 v10, 0x57

    .line 569
    const-string v11, "PROVISIONING_PREPROVISIONING_ACTIVITY_TIME_MS"

    .line 571
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 574
    const/16 v1, 0x58

    .line 576
    const-string v2, "PROVISIONING_ENCRYPT_DEVICE_ACTIVITY_TIME_MS"

    .line 578
    const/16 v10, 0x59

    .line 580
    const-string v11, "PROVISIONING_WEB_ACTIVITY_TIME_MS"

    .line 582
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 585
    const/16 v1, 0x5d

    .line 587
    const-string v2, "PROVISIONING_NETWORK_TYPE"

    .line 589
    const/16 v10, 0x5e

    .line 591
    const-string v11, "PROVISIONING_ACTION"

    .line 593
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 596
    const/16 v1, 0x5f

    .line 598
    const-string v2, "PROVISIONING_EXTRAS"

    .line 600
    const/16 v10, 0x60

    .line 602
    const-string v11, "PROVISIONING_COPY_ACCOUNT_TASK_MS"

    .line 604
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 607
    const/16 v1, 0x61

    .line 609
    const-string v2, "PROVISIONING_CREATE_PROFILE_TASK_MS"

    .line 611
    const/16 v10, 0x62

    .line 613
    const-string v11, "PROVISIONING_START_PROFILE_TASK_MS"

    .line 615
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 618
    const/16 v1, 0x63

    .line 620
    const-string v2, "PROVISIONING_DOWNLOAD_PACKAGE_TASK_MS"

    .line 622
    const/16 v10, 0x64

    .line 624
    const-string v11, "PROVISIONING_INSTALL_PACKAGE_TASK_MS"

    .line 626
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 629
    const/16 v1, 0x65

    .line 631
    const-string v2, "PROVISIONING_CANCELLED"

    .line 633
    const/16 v10, 0x66

    .line 635
    const-string v11, "PROVISIONING_ERROR"

    .line 637
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 640
    const/16 v1, 0x67

    .line 642
    const-string v2, "PROVISIONING_COPY_ACCOUNT_STATUS"

    .line 644
    const/16 v10, 0x68

    .line 646
    const-string v11, "PROVISIONING_TOTAL_TASK_TIME_MS"

    .line 648
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 651
    const/16 v1, 0x69

    .line 653
    const-string v2, "PROVISIONING_SESSION_STARTED"

    .line 655
    const/16 v10, 0x6a

    .line 657
    const-string v11, "PROVISIONING_SESSION_COMPLETED"

    .line 659
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 662
    const/16 v1, 0x6b

    .line 664
    const-string v2, "PROVISIONING_TERMS_ACTIVITY_TIME_MS"

    .line 666
    const/16 v10, 0x6c

    .line 668
    const-string v11, "PROVISIONING_TERMS_COUNT"

    .line 670
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 673
    const/16 v1, 0x6d

    .line 675
    const-string v2, "PROVISIONING_TERMS_READ"

    .line 677
    const/16 v10, 0x6e

    .line 679
    const-string v11, "SEPARATE_PROFILE_CHALLENGE_CHANGED"

    .line 681
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 684
    const/16 v1, 0x6f

    .line 686
    const-string v2, "SET_GLOBAL_SETTING"

    .line 688
    const/16 v10, 0x70

    .line 690
    const-string v11, "INSTALL_PACKAGE"

    .line 692
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 695
    const/16 v1, 0x71

    .line 697
    const-string v2, "UNINSTALL_PACKAGE"

    .line 699
    const/16 v10, 0x72

    .line 701
    const-string v11, "WIFI_SERVICE_ADD_NETWORK_SUGGESTIONS"

    .line 703
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 706
    const/16 v1, 0x73

    .line 708
    const-string v2, "WIFI_SERVICE_ADD_OR_UPDATE_NETWORK"

    .line 710
    const/16 v10, 0x74

    .line 712
    const-string v11, "QUERY_SUMMARY_FOR_DEVICE"

    .line 714
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 717
    const/16 v1, 0x75

    .line 719
    const-string v2, "REMOVE_CROSS_PROFILE_WIDGET_PROVIDER"

    .line 721
    const/16 v10, 0x76

    .line 723
    const-string v11, "ESTABLISH_VPN"

    .line 725
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 728
    const/16 v1, 0x77

    .line 730
    const-string v2, "SET_NETWORK_LOGGING_ENABLED"

    .line 732
    const/16 v10, 0x78

    .line 734
    const-string v11, "RETRIEVE_NETWORK_LOGS"

    .line 736
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 739
    const/16 v1, 0x79

    .line 741
    const-string v2, "PROVISIONING_PREPARE_TOTAL_TIME_MS"

    .line 743
    const/16 v10, 0x7a

    .line 745
    const-string v11, "PROVISIONING_PREPARE_STARTED"

    .line 747
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 750
    const/16 v1, 0x7b

    .line 752
    const-string v2, "PROVISIONING_PREPARE_COMPLETED"

    .line 754
    const/16 v10, 0x7c

    .line 756
    const-string v11, "PROVISIONING_FLOW_TYPE"

    .line 758
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 761
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const/16 v1, 0x7e

    .line 766
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 769
    move-result-object v1

    .line 770
    const-string v2, "CROSS_PROFILE_APPS_START_ACTIVITY_AS_USER"

    .line 772
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const/16 v1, 0x7f

    .line 777
    const-string v2, "SET_AUTO_TIME"

    .line 779
    const/16 v8, 0x80

    .line 781
    const-string v9, "SET_AUTO_TIME_ZONE"

    .line 783
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 786
    const/16 v1, 0x81

    .line 788
    const-string v2, "SET_USER_CONTROL_DISABLED_PACKAGES"

    .line 790
    const/16 v8, 0x82

    .line 792
    const-string v9, "SET_FACTORY_RESET_PROTECTION"

    .line 794
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 797
    const/16 v1, 0x83

    .line 799
    const-string v2, "SET_COMMON_CRITERIA_MODE"

    .line 801
    const/16 v8, 0x84

    .line 803
    const-string v9, "ALLOW_MODIFICATION_OF_ADMIN_CONFIGURED_NETWORKS"

    .line 805
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 808
    const/16 v1, 0x85

    .line 810
    const-string v2, "SET_TIME"

    .line 812
    const/16 v8, 0x86

    .line 814
    const-string v9, "SET_TIME_ZONE"

    .line 816
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 819
    const/16 v1, 0x87

    .line 821
    const-string v2, "SET_PERSONAL_APPS_SUSPENDED"

    .line 823
    const/16 v8, 0x88

    .line 825
    const-string v9, "SET_MANAGED_PROFILE_MAXIMUM_TIME_OFF"

    .line 827
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 830
    const/16 v1, 0x89

    .line 832
    const-string v2, "COMP_TO_ORG_OWNED_PO_MIGRATED"

    .line 834
    const/16 v8, 0x8a

    .line 836
    const-string v9, "SET_CROSS_PROFILE_PACKAGES"

    .line 838
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 841
    const/16 v1, 0x8b

    .line 843
    const-string v2, "SET_INTERACT_ACROSS_PROFILES_APP_OP"

    .line 845
    const/16 v8, 0x8c

    .line 847
    const-string v9, "GET_CROSS_PROFILE_PACKAGES"

    .line 849
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 852
    const/16 v1, 0x8d

    .line 854
    const-string v2, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_TRUE"

    .line 856
    const/16 v8, 0x8e

    .line 858
    const-string v9, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_NO_PROFILES"

    .line 860
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 863
    const/16 v1, 0x8f

    .line 865
    const-string v2, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_WHITELIST"

    .line 867
    const/16 v8, 0x90

    .line 869
    const-string v9, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_PERMISSION"

    .line 871
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 874
    const/16 v1, 0x91

    .line 876
    const-string v2, "CAN_INTERACT_ACROSS_PROFILES_TRUE"

    .line 878
    const/16 v8, 0x92

    .line 880
    const-string v9, "CAN_INTERACT_ACROSS_PROFILES_FALSE_PERMISSION"

    .line 882
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 885
    const/16 v1, 0x93

    .line 887
    const-string v2, "CAN_INTERACT_ACROSS_PROFILES_FALSE_NO_PROFILES"

    .line 889
    const/16 v8, 0x94

    .line 891
    const-string v9, "CREATE_CROSS_PROFILE_INTENT"

    .line 893
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 896
    const/16 v1, 0x95

    .line 898
    const-string v2, "IS_MANAGED_PROFILE"

    .line 900
    const/16 v8, 0x96

    .line 902
    const-string v9, "START_ACTIVITY_BY_INTENT"

    .line 904
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 907
    const/16 v1, 0x97

    .line 909
    const-string v2, "BIND_CROSS_PROFILE_SERVICE"

    .line 911
    const/16 v8, 0x98

    .line 913
    const-string v9, "PROVISIONING_DPC_SETUP_STARTED"

    .line 915
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 918
    const/16 v1, 0x99

    .line 920
    const-string v2, "PROVISIONING_DPC_SETUP_COMPLETED"

    .line 922
    const/16 v8, 0x9a

    .line 924
    const-string v9, "PROVISIONING_ORGANIZATION_OWNED_MANAGED_PROFILE"

    .line 926
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 929
    const/16 v1, 0x9b

    .line 931
    const-string v2, "RESOLVER_CROSS_PROFILE_TARGET_OPENED"

    .line 933
    const/16 v8, 0x9c

    .line 935
    const-string v9, "RESOLVER_SWITCH_TABS"

    .line 937
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 940
    const/16 v1, 0x9d

    .line 942
    const-string v2, "RESOLVER_EMPTY_STATE_WORK_APPS_DISABLED"

    .line 944
    const/16 v8, 0x9e

    .line 946
    const-string v9, "RESOLVER_EMPTY_STATE_NO_SHARING_TO_PERSONAL"

    .line 948
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 951
    const/16 v1, 0x9f

    .line 953
    const-string v2, "RESOLVER_EMPTY_STATE_NO_SHARING_TO_WORK"

    .line 955
    const/16 v8, 0xa0

    .line 957
    const-string v9, "RESOLVER_EMPTY_STATE_NO_APPS_RESOLVED"

    .line 959
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 962
    const/16 v1, 0xa1

    .line 964
    const-string v2, "RESOLVER_AUTOLAUNCH_CROSS_PROFILE_TARGET"

    .line 966
    const/16 v8, 0xa2

    .line 968
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_LAUNCHED_FROM_APP"

    .line 970
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 973
    const/16 v1, 0xa3

    .line 975
    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_LAUNCHED_FROM_SETTINGS"

    .line 977
    const/16 v8, 0xa4

    .line 979
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_ADMIN_RESTRICTED"

    .line 981
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 984
    const/16 v1, 0xa5

    .line 986
    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_WORK_APP"

    .line 988
    const/16 v8, 0xa6

    .line 990
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_PERSONAL_APP"

    .line 992
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 995
    const/16 v1, 0xa7

    .line 997
    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_INSTALL_BANNER_INTENT"

    .line 999
    const/16 v8, 0xa8

    .line 1001
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_INSTALL_BANNER_CLICKED"

    .line 1003
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1006
    const/16 v1, 0xa9

    .line 1008
    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_INSTALL_BANNER_NO_INTENT_CLICKED"

    .line 1010
    const/16 v8, 0xaa

    .line 1012
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_USER_CONSENTED"

    .line 1014
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1017
    const/16 v1, 0xab

    .line 1019
    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_USER_DECLINED_CONSENT"

    .line 1021
    const/16 v8, 0xac

    .line 1023
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_PERMISSION_REVOKED"

    .line 1025
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1028
    const/16 v1, 0xad

    .line 1030
    const-string v2, "DOCSUI_EMPTY_STATE_NO_PERMISSION"

    .line 1032
    const/16 v8, 0xae

    .line 1034
    const-string v9, "DOCSUI_EMPTY_STATE_QUIET_MODE"

    .line 1036
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1039
    const/16 v1, 0xaf

    .line 1041
    const-string v2, "DOCSUI_LAUNCH_OTHER_APP"

    .line 1043
    const/16 v8, 0xb0

    .line 1045
    const-string v9, "DOCSUI_PICK_RESULT"

    .line 1047
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1050
    const/16 v1, 0xb1

    .line 1052
    const-string v2, "SET_PASSWORD_COMPLEXITY"

    .line 1054
    const/16 v8, 0xb2

    .line 1056
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_REQUEST_NAME"

    .line 1058
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1061
    const/16 v1, 0xb3

    .line 1063
    const-string v2, "CREDENTIAL_MANAGEMENT_APP_REQUEST_POLICY"

    .line 1065
    const/16 v8, 0xb4

    .line 1067
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_REQUEST_ACCEPTED"

    .line 1069
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1072
    const/16 v1, 0xb5

    .line 1074
    const-string v2, "CREDENTIAL_MANAGEMENT_APP_REQUEST_DENIED"

    .line 1076
    const/16 v8, 0xb6

    .line 1078
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_REQUEST_FAILED"

    .line 1080
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1083
    const/16 v1, 0xb7

    .line 1085
    const-string v2, "CREDENTIAL_MANAGEMENT_APP_CREDENTIAL_FOUND_IN_POLICY"

    .line 1087
    const/16 v8, 0xb8

    .line 1089
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_INSTALL_KEY_PAIR_FAILED"

    .line 1091
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1094
    const/16 v1, 0xb9

    .line 1096
    const-string v2, "CREDENTIAL_MANAGEMENT_APP_GENERATE_KEY_PAIR_FAILED"

    .line 1098
    const/16 v8, 0xba

    .line 1100
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_POLICY_LOOKUP_FAILED"

    .line 1102
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1105
    const/16 v1, 0xbb

    .line 1107
    const-string v2, "CREDENTIAL_MANAGEMENT_APP_REMOVED"

    .line 1109
    const/16 v8, 0xbc

    .line 1111
    const-string v9, "SET_ORGANIZATION_ID"

    .line 1113
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1116
    const/16 v1, 0xbd

    .line 1118
    const-string v2, "IS_ACTIVE_PASSWORD_SUFFICIENT_FOR_DEVICE"

    .line 1120
    const/16 v8, 0xbe

    .line 1122
    const-string v9, "PLATFORM_PROVISIONING_COPY_ACCOUNT_MS"

    .line 1124
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1127
    const/16 v1, 0xbf

    .line 1129
    const-string v2, "PLATFORM_PROVISIONING_CREATE_PROFILE_MS"

    .line 1131
    const/16 v8, 0xc0

    .line 1133
    const-string v9, "PLATFORM_PROVISIONING_START_PROFILE_MS"

    .line 1135
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1138
    const/16 v1, 0xc1

    .line 1140
    const-string v2, "PLATFORM_PROVISIONING_COPY_ACCOUNT_STATUS"

    .line 1142
    const/16 v8, 0xc2

    .line 1144
    const-string v9, "PLATFORM_PROVISIONING_ERROR"

    .line 1146
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1149
    const/16 v1, 0xc3

    .line 1151
    const-string v2, "PROVISIONING_PROVISION_MANAGED_PROFILE_TASK_MS"

    .line 1153
    const/16 v8, 0xc4

    .line 1155
    const-string v9, "PROVISIONING_PROVISION_FULLY_MANAGED_DEVICE_TASK_MS"

    .line 1157
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1160
    const/16 v1, 0xc5

    .line 1162
    const-string v2, "PLATFORM_PROVISIONING_PARAM"

    .line 1164
    const/16 v8, 0xc6

    .line 1166
    const-string v9, "SET_USB_DATA_SIGNALING"

    .line 1168
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1171
    const/16 v1, 0xc7

    .line 1173
    const-string v2, "SET_PREFERENTIAL_NETWORK_SERVICE_ENABLED"

    .line 1175
    const/16 v8, 0xc8

    .line 1177
    const-string v9, "PROVISIONING_IS_LANDSCAPE"

    .line 1179
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1182
    const/16 v1, 0xc9

    .line 1184
    const-string v2, "PROVISIONING_IS_NIGHT_MODE"

    .line 1186
    const/16 v8, 0xca

    .line 1188
    const-string v9, "ADD_ACCOUNT"

    .line 1190
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1193
    const/16 v1, 0xcb

    .line 1195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1198
    move-result-object v1

    .line 1199
    const-string v2, "ADD_ACCOUNT_EXPLICITLY"

    .line 1201
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const/16 v1, 0xcd

    .line 1209
    const-string v2, "RESET_PASSWORD"

    .line 1211
    const/16 v3, 0xce

    .line 1213
    const-string v7, "RESET_PASSWORD_WITH_TOKEN"

    .line 1215
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1218
    const/16 v1, 0xcf

    .line 1220
    const-string v2, "ROLE_HOLDER_PROVISIONING_START"

    .line 1222
    const/16 v3, 0xd0

    .line 1224
    const-string v7, "ROLE_HOLDER_PROVISIONING_FINISH"

    .line 1226
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1229
    const/16 v1, 0xd1

    .line 1231
    const-string v2, "ROLE_HOLDER_UPDATER_UPDATE_START"

    .line 1233
    const/16 v3, 0xd2

    .line 1235
    const-string v7, "ROLE_HOLDER_UPDATER_UPDATE_FINISH"

    .line 1237
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1240
    const/16 v1, 0xd3

    .line 1242
    const-string v2, "ROLE_HOLDER_UPDATER_UPDATE_RETRY"

    .line 1244
    const/16 v3, 0xd4

    .line 1246
    const-string v7, "ROLE_HOLDER_UPDATER_UPDATE_FAILED"

    .line 1248
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1251
    const/16 v1, 0xd5

    .line 1253
    const-string v2, "PLATFORM_ROLE_HOLDER_UPDATE_START"

    .line 1255
    const/16 v3, 0xd6

    .line 1257
    const-string v7, "PLATFORM_ROLE_HOLDER_UPDATE_FINISHED"

    .line 1259
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1262
    const/16 v1, 0xd7

    .line 1264
    const-string v2, "PLATFORM_ROLE_HOLDER_UPDATE_FAILED"

    .line 1266
    const/16 v3, 0xd8

    .line 1268
    const-string v7, "SET_MTE_POLICY"

    .line 1270
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1273
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const-string v0, "SET_APPLICATION_EXEMPTIONS_COUNT"

    .line 1278
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 6
    iput-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->context:Landroid/content/Context;

    .line 8
    const-string/jumbo p2, "ro.build.version.oneui"

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 15
    move-result v1

    .line 16
    const-string v2, "."

    .line 18
    if-lez v1, :cond_1

    .line 20
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 23
    move-result p1

    .line 24
    div-int/lit16 p2, p1, 0x2710

    .line 26
    rem-int/lit16 v0, p1, 0x2710

    .line 28
    div-int/lit8 v0, v0, 0x64

    .line 30
    rem-int/lit8 p1, p1, 0x64

    .line 32
    if-nez p1, :cond_0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_2

    .line 104
    const-string/jumbo p2, "com.samsung.feature.samsung_experience_mobile"

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_2

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 115
    const p2, 0x15f90

    .line 118
    sub-int/2addr p1, p2

    .line 119
    div-int/lit16 p2, p1, 0x2710

    .line 121
    rem-int/lit16 p1, p1, 0x2710

    .line 123
    div-int/lit8 p1, p1, 0x64

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    const-string p1, "1.0"

    .line 154
    :goto_0
    const-string p2, "_"

    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 160
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 170
    iput-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->oneUiAndOSVersion:Ljava/lang/String;

    .line 172
    return-void
.end method
