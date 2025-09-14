.class final Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;


# instance fields
.field public mBatteryLevel:I

.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public mBatteryNotLow:Z

.field public mCharging:Z

.field public mChargingPolicy:I

.field public mLastBatterySeq:I

.field public mMonitor:Lcom/android/server/job/JobSchedulerService$3;

.field public mPowerConnected:Z

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBatteryLevel(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryLevel:I

    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$misConsideredCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    .line 9
    const-class p1, Landroid/os/BatteryManagerInternal;

    .line 11
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/os/BatteryManagerInternal;

    .line 17
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 19
    return-void
.end method


# virtual methods
.method public final isConsideredCharging()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 12
    return v2

    .line 13
    :cond_1
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    .line 15
    const/high16 v3, -0x80000000

    .line 17
    if-ne v0, v3, :cond_2

    .line 19
    return v2

    .line 20
    :cond_2
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryLevel:I

    .line 22
    const/16 v3, 0x46

    .line 24
    if-lt p0, v3, :cond_3

    .line 26
    invoke-static {v0}, Landroid/os/BatteryManager;->isAdaptiveChargingPolicy(I)Z

    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_3

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    move v1, v2

    .line 34
    :goto_0
    return v1
.end method

.method public final isMonitoring()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Lcom/android/server/job/JobSchedulerService$3;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final onChargingPolicyChanged(I)V
    .locals 6

    .line 1
    const-string v0, "CHARGING POLICY CHANGED#"

    .line 3
    const-string v1, "Charging policy changed from "

    .line 5
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 7
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget v3, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    .line 12
    if-ne v3, p1, :cond_0

    .line 14
    monitor-exit v2

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 20
    if-eqz v3, :cond_1

    .line 22
    const-string v3, "JobScheduler"

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, " to "

    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    .line 52
    move-result v1

    .line 53
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    .line 55
    const-wide/32 v3, 0x80000

    .line 58
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 64
    const-string p1, "JobScheduler"

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {v3, v4, p1, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    .line 86
    move-result p1

    .line 87
    if-eq p1, v1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 91
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 93
    check-cast p1, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 98
    move-result p1

    .line 99
    add-int/lit8 p1, p1, -0x1

    .line 101
    :goto_0
    if-ltz p1, :cond_3

    .line 103
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 105
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 107
    check-cast v0, Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 115
    invoke-virtual {v0}, Lcom/android/server/job/controllers/StateController;->onBatteryStateChangedLocked()V

    .line 118
    add-int/lit8 p1, p1, -0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_3
    monitor-exit v2

    .line 122
    return-void

    .line 123
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public final onReceiveInternal(Landroid/content/Intent;)V
    .locals 12

    .line 1
    const-string v0, "Battery discharging @ "

    .line 3
    const-string v1, "Battery charging @ "

    .line 5
    const-string v2, "Power disconnected @ "

    .line 7
    const-string v3, "Power connected @ "

    .line 9
    const-string v4, "Battery level changed @ "

    .line 11
    const-string v5, "Battery high enough @ "

    .line 13
    const-string v6, "Battery life too low @ "

    .line 15
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 17
    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v7

    .line 20
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    move-result-object v8

    .line 24
    const-string v9, "android.intent.action.BATTERY_LOW"

    .line 26
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v9

    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x1

    .line 32
    if-eqz v9, :cond_1

    .line 34
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 36
    if-eqz v0, :cond_0

    .line 38
    const-string v0, "JobScheduler"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 53
    move-result-wide v2

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto/16 :goto_4

    .line 68
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    .line 70
    if-eqz v0, :cond_f

    .line 72
    iput-boolean v10, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    .line 74
    :goto_1
    move v10, v11

    .line 75
    goto/16 :goto_2

    .line 77
    :cond_1
    const-string v6, "android.intent.action.BATTERY_OKAY"

    .line 79
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_3

    .line 85
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 87
    if-eqz v0, :cond_2

    .line 89
    const-string v0, "JobScheduler"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 104
    move-result-wide v2

    .line 105
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    .line 117
    if-nez v0, :cond_f

    .line 119
    iput-boolean v11, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const-string v5, "android.intent.action.BATTERY_LEVEL_CHANGED"

    .line 124
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_5

    .line 130
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 132
    if-eqz v0, :cond_4

    .line 134
    const-string v0, "JobScheduler"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 149
    move-result-wide v2

    .line 150
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    .line 163
    move-result v0

    .line 164
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 166
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    .line 169
    move-result v1

    .line 170
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryLevel:I

    .line 172
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    .line 175
    move-result v1

    .line 176
    if-eq v1, v0, :cond_f

    .line 178
    goto :goto_1

    .line 179
    :cond_5
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 181
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_8

    .line 187
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 189
    if-eqz v0, :cond_6

    .line 191
    const-string v0, "JobScheduler"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 200
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 206
    move-result-wide v2

    .line 207
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    .line 219
    if-eqz v0, :cond_7

    .line 221
    monitor-exit v7

    .line 222
    return-void

    .line 223
    :cond_7
    iput-boolean v11, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    .line 225
    goto/16 :goto_1

    .line 227
    :cond_8
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 229
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_b

    .line 235
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 237
    if-eqz v0, :cond_9

    .line 239
    const-string v0, "JobScheduler"

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 248
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 254
    move-result-wide v2

    .line 255
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v1

    .line 262
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    .line 267
    if-nez v0, :cond_a

    .line 269
    monitor-exit v7

    .line 270
    return-void

    .line 271
    :cond_a
    iput-boolean v10, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    .line 273
    goto/16 :goto_1

    .line 275
    :cond_b
    const-string v2, "android.os.action.CHARGING"

    .line 277
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_d

    .line 283
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 285
    if-eqz v0, :cond_c

    .line 287
    const-string v0, "JobScheduler"

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 296
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 302
    move-result-wide v3

    .line 303
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    .line 315
    if-nez v0, :cond_f

    .line 317
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    .line 320
    move-result v0

    .line 321
    iput-boolean v11, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    .line 326
    move-result v1

    .line 327
    if-eq v1, v0, :cond_f

    .line 329
    goto/16 :goto_1

    .line 331
    :cond_d
    const-string v1, "android.os.action.DISCHARGING"

    .line 333
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    move-result v1

    .line 337
    if-eqz v1, :cond_f

    .line 339
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 341
    if-eqz v1, :cond_e

    .line 343
    const-string v1, "JobScheduler"

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    .line 347
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 352
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 358
    move-result-wide v3

    .line 359
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    move-result-object v0

    .line 366
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    .line 371
    if-eqz v0, :cond_f

    .line 373
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    .line 376
    move-result v0

    .line 377
    iput-boolean v10, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    .line 379
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    .line 382
    move-result v1

    .line 383
    if-eq v1, v0, :cond_f

    .line 385
    goto/16 :goto_1

    .line 387
    :cond_f
    :goto_2
    const-string/jumbo v0, "seq"

    .line 390
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    .line 392
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 395
    move-result p1

    .line 396
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    .line 398
    if-eqz v10, :cond_10

    .line 400
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 402
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 404
    check-cast p1, Ljava/util/ArrayList;

    .line 406
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 409
    move-result p1

    .line 410
    sub-int/2addr p1, v11

    .line 411
    :goto_3
    if-ltz p1, :cond_10

    .line 413
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 415
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 417
    check-cast v0, Ljava/util/ArrayList;

    .line 419
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 422
    move-result-object v0

    .line 423
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 425
    invoke-virtual {v0}, Lcom/android/server/job/controllers/StateController;->onBatteryStateChangedLocked()V

    .line 428
    add-int/lit8 p1, p1, -0x1

    .line 430
    goto :goto_3

    .line 431
    :cond_10
    monitor-exit v7

    .line 432
    return-void

    .line 433
    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    throw p0
.end method

.method public final setMonitorBatteryLocked(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Lcom/android/server/job/JobSchedulerService$3;

    .line 5
    if-nez p1, :cond_1

    .line 7
    new-instance p1, Lcom/android/server/job/JobSchedulerService$3;

    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-direct {p1, v0, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(ILjava/lang/Object;)V

    .line 13
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Lcom/android/server/job/JobSchedulerService$3;

    .line 15
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    .line 17
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 23
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Lcom/android/server/job/JobSchedulerService$3;

    .line 29
    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Lcom/android/server/job/JobSchedulerService$3;

    .line 35
    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 39
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 42
    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Lcom/android/server/job/JobSchedulerService$3;

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Lcom/android/server/job/JobSchedulerService$3;

    .line 51
    :cond_1
    :goto_0
    return-void
.end method
