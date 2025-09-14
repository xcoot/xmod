.class public final Lcom/android/server/display/BrightnessTracker$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

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
    sget-boolean p1, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v0, "BrightnessTracker"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Received "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 42
    .line 43
    iget-object v1, p2, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v1

    .line 46
    :try_start_0
    iget-boolean v0, p2, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    monitor-exit v1

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    const-string p1, "BrightnessTracker"

    .line 59
    .line 60
    const-string v0, "Stop"

    .line 61
    .line 62
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object p1, p2, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p2, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 74
    .line 75
    iget-object v0, p2, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    iget-object v1, p2, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    const-class p1, Landroid/hardware/SensorManager;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/hardware/SensorManager;

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p2, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 94
    .line 95
    iget-object v0, p2, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    iget-object v1, p2, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p2, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 110
    .line 111
    iget-object v0, p2, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    iget-object v1, p2, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Lcom/android/server/display/BrightnessTracker$Receiver;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p2, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 122
    .line 123
    iget-object v0, p2, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    sget p1, Lcom/android/server/display/BrightnessIdleJob;->$r8$clinit:I

    .line 129
    .line 130
    const-class p1, Landroid/app/job/JobScheduler;

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Landroid/app/job/JobScheduler;

    .line 137
    .line 138
    const v0, 0x3bde38

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p2, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 145
    .line 146
    monitor-enter p1

    .line 147
    :try_start_1
    iput-boolean v2, p2, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 148
    .line 149
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    invoke-virtual {p2}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 151
    .line 152
    .line 153
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 154
    .line 155
    iget-boolean p1, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 156
    .line 157
    if-nez p1, :cond_6

    .line 158
    .line 159
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 160
    .line 161
    new-instance p2, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda1;

    .line 162
    .line 163
    invoke-direct {p2, p0}, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    .line 168
    .line 169
    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catchall_1
    move-exception p0

    .line 174
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    throw p0

    .line 176
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    throw p0

    .line 178
    :cond_3
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_4

    .line 185
    .line 186
    const-string/jumbo p1, "level"

    .line 187
    .line 188
    .line 189
    const/4 v0, -0x1

    .line 190
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    const-string/jumbo v1, "scale"

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eq p1, v0, :cond_6

    .line 202
    .line 203
    if-eqz p2, :cond_6

    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 206
    .line 207
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 208
    .line 209
    monitor-enter v0

    .line 210
    int-to-float p1, p1

    .line 211
    int-to-float p2, p2

    .line 212
    div-float/2addr p1, p2

    .line 213
    :try_start_4
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 214
    .line 215
    monitor-exit v0

    .line 216
    goto :goto_2

    .line 217
    :catchall_2
    move-exception p0

    .line 218
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 219
    throw p0

    .line 220
    :cond_4
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 221
    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_5

    .line 227
    .line 228
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 231
    .line 232
    const/4 p1, 0x2

    .line 233
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_5
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eqz p1, :cond_6

    .line 248
    .line 249
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 250
    .line 251
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 252
    .line 253
    const/4 p1, 0x3

    .line 254
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    .line 260
    .line 261
    :cond_6
    :goto_2
    return-void
.end method
