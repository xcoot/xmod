.class public final Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

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
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string/jumbo v0, "wifi_state"

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const/4 v0, 0x3

    .line 23
    if-ne p2, v0, :cond_d

    .line 24
    .line 25
    sget-boolean p2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiConfigure:Z

    .line 26
    .line 27
    if-eqz p2, :cond_d

    .line 28
    .line 29
    sget-boolean p2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiEap:Z

    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 34
    .line 35
    sget-object p2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiSSID:Ljava/lang/String;

    .line 36
    .line 37
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiPassword:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 44
    .line 45
    sget-object p2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiSSID:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiUsername:Ljava/lang/String;

    .line 48
    .line 49
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiPassword:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    sput-boolean v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiConfigure:Z

    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v2, "android.hardware.usb.action.USB_STATE"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    const-string v0, "connected"

    .line 71
    .line 72
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_d

    .line 77
    .line 78
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetStateInternal()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_d

    .line 85
    .line 86
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v0, "com.samsung.systemui.statusbar.STARTED"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    const/4 v0, 0x1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 107
    .line 108
    iget-boolean p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mPhoneStatusBarInit:Z

    .line 109
    .line 110
    if-nez p1, :cond_d

    .line 111
    .line 112
    iput-boolean v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mPhoneStatusBarInit:Z

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->initialiseSystemUi()V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 124
    .line 125
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_6

    .line 130
    .line 131
    const-string/jumbo p1, "plugged"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_4

    .line 139
    .line 140
    sput-boolean v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z

    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :cond_4
    sget-boolean p1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z

    .line 145
    .line 146
    if-eqz p1, :cond_5

    .line 147
    .line 148
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getForceAutoShutDownState()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-ne p1, v0, :cond_5

    .line 155
    .line 156
    sput-boolean v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z

    .line 157
    .line 158
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->powerOff()I

    .line 161
    .line 162
    .line 163
    :cond_5
    sput-boolean v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z

    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    sget-object v2, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_7

    .line 178
    .line 179
    sput-boolean v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->isDesktopMode:Z

    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    sget-object v2, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_8

    .line 194
    .line 195
    sput-boolean v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->isDesktopMode:Z

    .line 196
    .line 197
    goto/16 :goto_2

    .line 198
    .line 199
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string v2, "com.samsung.android.knox.intent.action.SCREEN_OFF_HOME_LONG_PRESS"

    .line 204
    .line 205
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_9

    .line 210
    .line 211
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 212
    .line 213
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    .line 214
    .line 215
    const-string/jumbo p1, "power"

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    check-cast p0, Landroid/os/PowerManager;

    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_d

    .line 229
    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide p1

    .line 234
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    const-string p2, "com.samsung.android.knox.intent.action.RECENT_LONG_PRESS"

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-eqz p1, :cond_d

    .line 250
    .line 251
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getRecentLongPressMode()I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-ne p1, v0, :cond_a

    .line 258
    .line 259
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-interface {p1}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 268
    .line 269
    iget-object p1, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 270
    .line 271
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->isDefaultLauncher(Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    if-nez p1, :cond_b

    .line 280
    .line 281
    :catch_0
    return-void

    .line 282
    :cond_a
    const/4 p2, 0x2

    .line 283
    if-ne p1, p2, :cond_d

    .line 284
    .line 285
    :cond_b
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getRecentLongPressActivity()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    const-string p2, "/"

    .line 292
    .line 293
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result p2

    .line 297
    const/4 v2, -0x1

    .line 298
    if-ne p2, v2, :cond_c

    .line 299
    .line 300
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 301
    .line 302
    iget-object p2, p2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    .line 303
    .line 304
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    goto :goto_1

    .line 313
    :cond_c
    new-instance v2, Landroid/content/Intent;

    .line 314
    .line 315
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    add-int/2addr p2, v0

    .line 323
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    .line 329
    .line 330
    move-object p1, v2

    .line 331
    :goto_1
    if-eqz p1, :cond_d

    .line 332
    .line 333
    const-string p2, "android.intent.action.MAIN"

    .line 334
    .line 335
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    const-string p2, "android.intent.category.DEFAULT"

    .line 339
    .line 340
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    .line 342
    .line 343
    const-string p2, "android.intent.category.LAUNCHER"

    .line 344
    .line 345
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    .line 347
    .line 348
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 349
    .line 350
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    .line 351
    .line 352
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 353
    .line 354
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    .line 356
    .line 357
    nop

    .line 358
    :catch_1
    :cond_d
    :goto_2
    return-void
.end method
