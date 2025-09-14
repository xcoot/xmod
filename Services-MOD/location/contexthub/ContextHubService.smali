.class public final Lcom/android/server/location/contexthub/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbacksList:Landroid/os/RemoteCallbackList;

.field public final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field public final mContext:Landroid/content/Context;

.field public final mContextHubIdToInfoMap:Ljava/util/Map;

.field public final mContextHubInfoList:Ljava/util/List;

.field public final mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mDefaultClientMap:Ljava/util/Map;

.field public mIsBtMainEnabled:Z

.field public mIsBtScanningEnabled:Z

.field public final mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsWifiAvailable:Z

.field public mIsWifiMainEnabled:Z

.field public mIsWifiScanningEnabled:Z

.field public final mLastRestartTimestampMap:Ljava/util/Map;

.field public final mMetricQueryPendingContextHubIds:Ljava/util/Set;

.field public final mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

.field public final mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

.field public final mSendWifiSettingUpdateLock:Ljava/lang/Object;

.field public final mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field public final mSupportedContextHubPerms:Ljava/util/List;

.field public final mTestModeManager:Lcom/android/server/location/contexthub/ContextHubService$TestModeManager;

.field public final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$mhandleClientMessageCallback(Lcom/android/server/location/contexthub/ContextHubService;ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessageImplementation()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_6

    .line 10
    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessageDuplicateDetectionService()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto/16 :goto_3

    .line 18
    :cond_0
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 24
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 26
    move v2, p1

    .line 27
    move v3, p2

    .line 28
    move-object v4, p3

    .line 29
    move-object v5, p4

    .line 30
    move-object v6, p5

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    .line 34
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->cleanupReliableMessageRecordQueue()V

    .line 37
    goto/16 :goto_4

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    .line 45
    move-result v1

    .line 46
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    .line 48
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v2

    .line 52
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    .line 64
    iget v4, v3, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    .line 66
    if-ne v4, p1, :cond_2

    .line 68
    iget v4, v3, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    .line 70
    if-ne v4, v1, :cond_2

    .line 72
    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 75
    move-result-object v1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 80
    move-result-object v1

    .line 81
    :goto_0
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_5

    .line 87
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    .line 93
    iget-byte v2, v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    .line 95
    const/4 v3, 0x1

    .line 96
    if-ne v2, v3, :cond_4

    .line 98
    const-string v2, "ContextHubService"

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v4, "Found duplicate reliable message with message sequence number: "

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    .line 116
    iget v4, v4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v4, ": retrying"

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v3

    .line 130
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 135
    move v5, p1

    .line 136
    move v6, p2

    .line 137
    move-object v7, p3

    .line 138
    move-object v8, p4

    .line 139
    move-object v9, p5

    .line 140
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    .line 143
    move-result v2

    .line 144
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    .line 150
    iput-byte v2, p2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    .line 152
    goto :goto_1

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto :goto_2

    .line 155
    :cond_4
    const-string p2, "ContextHubService"

    .line 157
    new-instance p4, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    const-string p5, "Found duplicate reliable message with message sequence number: "

    .line 164
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 170
    move-result-object p5

    .line 171
    check-cast p5, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    .line 173
    iget p5, p5, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    .line 175
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p4

    .line 182
    invoke-static {p2, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    goto :goto_1

    .line 186
    :cond_5
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 188
    move v2, p1

    .line 189
    move v3, p2

    .line 190
    move-object v4, p3

    .line 191
    move-object v5, p4

    .line 192
    move-object v6, p5

    .line 193
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    .line 196
    move-result v2

    .line 197
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    .line 199
    new-instance p4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 204
    move-result-wide v3

    .line 205
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    .line 208
    move-result p5

    .line 209
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p1, p4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    .line 214
    iput-wide v3, p4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    .line 216
    iput p5, p4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    .line 218
    iput-byte v2, p4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    .line 220
    invoke-virtual {p2, p4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 223
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    .line 227
    move-result p2

    .line 228
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/location/contexthub/ContextHubService;->sendMessageDeliveryStatusToContextHub(IIB)V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->cleanupReliableMessageRecordQueue()V

    .line 234
    goto :goto_4

    .line 235
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    throw p0

    .line 237
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 239
    move v2, p1

    .line 240
    move v3, p2

    .line 241
    move-object v4, p3

    .line 242
    move-object v5, p4

    .line 243
    move-object v6, p5

    .line 244
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    .line 247
    move-result p2

    .line 248
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    .line 251
    move-result p4

    .line 252
    if-eqz p4, :cond_7

    .line 254
    if-eqz p2, :cond_7

    .line 256
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    .line 259
    move-result p3

    .line 260
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/location/contexthub/ContextHubService;->sendMessageDeliveryStatusToContextHub(IIB)V

    .line 263
    :cond_7
    :goto_4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    .line 5
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 7
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 12
    new-instance v1, Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 14
    invoke-direct {v1}, Lcom/android/server/location/contexthub/NanoAppStateManager;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 19
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 25
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 27
    new-instance v1, Ljava/util/PriorityQueue;

    .line 29
    new-instance v3, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda1;

    .line 31
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {v1, v3}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 37
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    .line 39
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService$TestModeManager;

    .line 41
    invoke-direct {v1, p0}, Lcom/android/server/location/contexthub/ContextHubService$TestModeManager;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 44
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTestModeManager:Lcom/android/server/location/contexthub/ContextHubService$TestModeManager;

    .line 46
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 56
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 61
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 68
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 71
    move-result-object v1

    .line 72
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    .line 74
    new-instance v1, Ljava/lang/Object;

    .line 76
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSendWifiSettingUpdateLock:Ljava/lang/Object;

    .line 81
    const/4 v1, 0x0

    .line 82
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mUserManager:Landroid/os/UserManager;

    .line 84
    new-instance v3, Ljava/util/HashMap;

    .line 86
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    iput-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    .line 91
    const-string v3, "ContextHubService"

    .line 93
    const-string v4, "Starting Context Hub Service init"

    .line 95
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 103
    move-result-wide v4

    .line 104
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 106
    if-nez p2, :cond_0

    .line 108
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 110
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 112
    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 138
    const-string p0, "Failed to initialize the Context Hub Service"

    .line 140
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 144
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getHubs()Landroid/util/Pair;

    .line 147
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 149
    :catch_0
    move-exception p1

    .line 150
    const-string p2, "RemoteException while getting Context Hub info"

    .line 152
    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    new-instance p1, Landroid/util/Pair;

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 160
    move-result-object p2

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 164
    move-result-object v1

    .line 165
    invoke-direct {p1, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 171
    move-result-wide v6

    .line 172
    sub-long/2addr v6, v4

    .line 173
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 175
    check-cast p2, Ljava/util/List;

    .line 177
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 180
    move-result p2

    .line 181
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 184
    move-result-object v1

    .line 185
    const/16 v4, 0x18e

    .line 187
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 190
    invoke-virtual {v1, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 193
    invoke-virtual {v1, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 196
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 199
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 202
    move-result-object p2

    .line 203
    invoke-static {p2}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 206
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 208
    check-cast p2, Ljava/util/List;

    .line 210
    sget-object v1, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 212
    new-instance v1, Ljava/util/HashMap;

    .line 214
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 217
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 220
    move-result-object p2

    .line 221
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_1

    .line 227
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    move-result-object v4

    .line 231
    check-cast v4, Landroid/hardware/location/ContextHubInfo;

    .line 233
    invoke-virtual {v4}, Landroid/hardware/location/ContextHubInfo;->getId()I

    .line 236
    move-result v5

    .line 237
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    goto :goto_1

    .line 245
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 248
    move-result-object p2

    .line 249
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 251
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 253
    check-cast p1, Ljava/util/List;

    .line 255
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 257
    new-instance p1, Ljava/util/ArrayList;

    .line 259
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 261
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 264
    move-result-object p2

    .line 265
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 270
    new-instance p1, Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 272
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 274
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 276
    invoke-direct {p1, p2, v1}, Lcom/android/server/location/contexthub/ContextHubClientManager;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V

    .line 279
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 281
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 283
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 285
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 287
    invoke-direct {p2, v1, p1, v4}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V

    .line 290
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 292
    const-class p1, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 294
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 297
    move-result-object p1

    .line 298
    check-cast p1, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 300
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 302
    new-instance p1, Ljava/util/HashMap;

    .line 304
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 307
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 309
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 312
    move-result-object p2

    .line 313
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 316
    move-result-object p2

    .line 317
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_2

    .line 323
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    move-result-object v1

    .line 327
    check-cast v1, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 332
    move-result-object v4

    .line 333
    check-cast v4, Ljava/lang/Integer;

    .line 335
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 338
    move-result v5

    .line 339
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 342
    move-result-object v1

    .line 343
    move-object v7, v1

    .line 344
    check-cast v7, Landroid/hardware/location/ContextHubInfo;

    .line 346
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    .line 348
    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 353
    move-result-wide v8

    .line 354
    invoke-direct {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 357
    check-cast v1, Ljava/util/HashMap;

    .line 359
    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 364
    new-instance v6, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 366
    invoke-direct {v6, p0, v5}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    .line 369
    invoke-virtual {v1, v5, v6}, Lcom/android/server/location/contexthub/IContextHubWrapper;->registerCallback(ILcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    goto :goto_3

    .line 373
    :catch_1
    move-exception v1

    .line 374
    new-instance v6, Ljava/lang/StringBuilder;

    .line 376
    const-string v8, "RemoteException while registering service callback for hub (ID = "

    .line 378
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    const-string v8, ")"

    .line 386
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    move-result-object v6

    .line 393
    invoke-static {v3, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    :goto_3
    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 398
    new-instance v8, Lcom/android/server/location/contexthub/ContextHubService$1;

    .line 400
    invoke-direct {v8, p0, v5}, Lcom/android/server/location/contexthub/ContextHubService$1;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    .line 403
    iget-object v10, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 405
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 407
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 410
    move-result-object v11

    .line 411
    const/4 v9, 0x0

    .line 412
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-virtual {p0, v5}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    .line 422
    goto :goto_2

    .line 423
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 426
    move-result-object p1

    .line 427
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 429
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 431
    const/4 p2, -0x1

    .line 432
    if-eqz p1, :cond_4

    .line 434
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsLocationSettingNotifications()Z

    .line 437
    move-result p1

    .line 438
    if-nez p1, :cond_3

    .line 440
    goto :goto_4

    .line 441
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 444
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 449
    move-result-object p1

    .line 450
    const-string/jumbo v1, "location_mode"

    .line 453
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 456
    move-result-object v1

    .line 457
    new-instance v4, Lcom/android/server/location/contexthub/ContextHubService$2;

    .line 459
    invoke-direct {v4, p0, v0}, Lcom/android/server/location/contexthub/ContextHubService$2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    .line 462
    invoke-virtual {p1, v1, v2, v4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 465
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 467
    if-eqz p1, :cond_6

    .line 469
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsWifiSettingNotifications()Z

    .line 472
    move-result p1

    .line 473
    if-nez p1, :cond_5

    .line 475
    goto :goto_5

    .line 476
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    .line 479
    new-instance p1, Lcom/android/server/location/contexthub/ContextHubService$3;

    .line 481
    invoke-direct {p1, p0, v0}, Lcom/android/server/location/contexthub/ContextHubService$3;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    .line 484
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 486
    const-string v4, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    .line 488
    invoke-static {v1, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 491
    move-result-object v1

    .line 492
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 494
    invoke-virtual {v4, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 497
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 502
    move-result-object p1

    .line 503
    const-string/jumbo v1, "wifi_scan_always_enabled"

    .line 506
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 509
    move-result-object v1

    .line 510
    new-instance v4, Lcom/android/server/location/contexthub/ContextHubService$2;

    .line 512
    invoke-direct {v4, p0, v2}, Lcom/android/server/location/contexthub/ContextHubService$2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    .line 515
    invoke-virtual {p1, v1, v2, v4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 518
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 520
    if-eqz p1, :cond_8

    .line 522
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsAirplaneModeSettingNotifications()Z

    .line 525
    move-result p1

    .line 526
    if-nez p1, :cond_7

    .line 528
    goto :goto_6

    .line 529
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    .line 532
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 534
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 537
    move-result-object p1

    .line 538
    const-string v1, "airplane_mode_on"

    .line 540
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 543
    move-result-object v1

    .line 544
    new-instance v4, Lcom/android/server/location/contexthub/ContextHubService$2;

    .line 546
    const/4 v5, 0x2

    .line 547
    invoke-direct {v4, p0, v5}, Lcom/android/server/location/contexthub/ContextHubService$2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    .line 550
    invoke-virtual {p1, v1, v2, v4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 553
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 555
    if-eqz p1, :cond_c

    .line 557
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsMicrophoneSettingNotifications()Z

    .line 560
    move-result p1

    .line 561
    if-nez p1, :cond_9

    .line 563
    goto :goto_7

    .line 564
    :cond_9
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mUserManager:Landroid/os/UserManager;

    .line 566
    if-nez p1, :cond_a

    .line 568
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 570
    const-class v1, Landroid/os/UserManager;

    .line 572
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 575
    move-result-object p1

    .line 576
    check-cast p1, Landroid/os/UserManager;

    .line 578
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mUserManager:Landroid/os/UserManager;

    .line 580
    if-nez p1, :cond_a

    .line 582
    const-string p1, "Unable to get the UserManager service"

    .line 584
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    goto :goto_7

    .line 588
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    .line 591
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 593
    if-nez p1, :cond_b

    .line 595
    const-string p1, "Unable to add a sensor privacy listener for all users"

    .line 597
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    goto :goto_7

    .line 601
    :cond_b
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda6;

    .line 603
    invoke-direct {v1, p0}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 606
    invoke-virtual {p1, v2, v1}, Landroid/hardware/SensorPrivacyManagerInternal;->addSensorPrivacyListenerForAllUsers(ILandroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;)V

    .line 609
    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 611
    if-eqz p1, :cond_e

    .line 613
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsBtSettingNotifications()Z

    .line 616
    move-result p1

    .line 617
    if-nez p1, :cond_d

    .line 619
    goto :goto_8

    .line 620
    :cond_d
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    .line 623
    new-instance p1, Lcom/android/server/location/contexthub/ContextHubService$3;

    .line 625
    invoke-direct {p1, p0, v2}, Lcom/android/server/location/contexthub/ContextHubService$3;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    .line 628
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 630
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 633
    move-result-object v1

    .line 634
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 636
    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 639
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 644
    move-result-object p1

    .line 645
    const-string/jumbo v1, "ble_scan_always_enabled"

    .line 648
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 651
    move-result-object v1

    .line 652
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubService$2;

    .line 654
    const/4 v4, 0x3

    .line 655
    invoke-direct {v2, p0, v4}, Lcom/android/server/location/contexthub/ContextHubService$2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    .line 658
    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 661
    :cond_e
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->scheduleDailyMetricSnapshot()V

    .line 664
    const-string p0, "Finished Context Hub Service init"

    .line 666
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method

.method public static getCurrentUserId()I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 12
    move-result-object v2

    .line 13
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return v2

    .line 19
    :catchall_0
    move-exception v2

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw v2

    .line 24
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    const/4 v0, 0x0

    .line 28
    return v0
.end method


# virtual methods
.method public final checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 3
    const-string v1, "RemoteException while calling onTransactionComplete"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "ContextHubService"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const/16 p0, 0x8

    .line 12
    :try_start_0
    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    :goto_0
    return v2

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    const-string v0, "Cannot start "

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {p3, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string p3, " transaction for invalid hub ID "

    .line 49
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 p0, 0x2

    .line 63
    :try_start_1
    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    goto :goto_1

    .line 67
    :catch_1
    move-exception p0

    .line 68
    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :goto_1
    return v2

    .line 72
    :cond_1
    const/4 p0, 0x1

    .line 73
    return p0
.end method

.method public final cleanupReliableMessageRecordQueue()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    .line 3
    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    .line 6
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    .line 14
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    .line 20
    iget-wide v1, v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    .line 22
    const-wide/32 v3, 0x3b9aca00

    .line 25
    add-long/2addr v1, v3

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 29
    move-result-wide v3

    .line 30
    cmp-long v1, v1, v3

    .line 32
    if-gez v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    .line 36
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final createClient(ILandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->createClient_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    if-eqz p2, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    move-object v1, p1

    .line 29
    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    .line 31
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 33
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 35
    move-object v2, p2

    .line 36
    move-object v3, p3

    .line 37
    move-object v5, p4

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 45
    const-string p1, "Cannot register client with null callback"

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    const-string p2, "Invalid context hub ID "

    .line 55
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0
.end method

.method public final createPendingIntentClient(ILandroid/app/PendingIntent;JLjava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/location/IContextHubService$Stub;->createPendingIntentClient_enforcePermission()V

    .line 6
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 8
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 18
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 20
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    move-object v6, v1

    .line 29
    check-cast v6, Landroid/hardware/location/ContextHubInfo;

    .line 31
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 33
    iget-object v10, v0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 35
    const-string v0, "Regenerated"

    .line 37
    monitor-enter v1

    .line 38
    :try_start_0
    invoke-virtual {v6}, Landroid/hardware/location/ContextHubInfo;->getId()I

    .line 41
    move-result v2

    .line 42
    move-object/from16 v11, p2

    .line 44
    move-wide/from16 v12, p3

    .line 46
    invoke-virtual {v1, v2, v11, v12, v13}, Lcom/android/server/location/contexthub/ContextHubClientManager;->getClientBroker(ILandroid/app/PendingIntent;J)Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientManager;->getHostEndPointId()S

    .line 55
    move-result v0

    .line 56
    new-instance v15, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 58
    iget-object v3, v1, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContext:Landroid/content/Context;

    .line 60
    iget-object v4, v1, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 65
    move-result-object v14

    .line 66
    const/4 v8, 0x0

    .line 67
    move-object v2, v15

    .line 68
    move-object v5, v1

    .line 69
    move v7, v0

    .line 70
    move-object/from16 v9, p5

    .line 72
    move-object/from16 v11, p2

    .line 74
    move-wide/from16 v12, p3

    .line 76
    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V

    .line 79
    iget-object v2, v1, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v2, v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "Registered"

    .line 90
    iget-object v2, v1, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 92
    new-instance v3, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    .line 94
    invoke-virtual {v15}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->toString()Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    const/4 v5, 0x0

    .line 99
    invoke-direct {v3, v4, v5}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;-><init>(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v2, v3}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 105
    move-object v2, v15

    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    move-object/from16 v3, p5

    .line 111
    iput-object v3, v2, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    .line 113
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    const-string v1, "ContextHubClientManager"

    .line 116
    const-string v3, " client with host endpoint ID "

    .line 118
    invoke-static {v0, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    move-result-object v0

    .line 122
    iget-short v3, v2, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v2}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    .line 137
    move-result-object v0

    .line 138
    return-object v0

    .line 139
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw v0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 143
    const-string v1, "Invalid context hub ID "

    .line 145
    move/from16 v2, p1

    .line 147
    invoke-static {v2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    throw v0
.end method

.method public final disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->disableNanoApp_enforcePermission()V

    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 18
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    .line 20
    iget-object v1, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 25
    move-result v3

    .line 26
    const/4 v9, 0x2

    .line 27
    move-object v1, v0

    .line 28
    move v5, p1

    .line 29
    move-wide v6, p3

    .line 30
    move-object v8, p2

    .line 31
    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 39
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "ContextHubService"

    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    array-length v0, p3

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_6

    .line 17
    aget-object v3, p3, v2

    .line 19
    const-string v4, "--proto"

    .line 21
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_5

    .line 27
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    .line 29
    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 32
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 34
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 37
    move-result-object p1

    .line 38
    new-instance p3, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;

    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-direct {p3, v0, p2}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 44
    invoke-interface {p1, p3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 47
    const-wide v2, 0x10b00000002L

    .line 52
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 55
    move-result-wide v2

    .line 56
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 58
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object p1

    .line 68
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result p3

    .line 72
    const-wide v4, 0x10900000003L

    .line 77
    const-wide v6, 0x10500000002L

    .line 82
    if-eqz p3, :cond_3

    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object p3

    .line 88
    check-cast p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 90
    const-wide v8, 0x20b00000001L

    .line 95
    invoke-virtual {p2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 98
    move-result-wide v8

    .line 99
    iget-short v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    .line 101
    const-wide v10, 0x10500000001L

    .line 106
    invoke-virtual {p2, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 109
    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 111
    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    .line 114
    move-result v0

    .line 115
    invoke-virtual {p2, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 118
    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    .line 120
    invoke-virtual {p2, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 123
    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 125
    iget-boolean v0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    .line 127
    const/4 v4, 0x1

    .line 128
    if-eqz v0, :cond_1

    .line 130
    const-wide v5, 0x10800000005L

    .line 135
    invoke-virtual {p2, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 138
    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 140
    iget-wide v5, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    .line 142
    const-wide v10, 0x10300000004L

    .line 147
    invoke-virtual {p2, v10, v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 150
    :cond_1
    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 152
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    .line 154
    if-eqz v0, :cond_2

    .line 156
    goto :goto_2

    .line 157
    :cond_2
    move v4, v1

    .line 158
    :goto_2
    const-wide v5, 0x10800000006L

    .line 163
    invoke-virtual {p2, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 166
    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 168
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 171
    move-result v0

    .line 172
    const-wide v4, 0x10800000007L

    .line 177
    invoke-virtual {p2, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 180
    const-wide v4, 0x10800000008L

    .line 185
    iget-boolean p3, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    .line 187
    invoke-virtual {p2, v4, v5, p3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 190
    invoke-virtual {p2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 193
    goto :goto_1

    .line 194
    :cond_3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 196
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    .line 199
    move-result-object p0

    .line 200
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_4

    .line 206
    const-wide v0, 0x20b00000002L

    .line 211
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 214
    move-result-wide v0

    .line 215
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    .line 221
    iget-wide v8, p1, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    .line 223
    const-wide v10, 0x10300000001L

    .line 228
    invoke-virtual {p2, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 231
    iget p3, p1, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    .line 233
    invoke-virtual {p2, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 236
    iget-object p1, p1, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    .line 238
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 241
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 244
    goto :goto_3

    .line 245
    :cond_4
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 248
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 251
    return-void

    .line 252
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 254
    goto/16 :goto_0

    .line 256
    :cond_6
    const-string p1, "Dumping ContextHub Service"

    .line 258
    const-string p3, ""

    .line 260
    const-string v0, "=================== CONTEXT HUBS ===================="

    .line 262
    invoke-static {p2, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 267
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 270
    move-result-object p1

    .line 271
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 274
    move-result-object p1

    .line 275
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_7

    .line 281
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    move-result-object v0

    .line 285
    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 287
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 290
    goto :goto_4

    .line 291
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 293
    const-string v0, "Supported permissions: "

    .line 295
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 300
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 303
    move-result-object v0

    .line 304
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    const-string p1, "=================== NANOAPPS ===================="

    .line 323
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 328
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;

    .line 330
    const/4 v2, 0x0

    .line 331
    invoke-direct {v0, v2, p2}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 334
    invoke-virtual {p1, v0}, Lcom/android/server/location/contexthub/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 337
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    const-string p1, "=================== PRELOADED NANOAPPS ===================="

    .line 342
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 347
    if-nez p1, :cond_8

    .line 349
    goto :goto_6

    .line 350
    :cond_8
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 352
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 355
    move-result-object p1

    .line 356
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 359
    move-result-object p1

    .line 360
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_b

    .line 366
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    move-result-object v0

    .line 370
    check-cast v0, Ljava/lang/Integer;

    .line 372
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 375
    move-result v0

    .line 376
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 378
    invoke-virtual {v2, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getPreloadedNanoappIds(I)[J

    .line 381
    move-result-object v2

    .line 382
    if-nez v2, :cond_a

    .line 384
    goto :goto_6

    .line 385
    :cond_a
    const-string v3, "Context Hub (id="

    .line 387
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 393
    const-string v0, "):"

    .line 395
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    array-length v0, v2

    .line 399
    move v3, v1

    .line 400
    :goto_5
    if-ge v3, v0, :cond_9

    .line 402
    aget-wide v4, v2, v3

    .line 404
    const-string v6, "  ID: 0x"

    .line 406
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    add-int/lit8 v3, v3, 0x1

    .line 418
    goto :goto_5

    .line 419
    :cond_b
    :goto_6
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    const-string p1, "=================== CLIENTS ===================="

    .line 424
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 429
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 432
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    const-string p1, "=================== TRANSACTIONS ===================="

    .line 437
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 442
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 445
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    const-string p0, "=================== EVENTS ===================="

    .line 450
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    .line 456
    move-result-object p0

    .line 457
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 460
    return-void
.end method

.method public final enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->enableNanoApp_enforcePermission()V

    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 18
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    .line 20
    iget-object v1, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 25
    move-result v3

    .line 26
    const/4 v9, 0x1

    .line 27
    move-object v1, v0

    .line 28
    move v5, p1

    .line 29
    move-wide v6, p3

    .line 30
    move-object v8, p2

    .line 31
    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 39
    return-void
.end method

.method public final findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->findNanoAppOnHub_enforcePermission()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    if-eqz p2, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 13
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;

    .line 15
    invoke-direct {v0, p2, p1}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result p0

    .line 25
    new-array p0, p0, [I

    .line 27
    const/4 p2, 0x0

    .line 28
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v0

    .line 32
    if-ge p2, v0, :cond_1

    .line 34
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v0

    .line 44
    aput v0, p0, p2

    .line 46
    add-int/lit8 p2, p2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object p0
.end method

.method public final getCallingPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final getContextHubHandles()[I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubHandles_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 6
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 15
    move-result v0

    .line 16
    new-array v0, v0, [I

    .line 18
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v2

    .line 39
    add-int/lit8 v3, v1, 0x1

    .line 41
    aput v2, v0, v1

    .line 43
    move v1, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-object v0
.end method

.method public final getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubInfo_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string p0, "Invalid Context Hub handle "

    .line 18
    const-string v0, " in getContextHubInfo"

    .line 20
    const-string v1, "ContextHubService"

    .line 22
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroid/hardware/location/ContextHubInfo;

    .line 39
    return-object p0
.end method

.method public final getContextHubs()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubs_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 6
    return-object p0
.end method

.method public final getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getNanoAppInstanceInfo_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/hardware/location/NanoAppInstanceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    .line 20
    return-object p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0

    .line 23
    throw p1
.end method

.method public final getPreloadedNanoAppIds(Landroid/hardware/location/ContextHubInfo;)[J
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getPreloadedNanoAppIds_enforcePermission()V

    .line 4
    const-string/jumbo v0, "hubInfo cannot be null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 12
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getPreloadedNanoappIds(I)[J

    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 23
    new-array p0, p0, [J

    .line 25
    :cond_0
    return-object p0
.end method

.method public final loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoApp_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 6
    const/4 v1, -0x1

    .line 7
    if-nez v0, :cond_0

    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    const-string v2, "ContextHubService"

    .line 22
    if-nez v0, :cond_1

    .line 24
    const-string p0, "Invalid Context Hub handle "

    .line 26
    const-string p2, " in loadNanoApp"

    .line 28
    invoke-static {p1, p0, p2, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return v1

    .line 32
    :cond_1
    if-nez p2, :cond_2

    .line 34
    const-string p0, "NanoApp cannot be null in loadNanoApp"

    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v1

    .line 40
    :cond_2
    new-instance v10, Landroid/hardware/location/NanoAppBinary;

    .line 42
    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    .line 45
    move-result-object p2

    .line 46
    invoke-direct {v10, p2}, Landroid/hardware/location/NanoAppBinary;-><init>([B)V

    .line 49
    new-instance v11, Lcom/android/server/location/contexthub/ContextHubService$8;

    .line 51
    invoke-direct {v11, p0, p1, v10}, Lcom/android/server/location/contexthub/ContextHubService$8;-><init>(Lcom/android/server/location/contexthub/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V

    .line 54
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 56
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    .line 59
    move-result-object v8

    .line 60
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;

    .line 62
    iget-object v0, v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 67
    move-result v5

    .line 68
    invoke-virtual {v10}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    .line 71
    move-result-wide v6

    .line 72
    move-object v3, p2

    .line 73
    move v9, p1

    .line 74
    invoke-direct/range {v3 .. v11}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V

    .line 77
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 82
    const/4 p0, 0x0

    .line 83
    return p0
.end method

.method public final loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoAppOnHub_enforcePermission()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p3, :cond_1

    .line 14
    const-string p0, "ContextHubService"

    .line 16
    const-string p1, "NanoAppBinary cannot be null in loadNanoAppOnHub"

    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 p0, 0x2

    .line 22
    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 28
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    .line 31
    move-result-object v5

    .line 32
    new-instance v9, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;

    .line 34
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 39
    move-result v2

    .line 40
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    .line 43
    move-result-wide v3

    .line 44
    move-object v0, v9

    .line 45
    move v6, p1

    .line 46
    move-object v7, p3

    .line 47
    move-object v8, p2

    .line 48
    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V

    .line 51
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 53
    invoke-virtual {p0, v9}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 56
    return-void
.end method

.method public final onMessageReceiptOldApi(III[B)I
    .locals 8

    .line 1
    if-nez p4, :cond_0

    .line 3
    const/4 p0, -0x1

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 10
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-ge v1, v2, :cond_1

    .line 18
    monitor-exit v0

    .line 19
    return v3

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    new-instance v2, Landroid/hardware/location/ContextHubMessage;

    .line 24
    invoke-direct {v2, p1, v3, p4}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    .line 27
    move p1, v3

    .line 28
    :goto_0
    if-ge p1, v1, :cond_2

    .line 30
    iget-object p4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 32
    invoke-virtual {p4, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 35
    move-result-object p4

    .line 36
    check-cast p4, Landroid/hardware/location/IContextHubCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    invoke-interface {p4, p2, p3, v2}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v4

    .line 43
    :try_start_2
    const-string v5, "ContextHubService"

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v7, "Exception ("

    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v4, ") calling remote callback ("

    .line 60
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string p4, ")."

    .line 68
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p4

    .line 75
    invoke-static {v5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 83
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 86
    monitor-exit v0

    .line 87
    return v3

    .line 88
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubShellCommand;

    .line 3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1, p0}, Lcom/android/server/location/contexthub/ContextHubShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 18
    return-void
.end method

.method public final queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->queryNanoApps_enforcePermission()V

    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 18
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;

    .line 20
    iget-object v1, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 25
    move-result v3

    .line 26
    move-object v1, v0

    .line 27
    move v5, p1

    .line 28
    move-object v6, p2

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 32
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 37
    return-void
.end method

.method public final queryNanoAppsInternal(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    new-instance v5, Lcom/android/server/location/contexthub/ContextHubService$9;

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {v5, p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubService$9;-><init>(Lcom/android/server/location/contexthub/ContextHubService;II)V

    .line 13
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    new-instance v6, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;

    .line 21
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 26
    move-result v2

    .line 27
    move-object v0, v6

    .line 28
    move v4, p1

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 32
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 34
    invoke-virtual {p0, v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 37
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public final registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->registerCallback_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    const-string v0, "Added callback, total callbacks "

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 18
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 21
    move-result p0

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    const-string p1, "ContextHubService"

    .line 31
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final scheduleDailyMetricSnapshot()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda4;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 10
    const-wide/16 v2, 0x1

    .line 12
    invoke-virtual {p0, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string v0, "ContextHubService"

    .line 19
    const-string v1, "Error when schedule a timer"

    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :goto_0
    return-void
.end method

.method public final sendAirplaneModeSettingUpdate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "airplane_mode_on"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 17
    move v2, v1

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 20
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onAirplaneModeSettingChanged(Z)V

    .line 23
    return-void
.end method

.method public final sendBtSettingUpdate(Z)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    .line 14
    move-result v0

    .line 15
    if-nez p1, :cond_0

    .line 17
    iget-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 19
    if-eq v2, v0, :cond_1

    .line 21
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 23
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 25
    invoke-virtual {v2, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtScanningSettingChanged(Z)V

    .line 28
    :cond_1
    if-nez p1, :cond_2

    .line 30
    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 32
    if-eq p1, v1, :cond_9

    .line 34
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 36
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtMainSettingChanged(Z)V

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    const-string v0, "ContextHubService"

    .line 44
    const-string v1, "BT adapter not available. Getting permissions from user settings"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    move-result-object v0

    .line 55
    const-string/jumbo v1, "bluetooth_on"

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x1

    .line 64
    if-ne v0, v1, :cond_4

    .line 66
    move v0, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    move v0, v2

    .line 69
    :goto_0
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    move-result-object v3

    .line 75
    const-string/jumbo v4, "ble_scan_always_enabled"

    .line 78
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 81
    move-result v3

    .line 82
    if-ne v3, v1, :cond_5

    .line 84
    move v2, v1

    .line 85
    :cond_5
    if-nez p1, :cond_6

    .line 87
    iget-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 89
    if-eq v1, v0, :cond_7

    .line 91
    :cond_6
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 93
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 95
    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtMainSettingChanged(Z)V

    .line 98
    :cond_7
    if-nez p1, :cond_8

    .line 100
    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 102
    if-eq p1, v2, :cond_9

    .line 104
    :cond_8
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 106
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtScanningSettingChanged(Z)V

    .line 111
    :cond_9
    :goto_1
    return-void
.end method

.method public final sendLocationSettingUpdate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/location/LocationManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/location/LocationManager;

    .line 11
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 13
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    .line 16
    move-result v0

    .line 17
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onLocationSettingChanged(Z)V

    .line 22
    return-void
.end method

.method public final sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->sendMessage_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 6
    const/4 v1, -0x1

    .line 7
    if-nez v0, :cond_0

    .line 9
    return v1

    .line 10
    :cond_0
    const-string v0, "ContextHubService"

    .line 12
    if-nez p3, :cond_1

    .line 14
    const-string p0, "ContextHubMessage cannot be null in sendMessage"

    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return v1

    .line 20
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_2

    .line 26
    const-string p0, "ContextHubMessage message body cannot be null in sendMessage"

    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return v1

    .line 32
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_3

    .line 44
    const-string p0, "Invalid Context Hub handle "

    .line 46
    const-string p2, " in sendMessage"

    .line 48
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return v1

    .line 52
    :cond_3
    const/4 v2, 0x0

    .line 53
    if-ne p2, v1, :cond_5

    .line 55
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    .line 58
    move-result p2

    .line 59
    const/4 v3, 0x5

    .line 60
    if-ne p2, v3, :cond_4

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    .line 65
    move-result p0

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    const-string p1, "Invalid OS message params of type "

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    .line 77
    move-result p1

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_0

    .line 89
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_6

    .line 95
    invoke-virtual {v3}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    .line 98
    move-result-wide v3

    .line 99
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    .line 102
    move-result p2

    .line 103
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    .line 106
    move-result-object p3

    .line 107
    invoke-static {v3, v4, p2, p3}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    .line 110
    move-result-object p2

    .line 111
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Landroid/hardware/location/IContextHubClient;

    .line 123
    invoke-interface {p0, p2}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    .line 126
    move-result p0

    .line 127
    if-nez p0, :cond_7

    .line 129
    const/4 p0, 0x1

    .line 130
    goto :goto_1

    .line 131
    :cond_6
    const-string p0, "Failed to send nanoapp message - nanoapp with handle "

    .line 133
    const-string p1, " does not exist."

    .line 135
    invoke-static {p2, p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_7
    :goto_0
    move p0, v2

    .line 139
    :goto_1
    if-eqz p0, :cond_8

    .line 141
    move v1, v2

    .line 142
    :cond_8
    return v1
.end method

.method public final sendMessageDeliveryStatusToContextHub(IIB)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessageImplementation()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    .line 10
    invoke-direct {v0}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    .line 13
    iput p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    .line 15
    iput-byte p3, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    .line 17
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    const-string p1, "Failed to send the reliable message status for message sequence number: "

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, " with error code: "

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    const-string p1, "ContextHubService"

    .line 49
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    return-void
.end method

.method public final sendMicrophoneDisableSettingUpdateForCurrentUser()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    .line 15
    move-result v0

    .line 16
    :goto_0
    const-string v2, "Mic Disabled Setting: "

    .line 18
    const-string v3, "ContextHubService"

    .line 20
    invoke-static {v2, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 25
    xor-int/2addr v0, v1

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onMicrophoneSettingChanged(Z)V

    .line 29
    return-void
.end method

.method public final sendWifiSettingUpdate(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSendWifiSettingUpdateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 6
    const-class v2, Landroid/net/wifi/WifiManager;

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 14
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    .line 21
    move-result v1

    .line 22
    if-nez v2, :cond_1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 30
    :goto_1
    if-nez p1, :cond_2

    .line 32
    iget-boolean v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    .line 34
    if-eq v4, v3, :cond_3

    .line 36
    goto :goto_2

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_3

    .line 39
    :cond_2
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    .line 41
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 43
    invoke-virtual {v4, v3}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiSettingChanged(Z)V

    .line 46
    :cond_3
    if-nez p1, :cond_4

    .line 48
    iget-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    .line 50
    if-eq v3, v1, :cond_5

    .line 52
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    .line 54
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 56
    invoke-virtual {v3, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiScanningSettingChanged(Z)V

    .line 59
    :cond_5
    if-nez p1, :cond_6

    .line 61
    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    .line 63
    if-eq p1, v2, :cond_7

    .line 65
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    .line 67
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiMainSettingChanged(Z)V

    .line 72
    :cond_7
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

.method public final setTestMode(Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->setTestMode_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->setTestMode(Z)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 19
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Integer;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v1

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return v0
.end method

.method public final unloadNanoApp(I)I
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoApp_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 6
    const/4 v1, -0x1

    .line 7
    if-nez v0, :cond_0

    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v2, v0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/hardware/location/NanoAppInstanceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v0

    .line 26
    if-nez v2, :cond_1

    .line 28
    const-string p0, "Invalid nanoapp handle "

    .line 30
    const-string v0, " in unloadNanoApp"

    .line 32
    const-string v2, "ContextHubService"

    .line 34
    invoke-static {p1, p0, v0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return v1

    .line 38
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    .line 41
    move-result v9

    .line 42
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    .line 45
    move-result-wide v10

    .line 46
    new-instance v12, Lcom/android/server/location/contexthub/ContextHubService$9;

    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-direct {v12, p0, v9, p1}, Lcom/android/server/location/contexthub/ContextHubService$9;-><init>(Lcom/android/server/location/contexthub/ContextHubService;II)V

    .line 52
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 54
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    .line 57
    move-result-object v8

    .line 58
    new-instance p1, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    .line 60
    iget-object v0, v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 65
    move-result v5

    .line 66
    move-object v3, p1

    .line 67
    move-wide v6, v10

    .line 68
    invoke-direct/range {v3 .. v12}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 71
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 76
    const/4 p0, 0x0

    .line 77
    return p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    monitor-exit v0

    .line 80
    throw p0
.end method

.method public final unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoAppFromHub_enforcePermission()V

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    .line 17
    move-result-object v6

    .line 18
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    .line 20
    iget-object v1, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 25
    move-result v3

    .line 26
    move-object v1, v0

    .line 27
    move-wide v4, p3

    .line 28
    move v7, p1

    .line 29
    move-wide v8, p3

    .line 30
    move-object v10, p2

    .line 31
    invoke-direct/range {v1 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 34
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 39
    return-void
.end method
