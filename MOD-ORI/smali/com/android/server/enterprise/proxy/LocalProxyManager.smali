.class public final Lcom/android/server/enterprise/proxy/LocalProxyManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mNetworkCallbackLock:Ljava/lang/Object;

.field public static final mProxyLock:Ljava/lang/Object;

.field public static volatile sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

.field public static volatile sGlobalProxy:Lcom/samsung/android/knox/net/ProxyProperties;

.field public static volatile sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public static volatile sIsLocalProxyServerRunning:Z

.field public static volatile sIsNetworkCallbackRunning:Z

.field public static volatile sLocalProxyInfo:Landroid/net/ProxyInfo;

.field public static final sLocalProxyManagerLock:Ljava/lang/Object;

.field public static volatile sPendinOperationsList:Ljava/util/List;

.field public static volatile sWifiBackCompatCredentialsMapCache:Ljava/util/Map;

.field public static volatile sWifiProxyInfoMapCache:Ljava/util/Map;


# instance fields
.field public mCallbackService:Lcom/android/net/IProxyCallback;

.field public mConnectedWifiSsid:Ljava/lang/String;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mLastCredentialsCallback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

.field public mLastCredentialsResponse:Landroid/os/Bundle;

.field public mNetworkCallback:Lcom/android/server/enterprise/proxy/LocalProxyManager$4;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mProxyConnection:Landroid/content/ServiceConnection;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyManagerLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiBackCompatCredentialsMapCache:Ljava/util/Map;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    .line 31
    .line 32
    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    .line 33
    .line 34
    new-instance v0, Ljava/lang/Object;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallbackLock:Ljava/lang/Object;

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    .line 47
    .line 48
    return-void
.end method

