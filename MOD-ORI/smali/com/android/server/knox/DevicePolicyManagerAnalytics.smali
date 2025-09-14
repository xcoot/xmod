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

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DEBUG:Z

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EVENTS_MAP:Ljava/util/HashMap;

    .line 23
    .line 24
    new-instance v1, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EX_EVENTS:Ljava/util/HashMap;

    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EX_ADMINS:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v3, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v3, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

    .line 44
    .line 45
    new-instance v4, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v4, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_KA_COUNTER_EVENTS_MAP:Ljava/util/HashMap;

    .line 51
    .line 52
    const/16 v5, 0xd9

    .line 53
    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const-string v6, "SET_APPLICATION_EXEMPTIONS"

    .line 59
    .line 60
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const/16 v3, 0xcc

    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v7, "GET_ACCOUNT_AUTH_TOKEN"

    .line 70
    .line 71
    invoke-virtual {v1, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const/16 v8, 0x7d

    .line 75
    .line 76
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    const-string v9, "CROSS_PROFILE_APPS_GET_TARGET_USER_PROFILES"

    .line 81
    .line 82
    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string/jumbo v1, "com.google.android.gms"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    const-string/jumbo v1, "com.google.android.gms.supervision"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "SET_PASSWORD_QUALITY"

    .line 103
    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    const/4 v1, 0x2

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "SET_PASSWORD_MINIMUM_LENGTH"

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    const/4 v1, 0x3

    .line 118
    const-string v2, "SET_PASSWORD_MINIMUM_NUMERIC"

    .line 119
    .line 120
    const/4 v10, 0x4

    .line 121
    const-string v11, "SET_PASSWORD_MINIMUM_NON_LETTER"

    .line 122
    .line 123
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/4 v1, 0x5

    .line 127
    const-string v2, "SET_PASSWORD_MINIMUM_LETTERS"

    .line 128
    .line 129
    const/4 v10, 0x6

    .line 130
    const-string v11, "SET_PASSWORD_MINIMUM_LOWER_CASE"

    .line 131
    .line 132
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/4 v1, 0x7

    .line 136
    const-string v2, "SET_PASSWORD_MINIMUM_UPPER_CASE"

    .line 137
    .line 138
    const/16 v10, 0x8

    .line 139
    .line 140
    const-string v11, "SET_PASSWORD_MINIMUM_SYMBOLS"

    .line 141
    .line 142
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/16 v1, 0x9

    .line 146
    .line 147
    const-string v2, "SET_KEYGUARD_DISABLED_FEATURES"

    .line 148
    .line 149
    const/16 v10, 0xa

    .line 150
    .line 151
    const-string v11, "LOCK_NOW"

    .line 152
    .line 153
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const/16 v1, 0xb

    .line 157
    .line 158
    const-string v2, "WIPE_DATA_WITH_REASON"

    .line 159
    .line 160
    const/16 v10, 0xc

    .line 161
    .line 162
    const-string v11, "ADD_USER_RESTRICTION"

    .line 163
    .line 164
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/16 v1, 0xd

    .line 168
    .line 169
    const-string v2, "REMOVE_USER_RESTRICTION"

    .line 170
    .line 171
    const/16 v10, 0xe

    .line 172
    .line 173
    const-string v11, "SET_SECURE_SETTING"

    .line 174
    .line 175
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const/16 v1, 0xf

    .line 179
    .line 180
    const-string v2, "SET_SECURITY_LOGGING_ENABLED"

    .line 181
    .line 182
    const/16 v10, 0x10

    .line 183
    .line 184
    const-string v11, "RETRIEVE_SECURITY_LOGS"

    .line 185
    .line 186
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const/16 v1, 0x11

    .line 190
    .line 191
    const-string v2, "RETRIEVE_PRE_REBOOT_SECURITY_LOGS"

    .line 192
    .line 193
    const/16 v10, 0x12

    .line 194
    .line 195
    const-string v11, "SET_PERMISSION_POLICY"

    .line 196
    .line 197
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const/16 v1, 0x13

    .line 201
    .line 202
    const-string v2, "SET_PERMISSION_GRANT_STATE"

    .line 203
    .line 204
    const/16 v10, 0x14

    .line 205
    .line 206
    const-string v11, "INSTALL_KEY_PAIR"

    .line 207
    .line 208
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const/16 v1, 0x15

    .line 212
    .line 213
    const-string v2, "INSTALL_CA_CERT"

    .line 214
    .line 215
    const/16 v10, 0x16

    .line 216
    .line 217
    const-string v11, "CHOOSE_PRIVATE_KEY_ALIAS"

    .line 218
    .line 219
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const/16 v1, 0x17

    .line 223
    .line 224
    const-string v2, "REMOVE_KEY_PAIR"

    .line 225
    .line 226
    const/16 v10, 0x18

    .line 227
    .line 228
    const-string v11, "UNINSTALL_CA_CERTS"

    .line 229
    .line 230
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const/16 v1, 0x19

    .line 234
    .line 235
    const-string v2, "SET_CERT_INSTALLER_PACKAGE"

    .line 236
    .line 237
    const/16 v10, 0x1a

    .line 238
    .line 239
    const-string v11, "SET_ALWAYS_ON_VPN_PACKAGE"

    .line 240
    .line 241
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const/16 v1, 0x1b

    .line 245
    .line 246
    const-string v2, "SET_PERMITTED_INPUT_METHODS"

    .line 247
    .line 248
    const/16 v10, 0x1c

    .line 249
    .line 250
    const-string v11, "SET_PERMITTED_ACCESSIBILITY_SERVICES"

    .line 251
    .line 252
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const/16 v1, 0x1d

    .line 256
    .line 257
    const-string v2, "SET_SCREEN_CAPTURE_DISABLED"

    .line 258
    .line 259
    const/16 v10, 0x1e

    .line 260
    .line 261
    const-string v11, "SET_CAMERA_DISABLED"

    .line 262
    .line 263
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const/16 v1, 0x1f

    .line 267
    .line 268
    const-string v2, "QUERY_SUMMARY_FOR_USER"

    .line 269
    .line 270
    const/16 v10, 0x20

    .line 271
    .line 272
    const-string v11, "QUERY_SUMMARY"

    .line 273
    .line 274
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const/16 v1, 0x21

    .line 278
    .line 279
    const-string v2, "QUERY_DETAILS"

    .line 280
    .line 281
    const/16 v10, 0x22

    .line 282
    .line 283
    const-string v11, "REBOOT"

    .line 284
    .line 285
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    const/16 v1, 0x23

    .line 289
    .line 290
    const-string v2, "SET_MASTER_VOLUME_MUTED"

    .line 291
    .line 292
    const/16 v10, 0x24

    .line 293
    .line 294
    const-string v11, "SET_AUTO_TIME_REQUIRED"

    .line 295
    .line 296
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const/16 v1, 0x25

    .line 300
    .line 301
    const-string v2, "SET_KEYGUARD_DISABLED"

    .line 302
    .line 303
    const/16 v10, 0x26

    .line 304
    .line 305
    const-string v11, "SET_STATUS_BAR_DISABLED"

    .line 306
    .line 307
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const/16 v1, 0x27

    .line 311
    .line 312
    const-string v2, "SET_ORGANIZATION_COLOR"

    .line 313
    .line 314
    const/16 v10, 0x28

    .line 315
    .line 316
    const-string v11, "SET_PROFILE_NAME"

    .line 317
    .line 318
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const/16 v1, 0x29

    .line 322
    .line 323
    const-string v2, "SET_USER_ICON"

    .line 324
    .line 325
    const/16 v10, 0x2a

    .line 326
    .line 327
    const-string v11, "SET_DEVICE_OWNER_LOCK_SCREEN_INFO"

    .line 328
    .line 329
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const/16 v1, 0x2b

    .line 333
    .line 334
    const-string v2, "SET_SHORT_SUPPORT_MESSAGE"

    .line 335
    .line 336
    const/16 v10, 0x2c

    .line 337
    .line 338
    const-string v11, "SET_LONG_SUPPORT_MESSAGE"

    .line 339
    .line 340
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const/16 v1, 0x2d

    .line 344
    .line 345
    const-string v2, "SET_CROSS_PROFILE_CONTACTS_SEARCH_DISABLED"

    .line 346
    .line 347
    const/16 v10, 0x2e

    .line 348
    .line 349
    const-string v11, "SET_CROSS_PROFILE_CALLER_ID_DISABLED"

    .line 350
    .line 351
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 352
    .line 353
    .line 354
    const/16 v1, 0x2f

    .line 355
    .line 356
    const-string v2, "SET_BLUETOOTH_CONTACT_SHARING_DISABLED"

    .line 357
    .line 358
    const/16 v10, 0x30

    .line 359
    .line 360
    const-string v11, "ADD_CROSS_PROFILE_INTENT_FILTER"

    .line 361
    .line 362
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    .line 364
    .line 365
    const/16 v1, 0x31

    .line 366
    .line 367
    const-string v2, "ADD_CROSS_PROFILE_WIDGET_PROVIDER"

    .line 368
    .line 369
    const/16 v10, 0x32

    .line 370
    .line 371
    const-string v11, "SET_SYSTEM_UPDATE_POLICY"

    .line 372
    .line 373
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const/16 v1, 0x33

    .line 377
    .line 378
    const-string v2, "SET_LOCKTASK_MODE_ENABLED"

    .line 379
    .line 380
    const/16 v10, 0x34

    .line 381
    .line 382
    const-string v11, "ADD_PERSISTENT_PREFERRED_ACTIVITY"

    .line 383
    .line 384
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 385
    .line 386
    .line 387
    const/16 v1, 0x35

    .line 388
    .line 389
    const-string v2, "REQUEST_BUGREPORT"

    .line 390
    .line 391
    const/16 v10, 0x36

    .line 392
    .line 393
    const-string v11, "GET_WIFI_MAC_ADDRESS"

    .line 394
    .line 395
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    .line 397
    .line 398
    const/16 v1, 0x37

    .line 399
    .line 400
    const-string v2, "REQUEST_QUIET_MODE_ENABLED"

    .line 401
    .line 402
    const/16 v10, 0x38

    .line 403
    .line 404
    const-string v11, "WORK_PROFILE_LOCATION_CHANGED"

    .line 405
    .line 406
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const/16 v1, 0x39

    .line 410
    .line 411
    const-string v2, "DO_USER_INFO_CLICKED"

    .line 412
    .line 413
    const/16 v10, 0x3a

    .line 414
    .line 415
    const-string v11, "TRANSFER_OWNERSHIP"

    .line 416
    .line 417
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    .line 419
    .line 420
    const/16 v1, 0x3b

    .line 421
    .line 422
    const-string v2, "GENERATE_KEY_PAIR"

    .line 423
    .line 424
    const/16 v10, 0x3c

    .line 425
    .line 426
    const-string v11, "SET_KEY_PAIR_CERTIFICATE"

    .line 427
    .line 428
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    .line 430
    .line 431
    const/16 v1, 0x3d

    .line 432
    .line 433
    const-string v2, "SET_KEEP_UNINSTALLED_PACKAGES"

    .line 434
    .line 435
    const/16 v10, 0x3e

    .line 436
    .line 437
    const-string v11, "SET_APPLICATION_RESTRICTIONS"

    .line 438
    .line 439
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    .line 441
    .line 442
    const/16 v1, 0x3f

    .line 443
    .line 444
    const-string v2, "SET_APPLICATION_HIDDEN"

    .line 445
    .line 446
    const/16 v10, 0x40

    .line 447
    .line 448
    const-string v11, "ENABLE_SYSTEM_APP"

    .line 449
    .line 450
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 451
    .line 452
    .line 453
    const/16 v1, 0x41

    .line 454
    .line 455
    const-string v2, "ENABLE_SYSTEM_APP_WITH_INTENT"

    .line 456
    .line 457
    const/16 v10, 0x42

    .line 458
    .line 459
    const-string v11, "INSTALL_EXISTING_PACKAGE"

    .line 460
    .line 461
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 462
    .line 463
    .line 464
    const/16 v1, 0x43

    .line 465
    .line 466
    const-string v2, "SET_UNINSTALL_BLOCKED"

    .line 467
    .line 468
    const/16 v10, 0x44

    .line 469
    .line 470
    const-string v11, "SET_PACKAGES_SUSPENDED"

    .line 471
    .line 472
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 473
    .line 474
    .line 475
    const/16 v1, 0x45

    .line 476
    .line 477
    const-string v2, "ON_LOCK_TASK_MODE_ENTERING"

    .line 478
    .line 479
    const/16 v10, 0x46

    .line 480
    .line 481
    const-string v11, "SET_CROSS_PROFILE_CALENDAR_PACKAGES"

    .line 482
    .line 483
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 484
    .line 485
    .line 486
    const/16 v1, 0x48

    .line 487
    .line 488
    const-string v2, "GET_USER_PASSWORD_COMPLEXITY_LEVEL"

    .line 489
    .line 490
    const/16 v10, 0x49

    .line 491
    .line 492
    const-string v11, "INSTALL_SYSTEM_UPDATE"

    .line 493
    .line 494
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 495
    .line 496
    .line 497
    const/16 v1, 0x4a

    .line 498
    .line 499
    const-string v2, "INSTALL_SYSTEM_UPDATE_ERROR"

    .line 500
    .line 501
    const/16 v10, 0x4b

    .line 502
    .line 503
    const-string v11, "IS_MANAGED_KIOSK"

    .line 504
    .line 505
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 506
    .line 507
    .line 508
    const/16 v1, 0x4c

    .line 509
    .line 510
    const-string v2, "IS_UNATTENDED_MANAGED_KIOSK"

    .line 511
    .line 512
    const/16 v10, 0x4d

    .line 513
    .line 514
    const-string v11, "PROVISIONING_MANAGED_PROFILE_ON_FULLY_MANAGED_DEVICE"

    .line 515
    .line 516
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 517
    .line 518
    .line 519
    const/16 v1, 0x4e

    .line 520
    .line 521
    const-string v2, "PROVISIONING_PERSISTENT_DEVICE_OWNER"

    .line 522
    .line 523
    const/16 v10, 0x4f

    .line 524
    .line 525
    const-string v11, "PROVISIONING_ENTRY_POINT_NFC"

    .line 526
    .line 527
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 528
    .line 529
    .line 530
    const/16 v1, 0x50

    .line 531
    .line 532
    const-string v2, "PROVISIONING_ENTRY_POINT_QR_CODE"

    .line 533
    .line 534
    const/16 v10, 0x51

    .line 535
    .line 536
    const-string v11, "PROVISIONING_ENTRY_POINT_CLOUD_ENROLLMENT"

    .line 537
    .line 538
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 539
    .line 540
    .line 541
    const/16 v1, 0x52

    .line 542
    .line 543
    const-string v2, "PROVISIONING_ENTRY_POINT_ADB"

    .line 544
    .line 545
    const/16 v10, 0x53

    .line 546
    .line 547
    const-string v11, "PROVISIONING_ENTRY_POINT_TRUSTED_SOURCE"

    .line 548
    .line 549
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 550
    .line 551
    .line 552
    const/16 v1, 0x54

    .line 553
    .line 554
    const-string v2, "PROVISIONING_DPC_PACKAGE_NAME"

    .line 555
    .line 556
    const/16 v10, 0x55

    .line 557
    .line 558
    const-string v11, "PROVISIONING_DPC_INSTALLED_BY_PACKAGE"

    .line 559
    .line 560
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 561
    .line 562
    .line 563
    const/16 v1, 0x56

    .line 564
    .line 565
    const-string v2, "PROVISIONING_PROVISIONING_ACTIVITY_TIME_MS"

    .line 566
    .line 567
    const/16 v10, 0x57

    .line 568
    .line 569
    const-string v11, "PROVISIONING_PREPROVISIONING_ACTIVITY_TIME_MS"

    .line 570
    .line 571
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 572
    .line 573
    .line 574
    const/16 v1, 0x58

    .line 575
    .line 576
    const-string v2, "PROVISIONING_ENCRYPT_DEVICE_ACTIVITY_TIME_MS"

    .line 577
    .line 578
    const/16 v10, 0x59

    .line 579
    .line 580
    const-string v11, "PROVISIONING_WEB_ACTIVITY_TIME_MS"

    .line 581
    .line 582
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 583
    .line 584
    .line 585
    const/16 v1, 0x5d

    .line 586
    .line 587
    const-string v2, "PROVISIONING_NETWORK_TYPE"

    .line 588
    .line 589
    const/16 v10, 0x5e

    .line 590
    .line 591
    const-string v11, "PROVISIONING_ACTION"

    .line 592
    .line 593
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 594
    .line 595
    .line 596
    const/16 v1, 0x5f

    .line 597
    .line 598
    const-string v2, "PROVISIONING_EXTRAS"

    .line 599
    .line 600
    const/16 v10, 0x60

    .line 601
    .line 602
    const-string v11, "PROVISIONING_COPY_ACCOUNT_TASK_MS"

    .line 603
    .line 604
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 605
    .line 606
    .line 607
    const/16 v1, 0x61

    .line 608
    .line 609
    const-string v2, "PROVISIONING_CREATE_PROFILE_TASK_MS"

    .line 610
    .line 611
    const/16 v10, 0x62

    .line 612
    .line 613
    const-string v11, "PROVISIONING_START_PROFILE_TASK_MS"

    .line 614
    .line 615
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 616
    .line 617
    .line 618
    const/16 v1, 0x63

    .line 619
    .line 620
    const-string v2, "PROVISIONING_DOWNLOAD_PACKAGE_TASK_MS"

    .line 621
    .line 622
    const/16 v10, 0x64

    .line 623
    .line 624
    const-string v11, "PROVISIONING_INSTALL_PACKAGE_TASK_MS"

    .line 625
    .line 626
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 627
    .line 628
    .line 629
    const/16 v1, 0x65

    .line 630
    .line 631
    const-string v2, "PROVISIONING_CANCELLED"

    .line 632
    .line 633
    const/16 v10, 0x66

    .line 634
    .line 635
    const-string v11, "PROVISIONING_ERROR"

    .line 636
    .line 637
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 638
    .line 639
    .line 640
    const/16 v1, 0x67

    .line 641
    .line 642
    const-string v2, "PROVISIONING_COPY_ACCOUNT_STATUS"

    .line 643
    .line 644
    const/16 v10, 0x68

    .line 645
    .line 646
    const-string v11, "PROVISIONING_TOTAL_TASK_TIME_MS"

    .line 647
    .line 648
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 649
    .line 650
    .line 651
    const/16 v1, 0x69

    .line 652
    .line 653
    const-string v2, "PROVISIONING_SESSION_STARTED"

    .line 654
    .line 655
    const/16 v10, 0x6a

    .line 656
    .line 657
    const-string v11, "PROVISIONING_SESSION_COMPLETED"

    .line 658
    .line 659
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 660
    .line 661
    .line 662
    const/16 v1, 0x6b

    .line 663
    .line 664
    const-string v2, "PROVISIONING_TERMS_ACTIVITY_TIME_MS"

    .line 665
    .line 666
    const/16 v10, 0x6c

    .line 667
    .line 668
    const-string v11, "PROVISIONING_TERMS_COUNT"

    .line 669
    .line 670
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 671
    .line 672
    .line 673
    const/16 v1, 0x6d

    .line 674
    .line 675
    const-string v2, "PROVISIONING_TERMS_READ"

    .line 676
    .line 677
    const/16 v10, 0x6e

    .line 678
    .line 679
    const-string v11, "SEPARATE_PROFILE_CHALLENGE_CHANGED"

    .line 680
    .line 681
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 682
    .line 683
    .line 684
    const/16 v1, 0x6f

    .line 685
    .line 686
    const-string v2, "SET_GLOBAL_SETTING"

    .line 687
    .line 688
    const/16 v10, 0x70

    .line 689
    .line 690
    const-string v11, "INSTALL_PACKAGE"

    .line 691
    .line 692
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 693
    .line 694
    .line 695
    const/16 v1, 0x71

    .line 696
    .line 697
    const-string v2, "UNINSTALL_PACKAGE"

    .line 698
    .line 699
    const/16 v10, 0x72

    .line 700
    .line 701
    const-string v11, "WIFI_SERVICE_ADD_NETWORK_SUGGESTIONS"

    .line 702
    .line 703
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 704
    .line 705
    .line 706
    const/16 v1, 0x73

    .line 707
    .line 708
    const-string v2, "WIFI_SERVICE_ADD_OR_UPDATE_NETWORK"

    .line 709
    .line 710
    const/16 v10, 0x74

    .line 711
    .line 712
    const-string v11, "QUERY_SUMMARY_FOR_DEVICE"

    .line 713
    .line 714
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 715
    .line 716
    .line 717
    const/16 v1, 0x75

    .line 718
    .line 719
    const-string v2, "REMOVE_CROSS_PROFILE_WIDGET_PROVIDER"

    .line 720
    .line 721
    const/16 v10, 0x76

    .line 722
    .line 723
    const-string v11, "ESTABLISH_VPN"

    .line 724
    .line 725
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 726
    .line 727
    .line 728
    const/16 v1, 0x77

    .line 729
    .line 730
    const-string v2, "SET_NETWORK_LOGGING_ENABLED"

    .line 731
    .line 732
    const/16 v10, 0x78

    .line 733
    .line 734
    const-string v11, "RETRIEVE_NETWORK_LOGS"

    .line 735
    .line 736
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 737
    .line 738
    .line 739
    const/16 v1, 0x79

    .line 740
    .line 741
    const-string v2, "PROVISIONING_PREPARE_TOTAL_TIME_MS"

    .line 742
    .line 743
    const/16 v10, 0x7a

    .line 744
    .line 745
    const-string v11, "PROVISIONING_PREPARE_STARTED"

    .line 746
    .line 747
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 748
    .line 749
    .line 750
    const/16 v1, 0x7b

    .line 751
    .line 752
    const-string v2, "PROVISIONING_PREPARE_COMPLETED"

    .line 753
    .line 754
    const/16 v10, 0x7c

    .line 755
    .line 756
    const-string v11, "PROVISIONING_FLOW_TYPE"

    .line 757
    .line 758
    invoke-static {v1, v0, v2, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    const/16 v1, 0x7e

    .line 765
    .line 766
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    const-string v2, "CROSS_PROFILE_APPS_START_ACTIVITY_AS_USER"

    .line 771
    .line 772
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    const/16 v1, 0x7f

    .line 776
    .line 777
    const-string v2, "SET_AUTO_TIME"

    .line 778
    .line 779
    const/16 v8, 0x80

    .line 780
    .line 781
    const-string v9, "SET_AUTO_TIME_ZONE"

    .line 782
    .line 783
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 784
    .line 785
    .line 786
    const/16 v1, 0x81

    .line 787
    .line 788
    const-string v2, "SET_USER_CONTROL_DISABLED_PACKAGES"

    .line 789
    .line 790
    const/16 v8, 0x82

    .line 791
    .line 792
    const-string v9, "SET_FACTORY_RESET_PROTECTION"

    .line 793
    .line 794
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 795
    .line 796
    .line 797
    const/16 v1, 0x83

    .line 798
    .line 799
    const-string v2, "SET_COMMON_CRITERIA_MODE"

    .line 800
    .line 801
    const/16 v8, 0x84

    .line 802
    .line 803
    const-string v9, "ALLOW_MODIFICATION_OF_ADMIN_CONFIGURED_NETWORKS"

    .line 804
    .line 805
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 806
    .line 807
    .line 808
    const/16 v1, 0x85

    .line 809
    .line 810
    const-string v2, "SET_TIME"

    .line 811
    .line 812
    const/16 v8, 0x86

    .line 813
    .line 814
    const-string v9, "SET_TIME_ZONE"

    .line 815
    .line 816
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 817
    .line 818
    .line 819
    const/16 v1, 0x87

    .line 820
    .line 821
    const-string v2, "SET_PERSONAL_APPS_SUSPENDED"

    .line 822
    .line 823
    const/16 v8, 0x88

    .line 824
    .line 825
    const-string v9, "SET_MANAGED_PROFILE_MAXIMUM_TIME_OFF"

    .line 826
    .line 827
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 828
    .line 829
    .line 830
    const/16 v1, 0x89

    .line 831
    .line 832
    const-string v2, "COMP_TO_ORG_OWNED_PO_MIGRATED"

    .line 833
    .line 834
    const/16 v8, 0x8a

    .line 835
    .line 836
    const-string v9, "SET_CROSS_PROFILE_PACKAGES"

    .line 837
    .line 838
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 839
    .line 840
    .line 841
    const/16 v1, 0x8b

    .line 842
    .line 843
    const-string v2, "SET_INTERACT_ACROSS_PROFILES_APP_OP"

    .line 844
    .line 845
    const/16 v8, 0x8c

    .line 846
    .line 847
    const-string v9, "GET_CROSS_PROFILE_PACKAGES"

    .line 848
    .line 849
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 850
    .line 851
    .line 852
    const/16 v1, 0x8d

    .line 853
    .line 854
    const-string v2, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_TRUE"

    .line 855
    .line 856
    const/16 v8, 0x8e

    .line 857
    .line 858
    const-string v9, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_NO_PROFILES"

    .line 859
    .line 860
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 861
    .line 862
    .line 863
    const/16 v1, 0x8f

    .line 864
    .line 865
    const-string v2, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_WHITELIST"

    .line 866
    .line 867
    const/16 v8, 0x90

    .line 868
    .line 869
    const-string v9, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_PERMISSION"

    .line 870
    .line 871
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 872
    .line 873
    .line 874
    const/16 v1, 0x91

    .line 875
    .line 876
    const-string v2, "CAN_INTERACT_ACROSS_PROFILES_TRUE"

    .line 877
    .line 878
    const/16 v8, 0x92

    .line 879
    .line 880
    const-string v9, "CAN_INTERACT_ACROSS_PROFILES_FALSE_PERMISSION"

    .line 881
    .line 882
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 883
    .line 884
    .line 885
    const/16 v1, 0x93

    .line 886
    .line 887
    const-string v2, "CAN_INTERACT_ACROSS_PROFILES_FALSE_NO_PROFILES"

    .line 888
    .line 889
    const/16 v8, 0x94

    .line 890
    .line 891
    const-string v9, "CREATE_CROSS_PROFILE_INTENT"

    .line 892
    .line 893
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 894
    .line 895
    .line 896
    const/16 v1, 0x95

    .line 897
    .line 898
    const-string v2, "IS_MANAGED_PROFILE"

    .line 899
    .line 900
    const/16 v8, 0x96

    .line 901
    .line 902
    const-string v9, "START_ACTIVITY_BY_INTENT"

    .line 903
    .line 904
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 905
    .line 906
    .line 907
    const/16 v1, 0x97

    .line 908
    .line 909
    const-string v2, "BIND_CROSS_PROFILE_SERVICE"

    .line 910
    .line 911
    const/16 v8, 0x98

    .line 912
    .line 913
    const-string v9, "PROVISIONING_DPC_SETUP_STARTED"

    .line 914
    .line 915
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 916
    .line 917
    .line 918
    const/16 v1, 0x99

    .line 919
    .line 920
    const-string v2, "PROVISIONING_DPC_SETUP_COMPLETED"

    .line 921
    .line 922
    const/16 v8, 0x9a

    .line 923
    .line 924
    const-string v9, "PROVISIONING_ORGANIZATION_OWNED_MANAGED_PROFILE"

    .line 925
    .line 926
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 927
    .line 928
    .line 929
    const/16 v1, 0x9b

    .line 930
    .line 931
    const-string v2, "RESOLVER_CROSS_PROFILE_TARGET_OPENED"

    .line 932
    .line 933
    const/16 v8, 0x9c

    .line 934
    .line 935
    const-string v9, "RESOLVER_SWITCH_TABS"

    .line 936
    .line 937
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 938
    .line 939
    .line 940
    const/16 v1, 0x9d

    .line 941
    .line 942
    const-string v2, "RESOLVER_EMPTY_STATE_WORK_APPS_DISABLED"

    .line 943
    .line 944
    const/16 v8, 0x9e

    .line 945
    .line 946
    const-string v9, "RESOLVER_EMPTY_STATE_NO_SHARING_TO_PERSONAL"

    .line 947
    .line 948
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 949
    .line 950
    .line 951
    const/16 v1, 0x9f

    .line 952
    .line 953
    const-string v2, "RESOLVER_EMPTY_STATE_NO_SHARING_TO_WORK"

    .line 954
    .line 955
    const/16 v8, 0xa0

    .line 956
    .line 957
    const-string v9, "RESOLVER_EMPTY_STATE_NO_APPS_RESOLVED"

    .line 958
    .line 959
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 960
    .line 961
    .line 962
    const/16 v1, 0xa1

    .line 963
    .line 964
    const-string v2, "RESOLVER_AUTOLAUNCH_CROSS_PROFILE_TARGET"

    .line 965
    .line 966
    const/16 v8, 0xa2

    .line 967
    .line 968
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_LAUNCHED_FROM_APP"

    .line 969
    .line 970
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 971
    .line 972
    .line 973
    const/16 v1, 0xa3

    .line 974
    .line 975
    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_LAUNCHED_FROM_SETTINGS"

    .line 976
    .line 977
    const/16 v8, 0xa4

    .line 978
    .line 979
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_ADMIN_RESTRICTED"

    .line 980
    .line 981
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 982
    .line 983
    .line 984
    const/16 v1, 0xa5

    .line 985
    .line 986
    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_WORK_APP"

    .line 987
    .line 988
    const/16 v8, 0xa6

    .line 989
    .line 990
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_PERSONAL_APP"

    .line 991
    .line 992
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 993
    .line 994
    .line 995
    const/16 v1, 0xa7

    .line 996
    .line 997
    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_INSTALL_BANNER_INTENT"

    .line 998
    .line 999
    const/16 v8, 0xa8

    .line 1000
    .line 1001
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_INSTALL_BANNER_CLICKED"

    .line 1002
    .line 1003
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    const/16 v1, 0xa9

    .line 1007
    .line 1008
    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_INSTALL_BANNER_NO_INTENT_CLICKED"

    .line 1009
    .line 1010
    const/16 v8, 0xaa

    .line 1011
    .line 1012
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_USER_CONSENTED"

    .line 1013
    .line 1014
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1015
    .line 1016
    .line 1017
    const/16 v1, 0xab

    .line 1018
    .line 1019
    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_USER_DECLINED_CONSENT"

    .line 1020
    .line 1021
    const/16 v8, 0xac

    .line 1022
    .line 1023
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_PERMISSION_REVOKED"

    .line 1024
    .line 1025
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    const/16 v1, 0xad

    .line 1029
    .line 1030
    const-string v2, "DOCSUI_EMPTY_STATE_NO_PERMISSION"

    .line 1031
    .line 1032
    const/16 v8, 0xae

    .line 1033
    .line 1034
    const-string v9, "DOCSUI_EMPTY_STATE_QUIET_MODE"

    .line 1035
    .line 1036
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    const/16 v1, 0xaf

    .line 1040
    .line 1041
    const-string v2, "DOCSUI_LAUNCH_OTHER_APP"

    .line 1042
    .line 1043
    const/16 v8, 0xb0

    .line 1044
    .line 1045
    const-string v9, "DOCSUI_PICK_RESULT"

    .line 1046
    .line 1047
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    const/16 v1, 0xb1

    .line 1051
    .line 1052
    const-string v2, "SET_PASSWORD_COMPLEXITY"

    .line 1053
    .line 1054
    const/16 v8, 0xb2

    .line 1055
    .line 1056
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_REQUEST_NAME"

    .line 1057
    .line 1058
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    const/16 v1, 0xb3

    .line 1062
    .line 1063
    const-string v2, "CREDENTIAL_MANAGEMENT_APP_REQUEST_POLICY"

    .line 1064
    .line 1065
    const/16 v8, 0xb4

    .line 1066
    .line 1067
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_REQUEST_ACCEPTED"

    .line 1068
    .line 1069
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    const/16 v1, 0xb5

    .line 1073
    .line 1074
    const-string v2, "CREDENTIAL_MANAGEMENT_APP_REQUEST_DENIED"

    .line 1075
    .line 1076
    const/16 v8, 0xb6

    .line 1077
    .line 1078
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_REQUEST_FAILED"

    .line 1079
    .line 1080
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    const/16 v1, 0xb7

    .line 1084
    .line 1085
    const-string v2, "CREDENTIAL_MANAGEMENT_APP_CREDENTIAL_FOUND_IN_POLICY"

    .line 1086
    .line 1087
    const/16 v8, 0xb8

    .line 1088
    .line 1089
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_INSTALL_KEY_PAIR_FAILED"

    .line 1090
    .line 1091
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    const/16 v1, 0xb9

    .line 1095
    .line 1096
    const-string v2, "CREDENTIAL_MANAGEMENT_APP_GENERATE_KEY_PAIR_FAILED"

    .line 1097
    .line 1098
    const/16 v8, 0xba

    .line 1099
    .line 1100
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_POLICY_LOOKUP_FAILED"

    .line 1101
    .line 1102
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    const/16 v1, 0xbb

    .line 1106
    .line 1107
    const-string v2, "CREDENTIAL_MANAGEMENT_APP_REMOVED"

    .line 1108
    .line 1109
    const/16 v8, 0xbc

    .line 1110
    .line 1111
    const-string v9, "SET_ORGANIZATION_ID"

    .line 1112
    .line 1113
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    const/16 v1, 0xbd

    .line 1117
    .line 1118
    const-string v2, "IS_ACTIVE_PASSWORD_SUFFICIENT_FOR_DEVICE"

    .line 1119
    .line 1120
    const/16 v8, 0xbe

    .line 1121
    .line 1122
    const-string v9, "PLATFORM_PROVISIONING_COPY_ACCOUNT_MS"

    .line 1123
    .line 1124
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    const/16 v1, 0xbf

    .line 1128
    .line 1129
    const-string v2, "PLATFORM_PROVISIONING_CREATE_PROFILE_MS"

    .line 1130
    .line 1131
    const/16 v8, 0xc0

    .line 1132
    .line 1133
    const-string v9, "PLATFORM_PROVISIONING_START_PROFILE_MS"

    .line 1134
    .line 1135
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    const/16 v1, 0xc1

    .line 1139
    .line 1140
    const-string v2, "PLATFORM_PROVISIONING_COPY_ACCOUNT_STATUS"

    .line 1141
    .line 1142
    const/16 v8, 0xc2

    .line 1143
    .line 1144
    const-string v9, "PLATFORM_PROVISIONING_ERROR"

    .line 1145
    .line 1146
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    const/16 v1, 0xc3

    .line 1150
    .line 1151
    const-string v2, "PROVISIONING_PROVISION_MANAGED_PROFILE_TASK_MS"

    .line 1152
    .line 1153
    const/16 v8, 0xc4

    .line 1154
    .line 1155
    const-string v9, "PROVISIONING_PROVISION_FULLY_MANAGED_DEVICE_TASK_MS"

    .line 1156
    .line 1157
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1158
    .line 1159
    .line 1160
    const/16 v1, 0xc5

    .line 1161
    .line 1162
    const-string v2, "PLATFORM_PROVISIONING_PARAM"

    .line 1163
    .line 1164
    const/16 v8, 0xc6

    .line 1165
    .line 1166
    const-string v9, "SET_USB_DATA_SIGNALING"

    .line 1167
    .line 1168
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    const/16 v1, 0xc7

    .line 1172
    .line 1173
    const-string v2, "SET_PREFERENTIAL_NETWORK_SERVICE_ENABLED"

    .line 1174
    .line 1175
    const/16 v8, 0xc8

    .line 1176
    .line 1177
    const-string v9, "PROVISIONING_IS_LANDSCAPE"

    .line 1178
    .line 1179
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    const/16 v1, 0xc9

    .line 1183
    .line 1184
    const-string v2, "PROVISIONING_IS_NIGHT_MODE"

    .line 1185
    .line 1186
    const/16 v8, 0xca

    .line 1187
    .line 1188
    const-string v9, "ADD_ACCOUNT"

    .line 1189
    .line 1190
    invoke-static {v1, v0, v2, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    const/16 v1, 0xcb

    .line 1194
    .line 1195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v1

    .line 1199
    const-string v2, "ADD_ACCOUNT_EXPLICITLY"

    .line 1200
    .line 1201
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    const/16 v1, 0xcd

    .line 1208
    .line 1209
    const-string v2, "RESET_PASSWORD"

    .line 1210
    .line 1211
    const/16 v3, 0xce

    .line 1212
    .line 1213
    const-string v7, "RESET_PASSWORD_WITH_TOKEN"

    .line 1214
    .line 1215
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    const/16 v1, 0xcf

    .line 1219
    .line 1220
    const-string v2, "ROLE_HOLDER_PROVISIONING_START"

    .line 1221
    .line 1222
    const/16 v3, 0xd0

    .line 1223
    .line 1224
    const-string v7, "ROLE_HOLDER_PROVISIONING_FINISH"

    .line 1225
    .line 1226
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1227
    .line 1228
    .line 1229
    const/16 v1, 0xd1

    .line 1230
    .line 1231
    const-string v2, "ROLE_HOLDER_UPDATER_UPDATE_START"

    .line 1232
    .line 1233
    const/16 v3, 0xd2

    .line 1234
    .line 1235
    const-string v7, "ROLE_HOLDER_UPDATER_UPDATE_FINISH"

    .line 1236
    .line 1237
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    const/16 v1, 0xd3

    .line 1241
    .line 1242
    const-string v2, "ROLE_HOLDER_UPDATER_UPDATE_RETRY"

    .line 1243
    .line 1244
    const/16 v3, 0xd4

    .line 1245
    .line 1246
    const-string v7, "ROLE_HOLDER_UPDATER_UPDATE_FAILED"

    .line 1247
    .line 1248
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1249
    .line 1250
    .line 1251
    const/16 v1, 0xd5

    .line 1252
    .line 1253
    const-string v2, "PLATFORM_ROLE_HOLDER_UPDATE_START"

    .line 1254
    .line 1255
    const/16 v3, 0xd6

    .line 1256
    .line 1257
    const-string v7, "PLATFORM_ROLE_HOLDER_UPDATE_FINISHED"

    .line 1258
    .line 1259
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1260
    .line 1261
    .line 1262
    const/16 v1, 0xd7

    .line 1263
    .line 1264
    const-string v2, "PLATFORM_ROLE_HOLDER_UPDATE_FAILED"

    .line 1265
    .line 1266
    const/16 v3, 0xd8

    .line 1267
    .line 1268
    const-string v7, "SET_MTE_POLICY"

    .line 1269
    .line 1270
    invoke-static {v1, v0, v2, v3, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    const-string v0, "SET_APPLICATION_EXEMPTIONS_COUNT"

    .line 1277
    .line 1278
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->context:Landroid/content/Context;

    .line 7
    .line 8
    const-string/jumbo p2, "ro.build.version.oneui"

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "."

    .line 17
    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    div-int/lit16 p2, p1, 0x2710

    .line 25
    .line 26
    rem-int/lit16 v0, p1, 0x2710

    .line 27
    .line 28
    div-int/lit8 v0, v0, 0x64

    .line 29
    .line 30
    rem-int/lit8 p1, p1, 0x64

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    const-string/jumbo p2, "com.samsung.feature.samsung_experience_mobile"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 114
    .line 115
    const p2, 0x15f90

    .line 116
    .line 117
    .line 118
    sub-int/2addr p1, p2

    .line 119
    div-int/lit16 p2, p1, 0x2710

    .line 120
    .line 121
    rem-int/lit16 p1, p1, 0x2710

    .line 122
    .line 123
    div-int/lit8 p1, p1, 0x64

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    const-string p1, "1.0"

    .line 153
    .line 154
    :goto_0
    const-string p2, "_"

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 161
    .line 162
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iput-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->oneUiAndOSVersion:Ljava/lang/String;

    .line 171
    .line 172
    return-void
.end method
