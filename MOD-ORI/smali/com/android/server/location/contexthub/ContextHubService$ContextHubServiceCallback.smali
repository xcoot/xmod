.class public final Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContextHubId:I

.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleContextHubEvent(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v1, :cond_2

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object p1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast p1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    .line 29
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    sub-long/2addr v2, v4

    .line 36
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/16 v4, 0x18f

    .line 45
    .line 46
    invoke-virtual {p1, v4}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v2, "Unable to add Context Hub restart event to queue: "

    .line 70
    .line 71
    monitor-enter p1

    .line 72
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    new-instance v5, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;

    .line 77
    .line 78
    invoke-direct {v5, v3, v4, p0}, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;-><init>(JI)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p1, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mContextHubRestartEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 82
    .line 83
    invoke-virtual {v3, v5}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_0

    .line 88
    .line 89
    const-string v3, "ContextHubEventLogger"

    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    goto :goto_2

    .line 109
    :cond_0
    :goto_0
    monitor-exit p1

    .line 110
    iget-object p1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    .line 129
    .line 130
    .line 131
    iget-object p1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 132
    .line 133
    monitor-enter p1

    .line 134
    :try_start_1
    iget-object v1, p1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    .line 142
    if-nez v1, :cond_1

    .line 143
    .line 144
    monitor-exit p1

    .line 145
    goto :goto_1

    .line 146
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    .line 148
    .line 149
    monitor-exit p1

    .line 150
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    .line 151
    .line 152
    .line 153
    iget-object p1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda0;

    .line 159
    .line 160
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :catchall_1
    move-exception p0

    .line 168
    monitor-exit p1

    .line 169
    throw p0

    .line 170
    :goto_2
    monitor-exit p1

    .line 171
    throw p0

    .line 172
    :cond_2
    const-string v0, "ContextHubService"

    .line 173
    .line 174
    const-string v1, "Received unknown hub event (hub ID = "

    .line 175
    .line 176
    const-string v2, ", type = "

    .line 177
    .line 178
    const-string v3, ")"

    .line 179
    .line 180
    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    :goto_3
    return-void
.end method

.method public final handleNanoappInfo(Ljava/util/List;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-object v1, p1

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/hardware/location/NanoAppState;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppState;->getNanoAppVersion()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    long-to-int v2, v5

    .line 45
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const/16 v6, 0x190

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    .line 75
    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubService;->scheduleDailyMetricSnapshot()V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 95
    .line 96
    monitor-enter v1

    .line 97
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 100
    .line 101
    .line 102
    move-object v3, p1

    .line 103
    check-cast v3, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_2

    .line 114
    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Landroid/hardware/location/NanoAppState;

    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    .line 122
    .line 123
    .line 124
    move-result-wide v5

    .line 125
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppState;->getNanoAppVersion()J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    long-to-int v7, v7

    .line 130
    invoke-virtual {v1, p0, v7, v5, v6}, Lcom/android/server/location/contexthub/NanoAppStateManager;->handleQueryAppEntry(IIJ)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :cond_2
    iget-object v3, v1, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_4

    .line 163
    .line 164
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 169
    .line 170
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-ne v5, p0, :cond_3

    .line 175
    .line 176
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    .line 177
    .line 178
    .line 179
    move-result-wide v4

    .line 180
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-nez v4, :cond_3

    .line 189
    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    monitor-exit v1

    .line 195
    iget-object p0, v0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 196
    .line 197
    const-string v0, "Received unexpected query response (expected "

    .line 198
    .line 199
    monitor-enter p0

    .line 200
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 207
    .line 208
    if-nez v1, :cond_5

    .line 209
    .line 210
    const-string p1, "ContextHubTransactionManager"

    .line 211
    .line 212
    const-string v0, "Received unexpected query response (no transaction pending)"

    .line 213
    .line 214
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    .line 216
    .line 217
    monitor-exit p0

    .line 218
    goto :goto_3

    .line 219
    :catchall_1
    move-exception p1

    .line 220
    goto :goto_4

    .line 221
    :cond_5
    :try_start_2
    iget v2, v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    .line 222
    .line 223
    const/4 v3, 0x4

    .line 224
    if-eq v2, v3, :cond_6

    .line 225
    .line 226
    const-string p1, "ContextHubTransactionManager"

    .line 227
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v0, ")"

    .line 237
    .line 238
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    .line 247
    .line 248
    monitor-exit p0

    .line 249
    goto :goto_3

    .line 250
    :cond_6
    const/4 v0, 0x0

    .line 251
    :try_start_3
    invoke-virtual {v1, v0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onQueryResponse(ILjava/util/List;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 255
    .line 256
    .line 257
    monitor-exit p0

    .line 258
    :goto_3
    return-void

    .line 259
    :goto_4
    monitor-exit p0

    .line 260
    throw p1

    .line 261
    :goto_5
    monitor-exit v1

    .line 262
    throw p0
.end method

.method public final handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessageImplementation()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessageTestModeBehavior()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubService;->mTestModeManager:Lcom/android/server/location/contexthub/ContextHubService$TestModeManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessageDuplicateDetectionService()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubService$TestModeManager;->mRandom:Ljava/util/Random;

    .line 42
    .line 43
    const/16 v2, 0x64

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/16 v2, 0x32

    .line 50
    .line 51
    if-ge v1, v2, :cond_2

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "[TEST MODE] Duplicating message (3 sends) with message sequence number: "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "ContextHubService"

    .line 72
    .line 73
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    :goto_0
    const/4 v2, 0x3

    .line 78
    if-ge v1, v2, :cond_1

    .line 79
    .line 80
    iget-object v3, v0, Lcom/android/server/location/contexthub/ContextHubService$TestModeManager;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 81
    .line 82
    iget v4, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    .line 83
    .line 84
    move v5, p1

    .line 85
    move-object v6, p2

    .line 86
    move-object v7, p3

    .line 87
    move-object v8, p4

    .line 88
    invoke-static/range {v3 .. v8}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleClientMessageCallback(Lcom/android/server/location/contexthub/ContextHubService;ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    return-void

    .line 95
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 96
    .line 97
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    .line 98
    .line 99
    move v4, p1

    .line 100
    move-object v5, p2

    .line 101
    move-object v6, p3

    .line 102
    move-object v7, p4

    .line 103
    invoke-static/range {v2 .. v7}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleClientMessageCallback(Lcom/android/server/location/contexthub/ContextHubService;ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final handleTransactionResult(IZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 4
    .line 5
    const-string v0, "Received unexpected transaction response (expected ID = "

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string p1, "ContextHubTransactionManager"

    .line 19
    .line 20
    const-string p2, "Received unexpected transaction response (no transaction pending)"

    .line 21
    .line 22
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    :try_start_1
    iget v2, v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 30
    .line 31
    if-eq v2, p1, :cond_1

    .line 32
    .line 33
    const-string p2, "ContextHubTransactionManager"

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v0, v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", received ID = "

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, ")"

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    if-eqz p2, :cond_2

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 p1, 0x5

    .line 72
    :goto_0
    :try_start_2
    invoke-virtual {v1, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    :goto_1
    return-void

    .line 80
    :goto_2
    monitor-exit p0

    .line 81
    throw p1
.end method
