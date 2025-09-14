.class public final Lcom/android/server/battery/batteryInfo/FirstUseDateData;
.super Lcom/android/server/battery/batteryInfo/BaseData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final authFaiExpiredPaths:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockForDateChangedReceiver:Ljava/lang/Object;

.field public final mLockForFudReceiver:Ljava/lang/Object;

.field public final mShouldCheckFaiExpireds:[Z

.field public final mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

.field public mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;


# direct methods
.method public constructor <init>(II[ZLandroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForFudReceiver:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForDateChangedReceiver:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v1, v2, p0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 32
    .line 33
    iput p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 34
    .line 35
    iput p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 36
    .line 37
    iput-object p3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 38
    .line 39
    iput-object p4, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    new-instance p1, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-direct {p1, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 47
    .line 48
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 49
    .line 50
    new-array p1, p1, [Ljava/lang/String;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 53
    .line 54
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 55
    .line 56
    const/4 p2, 0x3

    .line 57
    const/4 p3, 0x1

    .line 58
    if-nez p1, :cond_0

    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 61
    .line 62
    const-string p4, "/efs/FactoryApp/batt_beginning_date"

    .line 63
    .line 64
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 68
    .line 69
    const-string p4, "/efs/FactoryApp/batt_beginning_date_2nd"

    .line 70
    .line 71
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_0
    if-ne p1, p3, :cond_1

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 79
    .line 80
    const-string p4, "/efs/FactoryApp/batt_beginning_date"

    .line 81
    .line 82
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 86
    .line 87
    const-string p4, "/sys/class/power_supply/sec_auth/first_use_date"

    .line 88
    .line 89
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    const-string p1, "/sys/class/power_supply/sec_auth/fai_expired"

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 98
    .line 99
    new-array p1, p1, [Z

    .line 100
    .line 101
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    if-ne p1, p2, :cond_2

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 107
    .line 108
    const-string p4, "/efs/FactoryApp/batt_beginning_date"

    .line 109
    .line 110
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 114
    .line 115
    const-string p4, "/efs/FactoryApp/batt_beginning_date_2nd"

    .line 116
    .line 117
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 121
    .line 122
    const-string p4, "/sys/class/power_supply/sec_auth/first_use_date"

    .line 123
    .line 124
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 128
    .line 129
    const-string p4, "/sys/class/power_supply/sec_auth_2nd/first_use_date"

    .line 130
    .line 131
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    const-string p1, "/sys/class/power_supply/sec_auth/fai_expired"

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    const-string p1, "/sys/class/power_supply/sec_auth_2nd/fai_expired"

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 145
    .line 146
    new-array p1, p1, [Z

    .line 147
    .line 148
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    const/4 p4, 0x2

    .line 152
    if-ne p1, p4, :cond_3

    .line 153
    .line 154
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 155
    .line 156
    const-string p4, "/efs/FactoryApp/batt_beginning_date"

    .line 157
    .line 158
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 162
    .line 163
    const-string p4, "/sys/class/power_supply/sbp-fg/first_use_date"

    .line 164
    .line 165
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_3
    const/4 p4, 0x4

    .line 170
    if-ne p1, p4, :cond_4

    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 173
    .line 174
    const-string p4, "/efs/FactoryApp/batt_beginning_date"

    .line 175
    .line 176
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 180
    .line 181
    const-string p4, "/efs/FactoryApp/batt_beginning_date_2nd"

    .line 182
    .line 183
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 187
    .line 188
    const-string p4, "/sys/class/power_supply/sbp-fg/first_use_date"

    .line 189
    .line 190
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 194
    .line 195
    const-string p4, "/sys/class/power_supply/sbp-fg-2/first_use_date"

    .line 196
    .line 197
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 201
    .line 202
    const/4 p4, 0x0

    .line 203
    if-eqz p1, :cond_6

    .line 204
    .line 205
    move p1, p4

    .line 206
    :goto_1
    iget p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 207
    .line 208
    if-ge p1, p5, :cond_6

    .line 209
    .line 210
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 211
    .line 212
    aget-boolean p5, p5, p1

    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 215
    .line 216
    if-nez p5, :cond_5

    .line 217
    .line 218
    const-string p5, "[syncAuthAndEfs]Authentification false => skip_"

    .line 219
    .line 220
    invoke-static {p1, p5, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_5
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p5

    .line 230
    check-cast p5, Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {p5, p4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p5

    .line 236
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v1, p5}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string v3, "[syncAuthAndEfs]sync efs FirstUseDate with auth:"

    .line 251
    .line 252
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string p5, " ,result:"

    .line 259
    .line 260
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p5

    .line 270
    invoke-static {v0, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_6
    const/16 p1, 0x3e8

    .line 277
    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 286
    .line 287
    check-cast p1, [Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    new-instance p5, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;

    .line 294
    .line 295
    const/4 v0, 0x0

    .line 296
    invoke-direct {p5, p0, v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 297
    .line 298
    .line 299
    invoke-interface {p1, p5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-eqz p1, :cond_7

    .line 304
    .line 305
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 306
    .line 307
    const-string p5, "[activateFirstUseDateCheckIfRequired]Already all of FirstUseDate Exist"

    .line 308
    .line 309
    invoke-static {p1, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_7
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForFudReceiver:Ljava/lang/Object;

    .line 314
    .line 315
    monitor-enter p1

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterFudReceiver()V

    .line 317
    .line 318
    .line 319
    new-instance v2, Landroid/content/IntentFilter;

    .line 320
    .line 321
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string p5, "android.intent.action.TIME_SET"

    .line 325
    .line 326
    invoke-virtual {v2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string/jumbo p5, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string/jumbo p5, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    new-instance v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 342
    .line 343
    const/4 p5, 0x1

    .line 344
    invoke-direct {v1, p0, p5}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 345
    .line 346
    .line 347
    iput-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 348
    .line 349
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 350
    .line 351
    const/4 v4, 0x0

    .line 352
    const/4 v5, 0x2

    .line 353
    const/4 v3, 0x0

    .line 354
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 355
    .line 356
    .line 357
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 359
    .line 360
    const-string/jumbo p5, "registerFudReceiver"

    .line 361
    .line 362
    .line 363
    invoke-static {p1, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 367
    .line 368
    const-string p5, "[activateFirstUseDateCheckIfRequired]writeFirstUseDateReceiver Registered For FirstUseDate"

    .line 369
    .line 370
    invoke-static {p1, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 374
    .line 375
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 376
    .line 377
    const-wide/32 v0, 0xafc8

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1, p5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    .line 382
    .line 383
    :goto_3
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 384
    .line 385
    if-eq p1, p3, :cond_8

    .line 386
    .line 387
    if-ne p1, p2, :cond_c

    .line 388
    .line 389
    :cond_8
    move p1, p4

    .line 390
    :goto_4
    iget p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 391
    .line 392
    if-ge p1, p2, :cond_b

    .line 393
    .line 394
    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 395
    .line 396
    aget-boolean p2, p2, p1

    .line 397
    .line 398
    if-nez p2, :cond_9

    .line 399
    .line 400
    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 401
    .line 402
    const-string p5, "[activateFaiExpiredCheckIfRequired]Authentification false => skip_"

    .line 403
    .line 404
    invoke-static {p1, p5, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_5

    .line 408
    :cond_9
    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object p2

    .line 414
    check-cast p2, Ljava/lang/String;

    .line 415
    .line 416
    invoke-static {p2, p3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p2

    .line 420
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 421
    .line 422
    const-string v0, "[activateFaiExpiredCheckIfRequired]faiExpiredStr:"

    .line 423
    .line 424
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-static {p5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    const-string p5, "1"

    .line 432
    .line 433
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result p5

    .line 437
    if-nez p5, :cond_a

    .line 438
    .line 439
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 440
    .line 441
    aput-boolean p3, p5, p1

    .line 442
    .line 443
    const-string p5, "0"

    .line 444
    .line 445
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result p2

    .line 449
    if-nez p2, :cond_a

    .line 450
    .line 451
    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object p2

    .line 457
    check-cast p2, Ljava/lang/String;

    .line 458
    .line 459
    const-string p5, "0"

    .line 460
    .line 461
    invoke-static {p2, p5}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 462
    .line 463
    .line 464
    :cond_a
    :goto_5
    add-int/lit8 p1, p1, 0x1

    .line 465
    .line 466
    goto :goto_4

    .line 467
    :cond_b
    const-string p1, "/data/log/battery_service/battery_service_main_history"

    .line 468
    .line 469
    const-string p2, "FaiExpiredCheck"

    .line 470
    .line 471
    new-instance p3, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    const-string/jumbo p5, "shouldCheckFaiExpireds:"

    .line 474
    .line 475
    .line 476
    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 480
    .line 481
    invoke-static {p5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object p5

    .line 485
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object p3

    .line 492
    invoke-static {p1, p2, p3}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 496
    .line 497
    array-length p1, p1

    .line 498
    invoke-static {p4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    new-instance p2, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;

    .line 503
    .line 504
    const/4 p3, 0x0

    .line 505
    invoke-direct {p2, p0, p3}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 506
    .line 507
    .line 508
    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    .line 509
    .line 510
    .line 511
    move-result p1

    .line 512
    if-eqz p1, :cond_c

    .line 513
    .line 514
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForDateChangedReceiver:Ljava/lang/Object;

    .line 515
    .line 516
    monitor-enter p1

    .line 517
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterDateChangedReceiver()V

    .line 518
    .line 519
    .line 520
    new-instance v2, Landroid/content/IntentFilter;

    .line 521
    .line 522
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 523
    .line 524
    .line 525
    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 526
    .line 527
    invoke-virtual {v2, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    new-instance v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 531
    .line 532
    const/4 p2, 0x0

    .line 533
    invoke-direct {v1, p0, p2}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 534
    .line 535
    .line 536
    iput-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 537
    .line 538
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 539
    .line 540
    const/4 v4, 0x0

    .line 541
    const/4 v5, 0x2

    .line 542
    const/4 v3, 0x0

    .line 543
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 544
    .line 545
    .line 546
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 548
    .line 549
    const-string/jumbo p2, "registerDateChangedReceiver"

    .line 550
    .line 551
    .line 552
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 556
    .line 557
    const-string p2, "[activateFaiExpiredCheckIfRequired]DateChangedReceiver Registered For FAI Expired"

    .line 558
    .line 559
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    goto :goto_6

    .line 563
    :catchall_0
    move-exception p0

    .line 564
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    throw p0

    .line 566
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    .line 567
    .line 568
    .line 569
    return-void

    .line 570
    :catchall_1
    move-exception p0

    .line 571
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 572
    throw p0
.end method

.method public static isValidDate(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "20"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method


# virtual methods
.method public final unregisterDateChangedReceiver()V
    .locals 4

    .line 1
    const-string/jumbo v0, "unregisterDateChangedReceiver "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForDateChangedReceiver:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    const/4 v2, 0x1

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const-string/jumbo v2, "ignored"

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-string/jumbo v2, "success"

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final unregisterFudReceiver()V
    .locals 4

    .line 1
    const-string/jumbo v0, "unregisterFudReceiver "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForFudReceiver:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    const/4 v2, 0x1

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const-string/jumbo v2, "ignored"

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-string/jumbo v2, "success"

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method
