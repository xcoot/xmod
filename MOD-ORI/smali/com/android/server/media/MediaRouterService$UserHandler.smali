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

    .line 4
    .line 5
    .line 6
    new-instance p3, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    iput p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 22
    .line 23
    const/4 p3, -0x1

    .line 24
    iput p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 29
    .line 30
    new-instance p3, Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iget p2, p2, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    .line 35
    .line 36
    invoke-direct {p3, p1, p0, p0, p2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final checkSelectedRouteState()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v3, v0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_c

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 19
    .line 20
    iget-boolean v3, v0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    iget v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 27
    .line 28
    iget v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    const/4 v6, 0x2

    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    if-eq v0, v4, :cond_3

    .line 35
    .line 36
    if-eq v0, v6, :cond_2

    .line 37
    .line 38
    if-eq v0, v5, :cond_3

    .line 39
    .line 40
    const/4 v7, 0x6

    .line 41
    if-eq v0, v7, :cond_4

    .line 42
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

    .line 50
    .line 51
    if-lt v3, v4, :cond_5

    .line 52
    .line 53
    if-ge v1, v4, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0, v6}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v1, "checkSelectedRouteState: mTriggeredBySmartView="

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTriggeredBySmartView:Z

    .line 68
    .line 69
    const-string v7, "MediaRouterService"

    .line 70
    .line 71
    invoke-static {v7, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 72
    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTriggeredBySmartView:Z

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    return-void

    .line 79
    :cond_6
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 80
    .line 81
    if-eqz v0, :cond_b

    .line 82
    .line 83
    if-eq v0, v4, :cond_9

    .line 84
    .line 85
    if-eq v0, v6, :cond_7

    .line 86
    .line 87
    invoke-virtual {p0, v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_7
    if-eq v3, v6, :cond_8

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v1, "Connected to route: "

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_9
    if-eq v3, v4, :cond_a

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v1, "Connecting to route: "

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_a
    const/4 v0, 0x4

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 143
    .line 144
    .line 145
    :goto_1
    return-void

    .line 146
    :cond_c
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    if-eq v0, v1, :cond_17

    .line 6
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

    .line 12
    .line 13
    .line 14
    goto/16 :goto_18

    .line 15
    .line 16
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
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

    .line 42
    .line 43
    iget-object v2, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    .line 44
    .line 45
    check-cast v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    move v3, v4

    .line 52
    :goto_0
    if-ge v3, v2, :cond_2

    .line 53
    .line 54
    iget-object v5, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    .line 55
    .line 56
    check-cast v5, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 63
    .line 64
    iget-object v6, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_1

    .line 71
    .line 72
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 73
    .line 74
    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    .line 75
    .line 76
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 80
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

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    :goto_1
    if-ge v4, p1, :cond_3

    .line 90
    .line 91
    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/media/IMediaRouterClient;

    .line 98
    .line 99
    invoke-interface {v0, v1}, Landroid/media/IMediaRouterClient;->onGroupRouteSelected(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .line 101
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

    .line 106
    .line 107
    const-string v2, "Failed to call onSelectedRouteChanged. Client probably died."

    .line 108
    .line 109
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    .line 111
    .line 112
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    :goto_3
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_18

    .line 121
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

    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :pswitch_1
    iget p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 131
    .line 132
    const-string v0, "MediaRouterService"

    .line 133
    .line 134
    if-eqz p1, :cond_9

    .line 135
    .line 136
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 137
    .line 138
    if-nez v5, :cond_4

    .line 139
    .line 140
    goto/16 :goto_7

    .line 141
    .line 142
    :cond_4
    if-eq p1, v1, :cond_8

    .line 143
    .line 144
    if-eq p1, v3, :cond_7

    .line 145
    .line 146
    const-string v1, " ms: "

    .line 147
    .line 148
    const/4 v3, 0x3

    .line 149
    if-eq p1, v3, :cond_6

    .line 150
    .line 151
    if-eq p1, v2, :cond_5

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v2, "Selected route timed out while connecting after "

    .line 157
    .line 158
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v2

    .line 165
    iget-wide v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    .line 166
    .line 167
    sub-long/2addr v2, v5

    .line 168
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v2, "Selected route timed out while waiting for connection attempt to begin after "

    .line 190
    .line 191
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 195
    .line 196
    .line 197
    move-result-wide v2

    .line 198
    iget-wide v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    .line 199
    .line 200
    sub-long/2addr v2, v5

    .line 201
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 208
    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v1, "Selected route connection lost: "

    .line 223
    .line 224
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 228
    .line 229
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v1, "Selected route no longer available: "

    .line 243
    .line 244
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 248
    .line 249
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    :goto_6
    iput v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_18

    .line 265
    .line 266
    :cond_9
    :goto_7
    const-string p0, "Handled connection timeout for no reason."

    .line 267
    .line 268
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    goto/16 :goto_18

    .line 272
    .line 273
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 274
    .line 275
    new-instance p1, Landroid/media/MediaRouterClientState;

    .line 276
    .line 277
    invoke-direct {p1}, Landroid/media/MediaRouterClientState;-><init>()V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    move v1, v4

    .line 287
    :goto_8
    if-ge v1, v0, :cond_c

    .line 288
    .line 289
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 296
    .line 297
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    move v5, v4

    .line 304
    :goto_9
    if-ge v5, v3, :cond_b

    .line 305
    .line 306
    iget-object v6, p1, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    .line 307
    .line 308
    iget-object v7, v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    check-cast v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 315
    .line 316
    iget-object v8, v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 317
    .line 318
    if-nez v8, :cond_a

    .line 319
    .line 320
    new-instance v8, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 321
    .line 322
    iget-object v9, v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 323
    .line 324
    invoke-direct {v8, v9}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Landroid/media/MediaRouterClientState$RouteInfo;)V

    .line 325
    .line 326
    .line 327
    iput-object v8, v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 328
    .line 329
    :cond_a
    iget-object v7, v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 330
    .line 331
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    add-int/lit8 v5, v5, 0x1

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 338
    .line 339
    goto :goto_8

    .line 340
    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 341
    .line 342
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 343
    .line 344
    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 345
    :try_start_8
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 346
    .line 347
    iput-object p1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mRouterState:Landroid/media/MediaRouterClientState;

    .line 348
    .line 349
    iget-object p1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    move v1, v4

    .line 356
    :goto_a
    if-ge v1, p1, :cond_d

    .line 357
    .line 358
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 359
    .line 360
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 361
    .line 362
    iget-object v3, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    check-cast v3, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 369
    .line 370
    iget-object v3, v3, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    .line 371
    .line 372
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    add-int/lit8 v1, v1, 0x1

    .line 376
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

    .line 382
    .line 383
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 384
    .line 385
    .line 386
    move-result p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 387
    :goto_b
    if-ge v4, p1, :cond_e

    .line 388
    .line 389
    :try_start_a
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    check-cast v0, Landroid/media/IMediaRouterClient;

    .line 396
    .line 397
    invoke-interface {v0}, Landroid/media/IMediaRouterClient;->onStateChanged()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 398
    .line 399
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

    .line 404
    .line 405
    const-string v1, "Failed to call onStateChanged. Client probably died."

    .line 406
    .line 407
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 408
    .line 409
    .line 410
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 411
    .line 412
    goto :goto_b

    .line 413
    :cond_e
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_18

    .line 419
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

    .line 423
    .line 424
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 425
    .line 426
    .line 427
    throw p1

    .line 428
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v0, Ljava/lang/String;

    .line 431
    .line 432
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 433
    .line 434
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 435
    .line 436
    if-eqz v1, :cond_18

    .line 437
    .line 438
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 439
    .line 440
    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_18

    .line 447
    .line 448
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 449
    .line 450
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 451
    .line 452
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 453
    .line 454
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 455
    .line 456
    if-eqz v0, :cond_18

    .line 457
    .line 458
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 459
    .line 460
    if-eqz v0, :cond_18

    .line 461
    .line 462
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 463
    .line 464
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    :try_start_e
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 468
    .line 469
    invoke-interface {p0, v0, p1}, Landroid/media/IRemoteDisplayProvider;->adjustVolume(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    .line 470
    .line 471
    .line 472
    goto/16 :goto_18

    .line 473
    .line 474
    :catch_2
    move-exception p0

    .line 475
    const-string p1, "RemoteDisplayProvider"

    .line 476
    .line 477
    const-string v0, "Failed to deliver request to adjust display volume."

    .line 478
    .line 479
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .line 481
    .line 482
    goto/16 :goto_18

    .line 483
    .line 484
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v0, Ljava/lang/String;

    .line 487
    .line 488
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 489
    .line 490
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 491
    .line 492
    if-eqz v1, :cond_18

    .line 493
    .line 494
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 495
    .line 496
    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 497
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_18

    .line 503
    .line 504
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 505
    .line 506
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 507
    .line 508
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 509
    .line 510
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 511
    .line 512
    if-eqz v0, :cond_18

    .line 513
    .line 514
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 515
    .line 516
    if-eqz v0, :cond_18

    .line 517
    .line 518
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 519
    .line 520
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    :try_start_f
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 524
    .line 525
    invoke-interface {p0, v0, p1}, Landroid/media/IRemoteDisplayProvider;->setVolume(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3

    .line 526
    .line 527
    .line 528
    goto/16 :goto_18

    .line 529
    .line 530
    :catch_3
    move-exception p0

    .line 531
    const-string p1, "RemoteDisplayProvider"

    .line 532
    .line 533
    const-string v0, "Failed to deliver request to set display volume."

    .line 534
    .line 535
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    .line 537
    .line 538
    goto/16 :goto_18

    .line 539
    .line 540
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast p1, Ljava/lang/String;

    .line 543
    .line 544
    if-eqz p1, :cond_18

    .line 545
    .line 546
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 547
    .line 548
    if-eqz v0, :cond_18

    .line 549
    .line 550
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 551
    .line 552
    iget-object v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    if-eqz p1, :cond_18

    .line 559
    .line 560
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_18

    .line 564
    .line 565
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 566
    .line 567
    check-cast p1, Ljava/lang/String;

    .line 568
    .line 569
    if-eqz p1, :cond_18

    .line 570
    .line 571
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 572
    .line 573
    if-eqz v0, :cond_f

    .line 574
    .line 575
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 576
    .line 577
    iget-object v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 578
    .line 579
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    if-nez v0, :cond_18

    .line 584
    .line 585
    :cond_f
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 586
    .line 587
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    move v1, v4

    .line 592
    :goto_f
    const/4 v2, 0x0

    .line 593
    if-ge v1, v0, :cond_13

    .line 594
    .line 595
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 596
    .line 597
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 602
    .line 603
    iget-object v5, v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 604
    .line 605
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    move v6, v4

    .line 610
    :goto_10
    if-ge v6, v5, :cond_11

    .line 611
    .line 612
    iget-object v7, v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 613
    .line 614
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v7

    .line 618
    check-cast v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 619
    .line 620
    iget-object v8, v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 621
    .line 622
    iget-object v8, v8, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v8

    .line 628
    if-eqz v8, :cond_10

    .line 629
    .line 630
    move-object v2, v7

    .line 631
    goto :goto_11

    .line 632
    :cond_10
    add-int/lit8 v6, v6, 0x1

    .line 633
    .line 634
    goto :goto_10

    .line 635
    :cond_11
    :goto_11
    if-eqz v2, :cond_12

    .line 636
    .line 637
    goto :goto_12

    .line 638
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 639
    .line 640
    goto :goto_f

    .line 641
    :cond_13
    :goto_12
    if-eqz v2, :cond_18

    .line 642
    .line 643
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 644
    .line 645
    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    const-string v0, "Selected route:"

    .line 649
    .line 650
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    const-string v0, "MediaRouterService"

    .line 661
    .line 662
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    iput-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 666
    .line 667
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 668
    .line 669
    .line 670
    iget-object p1, v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 671
    .line 672
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 673
    .line 674
    iget-object v0, v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    .line 675
    .line 676
    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_18

    .line 683
    .line 684
    :pswitch_7
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 685
    .line 686
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 687
    .line 688
    monitor-enter p1

    .line 689
    :try_start_10
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 690
    .line 691
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 692
    .line 693
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 694
    .line 695
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

    .line 701
    .line 702
    iget-object v8, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 703
    .line 704
    iget-object v8, v8, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 705
    .line 706
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v8

    .line 710
    check-cast v8, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 711
    .line 712
    iget v9, v8, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    .line 713
    .line 714
    or-int/2addr v6, v9

    .line 715
    iget-boolean v8, v8, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    .line 716
    .line 717
    or-int/2addr v7, v8

    .line 718
    add-int/lit8 v5, v5, 0x1

    .line 719
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

    .line 725
    .line 726
    if-eqz p1, :cond_15

    .line 727
    .line 728
    if-eqz v7, :cond_16

    .line 729
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

    .line 734
    .line 735
    if-eq p1, v1, :cond_18

    .line 736
    .line 737
    iput v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 738
    .line 739
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 740
    .line 741
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 742
    .line 743
    .line 744
    move-result p1

    .line 745
    :goto_15
    if-ge v4, p1, :cond_18

    .line 746
    .line 747
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 748
    .line 749
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    check-cast v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 754
    .line 755
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 756
    .line 757
    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 758
    .line 759
    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 760
    .line 761
    .line 762
    add-int/lit8 v4, v4, 0x1

    .line 763
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

    .line 768
    .line 769
    if-eqz p1, :cond_18

    .line 770
    .line 771
    iput-boolean v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 772
    .line 773
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 774
    .line 775
    .line 776
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 777
    .line 778
    iget-boolean p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 779
    .line 780
    if-eqz p1, :cond_18

    .line 781
    .line 782
    iput-boolean v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 783
    .line 784
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    .line 785
    .line 786
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    .line 787
    .line 788
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 789
    .line 790
    .line 791
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    .line 792
    .line 793
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 794
    .line 795
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 796
    .line 797
    .line 798
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 799
    .line 800
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 801
    .line 802
    .line 803
    move-result p1

    .line 804
    sub-int/2addr p1, v1

    .line 805
    :goto_17
    if-ltz p1, :cond_18

    .line 806
    .line 807
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 808
    .line 809
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    check-cast v0, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 814
    .line 815
    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->stop()V

    .line 816
    .line 817
    .line 818
    add-int/lit8 p1, p1, -0x1

    .line 819
    .line 820
    goto :goto_17

    .line 821
    :pswitch_9
    iget-boolean p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 822
    .line 823
    if-nez p1, :cond_18

    .line 824
    .line 825
    iput-boolean v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 826
    .line 827
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 828
    .line 829
    iget-boolean p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 830
    .line 831
    if-nez p1, :cond_18

    .line 832
    .line 833
    iput-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 834
    .line 835
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 836
    .line 837
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 838
    .line 839
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 840
    .line 841
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 842
    .line 843
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    .line 844
    .line 845
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 846
    .line 847
    .line 848
    move-result-object v7

    .line 849
    const-string/jumbo p1, "package"

    .line 850
    .line 851
    .line 852
    invoke-virtual {v7, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    .line 856
    .line 857
    iget-object v5, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    .line 858
    .line 859
    new-instance v6, Landroid/os/UserHandle;

    .line 860
    .line 861
    iget p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    .line 862
    .line 863
    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 864
    .line 865
    .line 866
    const/4 v8, 0x0

    .line 867
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 868
    .line 869
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 870
    .line 871
    .line 872
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    .line 873
    .line 874
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 875
    .line 876
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 877
    .line 878
    .line 879
    goto :goto_18

    .line 880
    :cond_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 881
    .line 882
    check-cast p1, Ljava/lang/Boolean;

    .line 883
    .line 884
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 885
    .line 886
    .line 887
    move-result p1

    .line 888
    iput-boolean p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTriggeredBySmartView:Z

    .line 889
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

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final unselectSelectedRoute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Unselected route:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "MediaRouterService"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final updateConnectionTimeout(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_4

    .line 4
    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-eq p1, v0, :cond_3

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p1, v0, :cond_3

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-wide/32 v2, 0xea60

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-wide/16 v2, 0x1388

    .line 41
    .line 42
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 47
    .line 48
    .line 49
    :cond_4
    :goto_0
    return-void
.end method
