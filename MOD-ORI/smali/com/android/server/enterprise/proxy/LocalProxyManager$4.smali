.class public final Lcom/android/server/enterprise/proxy/LocalProxyManager$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 5
    .line 6
    check-cast p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "\""

    .line 38
    .line 39
    const-string v1, ""

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 46
    .line 47
    check-cast v0, Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/samsung/android/knox/net/ProxyProperties;

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v1

    .line 61
    :try_start_0
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    .line 62
    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleLocalProxyServer()V

    .line 75
    .line 76
    .line 77
    :cond_4
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p0
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    .line 25
    .line 26
    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    .line 31
    .line 32
    check-cast v2, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/samsung/android/knox/net/ProxyProperties;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 49
    .line 50
    iput-object v0, p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    .line 51
    .line 52
    :cond_0
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter p1

    .line 55
    :try_start_0
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    .line 56
    .line 57
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleLocalProxyServer()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_1
    :goto_0
    return-void
.end method
