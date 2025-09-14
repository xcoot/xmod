.class public final Lcom/android/server/aod/AODManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAODLowPowerUri:Landroid/net/Uri;

.field public final mAODPowerSavingModeUri:Landroid/net/Uri;

.field public final mAODShowStateUri:Landroid/net/Uri;

.field public final mDozeAlwaysOnUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    const-string p1, "aod_show_state"

    .line 8
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODShowStateUri:Landroid/net/Uri;

    .line 14
    const-string p1, "aod_mode"

    .line 16
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    const-string/jumbo p1, "doze_always_on"

    .line 22
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mDozeAlwaysOnUri:Landroid/net/Uri;

    .line 28
    const-string/jumbo p1, "low_power"

    .line 31
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODLowPowerUri:Landroid/net/Uri;

    .line 37
    const-string/jumbo p1, "ultra_powersaving_mode"

    .line 40
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODPowerSavingModeUri:Landroid/net/Uri;

    .line 46
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODShowStateUri:Landroid/net/Uri;

    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODLowPowerUri:Landroid/net/Uri;

    .line 13
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODPowerSavingModeUri:Landroid/net/Uri;

    .line 21
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 27
    move p1, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p1, v0

    .line 30
    :goto_0
    const/4 v2, 0x0

    .line 31
    if-eqz p1, :cond_3

    .line 33
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 35
    iget-object v3, v3, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    move-result-object v4

    .line 41
    const-string/jumbo v3, "package"

    .line 44
    filled-new-array {v3}, [Ljava/lang/String;

    .line 47
    move-result-object v6

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    move-object v5, p2

    .line 52
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 55
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    if-eqz v3, :cond_1

    .line 58
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 64
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 70
    const-string/jumbo v4, "package"

    .line 73
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 76
    move-result v4

    .line 77
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    move-object v2, v3

    .line 84
    goto :goto_4

    .line 85
    :catch_0
    move-exception v4

    .line 86
    goto :goto_3

    .line 87
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    .line 89
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 92
    goto :goto_5

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    goto :goto_4

    .line 95
    :catch_1
    move-exception v4

    .line 96
    move-object v3, v2

    .line 97
    :goto_3
    :try_start_2
    sget v5, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 99
    const-string v5, "AODManagerService"

    .line 101
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 104
    move-result-object v4

    .line 105
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    if-eqz v3, :cond_3

    .line 110
    goto :goto_2

    .line 111
    :goto_4
    if-eqz v2, :cond_2

    .line 113
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_2
    throw p0

    .line 117
    :cond_3
    :goto_5
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODShowStateUri:Landroid/net/Uri;

    .line 119
    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v3

    .line 123
    const/4 v4, -0x2

    .line 124
    if-eqz v3, :cond_5

    .line 126
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 128
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 130
    iget-object p1, p1, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 132
    const-string p2, "aod_show_state"

    .line 134
    invoke-static {p1, p2, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 137
    move-result p1

    .line 138
    if-ne p1, v1, :cond_4

    .line 140
    move v0, v1

    .line 141
    :cond_4
    iget-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    .line 143
    if-eq p1, v0, :cond_e

    .line 145
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    .line 147
    goto/16 :goto_c

    .line 149
    :cond_5
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mDozeAlwaysOnUri:Landroid/net/Uri;

    .line 151
    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_c

    .line 157
    if-eqz p1, :cond_6

    .line 159
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v5, "onChange : "

    .line 166
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string p2, " , called by package : "

    .line 178
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p2

    .line 188
    sget v2, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 190
    invoke-virtual {p1, p2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 193
    goto :goto_6

    .line 194
    :cond_6
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    const-string/jumbo v3, "onChange : "

    .line 201
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object p2

    .line 215
    sget v2, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 217
    invoke-virtual {p1, p2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 220
    :goto_6
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 222
    const-string/jumbo p1, "updateDozeAlwaysOn : doze_always_on doesn\'t exist. "

    .line 225
    const-string/jumbo p2, "updateDozeAlwaysOn: dozeAlwaysOn = "

    .line 228
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    .line 230
    monitor-enter v3

    .line 231
    :try_start_3
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 233
    iget-object v2, v2, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 235
    const-string/jumbo v5, "doze_always_on"

    .line 238
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 241
    move-result p1
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 242
    if-ne p1, v1, :cond_7

    .line 244
    move p1, v1

    .line 245
    goto :goto_7

    .line 246
    :cond_7
    move p1, v0

    .line 247
    :goto_7
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 249
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    move-result-object p2

    .line 259
    invoke-virtual {p0, p2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 262
    iget-object p2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 264
    iget-object v2, p2, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 266
    iget p2, p2, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    .line 268
    const-string v5, "aod_mode"

    .line 270
    invoke-static {v2, v5, p2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 273
    move-result p2

    .line 274
    if-ne p2, v1, :cond_8

    .line 276
    move p2, v1

    .line 277
    goto :goto_8

    .line 278
    :cond_8
    move p2, v0

    .line 279
    :goto_8
    if-eq p1, p2, :cond_9

    .line 281
    iget-object p2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 283
    iget-object p2, p2, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 285
    const-string v2, "aod_mode"

    .line 287
    invoke-static {p2, v2, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 290
    goto :goto_9

    .line 291
    :catchall_2
    move-exception p0

    .line 292
    goto :goto_a

    .line 293
    :cond_9
    :goto_9
    iget-object p2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 295
    iget-object p2, p2, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 297
    const-string v2, "aod_charging_mode"

    .line 299
    invoke-static {p2, v2, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 302
    move-result p2

    .line 303
    if-ne p2, v1, :cond_a

    .line 305
    move v0, v1

    .line 306
    :cond_a
    if-eq p1, v0, :cond_b

    .line 308
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 310
    iget-object p0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 312
    const-string p2, "aod_charging_mode"

    .line 314
    invoke-static {p0, p2, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 317
    :cond_b
    monitor-exit v3

    .line 318
    goto :goto_c

    .line 319
    :catch_2
    move-exception p2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    .line 322
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 339
    monitor-exit v3

    .line 340
    goto :goto_c

    .line 341
    :goto_a
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 342
    throw p0

    .line 343
    :cond_c
    if-eqz p1, :cond_d

    .line 345
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    .line 349
    const-string/jumbo v1, "onChange : "

    .line 352
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 358
    move-result-object p2

    .line 359
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string p2, " , called by package : "

    .line 364
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    move-result-object p2

    .line 374
    sget v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 376
    invoke-virtual {p1, p2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 379
    goto :goto_b

    .line 380
    :cond_d
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    .line 384
    const-string/jumbo v1, "onChange : "

    .line 387
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 393
    move-result-object p2

    .line 394
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    move-result-object p2

    .line 401
    sget v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 403
    invoke-virtual {p1, p2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 406
    :goto_b
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 408
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    .line 411
    :cond_e
    :goto_c
    return-void
.end method
