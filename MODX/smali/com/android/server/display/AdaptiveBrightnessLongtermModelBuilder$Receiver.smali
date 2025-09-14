.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string v0, "Received "

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 26
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    const-string/jumbo p2, "com.samsung.android.brightnessbackupservice"

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 58
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 60
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 62
    const/16 p1, 0x8

    .line 64
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 71
    :cond_0
    return-void

    .line 72
    :pswitch_0
    const-string p1, "AdaptiveBrightnessLongtermModelBuilder"

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "Received "

    .line 78
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v0

    .line 105
    const/4 v1, 0x0

    .line 106
    if-eqz v0, :cond_2

    .line 108
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    const-string p2, "AdaptiveBrightnessLongtermModelBuilder"

    .line 115
    const-string v0, "Stop"

    .line 117
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    .line 122
    monitor-enter v0

    .line 123
    :try_start_0
    iget-boolean p2, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    .line 125
    if-nez p2, :cond_1

    .line 127
    monitor-exit v0

    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object p2, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 134
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stopAdaptiveBrightnessStatsTracker()V

    .line 140
    const-class p2, Landroid/os/PowerManagerInternal;

    .line 142
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    move-result-object p2

    .line 146
    check-cast p2, Landroid/os/PowerManagerInternal;

    .line 148
    iget-object v0, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserActivityStateListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;

    .line 150
    invoke-virtual {p2, v0}, Landroid/os/PowerManagerInternal;->unregisterUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V

    .line 153
    iget-object p2, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 155
    iget-object v0, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 157
    iget-object v2, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mSettingsObserver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

    .line 159
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p2, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 169
    iget-object p2, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 171
    iget-object v0, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 173
    iget-object v2, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

    .line 175
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    iget-object p2, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 183
    iget-object v0, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 185
    iget-object v2, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

    .line 187
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    iget-object p2, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 195
    iget-object v0, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    sget p2, Lcom/android/server/display/BrightnessIdleJob;->$r8$clinit:I

    .line 202
    const-class p2, Landroid/app/job/JobScheduler;

    .line 204
    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Landroid/app/job/JobScheduler;

    .line 210
    const v0, 0x3bde38

    .line 213
    invoke-virtual {p2, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 216
    iget-object p2, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    .line 218
    monitor-enter p2

    .line 219
    :try_start_1
    iput-boolean v1, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    .line 221
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V

    .line 225
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 227
    iget-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    .line 229
    if-nez p1, :cond_5

    .line 231
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 233
    new-instance p2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda1;

    .line 235
    invoke-direct {p2, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 238
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    .line 244
    goto :goto_2

    .line 245
    :catchall_1
    move-exception p0

    .line 246
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    throw p0

    .line 248
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    throw p0

    .line 250
    :cond_2
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_3

    .line 258
    const-string/jumbo p1, "level"

    .line 261
    const/4 v0, -0x1

    .line 262
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 265
    move-result p1

    .line 266
    const-string/jumbo v2, "scale"

    .line 269
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 272
    move-result p2

    .line 273
    if-eq p1, v0, :cond_5

    .line 275
    if-eqz p2, :cond_5

    .line 277
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 279
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    .line 281
    monitor-enter v0

    .line 282
    int-to-float p1, p1

    .line 283
    int-to-float p2, p2

    .line 284
    div-float/2addr p1, p2

    .line 285
    :try_start_4
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    .line 287
    monitor-exit v0

    .line 288
    goto :goto_2

    .line 289
    :catchall_2
    move-exception p0

    .line 290
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 291
    throw p0

    .line 292
    :cond_3
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 294
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    move-result p2

    .line 298
    if-eqz p2, :cond_4

    .line 300
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 302
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 304
    const/4 p1, 0x2

    .line 305
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 308
    move-result-object p0

    .line 309
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 312
    goto :goto_2

    .line 313
    :cond_4
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 315
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_5

    .line 321
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 323
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 325
    const/4 p1, 0x3

    .line 326
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 333
    :cond_5
    :goto_2
    return-void

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
