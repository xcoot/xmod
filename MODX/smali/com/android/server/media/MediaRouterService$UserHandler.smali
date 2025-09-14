.class public final Lcom/android/server/media/MediaRouterService$UserHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;
.implements Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;


# instance fields
.field public mClientStateUpdateScheduled:Z

.field public mConnectionPhase:I

.field public mConnectionTimeoutReason:I

.field public mConnectionTimeoutStartTime:J

.field public mDiscoveryMode:I

.field public final mProviderRecords:Ljava/util/ArrayList;

.field public mRunning:Z

.field public mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

.field public final mService:Lcom/android/server/media/MediaRouterService;

.field public final mTempClients:Ljava/util/ArrayList;

.field public mTriggeredBySmartView:Z

.field public final mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

.field public final mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/os/Looper;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 13
    new-instance p3, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 20
    const/4 p3, 0x0

    .line 21
    iput p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 23
    const/4 p3, -0x1

    .line 24
    iput p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 26
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 28
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 30
    new-instance p3, Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 32
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    .line 34
    iget p2, p2, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    .line 36
    invoke-direct {p3, p1, p0, p0, p2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V

    .line 39
    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 41
    return-void
.end method


# virtual methods
.method public final checkSelectedRouteState()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 7
    iput v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v3, v0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_c

    .line 18
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 20
    iget-boolean v3, v0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 22
    if-nez v3, :cond_1

    .line 24
    goto/16 :goto_2

    .line 26
    :cond_1
    iget v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 28
    iget v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 30
    const/4 v5, 0x3

    .line 31
    const/4 v6, 0x2

    .line 32
    if-eqz v0, :cond_4

    .line 34
    if-eq v0, v4, :cond_3

    .line 36
    if-eq v0, v6, :cond_2

    .line 38
    if-eq v0, v5, :cond_3

    .line 40
    const/4 v7, 0x6

    .line 41
    if-eq v0, v7, :cond_4

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v1, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    move v1, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_4
    move v1, v6

    .line 49
    :goto_0
    iput v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 51
    if-lt v3, v4, :cond_5

    .line 53
    if-ge v1, v4, :cond_5

    .line 55
    invoke-virtual {p0, v6}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 58
    return-void

    .line 59
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v1, "checkSelectedRouteState: mTriggeredBySmartView="

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTriggeredBySmartView:Z

    .line 69
    const-string v7, "MediaRouterService"

    .line 71
    invoke-static {v7, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 74
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTriggeredBySmartView:Z

    .line 76
    if-eqz v0, :cond_6

    .line 78
    return-void

    .line 79
    :cond_6
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 81
    if-eqz v0, :cond_b

    .line 83
    if-eq v0, v4, :cond_9

    .line 85
    if-eq v0, v6, :cond_7

    .line 87
    invoke-virtual {p0, v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 90
    goto :goto_1

    .line 91
    :cond_7
    if-eq v3, v6, :cond_8

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "Connected to route: "

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 115
    goto :goto_1

    .line 116
    :cond_9
    if-eq v3, v4, :cond_a

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "Connecting to route: "

    .line 122
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_a
    const/4 v0, 0x4

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 141
    goto :goto_1

    .line 142
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 145
    :goto_1
    return-void

    .line 146
    :cond_c
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 149
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/16 v1, 0x14

    .line 5
    if-eq v0, v1, :cond_17

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x4

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 14
    goto/16 :goto_18

    .line 16
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    check-cast p1, Ljava/lang/String;

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 22
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 27
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 35
    if-nez p1, :cond_0

    .line 37
    monitor-exit v0

    .line 38
    goto :goto_3

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_4

    .line 41
    :cond_0
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mSelectedRouteId:Ljava/lang/String;

    .line 43
    iget-object v2, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    .line 45
    check-cast v2, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v2

    .line 51
    move v3, v4

    .line 52
    :goto_0
    if-ge v3, v2, :cond_2

    .line 54
    iget-object v5, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    .line 56
    check-cast v5, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 64
    iget-object v6, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 66
    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_1

    .line 72
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 74
    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    .line 76
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    :goto_1
    if-ge v4, p1, :cond_3

    .line 91
    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/media/IMediaRouterClient;

    .line 99
    invoke-interface {v0, v1}, Landroid/media/IMediaRouterClient;->onGroupRouteSelected(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    goto :goto_2

    .line 103
    :catchall_1
    move-exception p1

    .line 104
    goto :goto_5

    .line 105
    :catch_0
    :try_start_4
    const-string v0, "MediaRouterService"

    .line 107
    const-string v2, "Failed to call onSelectedRouteChanged. Client probably died."

    .line 109
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    :goto_3
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 120
    goto/16 :goto_18

    .line 122
    :goto_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 124
    :goto_5
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 129
    throw p1

    .line 130
    :pswitch_1
    iget p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 132
    const-string v0, "MediaRouterService"

    .line 134
    if-eqz p1, :cond_9

    .line 136
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 138
    if-nez v5, :cond_4

    .line 140
    goto/16 :goto_7

    .line 142
    :cond_4
    if-eq p1, v1, :cond_8

    .line 144
    if-eq p1, v3, :cond_7

    .line 146
    const-string v1, " ms: "

    .line 148
    const/4 v3, 0x3

    .line 149
    if-eq p1, v3, :cond_6

    .line 151
    if-eq p1, v2, :cond_5

    .line 153
    goto :goto_6

    .line 154
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 156
    const-string v2, "Selected route timed out while connecting after "

    .line 158
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 164
    move-result-wide v2

    .line 165
    iget-wide v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    .line 167
    sub-long/2addr v2, v5

    .line 168
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    goto :goto_6

    .line 187
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 189
    const-string v2, "Selected route timed out while waiting for connection attempt to begin after "

    .line 191
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 197
    move-result-wide v2

    .line 198
    iget-wide v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    .line 200
    sub-long/2addr v2, v5

    .line 201
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    goto :goto_6

    .line 220
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 222
    const-string v1, "Selected route connection lost: "

    .line 224
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 229
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object p1

    .line 236
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    goto :goto_6

    .line 240
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 242
    const-string v1, "Selected route no longer available: "

    .line 244
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 249
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object p1

    .line 256
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_6
    iput v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 261
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 264
    goto/16 :goto_18

    .line 266
    :cond_9
    :goto_7
    const-string p0, "Handled connection timeout for no reason."

    .line 268
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    goto/16 :goto_18

    .line 273
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 275
    new-instance p1, Landroid/media/MediaRouterClientState;

    .line 277
    invoke-direct {p1}, Landroid/media/MediaRouterClientState;-><init>()V

    .line 280
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 285
    move-result v0

    .line 286
    move v1, v4

    .line 287
    :goto_8
    if-ge v1, v0, :cond_c

    .line 289
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    move-result-object v2

    .line 295
    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 297
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 299
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 302
    move-result v3

    .line 303
    move v5, v4

    .line 304
    :goto_9
    if-ge v5, v3, :cond_b

    .line 306
    iget-object v6, p1, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    .line 308
    iget-object v7, v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 310
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    move-result-object v7

    .line 314
    check-cast v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 316
    iget-object v8, v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 318
    if-nez v8, :cond_a

    .line 320
    new-instance v8, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 322
    iget-object v9, v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 324
    invoke-direct {v8, v9}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Landroid/media/MediaRouterClientState$RouteInfo;)V

    .line 327
    iput-object v8, v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 329
    :cond_a
    iget-object v7, v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 331
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v5, v5, 0x1

    .line 336
    goto :goto_9

    .line 337
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 339
    goto :goto_8

    .line 340
    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 342
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 344
    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 345
    :try_start_8
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 347
    iput-object p1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mRouterState:Landroid/media/MediaRouterClientState;

    .line 349
    iget-object p1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 351
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 354
    move-result p1

    .line 355
    move v1, v4

    .line 356
    :goto_a
    if-ge v1, p1, :cond_d

    .line 358
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 360
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 362
    iget-object v3, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 364
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 367
    move-result-object v3

    .line 368
    check-cast v3, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 370
    iget-object v3, v3, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    .line 372
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v1, v1, 0x1

    .line 377
    goto :goto_a

    .line 378
    :catchall_2
    move-exception p1

    .line 379
    goto :goto_d

    .line 380
    :cond_d
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 381
    :try_start_9
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 383
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 386
    move-result p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 387
    :goto_b
    if-ge v4, p1, :cond_e

    .line 389
    :try_start_a
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 391
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    move-result-object v0

    .line 395
    check-cast v0, Landroid/media/IMediaRouterClient;

    .line 397
    invoke-interface {v0}, Landroid/media/IMediaRouterClient;->onStateChanged()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 400
    goto :goto_c

    .line 401
    :catchall_3
    move-exception p1

    .line 402
    goto :goto_e

    .line 403
    :catch_1
    :try_start_b
    const-string v0, "MediaRouterService"

    .line 405
    const-string v1, "Failed to call onStateChanged. Client probably died."

    .line 407
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 410
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 412
    goto :goto_b

    .line 413
    :cond_e
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 415
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 418
    goto/16 :goto_18

    .line 420
    :goto_d
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 421
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 422
    :goto_e
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 424
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 427
    throw p1

    .line 428
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 430
    check-cast v0, Ljava/lang/String;

    .line 432
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 434
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 436
    if-eqz v1, :cond_18

    .line 438
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 440
    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_18

    .line 448
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 450
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 452
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 454
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 456
    if-eqz v0, :cond_18

    .line 458
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 460
    if-eqz v0, :cond_18

    .line 462
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 464
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    :try_start_e
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 469
    invoke-interface {p0, v0, p1}, Landroid/media/IRemoteDisplayProvider;->adjustVolume(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    .line 472
    goto/16 :goto_18

    .line 474
    :catch_2
    move-exception p0

    .line 475
    const-string p1, "RemoteDisplayProvider"

    .line 477
    const-string v0, "Failed to deliver request to adjust display volume."

    .line 479
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    goto/16 :goto_18

    .line 484
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 486
    check-cast v0, Ljava/lang/String;

    .line 488
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 490
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 492
    if-eqz v1, :cond_18

    .line 494
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 496
    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_18

    .line 504
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 506
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 508
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 510
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 512
    if-eqz v0, :cond_18

    .line 514
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 516
    if-eqz v0, :cond_18

    .line 518
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 520
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    :try_start_f
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 525
    invoke-interface {p0, v0, p1}, Landroid/media/IRemoteDisplayProvider;->setVolume(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3

    .line 528
    goto/16 :goto_18

    .line 530
    :catch_3
    move-exception p0

    .line 531
    const-string p1, "RemoteDisplayProvider"

    .line 533
    const-string v0, "Failed to deliver request to set display volume."

    .line 535
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    goto/16 :goto_18

    .line 540
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 542
    check-cast p1, Ljava/lang/String;

    .line 544
    if-eqz p1, :cond_18

    .line 546
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 548
    if-eqz v0, :cond_18

    .line 550
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 552
    iget-object v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 554
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    move-result p1

    .line 558
    if-eqz p1, :cond_18

    .line 560
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 563
    goto/16 :goto_18

    .line 565
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 567
    check-cast p1, Ljava/lang/String;

    .line 569
    if-eqz p1, :cond_18

    .line 571
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 573
    if-eqz v0, :cond_f

    .line 575
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 577
    iget-object v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 579
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    move-result v0

    .line 583
    if-nez v0, :cond_18

    .line 585
    :cond_f
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 587
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 590
    move-result v0

    .line 591
    move v1, v4

    .line 592
    :goto_f
    const/4 v2, 0x0

    .line 593
    if-ge v1, v0, :cond_13

    .line 595
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 597
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 600
    move-result-object v3

    .line 601
    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 603
    iget-object v5, v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 605
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 608
    move-result v5

    .line 609
    move v6, v4

    .line 610
    :goto_10
    if-ge v6, v5, :cond_11

    .line 612
    iget-object v7, v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 614
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 617
    move-result-object v7

    .line 618
    check-cast v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 620
    iget-object v8, v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 622
    iget-object v8, v8, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 624
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    move-result v8

    .line 628
    if-eqz v8, :cond_10

    .line 630
    move-object v2, v7

    .line 631
    goto :goto_11

    .line 632
    :cond_10
    add-int/lit8 v6, v6, 0x1

    .line 634
    goto :goto_10

    .line 635
    :cond_11
    :goto_11
    if-eqz v2, :cond_12

    .line 637
    goto :goto_12

    .line 638
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 640
    goto :goto_f

    .line 641
    :cond_13
    :goto_12
    if-eqz v2, :cond_18

    .line 643
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    .line 648
    const-string v0, "Selected route:"

    .line 650
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    move-result-object p1

    .line 660
    const-string v0, "MediaRouterService"

    .line 662
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iput-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 667
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 670
    iget-object p1, v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 672
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 674
    iget-object v0, v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    .line 676
    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 682
    goto/16 :goto_18

    .line 684
    :pswitch_7
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 686
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 688
    monitor-enter p1

    .line 689
    :try_start_10
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 691
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 693
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 696
    move-result v0

    .line 697
    move v5, v4

    .line 698
    move v6, v5

    .line 699
    move v7, v6

    .line 700
    :goto_13
    if-ge v5, v0, :cond_14

    .line 702
    iget-object v8, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 704
    iget-object v8, v8, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 706
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 709
    move-result-object v8

    .line 710
    check-cast v8, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 712
    iget v9, v8, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    .line 714
    or-int/2addr v6, v9

    .line 715
    iget-boolean v8, v8, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    .line 717
    or-int/2addr v7, v8

    .line 718
    add-int/lit8 v5, v5, 0x1

    .line 720
    goto :goto_13

    .line 721
    :catchall_4
    move-exception p0

    .line 722
    goto :goto_16

    .line 723
    :cond_14
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 724
    and-int/lit8 p1, v6, 0x4

    .line 726
    if-eqz p1, :cond_15

    .line 728
    if-eqz v7, :cond_16

    .line 730
    move v1, v3

    .line 731
    goto :goto_14

    .line 732
    :cond_15
    move v1, v4

    .line 733
    :cond_16
    :goto_14
    iget p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 735
    if-eq p1, v1, :cond_18

    .line 737
    iput v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 739
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 741
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 744
    move-result p1

    .line 745
    :goto_15
    if-ge v4, p1, :cond_18

    .line 747
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 749
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 752
    move-result-object v0

    .line 753
    check-cast v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 755
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 757
    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 759
    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 762
    add-int/lit8 v4, v4, 0x1

    .line 764
    goto :goto_15

    .line 765
    :goto_16
    :try_start_11
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 766
    throw p0

    .line 767
    :pswitch_8
    iget-boolean p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 769
    if-eqz p1, :cond_18

    .line 771
    iput-boolean v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 773
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 776
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 778
    iget-boolean p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 780
    if-eqz p1, :cond_18

    .line 782
    iput-boolean v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 784
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    .line 786
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    .line 788
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 791
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    .line 793
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 795
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 798
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 800
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 803
    move-result p1

    .line 804
    sub-int/2addr p1, v1

    .line 805
    :goto_17
    if-ltz p1, :cond_18

    .line 807
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 809
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 812
    move-result-object v0

    .line 813
    check-cast v0, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 815
    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->stop()V

    .line 818
    add-int/lit8 p1, p1, -0x1

    .line 820
    goto :goto_17

    .line 821
    :pswitch_9
    iget-boolean p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 823
    if-nez p1, :cond_18

    .line 825
    iput-boolean v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 827
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 829
    iget-boolean p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 831
    if-nez p1, :cond_18

    .line 833
    iput-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 835
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 837
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 839
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 841
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 843
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    .line 845
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 848
    move-result-object v7

    .line 849
    const-string/jumbo p1, "package"

    .line 852
    invoke-virtual {v7, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 855
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    .line 857
    iget-object v5, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    .line 859
    new-instance v6, Landroid/os/UserHandle;

    .line 861
    iget p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    .line 863
    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 866
    const/4 v8, 0x0

    .line 867
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 869
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 872
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    .line 874
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 876
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 879
    goto :goto_18

    .line 880
    :cond_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 882
    check-cast p1, Ljava/lang/Boolean;

    .line 884
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 887
    move-result p1

    .line 888
    iput-boolean p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTriggeredBySmartView:Z

    .line 890
    :cond_18
    :goto_18
    return-void

    .line 891
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final scheduleUpdateClientState()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 8
    const/16 v0, 0x8

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 13
    :cond_0
    return-void
.end method

.method public final unselectSelectedRoute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "Unselected route:"

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "MediaRouterService"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 28
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 30
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 36
    iput-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 38
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 44
    :cond_0
    return-void
.end method

.method public final updateConnectionTimeout(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 3
    if-eq p1, v0, :cond_4

    .line 5
    const/16 v1, 0x9

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    :cond_0
    iput p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    .line 20
    const/4 v0, 0x1

    .line 21
    if-eq p1, v0, :cond_3

    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p1, v0, :cond_3

    .line 26
    const/4 v0, 0x3

    .line 27
    if-eq p1, v0, :cond_2

    .line 29
    const/4 v0, 0x4

    .line 30
    if-eq p1, v0, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-wide/32 v2, 0xea60

    .line 36
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-wide/16 v2, 0x1388

    .line 42
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    :cond_4
    :goto_0
    return-void
.end method
