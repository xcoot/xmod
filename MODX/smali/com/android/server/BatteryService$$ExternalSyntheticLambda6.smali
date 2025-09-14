.class public final synthetic Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/BatteryService$2;

    .line 10
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 12
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 14
    const-string/jumbo v0, "shutdown_time"

    .line 17
    const-string v1, "battery_service_prefs"

    .line 19
    const-string v2, "[loadSharedPreferencesAsLong]preferenceName:battery_service_prefs ,key:shutdown_time ,value:"

    .line 21
    invoke-static {}, Lcom/android/server/battery/BattUtils;->getCurrentNetworkTimeMillis()J

    .line 24
    move-result-wide v3

    .line 25
    const-wide v5, 0x16f5c788580L

    .line 30
    cmp-long v5, v3, v5

    .line 32
    const-string v6, "[SS]BattFunctions"

    .line 34
    if-gez v5, :cond_0

    .line 36
    const-string p0, "[processLongestPowerOffDuration]wrong bootTime"

    .line 38
    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string v5, "[SS]BattUtils"

    .line 44
    const/4 v7, 0x0

    .line 45
    const-wide/16 v8, -0x1

    .line 47
    :try_start_0
    invoke-virtual {p0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 54
    move-result-wide v0

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "[loadSharedPreferencesAsLong]Exception"

    .line 74
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    move-wide v0, v8

    .line 81
    :goto_0
    const-string v2, "[processLongestPowerOffDuration]bootTime:"

    .line 83
    const-string v5, " ,shutdownTime:"

    .line 85
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2, v0, v1, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 92
    cmp-long v2, v0, v8

    .line 94
    if-nez v2, :cond_1

    .line 96
    const-string p0, "[processLongestPowerOffDuration]Not Exist saved shutdownTime"

    .line 98
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    cmp-long v2, v3, v0

    .line 104
    if-gez v2, :cond_2

    .line 106
    const-string p0, "[processLongestPowerOffDuration]boot time is later than shutdontime"

    .line 108
    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    sub-long/2addr v3, v0

    .line 113
    const-wide/32 v0, 0xea60

    .line 116
    div-long/2addr v3, v0

    .line 117
    const-string v0, "/efs/FactoryApp/longest_power_off_duration"

    .line 119
    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 122
    move-result-wide v1

    .line 123
    const-string v5, "[processLongestPowerOffDuration]currentPowerOffDuration:"

    .line 125
    const-string v7, " ,longestPowerOffDuration:"

    .line 127
    invoke-static {v5, v3, v4, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    move-result-object v5

    .line 131
    invoke-static {v5, v1, v2, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 134
    cmp-long v1, v1, v3

    .line 136
    if-gez v1, :cond_3

    .line 138
    invoke-static {v3, v4, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 141
    const-string v0, "[processLongestPowerOffDuration]longestPowerOffDuration updated"

    .line 143
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    invoke-static {p0, v8, v9}, Lcom/android/server/battery/BattUtils;->saveSharedPreferencesAsLong(Landroid/content/Context;J)V

    .line 149
    :goto_1
    return-void

    .line 150
    :pswitch_0
    check-cast p0, Lcom/android/server/BatteryService;

    .line 152
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 154
    monitor-enter v0

    .line 155
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 157
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 159
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 164
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 167
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    new-instance v0, Landroid/content/Intent;

    .line 170
    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    .line 172
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    const/high16 v2, 0x1000000

    .line 177
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    const-string v2, "android.os.extra.EVENTS"

    .line 182
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 187
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 189
    const-string v3, "android.permission.BATTERY_STATS"

    .line 191
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 197
    move-result-wide v0

    .line 198
    iput-wide v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    .line 200
    return-void

    .line 201
    :catchall_0
    move-exception p0

    .line 202
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    throw p0

    .line 204
    :pswitch_1
    check-cast p0, Lcom/android/server/BatteryService;

    .line 206
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 208
    monitor-enter v0

    .line 209
    :try_start_3
    iget v1, p0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    .line 211
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    iget-object p0, p0, Lcom/android/server/BatteryService;->mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 214
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 217
    move-result-object p0

    .line 218
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_4

    .line 224
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;

    .line 230
    invoke-interface {v0, v1}, Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;->onChargingPolicyChanged(I)V

    .line 233
    goto :goto_2

    .line 234
    :cond_4
    return-void

    .line 235
    :catchall_1
    move-exception p0

    .line 236
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 237
    throw p0

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
