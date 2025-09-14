.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "PU_StatusWatcher"

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "Received "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 43
    .line 44
    monitor-enter v1

    .line 45
    :try_start_0
    iput-boolean v3, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mScreenOff:Z

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->isDexoptingAllowed()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/pm/pu/DexoptTrigger;->resumeOptimizing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    monitor-exit v1

    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :goto_1
    monitor-exit v1

    .line 67
    throw v0

    .line 68
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const/4 v4, 0x0

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 78
    .line 79
    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 80
    .line 81
    monitor-enter v1

    .line 82
    :try_start_1
    iput-boolean v4, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mScreenOff:Z

    .line 83
    .line 84
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/android/server/pm/pu/DexoptTrigger;->pauseOptimizing()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .line 90
    .line 91
    monitor-exit v1

    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :catchall_1
    move-exception v0

    .line 95
    monitor-exit v1

    .line 96
    throw v0

    .line 97
    :cond_2
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 106
    .line 107
    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 108
    .line 109
    monitor-enter v1

    .line 110
    :try_start_2
    iput-boolean v4, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mScreenOff:Z

    .line 111
    .line 112
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/android/server/pm/pu/DexoptTrigger;->pauseOptimizing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    .line 118
    .line 119
    monitor-exit v1

    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :catchall_2
    move-exception v0

    .line 123
    monitor-exit v1

    .line 124
    throw v0

    .line 125
    :cond_3
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 126
    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_4

    .line 132
    .line 133
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 134
    .line 135
    iget-object v2, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    const-string v4, "PU_StatusWatcher"

    .line 141
    .line 142
    const-string/jumbo v0, "thermalservice"

    .line 143
    .line 144
    .line 145
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalService:Landroid/os/IThermalService;

    .line 154
    .line 155
    :try_start_3
    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentThermalStatus()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput v0, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v5, "Failed to get thermal status"

    .line 164
    .line 165
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .line 167
    .line 168
    iput v3, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    .line 169
    .line 170
    :goto_2
    iget v0, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    .line 171
    .line 172
    iput v0, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInitialThermalStatus:I

    .line 173
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v3, "Initial thermal status "

    .line 177
    .line 178
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget v3, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInitialThermalStatus:I

    .line 182
    .line 183
    invoke-static {v0, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :try_start_4
    iget-object v0, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalService:Landroid/os/IThermalService;

    .line 187
    .line 188
    iget-object v2, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalListener:Lcom/android/server/pm/pu/DeviceStatusWatcher$1;

    .line 189
    .line 190
    invoke-interface {v0, v2}, Landroid/os/IThermalService;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :catch_1
    move-exception v0

    .line 195
    const-string v2, "Thermal registration failed"

    .line 196
    .line 197
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .line 199
    .line 200
    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 201
    .line 202
    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 203
    .line 204
    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide v1

    .line 213
    iput-wide v1, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    .line 214
    .line 215
    new-instance v1, Ljava/lang/Thread;

    .line 216
    .line 217
    new-instance v2, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda0;

    .line 218
    .line 219
    invoke-direct {v2, v0}, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/pu/ProfileUtilizationService;)V

    .line 220
    .line 221
    .line 222
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 226
    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_4
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 230
    .line 231
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_7

    .line 236
    .line 237
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 238
    .line 239
    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    const-string v0, "battery_low"

    .line 245
    .line 246
    move-object/from16 v2, p2

    .line 247
    .line 248
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    iget-boolean v2, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBatteryLow:Z

    .line 253
    .line 254
    if-ne v0, v2, :cond_5

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_5
    monitor-enter v1

    .line 258
    :try_start_5
    iput-boolean v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBatteryLow:Z

    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->isDexoptingAllowed()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_6

    .line 265
    .line 266
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 267
    .line 268
    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    .line 269
    .line 270
    invoke-virtual {v0}, Lcom/android/server/pm/pu/DexoptTrigger;->resumeOptimizing()V

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :catchall_3
    move-exception v0

    .line 275
    goto :goto_5

    .line 276
    :cond_6
    :goto_4
    monitor-exit v1

    .line 277
    goto :goto_6

    .line 278
    :goto_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 279
    throw v0

    .line 280
    :cond_7
    :goto_6
    return-void

    .line 281
    :pswitch_0
    move-object/from16 v2, p2

    .line 282
    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 288
    .line 289
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_16

    .line 294
    .line 295
    iget-object v0, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 296
    .line 297
    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 298
    .line 299
    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    new-instance v8, Lcom/android/server/pm/pu/HotAppGenerator;

    .line 305
    .line 306
    iget-object v1, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    .line 307
    .line 308
    invoke-direct {v8, v1}, Lcom/android/server/pm/pu/HotAppGenerator;-><init>(Landroid/content/Context;)V

    .line 309
    .line 310
    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 312
    .line 313
    .line 314
    move-result-wide v9

    .line 315
    new-instance v11, Ljava/util/HashSet;

    .line 316
    .line 317
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 318
    .line 319
    .line 320
    iget-object v1, v8, Lcom/android/server/pm/pu/HotAppGenerator;->mPm:Landroid/content/pm/PackageManager;

    .line 321
    .line 322
    const/4 v12, 0x0

    .line 323
    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    iget-object v2, v8, Lcom/android/server/pm/pu/HotAppGenerator;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 328
    .line 329
    invoke-virtual {v2}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBuckets()Ljava/util/Map;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    :cond_8
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-eqz v3, :cond_b

    .line 342
    .line 343
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 348
    .line 349
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 350
    .line 351
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    check-cast v4, Ljava/lang/Integer;

    .line 356
    .line 357
    if-nez v4, :cond_9

    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    const/16 v6, 0xa

    .line 365
    .line 366
    if-eq v5, v6, :cond_a

    .line 367
    .line 368
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    const/4 v6, 0x5

    .line 373
    if-eq v5, v6, :cond_a

    .line 374
    .line 375
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    const/16 v5, 0x14

    .line 380
    .line 381
    if-eq v4, v5, :cond_a

    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_a
    new-instance v4, Landroid/content/Intent;

    .line 385
    .line 386
    const-string v5, "android.intent.action.MAIN"

    .line 387
    .line 388
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    const-string v5, "android.intent.category.LAUNCHER"

    .line 392
    .line 393
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    .line 398
    .line 399
    iget-object v5, v8, Lcom/android/server/pm/pu/HotAppGenerator;->mPm:Landroid/content/pm/PackageManager;

    .line 400
    .line 401
    invoke-virtual {v5, v4, v12, v12}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    if-eqz v4, :cond_8

    .line 406
    .line 407
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    if-lez v4, :cond_8

    .line 412
    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-static {v3}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const/4 v5, 0x0

    .line 431
    invoke-static {v5}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    new-instance v5, Ljava/io/File;

    .line 443
    .line 444
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 448
    .line 449
    .line 450
    move-result-wide v4

    .line 451
    const-wide/16 v6, 0x0

    .line 452
    .line 453
    cmp-long v4, v4, v6

    .line 454
    .line 455
    if-lez v4, :cond_8

    .line 456
    .line 457
    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    goto :goto_7

    .line 461
    :cond_b
    new-instance v13, Ljava/util/HashMap;

    .line 462
    .line 463
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 464
    .line 465
    .line 466
    new-instance v14, Ljava/util/HashMap;

    .line 467
    .line 468
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 469
    .line 470
    .line 471
    sget-wide v1, Lcom/android/server/pm/pu/HotAppGenerator;->MONTH_INTERVAL:J

    .line 472
    .line 473
    sub-long v2, v9, v1

    .line 474
    .line 475
    new-instance v7, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;

    .line 476
    .line 477
    const/4 v1, 0x0

    .line 478
    invoke-direct {v7, v13, v14, v1}, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    .line 479
    .line 480
    .line 481
    move-object v1, v8

    .line 482
    move-wide v4, v9

    .line 483
    move-object v6, v11

    .line 484
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/pu/HotAppGenerator;->queryAndParseUsageStats(JJLjava/util/Set;Ljava/util/function/BiConsumer;)V

    .line 485
    .line 486
    .line 487
    new-instance v15, Ljava/util/HashMap;

    .line 488
    .line 489
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 490
    .line 491
    .line 492
    new-instance v7, Ljava/util/HashMap;

    .line 493
    .line 494
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 495
    .line 496
    .line 497
    sget-wide v1, Lcom/android/server/pm/pu/HotAppGenerator;->WEEK_INTERVAL:J

    .line 498
    .line 499
    sub-long/2addr v9, v1

    .line 500
    sget-wide v1, Lcom/android/server/pm/pu/HotAppGenerator;->DAY_INTERVAL:J

    .line 501
    .line 502
    add-long v4, v9, v1

    .line 503
    .line 504
    new-instance v6, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;

    .line 505
    .line 506
    const/4 v1, 0x1

    .line 507
    invoke-direct {v6, v15, v7, v1}, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    .line 508
    .line 509
    .line 510
    move-object v1, v8

    .line 511
    move-wide v2, v9

    .line 512
    move-object/from16 v16, v6

    .line 513
    .line 514
    move-object v6, v11

    .line 515
    move-object/from16 p0, v7

    .line 516
    .line 517
    move-object/from16 v7, v16

    .line 518
    .line 519
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/pu/HotAppGenerator;->queryAndParseUsageStats(JJLjava/util/Set;Ljava/util/function/BiConsumer;)V

    .line 520
    .line 521
    .line 522
    sget-wide v1, Lcom/android/server/pm/pu/HotAppGenerator;->HOUR_INTERVAL:J

    .line 523
    .line 524
    add-long/2addr v1, v9

    .line 525
    new-instance v3, Ljava/util/HashMap;

    .line 526
    .line 527
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 528
    .line 529
    .line 530
    iget-object v4, v8, Lcom/android/server/pm/pu/HotAppGenerator;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 531
    .line 532
    invoke-virtual {v4, v9, v10, v1, v2}, Landroid/app/usage/UsageStatsManager;->queryEventsForSelf(JJ)Landroid/app/usage/UsageEvents;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    const/4 v2, 0x1

    .line 537
    if-nez v1, :cond_c

    .line 538
    .line 539
    goto :goto_9

    .line 540
    :cond_c
    move v4, v12

    .line 541
    :cond_d
    :goto_8
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    .line 542
    .line 543
    .line 544
    move-result v5

    .line 545
    if-eqz v5, :cond_e

    .line 546
    .line 547
    new-instance v5, Landroid/app/usage/UsageEvents$Event;

    .line 548
    .line 549
    invoke-direct {v5}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1, v5}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 553
    .line 554
    .line 555
    invoke-virtual {v5}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 556
    .line 557
    .line 558
    move-result v6

    .line 559
    if-ne v6, v2, :cond_d

    .line 560
    .line 561
    invoke-virtual {v5}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    invoke-virtual {v11, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v6

    .line 569
    if-eqz v6, :cond_d

    .line 570
    .line 571
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    if-nez v6, :cond_d

    .line 576
    .line 577
    add-int/lit8 v4, v4, 0x1

    .line 578
    .line 579
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 580
    .line 581
    .line 582
    move-result-object v6

    .line 583
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    goto :goto_8

    .line 587
    :cond_e
    :goto_9
    iget-object v1, v8, Lcom/android/server/pm/pu/HotAppGenerator;->mContext:Landroid/content/Context;

    .line 588
    .line 589
    const-string v4, "activity"

    .line 590
    .line 591
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    check-cast v1, Landroid/app/ActivityManager;

    .line 596
    .line 597
    const v4, 0x7fffffff

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v4, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    new-instance v4, Ljava/util/HashMap;

    .line 605
    .line 606
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    int-to-double v5, v5

    .line 611
    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    .line 612
    .line 613
    div-double/2addr v5, v7

    .line 614
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 615
    .line 616
    .line 617
    move-result-wide v5

    .line 618
    double-to-int v5, v5

    .line 619
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 620
    .line 621
    .line 622
    move v5, v12

    .line 623
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 624
    .line 625
    .line 626
    move-result v6

    .line 627
    if-ge v5, v6, :cond_12

    .line 628
    .line 629
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v6

    .line 633
    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 634
    .line 635
    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 636
    .line 637
    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    if-nez v7, :cond_f

    .line 642
    .line 643
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 644
    .line 645
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 646
    .line 647
    .line 648
    move-result-object v8

    .line 649
    if-eqz v8, :cond_f

    .line 650
    .line 651
    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 652
    .line 653
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 654
    .line 655
    .line 656
    move-result-object v6

    .line 657
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v7

    .line 661
    :cond_f
    if-eqz v7, :cond_10

    .line 662
    .line 663
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v6

    .line 667
    if-eqz v6, :cond_11

    .line 668
    .line 669
    :cond_10
    const-string/jumbo v6, "null"

    .line 670
    .line 671
    .line 672
    invoke-static {v5, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 677
    .line 678
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    .line 680
    .line 681
    move-result-object v6

    .line 682
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    goto :goto_a

    .line 686
    :cond_12
    new-instance v1, Ljava/util/TreeSet;

    .line 687
    .line 688
    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 692
    .line 693
    .line 694
    move-result v5

    .line 695
    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    .line 696
    .line 697
    .line 698
    move-result v6

    .line 699
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    .line 700
    .line 701
    .line 702
    move-result v7

    .line 703
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    .line 704
    .line 705
    .line 706
    move-result v8

    .line 707
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->size()I

    .line 708
    .line 709
    .line 710
    move-result v9

    .line 711
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 712
    .line 713
    .line 714
    move-result v10

    .line 715
    filled-new-array/range {v5 .. v10}, [I

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 720
    .line 721
    .line 722
    move-result-object v5

    .line 723
    invoke-interface {v5}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    .line 724
    .line 725
    .line 726
    move-result-object v5

    .line 727
    invoke-virtual {v5, v12}, Ljava/util/OptionalInt;->orElse(I)I

    .line 728
    .line 729
    .line 730
    move-result v5

    .line 731
    add-int/2addr v5, v2

    .line 732
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 737
    .line 738
    .line 739
    move-result v6

    .line 740
    if-eqz v6, :cond_13

    .line 741
    .line 742
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v6

    .line 746
    check-cast v6, Ljava/lang/String;

    .line 747
    .line 748
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 749
    .line 750
    .line 751
    move-result-object v7

    .line 752
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v7

    .line 756
    check-cast v7, Ljava/lang/Integer;

    .line 757
    .line 758
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 759
    .line 760
    .line 761
    move-result v7

    .line 762
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 763
    .line 764
    .line 765
    move-result-object v8

    .line 766
    invoke-virtual {v13, v6, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v8

    .line 770
    check-cast v8, Ljava/lang/Integer;

    .line 771
    .line 772
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 773
    .line 774
    .line 775
    move-result v8

    .line 776
    add-int/2addr v8, v7

    .line 777
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 778
    .line 779
    .line 780
    move-result-object v7

    .line 781
    invoke-virtual {v14, v6, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v7

    .line 785
    check-cast v7, Ljava/lang/Integer;

    .line 786
    .line 787
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 788
    .line 789
    .line 790
    move-result v7

    .line 791
    add-int/2addr v7, v8

    .line 792
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 793
    .line 794
    .line 795
    move-result-object v8

    .line 796
    invoke-virtual {v15, v6, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v8

    .line 800
    check-cast v8, Ljava/lang/Integer;

    .line 801
    .line 802
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 803
    .line 804
    .line 805
    move-result v8

    .line 806
    add-int/2addr v8, v7

    .line 807
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 808
    .line 809
    .line 810
    move-result-object v7

    .line 811
    move-object/from16 v9, p0

    .line 812
    .line 813
    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v7

    .line 817
    check-cast v7, Ljava/lang/Integer;

    .line 818
    .line 819
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 820
    .line 821
    .line 822
    move-result v7

    .line 823
    add-int/2addr v7, v8

    .line 824
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 825
    .line 826
    .line 827
    move-result-object v8

    .line 828
    invoke-virtual {v3, v6, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v8

    .line 832
    check-cast v8, Ljava/lang/Integer;

    .line 833
    .line 834
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 835
    .line 836
    .line 837
    move-result v8

    .line 838
    add-int/2addr v8, v7

    .line 839
    new-instance v7, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;

    .line 840
    .line 841
    int-to-long v10, v8

    .line 842
    invoke-direct {v7, v10, v11, v6}, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;-><init>(JLjava/lang/String;)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v1, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    goto :goto_b

    .line 849
    :cond_13
    const-string v2, "Generated apps:"

    .line 850
    .line 851
    const-string v3, "PU_Generator"

    .line 852
    .line 853
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .line 855
    .line 856
    new-instance v2, Ljava/util/ArrayList;

    .line 857
    .line 858
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 862
    .line 863
    .line 864
    move-result-object v1

    .line 865
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 866
    .line 867
    .line 868
    move-result v4

    .line 869
    if-eqz v4, :cond_14

    .line 870
    .line 871
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v4

    .line 875
    check-cast v4, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;

    .line 876
    .line 877
    new-instance v5, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .line 881
    .line 882
    iget-object v6, v4, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->name:Ljava/lang/String;

    .line 883
    .line 884
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    const-string v6, "\t"

    .line 888
    .line 889
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    iget-wide v6, v4, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->weight:J

    .line 893
    .line 894
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v5

    .line 901
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .line 903
    .line 904
    new-instance v5, Lcom/android/server/pm/pu/ProfileUtilizationService$App;

    .line 905
    .line 906
    iget-object v6, v4, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->name:Ljava/lang/String;

    .line 907
    .line 908
    iget-wide v7, v4, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->weight:J

    .line 909
    .line 910
    invoke-direct {v5, v7, v8, v6}, Lcom/android/server/pm/pu/ProfileUtilizationService$App;-><init>(JLjava/lang/String;)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    goto :goto_c

    .line 917
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 918
    .line 919
    .line 920
    move-result v1

    .line 921
    const/16 v3, 0x11

    .line 922
    .line 923
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 924
    .line 925
    .line 926
    move-result v1

    .line 927
    invoke-virtual {v2, v12, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    const-string v2, "PU_Storage"

    .line 932
    .line 933
    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    .line 934
    .line 935
    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 936
    .line 937
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 942
    .line 943
    .line 944
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    .line 945
    .line 946
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 947
    .line 948
    .line 949
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 954
    .line 955
    .line 956
    move-result v4

    .line 957
    if-eqz v4, :cond_15

    .line 958
    .line 959
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v4

    .line 963
    check-cast v4, Lcom/android/server/pm/pu/ProfileUtilizationService$App;

    .line 964
    .line 965
    iget-object v5, v4, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->packageName:Ljava/lang/String;

    .line 966
    .line 967
    iget-wide v6, v4, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->weight:J

    .line 968
    .line 969
    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 970
    .line 971
    .line 972
    goto :goto_d

    .line 973
    :catch_2
    move-exception v0

    .line 974
    goto :goto_e

    .line 975
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 976
    .line 977
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 978
    .line 979
    .line 980
    const-string v4, "Store "

    .line 981
    .line 982
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v1

    .line 992
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    .line 994
    .line 995
    const-string v1, "json_apps_weights"

    .line 996
    .line 997
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1002
    .line 1003
    .line 1004
    goto :goto_f

    .line 1005
    :goto_e
    const-string v1, "Failed to store apps"

    .line 1006
    .line 1007
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    .line 1009
    .line 1010
    :goto_f
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1011
    .line 1012
    .line 1013
    :cond_16
    return-void

    .line 1014
    nop

    .line 1015
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
