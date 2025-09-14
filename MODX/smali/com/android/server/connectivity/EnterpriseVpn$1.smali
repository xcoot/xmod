.class public final Lcom/android/server/connectivity/EnterpriseVpn$1;
.super Landroid/net/NetworkAgent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/content/Context;Landroid/os/Looper;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/server/connectivity/EnterpriseVpn$1;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5
    const-string v3, "VPN"

    .line 7
    move-object v1, p2

    .line 8
    move-object v2, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p5

    .line 11
    move-object v6, p6

    .line 12
    move-object/from16 v7, p7

    .line 14
    move-object/from16 v8, p8

    .line 16
    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final onNetworkCreated()V
    .locals 9

    .line 1
    const-string/jumbo v0, "knoxEnterpriseVpn"

    .line 4
    const-string/jumbo v1, "knox vpn network is created"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn$1;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 12
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :try_start_0
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    .line 23
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getChainingEnabledForProfile(I)I

    .line 26
    move-result v0

    .line 27
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    const/4 v2, 0x0

    .line 31
    if-nez v1, :cond_0

    .line 33
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    :goto_0
    move v5, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    .line 39
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    if-nez v1, :cond_1

    .line 42
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Landroid/net/Network;->getNetId()I

    .line 47
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 48
    :try_start_6
    monitor-exit p0

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    const/4 v1, 0x1

    .line 51
    if-ne v0, v1, :cond_2

    .line 53
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNms:Landroid/os/INetworkManagementService;

    .line 55
    iget v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    .line 57
    invoke-interface {v0, v5, v1, v2}, Landroid/os/INetworkManagementService;->setNetworkInfo(IZI)V

    .line 60
    goto :goto_2

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 66
    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    .line 69
    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 71
    iget-object v7, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    .line 73
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    .line 75
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addVpnUidRanges(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->showNotification(Ljava/lang/String;Z)V

    .line 83
    goto :goto_4

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    monitor-exit p0

    .line 86
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 87
    :goto_3
    const-string/jumbo v0, "knoxEnterpriseVpn"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    const-string v2, "Error occured "

    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {p0, v1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 100
    :goto_4
    return-void
.end method

.method public final onNetworkDestroyed()V
    .locals 1

    .line 1
    const-string/jumbo p0, "knoxEnterpriseVpn"

    .line 4
    const-string/jumbo v0, "knox vpn network is destroyed"

    .line 7
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public final onNetworkUnwanted()V
    .locals 0

    .line 1
    return-void
.end method
