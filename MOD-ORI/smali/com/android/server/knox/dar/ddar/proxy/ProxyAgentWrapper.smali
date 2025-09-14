.class public final Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBindPending:Z

.field public final mConnection:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;

.field public final mContext:Landroid/content/Context;

.field public final mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

.field public mIsNotify:Z

.field public mIsReconnection:Z

.field public mIsStale:Z

.field public mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

.field public final mProxyAgentLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public static -$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "KnoxService::ProxyAgentWrapper"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo v0, "triggerRestart"

    .line 9
    .line 10
    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 27
    .line 28
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string/jumbo p0, "skipping triggerRestart because this is a stale object"

    .line 37
    .line 38
    .line 39
    new-array v0, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v2, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;-><init>(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mConnection:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;

    .line 26
    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v1, "KnoxService::ProxyAgentWrapper"

    .line 30
    .line 31
    const-string v2, "ProxyAgentWrapper()"

    .line 32
    .line 33
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 39
    .line 40
    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final connectAsync()Z
    .locals 11

    .line 1
    const-string v0, "Exception: "

    .line 2
    .line 3
    const-string v1, "Can\'t bind to container service "

    .line 4
    .line 5
    const-string/jumbo v2, "service "

    .line 6
    .line 7
    .line 8
    const-string v3, "KnoxService::ProxyAgentWrapper"

    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 11
    .line 12
    invoke-virtual {v4}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const-string/jumbo v5, "try connectAsync : "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x0

    .line 24
    new-array v6, v5, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {v3, v4, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v3

    .line 32
    :try_start_0
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 33
    .line 34
    iget-object v4, v4, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isServiceConnected()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v7, 0x1

    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    const-string p0, "KnoxService::ProxyAgentWrapper"

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " already bound"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-array v1, v5, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    return v7

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    iget-object v8, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mConnection:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;

    .line 87
    .line 88
    new-instance v9, Landroid/os/UserHandle;

    .line 89
    .line 90
    iget-object v10, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 91
    .line 92
    iget v10, v10, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 93
    .line 94
    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 95
    .line 96
    .line 97
    const v10, 0x4000001

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v2, v8, v10, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 105
    .line 106
    if-nez v2, :cond_1

    .line 107
    .line 108
    const-string p0, "KnoxService::ProxyAgentWrapper"

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    new-array v2, v5, [Ljava/lang/Object;

    .line 127
    .line 128
    invoke-static {p0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    :try_start_2
    monitor-exit v3

    .line 132
    return v5

    .line 133
    :catch_0
    move-exception p0

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    monitor-exit v3

    .line 136
    return v7

    .line 137
    :goto_0
    const-string v1, "KnoxService::ProxyAgentWrapper"

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    new-array v2, v5, [Ljava/lang/Object;

    .line 156
    .line 157
    invoke-static {v1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    monitor-exit v3

    .line 164
    return v5

    .line 165
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    throw p0
.end method

.method public final connectSync()Z
    .locals 5

    .line 1
    const-string v0, "KnoxService::ProxyAgentWrapper"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "try connectSync : "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v3, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isServiceConnected()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->connectAsync()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const-string p0, "KnoxService::ProxyAgentWrapper"

    .line 42
    .line 43
    const-string/jumbo v3, "connection to Proxy Agent failed"

    .line 44
    .line 45
    .line 46
    new-array v4, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {p0, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return v1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 58
    .line 59
    const-wide/16 v3, 0xbb8

    .line 60
    .line 61
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 62
    .line 63
    .line 64
    iget-boolean p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    .line 65
    .line 66
    if-nez p0, :cond_1

    .line 67
    .line 68
    const-string p0, "KnoxService::ProxyAgentWrapper"

    .line 69
    .line 70
    const-string/jumbo v1, "thread waken up without notify"

    .line 71
    .line 72
    .line 73
    new-array v3, v2, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-static {p0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    return v2

    .line 80
    :cond_1
    monitor-exit v0

    .line 81
    const/4 p0, 0x1

    .line 82
    return p0

    .line 83
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    return v2
.end method

.method public final disconnect()V
    .locals 4

    .line 1
    const-string v0, "KnoxService::ProxyAgentWrapper"

    .line 2
    .line 3
    const-string/jumbo v1, "disconnect"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isServiceConnected()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mConnection:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const-string p0, "KnoxService::ProxyAgentWrapper"

    .line 36
    .line 37
    const-string v0, "Unbinding to agent done"

    .line 38
    .line 39
    new-array v1, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0
.end method

.method public final isServiceConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final markStale()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "markStale: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v2, "KnoxService::ProxyAgentWrapper"

    .line 20
    .line 21
    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    .line 26
    .line 27
    return-void
.end method

.method public final relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    const-string/jumbo v0, "relay to Service : "

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v3, "KnoxService::ProxyAgentWrapper"

    .line 12
    .line 13
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 17
    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    const-string v0, "SECURE_CLIENT_ID"

    .line 21
    .line 22
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "SECURE_CLIENT_PUB_KEY"

    .line 27
    .line 28
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const v5, 0x25e9423d

    .line 37
    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    if-eq v4, v5, :cond_1

    .line 41
    .line 42
    const v5, 0x2897d36c

    .line 43
    .line 44
    .line 45
    if-eq v4, v5, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v4, "TERMINATE_SECURE_SESSION"

    .line 49
    .line 50
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    move v4, v6

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_4

    .line 60
    :cond_1
    const-string v4, "INITIALIZE_SECURE_SESSION"

    .line 61
    .line 62
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    move v4, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    const/4 v4, -0x1

    .line 71
    :goto_1
    const-string/jumbo v5, "dual_dar_response"

    .line 72
    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    if-eq v4, v6, :cond_3

    .line 77
    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 79
    .line 80
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    iget-object p4, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 86
    .line 87
    invoke-interface {p4, p1, p2, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    new-instance p2, Landroid/os/Bundle;

    .line 92
    .line 93
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    :goto_2
    move-object p0, p2

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    iget-object p4, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 102
    .line 103
    invoke-interface {p4, p1, p2, v0, v2}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance p2, Landroid/os/Bundle;

    .line 108
    .line 109
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :goto_3
    return-object p0

    .line 117
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string p4, "RemoteException: name:"

    .line 120
    .line 121
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p0, " command:"

    .line 136
    .line 137
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    new-array p2, v1, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-static {v3, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    :cond_5
    const/4 p0, 0x0

    .line 156
    return-object p0
.end method
