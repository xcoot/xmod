.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    new-instance p0, Landroid/content/IntentFilter;

    .line 8
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    iput-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 13
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 20
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 27
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 34
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 41
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 48
    const-string/jumbo v0, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    new-instance p0, Landroid/content/IntentFilter;

    .line 56
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    iput-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPkgFilter:Landroid/content/IntentFilter;

    .line 61
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPkgFilter:Landroid/content/IntentFilter;

    .line 68
    const-string/jumbo p1, "package"

    .line 71
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x4

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 18
    iget-object p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 23
    iput-boolean v2, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    .line 25
    invoke-virtual {p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->quitDimMode()V

    .line 28
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 30
    iget-object p2, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 32
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 35
    sget-boolean p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 37
    if-eqz p2, :cond_0

    .line 39
    const-string p2, "IbsQuickDim"

    .line 41
    const-string/jumbo v1, "screen off "

    .line 44
    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 52
    iput v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 54
    monitor-exit p1

    .line 55
    goto/16 :goto_5

    .line 57
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0

    .line 59
    :cond_1
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    const/4 v3, 0x1

    .line 70
    if-eqz p1, :cond_2

    .line 72
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 74
    iput-boolean v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    .line 76
    goto/16 :goto_5

    .line 78
    :cond_2
    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 90
    sget-boolean p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 92
    if-eqz p1, :cond_3

    .line 94
    const-string p1, "IbsQuickDim"

    .line 96
    const-string p2, "POWER_CONNECTED"

    .line 98
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_3
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 103
    iput-boolean v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    .line 105
    goto/16 :goto_5

    .line 107
    :cond_4
    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_6

    .line 119
    sget-boolean p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 121
    if-eqz p1, :cond_5

    .line 123
    const-string p1, "IbsQuickDim"

    .line 125
    const-string p2, "POWER_DISCONNECTED"

    .line 127
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_5
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 132
    iput-boolean v2, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    move-result-wide v0

    .line 138
    iput-wide v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mChargingFinishTime:J

    .line 140
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 142
    const/4 p1, 0x0

    .line 143
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    .line 145
    goto/16 :goto_5

    .line 147
    :cond_6
    const-string/jumbo p1, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_c

    .line 160
    const-string/jumbo p1, "status"

    .line 163
    const/4 v2, -0x1

    .line 164
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 167
    move-result p1

    .line 168
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 170
    const-string p2, "BroadcastReceiver flag = "

    .line 172
    iget-object v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    .line 174
    monitor-enter v4

    .line 175
    :try_start_1
    sget-boolean v5, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 177
    if-eqz v5, :cond_7

    .line 179
    const-string v6, "IbsQuickDim"

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p2

    .line 193
    invoke-static {v6, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    goto :goto_2

    .line 197
    :catchall_1
    move-exception p0

    .line 198
    goto :goto_4

    .line 199
    :cond_7
    :goto_2
    if-ne p1, v0, :cond_9

    .line 201
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    .line 204
    if-eqz v5, :cond_8

    .line 206
    const-string p1, "IbsQuickDim"

    .line 208
    const-string p2, "PMS set dim"

    .line 210
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_8
    iput v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 215
    goto :goto_3

    .line 216
    :cond_9
    if-ne p1, v3, :cond_b

    .line 218
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->quitDimMode()V

    .line 221
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    .line 224
    iput v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 226
    if-eqz v5, :cond_a

    .line 228
    const-string p1, "IbsQuickDim"

    .line 230
    const-string/jumbo p2, "pause check dim"

    .line 233
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_a
    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 238
    :cond_b
    :goto_3
    monitor-exit v4

    .line 239
    goto :goto_5

    .line 240
    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    throw p0

    .line 242
    :cond_c
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    move-result p1

    .line 252
    if-eqz p1, :cond_d

    .line 254
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    const-string p1, "IbsQuickDim"

    .line 261
    const-string/jumbo p2, "handleBootComplete"

    .line 264
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 269
    new-instance p2, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    .line 271
    const/4 v0, 0x1

    .line 272
    invoke-direct {p2, p0, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    .line 275
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    goto :goto_5

    .line 279
    :cond_d
    const-string p1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 281
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    move-result p1

    .line 289
    if-eqz p1, :cond_e

    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 294
    move-result-object p1

    .line 295
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 298
    move-result-object p1

    .line 299
    new-instance p2, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda1;

    .line 301
    const/4 v0, 0x1

    .line 302
    invoke-direct {p2, v0, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 305
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 308
    :cond_e
    :goto_5
    return-void
.end method
