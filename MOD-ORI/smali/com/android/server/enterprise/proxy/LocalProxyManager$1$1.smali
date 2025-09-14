.class public final Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final setProxyPort(I)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 7
    .line 8
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v0, "LocalProxyManager"

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Proxy bound at port "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 38
    .line 39
    const-string v1, "Set local proxy port "

    .line 40
    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    const-string v2, "LocalProxyManager"

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 63
    .line 64
    invoke-static {v2, p1}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sput-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    .line 69
    .line 70
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxyValues()V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    const-string p1, "LocalProxyManager"

    .line 85
    .line 86
    const-string v1, "Updating enterprise wifi proxy values"

    .line 87
    .line 88
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    .line 92
    .line 93
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    .line 94
    .line 95
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_0
    monitor-exit p0

    .line 99
    goto :goto_1

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    goto :goto_0

    .line 102
    :catchall_1
    move-exception p1

    .line 103
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    :goto_0
    monitor-exit p0

    .line 106
    throw p1

    .line 107
    :cond_1
    const-string p0, "LocalProxyManager"

    .line 108
    .line 109
    const-string p1, "Received invalid port from Local Proxy, proxy will not be operational"

    .line 110
    .line 111
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :goto_1
    return-void
.end method
