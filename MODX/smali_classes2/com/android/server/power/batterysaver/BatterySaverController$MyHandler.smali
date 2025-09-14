.class public final Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget v1, v0, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    goto/16 :goto_7

    .line 9
    .line 10
    :cond_0
    move-object/from16 v1, p0

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 13
    .line 14
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-ne v3, v2, :cond_1

    .line 18
    .line 19
    move v3, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v3, v4

    .line 22
    :goto_0
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 23
    .line 24
    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 25
    .line 26
    if-nez v5, :cond_2

    .line 27
    .line 28
    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-class v6, Landroid/os/PowerManager;

    .line 31
    .line 32
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroid/os/PowerManager;

    .line 37
    .line 38
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iput-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 42
    .line 43
    :cond_2
    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    iget-object v6, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v6

    .line 52
    :try_start_0
    iget-boolean v7, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 53
    .line 54
    if-nez v7, :cond_4

    .line 55
    .line 56
    iget-boolean v8, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 57
    .line 58
    if-eqz v8, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move v8, v4

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    :goto_1
    move v8, v2

    .line 64
    :goto_2
    iget-boolean v9, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    .line 65
    .line 66
    iget-boolean v10, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    .line 67
    .line 68
    iget-boolean v11, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 69
    .line 70
    if-eqz v8, :cond_5

    .line 71
    .line 72
    iget-object v8, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 73
    .line 74
    iget-object v12, v8, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    iget-object v8, v8, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    .line 78
    .line 79
    monitor-exit v12

    .line 80
    :goto_3
    move-object/from16 v17, v8

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    throw v0

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    :cond_5
    const-string v8, ""

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v15

    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v16

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v18

    .line 116
    filled-new-array/range {v12 .. v18}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const/16 v5, 0xab3

    .line 121
    .line 122
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    iget-boolean v0, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 126
    .line 127
    iput-boolean v0, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    .line 128
    .line 129
    iget-boolean v0, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 130
    .line 131
    iput-boolean v0, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    .line 132
    .line 133
    iget-object v0, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    .line 134
    .line 135
    new-array v5, v4, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 136
    .line 137
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 142
    .line 143
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    const-class v5, Landroid/os/PowerManagerInternal;

    .line 145
    .line 146
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Landroid/os/PowerManagerInternal;

    .line 151
    .line 152
    if-eqz v5, :cond_6

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    invoke-virtual {v5, v2, v6}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 159
    .line 160
    .line 161
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    .line 162
    .line 163
    .line 164
    if-eqz v3, :cond_8

    .line 165
    .line 166
    new-instance v2, Landroid/content/Intent;

    .line 167
    .line 168
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 169
    .line 170
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/high16 v3, 0x40000000    # 2.0f

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    const-string v5, "BatterySaverController"

    .line 179
    .line 180
    const-string/jumbo v6, "send ACTION_POWER_SAVE_MODE_CHANGED"

    .line 181
    .line 182
    .line 183
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 189
    .line 190
    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    new-instance v2, Landroid/content/Intent;

    .line 204
    .line 205
    const-string v5, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 206
    .line 207
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    const/high16 v5, 0x11000000

    .line 225
    .line 226
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 233
    .line 234
    .line 235
    :cond_7
    new-instance v2, Landroid/content/Intent;

    .line 236
    .line 237
    const-string v5, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    .line 238
    .line 239
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    .line 244
    .line 245
    const-string v3, "BatterySaverController"

    .line 246
    .line 247
    const-string/jumbo v5, "send ACTION_POWER_SAVE_MODE_CHANGED_INTERNAL"

    .line 248
    .line 249
    .line 250
    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    iget-object v3, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    const-string v5, "android.permission.DEVICE_POWER"

    .line 256
    .line 257
    invoke-virtual {v3, v2, v6, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    array-length v2, v0

    .line 261
    :goto_5
    if-ge v4, v2, :cond_8

    .line 262
    .line 263
    aget-object v3, v0, v4

    .line 264
    .line 265
    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 266
    .line 267
    invoke-interface {v3}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->getServiceType()I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    invoke-virtual {v5, v6}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    const-string v6, "BatterySaverController"

    .line 276
    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string/jumbo v8, "onLowPowerModeChanged: ServiceType: "

    .line 280
    .line 281
    .line 282
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v3}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->getServiceType()I

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    packed-switch v8, :pswitch_data_0

    .line 290
    .line 291
    .line 292
    const-string v8, "UNKNOWN"

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :pswitch_0
    const-string v8, "NIGHT_MODE"

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :pswitch_1
    const-string v8, "QUICK_DOZE"

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :pswitch_2
    const-string v8, "AOD"

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :pswitch_3
    const-string v8, "OPTIONAL_SENSORS"

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :pswitch_4
    const-string v8, "FORCE_BACKGROUND_CHECK"

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :pswitch_5
    const-string v8, "FORCE_ALL_APPS_STANDBY"

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :pswitch_6
    const-string v8, "DATA_SAVER"

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :pswitch_7
    const-string v8, "BATTERY_STATS"

    .line 317
    .line 318
    goto :goto_6

    .line 319
    :pswitch_8
    const-string v8, "SOUND"

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :pswitch_9
    const-string v8, "SCREEN_BRIGHTNESS"

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :pswitch_a
    const-string v8, "NETWORK_FIREWALL"

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :pswitch_b
    const-string v8, "KEYVALUE_BACKUP"

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :pswitch_c
    const-string v8, "FULL_BACKUP"

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :pswitch_d
    const-string v8, "ANIMATION"

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :pswitch_e
    const-string v8, "VIBRATION"

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :pswitch_f
    const-string v8, "LOCATION"

    .line 341
    .line 342
    goto :goto_6

    .line 343
    :pswitch_10
    const-string v8, "NULL"

    .line 344
    .line 345
    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v8, ": "

    .line 349
    .line 350
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    iget-boolean v8, v5, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 354
    .line 355
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    invoke-interface {v3, v5}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Landroid/os/PowerSaveState;)V

    .line 366
    .line 367
    .line 368
    add-int/lit8 v4, v4, 0x1

    .line 369
    .line 370
    goto :goto_5

    .line 371
    :cond_8
    :goto_7
    return-void

    .line 372
    :goto_8
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    throw v0

    .line 374
    nop

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final postStateChanged(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
