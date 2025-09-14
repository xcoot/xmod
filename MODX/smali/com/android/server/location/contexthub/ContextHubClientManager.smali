.class public final Lcom/android/server/location/contexthub/ContextHubClientManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mNextHostEndPointId:I

.field public final mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mNextHostEndPointId:I

    .line 14
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 16
    invoke-direct {v0}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 21
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 25
    return-void
.end method


# virtual methods
.method public final forEachClientOfHub(ILjava/util/function/Consumer;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 23
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 25
    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    .line 28
    move-result v1

    .line 29
    if-ne v1, p1, :cond_0

    .line 31
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public final getClientBroker(ILandroid/app/PendingIntent;J)Lcom/android/server/location/contexthub/ContextHubClientBroker;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 26
    iget-object v2, v1, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    .line 28
    iget-wide v3, v1, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v2, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 39
    cmp-long v1, v3, p3

    .line 41
    if-nez v1, :cond_0

    .line 43
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 45
    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    .line 48
    move-result v1

    .line 49
    if-ne v1, p1, :cond_0

    .line 51
    return-object v0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p0

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public final getHostEndPointId()S
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 6
    move-result v0

    .line 7
    const v1, 0x8000

    .line 10
    if-eq v0, v1, :cond_4

    .line 12
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mNextHostEndPointId:I

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    const/16 v3, 0x7fff

    .line 18
    if-gt v2, v3, :cond_3

    .line 20
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    int-to-short v5, v0

    .line 23
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_1

    .line 33
    if-ne v0, v3, :cond_0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 38
    :goto_1
    iput v1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mNextHostEndPointId:I

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    if-ne v0, v3, :cond_2

    .line 43
    move v0, v1

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 47
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_3
    int-to-short p0, v0

    .line 51
    return p0

    .line 52
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    const-string v0, "Could not register client - max limit exceeded"

    .line 56
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0
.end method

.method public final onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const-string v3, "ContextHubClientManager"

    .line 9
    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessageImplementation()Z

    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x2

    .line 16
    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    const-string p1, "Received reliable broadcast message from "

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    .line 34
    move-result-wide p1

    .line 35
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v0

    .line 46
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    .line 49
    move-result p2

    .line 50
    if-nez p2, :cond_1

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    const-string p1, "Received broadcast message with permissions from "

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    .line 62
    move-result-wide p1

    .line 63
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v0

    .line 74
    :cond_1
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2, p1, p3, v2}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->logMessageFromNanoapp(ILandroid/hardware/location/NanoAppMessage;Z)V

    .line 81
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda2;

    .line 83
    invoke-direct {p2, p3, p4, p5}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 89
    return v1

    .line 90
    :cond_2
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 102
    if-nez p0, :cond_3

    .line 104
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->logMessageFromNanoapp(ILandroid/hardware/location/NanoAppMessage;Z)V

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    .line 113
    const-string p1, "Cannot send message to unregistered client (host endpoint ID = "

    .line 115
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string p1, ")"

    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 p0, 0x4

    .line 134
    return p0

    .line 135
    :cond_3
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p2, p1, p3, v2}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->logMessageFromNanoapp(ILandroid/hardware/location/NanoAppMessage;Z)V

    .line 142
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    .line 145
    move-result p0

    .line 146
    return p0
.end method

.method public final registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .locals 16

    .line 1
    move-object/from16 v14, p0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->getHostEndPointId()S

    .line 7
    move-result v0

    .line 8
    new-instance v15, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 10
    iget-object v2, v14, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContext:Landroid/content/Context;

    .line 12
    iget-object v3, v14, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 14
    const/4 v10, 0x0

    .line 15
    const-wide/16 v11, 0x0

    .line 17
    move-object v1, v15

    .line 18
    move-object/from16 v4, p0

    .line 20
    move-object/from16 v5, p1

    .line 22
    move v6, v0

    .line 23
    move-object/from16 v7, p2

    .line 25
    move-object/from16 v8, p3

    .line 27
    move-object/from16 v9, p4

    .line 29
    move-object/from16 v13, p5

    .line 31
    invoke-direct/range {v1 .. v13}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V

    .line 34
    iget-object v1, v14, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, v14, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 45
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    .line 47
    invoke-virtual {v15}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-direct {v1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;-><init>(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    iget-object v0, v15, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

    .line 61
    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0, v15, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    :cond_0
    const-string v0, "ContextHubClientManager"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    const-string v2, "Registered client with host endpoint ID "

    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    iget-short v2, v15, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {v15}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    :catch_0
    const-string v0, "ContextHubClientManager"

    .line 98
    const-string v1, "Failed to attach death recipient to client"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v15}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->close()V

    .line 106
    const/4 v0, 0x0

    .line 107
    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "Registration History:"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 60
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    .line 63
    move-result-object p0

    .line 64
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method public final unregisterClient(S)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x1

    .line 26
    :goto_0
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    .line 28
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v2, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;-><init>(Ljava/lang/String;I)V

    .line 35
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 37
    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    const-string v0, "ContextHubClientManager"

    .line 52
    if-eqz p0, :cond_2

    .line 54
    const-string p0, "Unregistered client with host endpoint ID "

    .line 56
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string p0, "Cannot unregister non-existing client with host endpoint ID "

    .line 62
    invoke-static {p1, p0, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_1
    return-void
.end method
