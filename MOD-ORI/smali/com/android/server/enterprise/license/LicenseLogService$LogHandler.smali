.class public final Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/license/LicenseLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    iget v1, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    move-object/from16 v2, p0

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const-string v10, "LicenseLogService"

    .line 13
    .line 14
    if-eq v1, v3, :cond_8

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v1, v3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "apiName"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v1, "adminUid"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string/jumbo v4, "isGetterApi"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string/jumbo v4, "isOldNamespace"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const-string/jumbo v4, "profileUserId"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const-string/jumbo v4, "parent"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const-string/jumbo v4, "dalessCallerPackage"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string v11, "_log() failed"

    .line 76
    .line 77
    const-string/jumbo v4, "skip _log - caller: "

    .line 78
    .line 79
    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 81
    .line 82
    .line 83
    move-result-wide v12

    .line 84
    :try_start_0
    sget-object v9, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 85
    .line 86
    invoke-virtual {v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    if-nez v9, :cond_1

    .line 91
    .line 92
    iget-object v9, v2, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    :cond_1
    if-lez v0, :cond_2

    .line 103
    .line 104
    sget-object v14, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 105
    .line 106
    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    if-nez v14, :cond_3

    .line 111
    .line 112
    iget-object v14, v2, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    const/4 v0, 0x0

    .line 124
    move-object v14, v0

    .line 125
    :cond_3
    :goto_0
    if-nez v9, :cond_4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    invoke-interface {v0, v9}, Landroid/sec/enterprise/IEDMProxy;->isAllowedMamPackage(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", apiName: "

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    goto :goto_3

    .line 166
    :catch_0
    move-exception v0

    .line 167
    goto :goto_2

    .line 168
    :cond_5
    iget-object v0, v2, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-static {v0, v9, v1}, Lcom/android/server/enterprise/utils/Utils;->isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_6

    .line 179
    .line 180
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 181
    .line 182
    if-eqz v0, :cond_7

    .line 183
    .line 184
    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    :cond_6
    invoke-static {v3, v9}, Lcom/android/server/enterprise/license/LicenseLogService;->_log_for_old(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    move-object v4, v9

    .line 194
    move-object v9, v14

    .line 195
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/license/LicenseLogService;->_log_for_ka(Ljava/lang/String;Ljava/lang/String;ZZIZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .line 197
    .line 198
    :cond_7
    :goto_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_8

    .line 202
    .line 203
    :goto_2
    :try_start_1
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    invoke-static {v10, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :cond_8
    const-string v0, "MSG_CLEAN_OLD_RECORDS"

    .line 215
    .line 216
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

    .line 223
    .line 224
    .line 225
    const-string v4, "alarm"

    .line 226
    .line 227
    const-string/jumbo v5, "handleLicenseLogCleanNotification() failed"

    .line 228
    .line 229
    .line 230
    const-string/jumbo v0, "handleLicenseLogCleanNotification()"

    .line 231
    .line 232
    .line 233
    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const/16 v6, 0xb

    .line 241
    .line 242
    const/4 v7, 0x0

    .line 243
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 244
    .line 245
    .line 246
    const/16 v6, 0xc

    .line 247
    .line 248
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 249
    .line 250
    .line 251
    const/16 v6, 0xd

    .line 252
    .line 253
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 254
    .line 255
    .line 256
    const/16 v6, 0xe

    .line 257
    .line 258
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 262
    .line 263
    .line 264
    move-result-wide v8

    .line 265
    const-wide v11, 0x9a7ec800L

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    sub-long v11, v8, v11

    .line 271
    .line 272
    const-wide/16 v13, 0x0

    .line 273
    .line 274
    const/high16 v6, 0x48000000    # 131072.0f

    .line 275
    .line 276
    const-wide/32 v15, 0x5265c00

    .line 277
    .line 278
    .line 279
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    .line 280
    .line 281
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string/jumbo v3, "date<=?"

    .line 285
    .line 286
    .line 287
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    invoke-virtual {v0, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    .line 293
    .line 294
    sget-object v3, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 295
    .line 296
    const-string v11, "LICENSE_LOG"

    .line 297
    .line 298
    invoke-virtual {v3, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    .line 300
    .line 301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 302
    .line 303
    .line 304
    move-result-wide v11

    .line 305
    add-long/2addr v8, v15

    .line 306
    :try_start_3
    iget-object v0, v2, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 307
    .line 308
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Landroid/app/AlarmManager;

    .line 313
    .line 314
    iget-object v2, v2, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 315
    .line 316
    new-instance v3, Landroid/content/Intent;

    .line 317
    .line 318
    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v2, v7, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 326
    .line 327
    .line 328
    cmp-long v2, v8, v13

    .line 329
    .line 330
    if-eqz v2, :cond_9

    .line 331
    .line 332
    const/4 v2, 0x1

    .line 333
    invoke-virtual {v0, v2, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 334
    .line 335
    .line 336
    goto :goto_5

    .line 337
    :catch_1
    move-exception v0

    .line 338
    :goto_4
    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    invoke-static {v10, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .line 343
    .line 344
    :cond_9
    :goto_5
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    .line 346
    .line 347
    goto :goto_8

    .line 348
    :catchall_1
    move-exception v0

    .line 349
    move-object v3, v0

    .line 350
    goto :goto_6

    .line 351
    :catch_2
    move-exception v0

    .line 352
    :try_start_4
    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    invoke-static {v10, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 356
    .line 357
    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 359
    .line 360
    .line 361
    move-result-wide v11

    .line 362
    add-long/2addr v8, v15

    .line 363
    :try_start_5
    iget-object v0, v2, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 364
    .line 365
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Landroid/app/AlarmManager;

    .line 370
    .line 371
    iget-object v2, v2, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 372
    .line 373
    new-instance v3, Landroid/content/Intent;

    .line 374
    .line 375
    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v2, v7, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 383
    .line 384
    .line 385
    cmp-long v2, v8, v13

    .line 386
    .line 387
    if-eqz v2, :cond_9

    .line 388
    .line 389
    const/4 v2, 0x1

    .line 390
    invoke-virtual {v0, v2, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 391
    .line 392
    .line 393
    goto :goto_5

    .line 394
    :catch_3
    move-exception v0

    .line 395
    goto :goto_4

    .line 396
    :goto_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 397
    .line 398
    .line 399
    move-result-wide v11

    .line 400
    add-long/2addr v8, v15

    .line 401
    :try_start_6
    iget-object v0, v2, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 402
    .line 403
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Landroid/app/AlarmManager;

    .line 408
    .line 409
    iget-object v2, v2, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 410
    .line 411
    new-instance v4, Landroid/content/Intent;

    .line 412
    .line 413
    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-static {v2, v7, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 421
    .line 422
    .line 423
    cmp-long v2, v8, v13

    .line 424
    .line 425
    if-eqz v2, :cond_a

    .line 426
    .line 427
    const/4 v2, 0x1

    .line 428
    invoke-virtual {v0, v2, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 429
    .line 430
    .line 431
    goto :goto_7

    .line 432
    :catch_4
    move-exception v0

    .line 433
    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    invoke-static {v10, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .line 438
    .line 439
    :cond_a
    :goto_7
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 440
    .line 441
    .line 442
    throw v3

    .line 443
    :cond_b
    :goto_8
    return-void
.end method
