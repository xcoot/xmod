.class public final Lcom/android/server/connectivity/Vpn$2;
.super Landroid/net/NetworkAgent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Landroid/content/Context;Landroid/os/Looper;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

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
    const-string/jumbo v0, "knox vpn network is created"

    .line 4
    const-string v1, "Vpn"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 11
    sget-object v0, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 22
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    :goto_0
    move v5, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    .line 28
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    if-nez v0, :cond_1

    .line 31
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    .line 36
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 37
    :try_start_6
    monitor-exit p0

    .line 38
    move v5, v0

    .line 39
    :goto_1
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 42
    move-result-object v3

    .line 43
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 45
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 47
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    .line 49
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    .line 51
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addVpnUidRanges(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updateUidListInNetworkCapabilities()V

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Vpn;->applyBlockingRulesToUidRange(Z)V

    .line 60
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->showNotificationForKnoxStrongSwan(I)V

    .line 65
    goto :goto_3

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p0

    .line 70
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 71
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "Error occured "

    .line 75
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {p0, v0, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 81
    :goto_3
    return-void
.end method

.method public final onNetworkDestroyed()V
    .locals 1

    .line 1
    const-string p0, "Vpn"

    .line 3
    const-string/jumbo v0, "knox vpn network is destroyed"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method

.method public final onNetworkUnwanted()V
    .locals 0

    .line 1
    return-void
.end method
