.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "action  :  "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "MdnieScenarioControlService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p2, "mActivityManager  :  "

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, ", mMdnieManager  :  "

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 53
    .line 54
    iget-object p2, p2, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p2, ", mSemDisplaySolutionManager  :  "

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 65
    .line 66
    iget-object p2, p2, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p2, ", DesktopModeFeature  :  false"

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 84
    .line 85
    iget-object p2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 86
    .line 87
    if-eqz p2, :cond_0

    .line 88
    .line 89
    iget-object p2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 90
    .line 91
    if-eqz p2, :cond_0

    .line 92
    .line 93
    iget-object p1, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 94
    .line 95
    if-nez p1, :cond_1

    .line 96
    .line 97
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide p1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 104
    .line 105
    const/16 v3, 0xf

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 111
    .line 112
    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 113
    .line 114
    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    .line 115
    .line 116
    int-to-long v5, v0

    .line 117
    add-long/2addr p1, v5

    .line 118
    invoke-virtual {v4, v3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 119
    .line 120
    .line 121
    const-string p1, "Failure to register all of the services system."

    .line 122
    .line 123
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 127
    .line 128
    iget-object p2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 129
    .line 130
    if-eqz p2, :cond_2

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V

    .line 133
    .line 134
    .line 135
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string p2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_WIDE_COLOR_GAMUT"

    .line 140
    .line 141
    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_3

    .line 146
    .line 147
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 148
    .line 149
    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mset_wcg_property(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    return-void

    .line 153
    :cond_4
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 154
    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    const/4 v3, 0x1

    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 163
    .line 164
    iget-object p2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 165
    .line 166
    if-nez p2, :cond_5

    .line 167
    .line 168
    iget-object p2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    const-string v0, "keyguard"

    .line 171
    .line 172
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    check-cast p2, Landroid/app/KeyguardManager;

    .line 177
    .line 178
    iput-object p2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 179
    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string p2, "mKeyGuardManager : "

    .line 183
    .line 184
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 188
    .line 189
    iget-object p2, p2, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 190
    .line 191
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 202
    .line 203
    iget-object p1, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 204
    .line 205
    if-eqz p1, :cond_6

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_6

    .line 212
    .line 213
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 214
    .line 215
    iput-boolean v3, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 216
    .line 217
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string p2, "isLockScreenOn : "

    .line 220
    .line 221
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 225
    .line 226
    iget-boolean p2, p2, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 239
    .line 240
    .line 241
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 242
    .line 243
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 244
    .line 245
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 246
    .line 247
    if-eqz p1, :cond_8

    .line 248
    .line 249
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 250
    .line 251
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 252
    .line 253
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    .line 254
    .line 255
    if-eqz p1, :cond_7

    .line 256
    .line 257
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    .line 258
    .line 259
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 260
    .line 261
    if-eqz p1, :cond_8

    .line 262
    .line 263
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :cond_8
    return-void

    .line 267
    :cond_9
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 268
    .line 269
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_c

    .line 274
    .line 275
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 276
    .line 277
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 278
    .line 279
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 280
    .line 281
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 282
    .line 283
    const/16 p2, 0x11

    .line 284
    .line 285
    if-eqz p1, :cond_a

    .line 286
    .line 287
    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    .line 289
    .line 290
    const/16 p1, 0x12

    .line 291
    .line 292
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    .line 297
    .line 298
    goto :goto_0

    .line 299
    :cond_a
    if-nez p1, :cond_b

    .line 300
    .line 301
    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    .line 303
    .line 304
    :cond_b
    :goto_0
    return-void

    .line 305
    :cond_c
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 306
    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_e

    .line 312
    .line 313
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 314
    .line 315
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 316
    .line 317
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 318
    .line 319
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 320
    .line 321
    if-eqz p1, :cond_d

    .line 322
    .line 323
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    .line 324
    .line 325
    const/4 p1, -0x1

    .line 326
    invoke-virtual {p0, p1, v2, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :catch_0
    const-string p0, "failed to onForegroundActivitiesChanged"

    .line 331
    .line 332
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    :cond_d
    :goto_1
    return-void

    .line 336
    :cond_e
    const-string v0, "ACTION_MOVIE_PLAYER_STATE_IN"

    .line 337
    .line 338
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_f

    .line 343
    .line 344
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 345
    .line 346
    iput-boolean v3, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    .line 347
    .line 348
    iput-boolean v2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 349
    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 351
    .line 352
    .line 353
    move-result-wide p1

    .line 354
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 355
    .line 356
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 357
    .line 358
    const/4 v1, 0x7

    .line 359
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    .line 361
    .line 362
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 363
    .line 364
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 365
    .line 366
    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 367
    .line 368
    int-to-long v2, p0

    .line 369
    add-long/2addr p1, v2

    .line 370
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 371
    .line 372
    .line 373
    goto :goto_2

    .line 374
    :cond_f
    const-string v0, "ACTION_MOVIE_PLAYER_STATE_OUT"

    .line 375
    .line 376
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-eqz v0, :cond_10

    .line 381
    .line 382
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 383
    .line 384
    iput-boolean v2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    .line 385
    .line 386
    iput-boolean v3, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 387
    .line 388
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 389
    .line 390
    .line 391
    move-result-wide p1

    .line 392
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 393
    .line 394
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 395
    .line 396
    const/16 v1, 0x8

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    .line 400
    .line 401
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 402
    .line 403
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 404
    .line 405
    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 406
    .line 407
    int-to-long v2, p0

    .line 408
    add-long/2addr p1, v2

    .line 409
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 410
    .line 411
    .line 412
    goto :goto_2

    .line 413
    :cond_10
    const-string v0, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    .line 414
    .line 415
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-eqz v0, :cond_11

    .line 420
    .line 421
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 422
    .line 423
    const-string/jumbo p1, "status"

    .line 424
    .line 425
    .line 426
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    .line 431
    .line 432
    goto :goto_2

    .line 433
    :cond_11
    const-string p2, "com.samsung.systemui.statusbar.EXPANDED"

    .line 434
    .line 435
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result p2

    .line 439
    if-eqz p2, :cond_12

    .line 440
    .line 441
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 442
    .line 443
    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    .line 444
    .line 445
    goto :goto_2

    .line 446
    :cond_12
    const-string p2, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 447
    .line 448
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    if-eqz p1, :cond_13

    .line 453
    .line 454
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 455
    .line 456
    iput v2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    .line 457
    .line 458
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 459
    .line 460
    if-eqz p2, :cond_13

    .line 461
    .line 462
    iget-object p1, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 463
    .line 464
    const/16 p2, 0x13

    .line 465
    .line 466
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    .line 468
    .line 469
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 470
    .line 471
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 472
    .line 473
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 474
    .line 475
    .line 476
    :cond_13
    :goto_2
    return-void
.end method