.method public static getAppUidFromTcpFile(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "LocalProxyManager"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    .line 9
    .line 10
    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 14
    .line 15
    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v5, "\n"

    .line 34
    .line 35
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/4 v6, 0x1

    .line 43
    add-int/2addr v4, v6

    .line 44
    if-le v4, v6, :cond_0

    .line 45
    .line 46
    const-string v7, " +"

    .line 47
    .line 48
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const/4 v7, 0x2

    .line 53
    aget-object v8, v5, v7

    .line 54
    .line 55
    const-string v9, ":"

    .line 56
    .line 57
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    aget-object v7, v5, v7

    .line 62
    .line 63
    add-int/2addr v8, v6

    .line 64
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_0

    .line 77
    .line 78
    const/16 p0, 0x8

    .line 79
    .line 80
    aget-object v1, v5, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_5

    .line 89
    :catch_0
    move-exception p0

    .line 90
    goto :goto_3

    .line 91
    :catch_1
    move-exception p0

    .line 92
    goto :goto_4

    .line 93
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_1
    move-exception v2

    .line 98
    :try_start_4
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 102
    :goto_3
    const-string v2, "Failed to read "

    .line 103
    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v3, "File "

    .line 118
    .line 119
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p1, " not found."

    .line 126
    .line 127
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    :goto_5
    return-object v1
.end method

.method public static getAuthConfigOrNull(Lcom/samsung/android/knox/net/ProxyProperties;Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eq p1, p2, :cond_2

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_3
    return-object v1
.end method

.method public static getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sGlobalProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/LocalProxyManager;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyManagerLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallback:Lcom/android/server/enterprise/proxy/LocalProxyManager$4;

    .line 26
    .line 27
    const-string v2, "LocalProxyManager"

    .line 28
    .line 29
    const-string v3, "Initializing LocalProxyManager"

    .line 30
    .line 31
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iput-object p0, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-class v2, Landroid/app/NotificationManager;

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroid/app/NotificationManager;

    .line 43
    .line 44
    iput-object p0, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 45
    .line 46
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit v1

    .line 52
    goto :goto_2

    .line 53
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0

    .line 55
    :cond_1
    :goto_2
    return-object v0
.end method

.method public static isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method


# virtual methods
.method public final declared-synchronized bindProxyService()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "com.android.proxyhandler"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "com.android.proxyhandler.ProxyService"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const v3, 0x40000005    # 2.0000012f

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0

    .line 36
    throw v0
.end method

.method public final clearProxyServerCache()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final getConnectivityManagerService()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v1, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getProxyCredentials(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, " port "

    .line 11
    .line 12
    const-string v4, "LocalProxyManager"

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v0, "Reading auth config for global proxy "

    .line 17
    .line 18
    invoke-static {p1, v0, p2, v3, v4}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1, p2, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAuthConfigOrNull(Lcom/samsung/android/knox/net/ProxyProperties;Ljava/lang/String;I)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v1, "Reading auth config for default proxy "

    .line 29
    .line 30
    invoke-static {p1, v1, p2, v3, v4}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p2, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAuthConfigOrNull(Lcom/samsung/android/knox/net/ProxyProperties;Ljava/lang/String;I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v0, v2

    .line 39
    :goto_0
    const-string v1, ":"

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_4

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/samsung/android/knox/net/AuthConfig;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    if-ne v4, p1, :cond_3

    .line 88
    .line 89
    invoke-static {v5, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    move-object v2, p0

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    sget-object v6, Lcom/samsung/android/knox/net/AuthConfig;->ANY_HOST:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_2

    .line 102
    .line 103
    sget v3, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    .line 104
    .line 105
    if-ne v4, v3, :cond_2

    .line 106
    .line 107
    invoke-static {v5, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move-object v2, v0

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    sget-object p2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiBackCompatCredentialsMapCache:Ljava/util/Map;

    .line 121
    .line 122
    check-cast p2, Landroid/util/ArrayMap;

    .line 123
    .line 124
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    check-cast p0, Lcom/samsung/android/knox/net/AuthConfig;

    .line 129
    .line 130
    if-eqz p0, :cond_5

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-nez p2, :cond_5

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-nez p2, :cond_5

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_6

    .line 178
    .line 179
    return-object p0

    .line 180
    :cond_6
    :goto_2
    return-object v2
.end method

.method public final getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v1, Landroid/net/wifi/WifiManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final handleLocalProxyServer()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "LocalProxyManager"

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_6

    .line 56
    .line 57
    const-string v1, "Set global PAC proxy"

    .line 58
    .line 59
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    sget-boolean v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    :cond_1
    const-string v0, "Starting enterprise local proxy"

    .line 81
    .line 82
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    .line 86
    .line 87
    const/4 v1, 0x2

    .line 88
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    sget-boolean v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-nez v2, :cond_4

    .line 104
    .line 105
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_3

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    const-string v0, "Stopping enterprise local proxy"

    .line 113
    .line 114
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    .line 118
    .line 119
    const/4 v1, 0x6

    .line 120
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 121
    .line 122
    .line 123
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    :goto_0
    sget-boolean v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    .line 128
    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    const-string v0, "Updating proxy values"

    .line 134
    .line 135
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    const-string v0, "Updating enterprise wifi proxy values"

    .line 149
    .line 150
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    .line 154
    .line 155
    const/4 v1, 0x1

    .line 156
    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    .line 157
    .line 158
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    if-nez v0, :cond_6

    .line 163
    .line 164
    if-nez v1, :cond_6

    .line 165
    .line 166
    const-string v0, "Clearing proxy values"

    .line 167
    .line 168
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    .line 172
    .line 173
    .line 174
    :cond_6
    :goto_1
    return-void
.end method

.method public final updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V
    .locals 2

    .line 1
    const-string v0, "LocalProxyManager"

    .line 2
    .line 3
    const-string v1, "Updating global proxy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sput-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sGlobalProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleLocalProxyServer()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p0
.end method

.method public final updateGlobalProxyValues()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v0, "LocalProxyManager"

    .line 12
    .line 13
    const-string v1, "Updating enterprise global proxy values"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v0, "LocalProxyManager"

    .line 26
    .line 27
    const-string v1, "Updating enterprise global proxy value"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit p0

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    monitor-exit p0

    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_2
    return-void
.end method

.method public final declared-synchronized updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public final updateWifiProxy(Ljava/util/Map;)V
    .locals 3

    .line 1
    const-string v0, "LocalProxyManager"

    .line 2
    .line 3
    const-string v1, "Updating wifi proxy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_2

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 16
    .line 17
    check-cast v0, Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 53
    .line 54
    check-cast v1, Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    sput-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    .line 61
    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0

    .line 76
    :cond_2
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda1;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-direct {v0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    sget-boolean p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    .line 86
    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 90
    .line 91
    check-cast p1, Landroid/util/ArrayMap;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    monitor-enter p0

    .line 100
    :try_start_2
    sget-boolean p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    monitor-exit p0

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    :try_start_3
    const-string p1, "LocalProxyManager"

    .line 107
    .line 108
    const-string v0, "Register proxy network callback for wifi"

    .line 109
    .line 110
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    new-instance p1, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    .line 114
    .line 115
    const/4 v0, 0x4

    .line 116
    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    .line 121
    .line 122
    monitor-exit p0

    .line 123
    goto :goto_2

    .line 124
    :catchall_1
    move-exception p1

    .line 125
    monitor-exit p0

    .line 126
    throw p1

    .line 127
    :cond_4
    sget-boolean p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    .line 128
    .line 129
    if-eqz p1, :cond_6

    .line 130
    .line 131
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 132
    .line 133
    check-cast p1, Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_6

    .line 140
    .line 141
    monitor-enter p0

    .line 142
    :try_start_4
    sget-boolean p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 143
    .line 144
    if-nez p1, :cond_5

    .line 145
    .line 146
    monitor-exit p0

    .line 147
    goto :goto_2

    .line 148
    :cond_5
    :try_start_5
    const-string p1, "LocalProxyManager"

    .line 149
    .line 150
    const-string v0, "Unregister proxy network callback for wifi"

    .line 151
    .line 152
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    new-instance p1, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    .line 156
    .line 157
    const/4 v0, 0x0

    .line 158
    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 162
    .line 163
    .line 164
    monitor-exit p0

    .line 165
    goto :goto_2

    .line 166
    :catchall_2
    move-exception p1

    .line 167
    monitor-exit p0

    .line 168
    throw p1

    .line 169
    :cond_6
    :goto_2
    return-void
.end method
