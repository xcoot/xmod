.class public final Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/AuthStateDenialTimer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 6
    iget-boolean v1, v0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mCancelled:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    monitor-exit p1

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-wide v0, v0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mStopTimeInFuture:J

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    move-result-wide v2

    .line 20
    sub-long/2addr v0, v2

    .line 21
    const-wide/16 v2, 0x0

    .line 23
    cmp-long v2, v0, v2

    .line 25
    if-gtz v2, :cond_1

    .line 27
    iget-object p0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 29
    iget-object v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mClient:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 31
    iget-wide v1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mNanoAppId:J

    .line 33
    iget-object p0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 35
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    iget-object v3, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v4

    .line 42
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 50
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    if-eqz v3, :cond_2

    .line 53
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 56
    move-result-object v3

    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v4, 0x1

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;ZZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :try_start_4
    throw v0

    .line 66
    :cond_1
    const/4 v2, 0x1

    .line 67
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    :cond_2
    :goto_0
    monitor-exit p1

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    throw p0
.end method
