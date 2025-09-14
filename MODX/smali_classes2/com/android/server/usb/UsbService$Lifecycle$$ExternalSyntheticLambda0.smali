.class public final synthetic Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/usb/UsbService$Lifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbService$Lifecycle;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbService$Lifecycle;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbService$Lifecycle;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnStartFinished:Ljava/util/concurrent/CompletableFuture;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mUsbUI:Lcom/android/server/usb/UsbUI;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    const-string/jumbo v5, "system ready"

    .line 23
    .line 24
    .line 25
    const-string v6, "UsbUI"

    .line 26
    .line 27
    invoke-static {v6, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v5, v1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string/jumbo v7, "notification"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Landroid/app/NotificationManager;

    .line 40
    .line 41
    iput-object v5, v1, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 42
    .line 43
    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 44
    .line 45
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 50
    .line 51
    invoke-virtual {v5, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 52
    .line 53
    .line 54
    iput-boolean v4, v1, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 55
    .line 56
    const-string v5, "isUsbWet: state="

    .line 57
    .line 58
    :try_start_0
    new-instance v7, Ljava/io/File;

    .line 59
    .line 60
    const-string v8, "/sys/class/sec/ccic/water"

    .line 61
    .line 62
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eqz v8, :cond_0

    .line 70
    .line 71
    invoke-static {v7, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v6, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    const-string v5, "1"

    .line 95
    .line 96
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    if-eqz v5, :cond_0

    .line 101
    .line 102
    iput-boolean v4, v1, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbUI;->notifyUsbWetDetection(Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v5

    .line 109
    const-string v7, "Can\'t read /sys/class/sec/ccic/water"

    .line 110
    .line 111
    invoke-static {v6, v7, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    :cond_0
    :goto_0
    iget-object v5, v1, Lcom/android/server/usb/UsbUI;->mContentResolver:Landroid/content/ContentResolver;

    .line 115
    .line 116
    const-string v6, "emergency_mode"

    .line 117
    .line 118
    const/4 v7, -0x2

    .line 119
    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_1

    .line 124
    .line 125
    move v5, v4

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    move v5, v3

    .line 128
    :goto_1
    iput-boolean v5, v1, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 129
    .line 130
    :cond_2
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    const-string v5, "audio"

    .line 136
    .line 137
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-static {v5}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    iput-object v5, v1, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Lcom/android/server/usb/UsbAlsaManager$1;

    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 153
    .line 154
    if-eqz v1, :cond_3

    .line 155
    .line 156
    const-string v5, "UsbDeviceManager"

    .line 157
    .line 158
    const-string/jumbo v6, "systemReady"

    .line 159
    .line 160
    .line 161
    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 165
    .line 166
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 171
    .line 172
    invoke-virtual {v5, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 176
    .line 177
    const/4 v5, 0x3

    .line 178
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    .line 180
    .line 181
    :cond_3
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 182
    .line 183
    if-eqz v1, :cond_5

    .line 184
    .line 185
    const-string v5, "UsbHostManager"

    .line 186
    .line 187
    const-string/jumbo v6, "systemReady"

    .line 188
    .line 189
    .line 190
    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    iget-object v5, v1, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 194
    .line 195
    monitor-enter v5

    .line 196
    :try_start_1
    new-instance v6, Lcom/android/server/usb/UsbHostManager$$ExternalSyntheticLambda0;

    .line 197
    .line 198
    invoke-direct {v6, v1}, Lcom/android/server/usb/UsbHostManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    .line 199
    .line 200
    .line 201
    new-instance v7, Ljava/lang/Thread;

    .line 202
    .line 203
    const-string v8, "UsbService host thread"

    .line 204
    .line 205
    invoke-direct {v7, v2, v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 209
    .line 210
    .line 211
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    iget-object v6, v1, Lcom/android/server/usb/UsbHostManager;->mPendingIntentLock:Ljava/lang/Object;

    .line 213
    .line 214
    monitor-enter v6

    .line 215
    :try_start_2
    iput-boolean v4, v1, Lcom/android/server/usb/UsbHostManager;->mSystemReady:Z

    .line 216
    .line 217
    :goto_2
    iget-object v5, v1, Lcom/android/server/usb/UsbHostManager;->mPendingIntent:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-nez v5, :cond_4

    .line 224
    .line 225
    iget-object v5, v1, Lcom/android/server/usb/UsbHostManager;->mPendingIntent:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Landroid/content/Intent;

    .line 232
    .line 233
    iget-object v7, v1, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 234
    .line 235
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 236
    .line 237
    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :catchall_0
    move-exception p0

    .line 242
    goto :goto_3

    .line 243
    :cond_4
    monitor-exit v6

    .line 244
    goto :goto_4

    .line 245
    :goto_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    throw p0

    .line 247
    :catchall_1
    move-exception p0

    .line 248
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 249
    throw p0

    .line 250
    :cond_5
    :goto_4
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 251
    .line 252
    if-eqz v1, :cond_7

    .line 253
    .line 254
    iget-object v5, v1, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 255
    .line 256
    if-eqz v5, :cond_6

    .line 257
    .line 258
    invoke-interface {v5}, Lcom/android/server/usb/hal/port/UsbPortHal;->systemReady()V

    .line 259
    .line 260
    .line 261
    :try_start_4
    iget-object v5, v1, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 262
    .line 263
    iget-wide v6, v1, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 264
    .line 265
    const-wide/16 v8, 0x1

    .line 266
    .line 267
    add-long/2addr v6, v8

    .line 268
    iput-wide v6, v1, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 269
    .line 270
    invoke-interface {v5, v6, v7}, Lcom/android/server/usb/hal/port/UsbPortHal;->queryPortStatus(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :catch_1
    move-exception v5

    .line 275
    const-string v6, "UsbPortManager"

    .line 276
    .line 277
    const-string v7, "ServiceStart: Failed to query port status"

    .line 278
    .line 279
    invoke-static {v6, v7, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .line 281
    .line 282
    :cond_6
    :goto_5
    iget-object v1, v1, Lcom/android/server/usb/UsbPortManager;->mHandler:Lcom/android/server/usb/UsbPortManager$1;

    .line 283
    .line 284
    const/4 v5, 0x2

    .line 285
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    .line 287
    .line 288
    :cond_7
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    .line 289
    .line 290
    if-eqz v1, :cond_8

    .line 291
    .line 292
    iget-object v1, v1, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;

    .line 293
    .line 294
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 295
    .line 296
    .line 297
    :cond_8
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    .line 298
    .line 299
    if-eqz v0, :cond_9

    .line 300
    .line 301
    const-string v1, "UsbHostRestrictor"

    .line 302
    .line 303
    const-string/jumbo v3, "systemReady"

    .line 304
    .line 305
    .line 306
    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    iget-object v1, v0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 310
    .line 311
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    const-string v3, "block_usb_lock"

    .line 316
    .line 317
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    sput v1, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    .line 322
    .line 323
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 324
    .line 325
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 330
    .line 331
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 332
    .line 333
    .line 334
    :cond_9
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;

    .line 335
    .line 336
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    new-instance v0, Lcom/android/server/usb/UsbService;

    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V

    .line 350
    .line 351
    .line 352
    iput-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 353
    .line 354
    const-string/jumbo v1, "usb"

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 358
    .line 359
    .line 360
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnStartFinished:Ljava/util/concurrent/CompletableFuture;

    .line 361
    .line 362
    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    return-void

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
