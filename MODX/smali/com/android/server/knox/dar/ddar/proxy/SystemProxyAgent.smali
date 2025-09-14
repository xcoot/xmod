.class public final Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;
.super Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;


# direct methods
.method public static declared-synchronized getInstance()Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method


# virtual methods
.method public final relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 1
    const-string/jumbo v0, "relay to Service : "

    .line 4
    invoke-static {v0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 11
    const-string v3, "SystemProxyAgent"

    .line 13
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v0

    .line 20
    const v2, 0x25e9423d

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v0, v2, :cond_1

    .line 26
    const v2, 0x2897d36c

    .line 29
    if-eq v0, v2, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "TERMINATE_SECURE_SESSION"

    .line 34
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 40
    move v0, v4

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_4

    .line 44
    :cond_1
    const-string v0, "INITIALIZE_SECURE_SESSION"

    .line 46
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-eqz v0, :cond_2

    .line 52
    move v0, v1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 55
    :goto_1
    const-string/jumbo v2, "dual_dar_response"

    .line 58
    const-string v5, "SECURE_CLIENT_ID"

    .line 60
    if-eqz v0, :cond_4

    .line 62
    if-eq v0, v4, :cond_3

    .line 64
    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 67
    move-result-object p0

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p4

    .line 73
    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->teardownSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    .line 76
    move-result p0

    .line 77
    new-instance p1, Landroid/os/Bundle;

    .line 79
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 82
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    :goto_2
    move-object p0, p1

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    const-string v4, "SECURE_CLIENT_PUB_KEY"

    .line 93
    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p4

    .line 97
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->establishSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    new-instance p1, Landroid/os/Bundle;

    .line 103
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 106
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    goto :goto_2

    .line 110
    :goto_3
    return-object p0

    .line 111
    :goto_4
    const-string p1, "RemoteException: name:"

    .line 113
    const-string p4, " command:"

    .line 115
    invoke-static {p1, p2, p4, p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    new-array p2, v1, [Ljava/lang/Object;

    .line 121
    invoke-static {v3, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const/4 p0, 0x0

    .line 128
    return-object p0
.end method
