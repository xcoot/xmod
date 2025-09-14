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

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions;->ACCESS_CONTROL_MAP:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v8, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 9
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

    .line 16
    .line 17
    .line 18
    move-object v1, v8

    .line 19
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "SET_ADMIN_REMOVABLE_TRUE"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 28
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

    .line 35
    .line 36
    .line 37
    move-object v9, v1

    .line 38
    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v2, "SET_ADMIN_REMOVABLE_FALSE"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 47
    .line 48
    const/4 v6, 0x1

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x1

    .line 51
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 52
    .line 53
    .line 54
    move-object v3, v1

    .line 55
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v2, "INSTALL_APPLICATION"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 64
    .line 65
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 66
    .line 67
    .line 68
    move-object v3, v1

    .line 69
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "UNINSTALL_APPLICATION"

    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 78
    .line 79
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 80
    .line 81
    .line 82
    move-object v3, v1

    .line 83
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v2, "APPLICATION_STATE"

    .line 87
    .line 88
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 92
    .line 93
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 94
    .line 95
    .line 96
    move-object v3, v1

    .line 97
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v2, "INSTALLATION_DISABLED"

    .line 101
    .line 102
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 106
    .line 107
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 108
    .line 109
    .line 110
    move-object v3, v1

    .line 111
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v2, "UNINSTALLATION_DISABLED"

    .line 115
    .line 116
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 120
    .line 121
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 122
    .line 123
    .line 124
    move-object v3, v1

    .line 125
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string v2, "STOP_APP"

    .line 129
    .line 130
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 134
    .line 135
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 136
    .line 137
    .line 138
    move-object v3, v1

    .line 139
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v2, "START_APP"

    .line 143
    .line 144
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 148
    .line 149
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 150
    .line 151
    .line 152
    move-object v3, v1

    .line 153
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v2, "PREVENT_START_BLACKLIST"

    .line 157
    .line 158
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 162
    .line 163
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 164
    .line 165
    .line 166
    move-object v3, v1

    .line 167
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v2, "RESTRICTION_ADMIN"

    .line 171
    .line 172
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 176
    .line 177
    const/4 v4, 0x0

    .line 178
    const/4 v5, 0x1

    .line 179
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 180
    .line 181
    .line 182
    move-object v3, v1

    .line 183
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v2, "DISABLE_UPDATE_WHITELIST"

    .line 187
    .line 188
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 192
    .line 193
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 194
    .line 195
    .line 196
    move-object v3, v1

    .line 197
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v2, "DISABLE_UPDATE_BLACKLIST"

    .line 201
    .line 202
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 206
    .line 207
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 208
    .line 209
    .line 210
    move-object v3, v1

    .line 211
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v2, "ADD_PACKAGE_WHITE_LIST"

    .line 215
    .line 216
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 220
    .line 221
    const/4 v4, 0x1

    .line 222
    const/4 v5, 0x0

    .line 223
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 224
    .line 225
    .line 226
    move-object v3, v1

    .line 227
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v2, "ADD_PACKAGE_INSTALLATION_BLACK_LIST"

    .line 231
    .line 232
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 236
    .line 237
    const/4 v7, 0x1

    .line 238
    const/4 v8, 0x0

    .line 239
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_AUTHORIZATION"

    .line 240
    .line 241
    .line 242
    move-object v3, v1

    .line 243
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string v2, "SET_AUTHORIZED_SCOPES"

    .line 247
    .line 248
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 252
    .line 253
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_AUTHORIZATION"

    .line 254
    .line 255
    .line 256
    move-object v3, v1

    .line 257
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const-string v2, "GET_AUTHORIZED_SCOPES"

    .line 261
    .line 262
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 266
    .line 267
    const/4 v2, 0x1

    .line 268
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    .line 269
    .line 270
    .line 271
    invoke-direct {v1, v2, v3, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 272
    .line 273
    .line 274
    const-string v4, "INJECT_KEY_EVENT"

    .line 275
    .line 276
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 280
    .line 281
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 282
    .line 283
    .line 284
    invoke-direct {v1, v2, v4, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 285
    .line 286
    .line 287
    const-string v5, "INJECT_KEY_EVENT_DEX"

    .line 288
    .line 289
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 293
    .line 294
    invoke-direct {v1, v2, v3, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 295
    .line 296
    .line 297
    const-string v5, "INJECT_POINTER_EVENT"

    .line 298
    .line 299
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 303
    .line 304
    invoke-direct {v1, v2, v4, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 305
    .line 306
    .line 307
    const-string v5, "INJECT_POINTER_EVENT_DEX"

    .line 308
    .line 309
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 313
    .line 314
    invoke-direct {v1, v2, v3, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 315
    .line 316
    .line 317
    const-string v5, "INJECT_TRACKBALL_EVENT"

    .line 318
    .line 319
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 323
    .line 324
    invoke-direct {v1, v2, v3, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 325
    .line 326
    .line 327
    const-string v3, "REMOTE_DESKTOP_CONTROL"

    .line 328
    .line 329
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 333
    .line 334
    invoke-direct {v1, v2, v4, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 335
    .line 336
    .line 337
    const-string v2, "REMOTE_DESKTOP_ADVANCED"

    .line 338
    .line 339
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 343
    .line 344
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

    .line 345
    .line 346
    .line 347
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    .line 348
    .line 349
    .line 350
    invoke-static {v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 351
    .line 352
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

    .line 362
    .line 363
    .line 364
    const-string v2, "HARD_KEY_INTENT_STATE"

    .line 365
    .line 366
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 370
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

    .line 377
    .line 378
    .line 379
    move-object v3, v1

    .line 380
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const-string v2, "HARD_KEY_INTENT_BROADCAST"

    .line 384
    .line 385
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 389
    .line 390
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 391
    .line 392
    .line 393
    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    .line 394
    .line 395
    .line 396
    invoke-static {v2, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 397
    .line 398
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

    .line 408
    .line 409
    .line 410
    const-string v3, "RESET_CREDENTIAL_STORAGE"

    .line 411
    .line 412
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 416
    .line 417
    invoke-static {v2, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 418
    .line 419
    .line 420
    move-result-object v18

    .line 421
    const/16 v16, 0x0

    .line 422
    .line 423
    const/16 v17, 0x1

    .line 424
    .line 425
    const/4 v13, 0x1

    .line 426
    const/4 v14, 0x0

    .line 427
    const/4 v15, 0x1

    .line 428
    const/16 v19, 0x0

    .line 429
    .line 430
    move-object v12, v1

    .line 431
    invoke-direct/range {v12 .. v19}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/util/List;I)V

    .line 432
    .line 433
    .line 434
    const-string v3, "ADD_PACKAGE_CERT_WHITE_LIST"

    .line 435
    .line 436
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 440
    .line 441
    invoke-static {v2, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 442
    .line 443
    .line 444
    move-result-object v18

    .line 445
    const/16 v16, 0x0

    .line 446
    .line 447
    const/16 v17, 0x1

    .line 448
    .line 449
    const/4 v13, 0x1

    .line 450
    const/4 v14, 0x0

    .line 451
    const/4 v15, 0x1

    .line 452
    const/16 v19, 0x0

    .line 453
    .line 454
    move-object v12, v1

    .line 455
    invoke-direct/range {v12 .. v19}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/util/List;I)V

    .line 456
    .line 457
    .line 458
    const-string v3, "DELETE_CERT_FROM_USER_SCOPE_KEYSTORE"

    .line 459
    .line 460
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 464
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

    .line 471
    .line 472
    .line 473
    move-object v4, v1

    .line 474
    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const-string v3, "DELETE_CERT_FROM_GLOBAL_SCOPE_KEYSTORE"

    .line 478
    .line 479
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 483
    .line 484
    invoke-static {v2, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v18

    .line 488
    const/16 v16, 0x0

    .line 489
    .line 490
    const/16 v17, 0x1

    .line 491
    .line 492
    const/4 v13, 0x1

    .line 493
    const/4 v14, 0x0

    .line 494
    const/4 v15, 0x1

    .line 495
    const/16 v19, 0x0

    .line 496
    .line 497
    move-object v12, v1

    .line 498
    invoke-direct/range {v12 .. v19}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/util/List;I)V

    .line 499
    .line 500
    .line 501
    const-string v2, "INSTALL_CERT_TO_USER_SCOPE_KEYSTORE"

    .line 502
    .line 503
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 507
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

    .line 514
    .line 515
    .line 516
    move-object v3, v1

    .line 517
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 518
    .line 519
    .line 520
    const-string v2, "INSTALL_CERT_TO_GLOBAL_SCOPE_KEYSTORE"

    .line 521
    .line 522
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 526
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

    .line 532
    .line 533
    .line 534
    move-object v3, v1

    .line 535
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/lang/String;)V

    .line 536
    .line 537
    .line 538
    const-string v2, "PROVISION_CERT_APP"

    .line 539
    .line 540
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    new-instance v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 544
    .line 545
    const/4 v2, 0x2

    .line 546
    const/4 v3, 0x0

    .line 547
    invoke-direct {v1, v2, v11, v3}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ILjava/lang/String;Z)V

    .line 548
    .line 549
    .line 550
    const-string v2, "PROVISION_CERT_SYSTEM"

    .line 551
    .line 552
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    return-void
.end method
