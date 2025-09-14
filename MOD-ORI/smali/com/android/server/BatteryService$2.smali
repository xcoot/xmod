.class public final Lcom/android/server/BatteryService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/BatteryService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

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
    .locals 7

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lcom/android/server/BatteryService$2;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance p2, Lcom/android/server/BatteryService$9$1;

    .line 26
    .line 27
    invoke-direct {p2, p0, v1}, Lcom/android/server/BatteryService$9$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object p2, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance p2, Lcom/android/server/BatteryService$9$1;

    .line 47
    .line 48
    invoke-direct {p2, p0, v0}, Lcom/android/server/BatteryService$9$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void

    .line 55
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    const-string/jumbo p1, "enable"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 76
    .line 77
    iget-boolean v0, p2, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    .line 78
    .line 79
    if-eq v0, p1, :cond_2

    .line 80
    .line 81
    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 82
    .line 83
    new-instance v0, Lcom/android/server/BatteryService$6$1;

    .line 84
    .line 85
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/BatteryService$6$1;-><init>(Lcom/android/server/BatteryService$2;ZC)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void

    .line 92
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string/jumbo p2, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 108
    .line 109
    new-instance p2, Lcom/android/server/BatteryService$7$1;

    .line 110
    .line 111
    invoke-direct {p2, p0, v1}, Lcom/android/server/BatteryService$7$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    const-string/jumbo p2, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 130
    .line 131
    new-instance p2, Lcom/android/server/BatteryService$7$1;

    .line 132
    .line 133
    invoke-direct {p2, p0, v0}, Lcom/android/server/BatteryService$7$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    :cond_4
    :goto_1
    return-void

    .line 140
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string v0, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    const-string p1, "OTG_CHARGE_BLOCK"

    .line 153
    .line 154
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 159
    .line 160
    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 161
    .line 162
    new-instance v0, Lcom/android/server/BatteryService$6$1;

    .line 163
    .line 164
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/BatteryService$6$1;-><init>(Lcom/android/server/BatteryService$2;ZB)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    .line 169
    .line 170
    :cond_5
    return-void

    .line 171
    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 176
    .line 177
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_6

    .line 182
    .line 183
    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 184
    .line 185
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 186
    .line 187
    new-instance p2, Lcom/android/server/BatteryService$4$1;

    .line 188
    .line 189
    invoke-direct {p2, p0, v1}, Lcom/android/server/BatteryService$4$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    .line 194
    .line 195
    goto/16 :goto_3

    .line 196
    .line 197
    :cond_6
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 198
    .line 199
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_7

    .line 204
    .line 205
    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 208
    .line 209
    new-instance p2, Lcom/android/server/BatteryService$4$1;

    .line 210
    .line 211
    invoke-direct {p2, p0, v0}, Lcom/android/server/BatteryService$4$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_7
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 220
    .line 221
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_8

    .line 226
    .line 227
    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 228
    .line 229
    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 230
    .line 231
    new-instance v0, Lcom/android/server/BatteryService$4$1;

    .line 232
    .line 233
    invoke-direct {v0, p0, p1}, Lcom/android/server/BatteryService$4$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_8
    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    .line 241
    .line 242
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-eqz p1, :cond_b

    .line 247
    .line 248
    const-string p1, "[SS][BattInfo]"

    .line 249
    .line 250
    const-string/jumbo p2, "shutdown event"

    .line 251
    .line 252
    .line 253
    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 257
    .line 258
    iget-object v1, p1, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 259
    .line 260
    iget p2, p1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 261
    .line 262
    int-to-long v2, p2

    .line 263
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 264
    .line 265
    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 266
    .line 267
    int-to-long v4, p1

    .line 268
    const/4 v6, 0x1

    .line 269
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processDischargingLevel(JJZ)V

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 273
    .line 274
    iget-object p2, p1, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 275
    .line 276
    iget-boolean v1, p2, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 277
    .line 278
    if-eqz v1, :cond_9

    .line 279
    .line 280
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 281
    .line 282
    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 283
    .line 284
    int-to-long v1, p1

    .line 285
    invoke-virtual {p2, v1, v2, v0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processFullStatusUsage(JZ)V

    .line 286
    .line 287
    .line 288
    :cond_9
    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 289
    .line 290
    iget-object p1, p1, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 291
    .line 292
    invoke-static {}, Lcom/android/server/battery/BattUtils;->getCurrentNetworkTimeMillis()J

    .line 293
    .line 294
    .line 295
    move-result-wide v0

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v2, "[saveShutdownTimeForLongestPowerOffDuration]shutdownTime:"

    .line 299
    .line 300
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    const-string v2, "[SS]BattFunctions"

    .line 311
    .line 312
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    const-wide v3, 0x16f5c788580L

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    cmp-long p2, v0, v3

    .line 321
    .line 322
    if-gez p2, :cond_a

    .line 323
    .line 324
    const-string p1, "[saveShutdownTimeForLongestPowerOffDuration]wrong shutdownTime"

    .line 325
    .line 326
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_a
    invoke-static {p1, v0, v1}, Lcom/android/server/battery/BattUtils;->saveSharedPreferencesAsLong(Landroid/content/Context;J)V

    .line 331
    .line 332
    .line 333
    :goto_2
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 334
    .line 335
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 336
    .line 337
    if-eqz p0, :cond_b

    .line 338
    .line 339
    const-string/jumbo p0, "persist.sys.shutdown_received"

    .line 340
    .line 341
    .line 342
    const-string/jumbo p1, "true"

    .line 343
    .line 344
    .line 345
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :cond_b
    :goto_3
    return-void

    .line 349
    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 354
    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string v3, "[mBootCompletedReceiver]action:"

    .line 358
    .line 359
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 373
    .line 374
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    if-eqz p2, :cond_d

    .line 379
    .line 380
    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 381
    .line 382
    iput-boolean v0, p2, Lcom/android/server/BatteryService;->mIsUnlockedBootCompleted:Z

    .line 383
    .line 384
    iget v2, p2, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 385
    .line 386
    const/4 v3, 0x4

    .line 387
    if-ne v2, v3, :cond_c

    .line 388
    .line 389
    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 390
    .line 391
    new-instance v1, Lcom/android/server/BatteryService$31;

    .line 392
    .line 393
    invoke-direct {v1, v0, p0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_c
    const-string p2, "Currently, Not Battery Adaptive Protect Mode"

    .line 401
    .line 402
    invoke-static {v1, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    :goto_4
    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 406
    .line 407
    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 408
    .line 409
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;

    .line 410
    .line 411
    invoke-direct {v0, p1, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    const-wide/16 p0, 0x4e20

    .line 415
    .line 416
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    .line 418
    .line 419
    :cond_d
    return-void

    .line 420
    :pswitch_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL"

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    if-eqz p1, :cond_e

    .line 432
    .line 433
    const-string/jumbo p1, "write"

    .line 434
    .line 435
    .line 436
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 441
    .line 442
    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 443
    .line 444
    new-instance v0, Lcom/android/server/BatteryService$6$1;

    .line 445
    .line 446
    invoke-direct {v0, p0, p1}, Lcom/android/server/BatteryService$6$1;-><init>(Lcom/android/server/BatteryService$2;Z)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 450
    .line 451
    .line 452
    :cond_e
    return-void

    .line 453
    :pswitch_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    const-string v0, "android.samsung.media.action.AUDIO_MODE"

    .line 458
    .line 459
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result p1

    .line 463
    if-eqz p1, :cond_f

    .line 464
    .line 465
    const-string p1, "android.samsung.media.extra.AUDIO_MODE"

    .line 466
    .line 467
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 468
    .line 469
    .line 470
    move-result p1

    .line 471
    sget-object p2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 472
    .line 473
    new-instance p2, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v0, "audio_mode : "

    .line 476
    .line 477
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p2

    .line 487
    const-string v0, "BatteryService"

    .line 488
    .line 489
    invoke-static {v0, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 493
    .line 494
    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 495
    .line 496
    new-instance v0, Lcom/android/server/BatteryService$34;

    .line 497
    .line 498
    invoke-direct {v0, p0, p1}, Lcom/android/server/BatteryService$34;-><init>(Lcom/android/server/BatteryService$2;I)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    .line 503
    .line 504
    :cond_f
    return-void

    .line 505
    :pswitch_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    sget-object p2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 510
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    const-string v1, "[SleepChargingDismissReceiver_onReceive]action:"

    .line 514
    .line 515
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-static {p2, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 529
    .line 530
    iget-object p0, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 531
    .line 532
    if-eqz p0, :cond_10

    .line 533
    .line 534
    const-string p1, "[SS]SleepChargingManager"

    .line 535
    .line 536
    const-string p2, "[updateDismiss]"

    .line 537
    .line 538
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 542
    .line 543
    new-instance p2, Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;

    .line 544
    .line 545
    invoke-direct {p2, p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    .line 550
    .line 551
    :cond_10
    return-void

    .line 552
    nop

    .line 553
    :pswitch_data_0
    .packed-switch 0x0
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
