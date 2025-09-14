.class public final Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 3
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 5
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "onBindingDied : "

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 26
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 28
    monitor-enter p1

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 34
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 36
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 3
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 5
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "onNullBinding : "

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 26
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 28
    monitor-enter p1

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 34
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 36
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 3
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 5
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "Knox Proxy Agent started : "

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v2, "KnoxService::ProxyAgentWrapper: "

    .line 26
    const-string v3, "\n"

    .line 28
    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    const-class v3, Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    .line 34
    monitor-enter v3

    .line 35
    monitor-exit v3

    .line 36
    const-string v3, ""

    .line 38
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 46
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 48
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 56
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 58
    monitor-enter p1

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 61
    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 64
    move-result-object p2

    .line 65
    iput-object p2, v2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 67
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 69
    iget-object v2, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 71
    if-nez v2, :cond_0

    .line 73
    const-string p0, "KnoxService::ProxyAgentWrapper"

    .line 75
    const-string/jumbo p2, "onServiceConnected: Unable to find Knox Proxy Agent!"

    .line 78
    new-array v0, v1, [Ljava/lang/Object;

    .line 80
    invoke-static {p0, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    monitor-exit p1

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    iput-boolean v1, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 89
    iput-boolean v0, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    .line 91
    iget-object p2, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 96
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 99
    iget-boolean p2, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    .line 101
    if-eqz p2, :cond_2

    .line 103
    const-string p2, "KnoxService::ProxyAgentWrapper"

    .line 105
    :try_start_1
    iget-object v0, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 107
    if-eqz v0, :cond_1

    .line 109
    const-string/jumbo v0, "sending onAgentReconnected signal"

    .line 112
    new-array v2, v1, [Ljava/lang/Object;

    .line 114
    invoke-static {p2, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 119
    invoke-interface {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->onAgentReconnected()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    const-string v3, "RemoteException: name:"

    .line 128
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 133
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 135
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string p1, " -- onAgentReconnected"

    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    new-array v2, v1, [Ljava/lang/Object;

    .line 153
    invoke-static {p2, p1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 159
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 161
    iput-boolean v1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 165
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 167
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 169
    const/4 p2, 0x4

    .line 170
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 175
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 177
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 179
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 181
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void

    .line 189
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 3
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 5
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "Knox Proxy Agent disconnected : "

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 25
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 33
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 35
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    .line 38
    monitor-exit p1

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method
