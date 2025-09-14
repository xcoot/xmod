.class public final Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;
.super Lcom/android/server/connectivity/Vpn$VpnRunner;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActiveNetwork:Landroid/net/Network;

.field public final mCarrierConfigChangeListener:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;

.field public mCurrentToken:I

.field public final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

.field public final mIpSecManager:Landroid/net/IpSecManager;

.field public mIsRunning:Z

.field public mMobikeEnabled:Z

.field public final mNetworkCallback:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

.field public final mProfile:Landroid/net/Ikev2VpnProfile;

.field public mRetryCount:I

.field public mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

.field public mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

.field public mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

.field public mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

.field public final mSessionKey:Ljava/lang/String;

.field public mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

.field public mUnderlyingLinkProperties:Landroid/net/LinkProperties;

.field public mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field mValidationFailRetryCount:I

.field public final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Landroid/net/Ikev2VpnProfile;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3
    const-string v0, "IkeV2VpnRunner"

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    .line 11
    const/4 v2, -0x1

    .line 12
    iput v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    .line 17
    iput v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 19
    iput v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I

    .line 21
    new-instance v3, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;

    .line 23
    invoke-direct {v3, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V

    .line 26
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCarrierConfigChangeListener:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;

    .line 28
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 30
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 32
    iget-object p2, p1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 34
    const-string/jumbo v4, "ipsec"

    .line 37
    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Landroid/net/IpSecManager;

    .line 43
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    .line 45
    new-instance p2, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 47
    invoke-direct {p2, p0, p3}, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;Ljava/util/concurrent/Executor;)V

    .line 50
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    const-string v4, "Generate session key = "

    .line 66
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    .line 82
    invoke-virtual {p3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    .line 85
    new-instance p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda0;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p3, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 93
    iget-object p0, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 95
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 97
    iget-object p0, p0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 99
    iget v1, p1, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 101
    invoke-virtual {p1, v1, v0, p0}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    .line 104
    move-result-object p0

    .line 105
    new-instance v0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;

    .line 107
    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/util/Set;)V

    .line 110
    invoke-static {v0}, Lcom/android/net/module/util/BinderUtils;->withCleanCallingIdentity(Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;)V

    .line 113
    iget-object p0, p1, Lcom/android/server/connectivity/Vpn;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 115
    invoke-virtual {p0, p3, v3}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 118
    return-void
.end method


# virtual methods
.method public final calculateVpnMtu()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 3
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 9
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 11
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v0, :cond_4

    .line 17
    if-nez v1, :cond_0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getMtu()I

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 28
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 30
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 36
    invoke-virtual {v2}, Landroid/net/Ikev2VpnProfile;->getMaxMtu()I

    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    if-nez v1, :cond_1

    .line 45
    :goto_0
    move v0, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getMTU()I

    .line 57
    move-result v2
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    const-string v2, "Got a SocketException when getting MTU from kernel: "

    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    const-string v1, "IkeV2VpnRunner"

    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 81
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getMaxMtu()I

    .line 84
    move-result p0

    .line 85
    return p0

    .line 86
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 88
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 90
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getChildSessionParams()Landroid/net/ipsec/ike/ChildSessionParams;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSessionParams;->getSaProposals()Ljava/util/List;

    .line 97
    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 100
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getMaxMtu()I

    .line 103
    move-result v3

    .line 104
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 106
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getLocalAddress()Ljava/net/InetAddress;

    .line 109
    move-result-object p0

    .line 110
    instance-of p0, p0, Ljava/net/Inet4Address;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    invoke-static {v2, v3, p0, v0}, Lcom/android/server/vcn/util/MtuUtils;->getMtu(Ljava/util/List;IZI)I

    .line 118
    move-result p0

    .line 119
    return p0

    .line 120
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 122
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getMaxMtu()I

    .line 125
    move-result p0

    .line 126
    return p0
.end method

.method public final disconnectVpnRunner()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "[VPNRunner] Disconnect runner, underlying net "

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 27
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 29
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    .line 34
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    .line 37
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 39
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 41
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCarrierConfigChangeListener:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;

    .line 43
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->unregisterCarrierConfigChangeListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 46
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 48
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 50
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 52
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 55
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 57
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 60
    return-void
.end method

.method public final exitVpnRunner()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 5
    sget-object v2, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;

    .line 12
    invoke-direct {v2, v0, v1}, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 15
    invoke-static {v2}, Lcom/android/net/module/util/BinderUtils;->withCleanCallingIdentity(Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;)V

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 20
    new-instance v1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;

    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;I)V

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    return-void
.end method

.method public final getCarrierConfigForUnderlyingNetwork()Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3
    sget-object v1, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, -0x1

    .line 7
    if-nez v0, :cond_1

    .line 9
    :cond_0
    :goto_0
    move v0, v2

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_2

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    .line 21
    move-result-object v0

    .line 22
    instance-of v3, v0, Landroid/net/TelephonyNetworkSpecifier;

    .line 24
    if-eqz v3, :cond_0

    .line 26
    check-cast v0, Landroid/net/TelephonyNetworkSpecifier;

    .line 28
    invoke-virtual {v0}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    .line 31
    move-result v0

    .line 32
    :goto_1
    const/4 v3, 0x0

    .line 33
    if-ne v0, v2, :cond_3

    .line 35
    const-string p0, "IkeV2VpnRunner"

    .line 37
    const-string v0, "Underlying network is not a cellular network"

    .line 39
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v3

    .line 43
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 45
    monitor-enter v4

    .line 46
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 48
    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

    .line 50
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_4

    .line 56
    const-string v1, "IkeV2VpnRunner"

    .line 58
    const-string v2, "Get cached config"

    .line 60
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 65
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;

    .line 73
    monitor-exit v4

    .line 74
    return-object p0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 80
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimApplicationState()I

    .line 89
    move-result v5

    .line 90
    const/16 v6, 0xa

    .line 92
    if-eq v5, v6, :cond_5

    .line 94
    const-string p0, "IkeV2VpnRunner"

    .line 96
    const-string v1, "SIM card is not ready on sub "

    .line 98
    invoke-static {v0, v1, p0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-object v3

    .line 102
    :cond_5
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 104
    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 106
    invoke-virtual {v5, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    .line 109
    move-result-object v5

    .line 110
    invoke-static {v5}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    .line 113
    move-result v6

    .line 114
    if-nez v6, :cond_6

    .line 116
    return-object v3

    .line 117
    :cond_6
    const-string/jumbo v3, "min_udp_port_4500_nat_timeout_sec_int"

    .line 120
    invoke-virtual {v5, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 123
    move-result v3

    .line 124
    const-string/jumbo v6, "preferred_ike_protocol_int"

    .line 127
    invoke-virtual {v5, v6, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 130
    move-result v5

    .line 131
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    .line 134
    move-result-object v4

    .line 135
    if-eqz v5, :cond_a

    .line 137
    const/16 v1, 0x28

    .line 139
    const/4 v6, 0x4

    .line 140
    const/16 v7, 0x11

    .line 142
    if-eq v5, v1, :cond_7

    .line 144
    const/16 v1, 0x3c

    .line 146
    const/4 v8, 0x6

    .line 147
    if-eq v5, v1, :cond_9

    .line 149
    const/16 v1, 0x3d

    .line 151
    if-eq v5, v1, :cond_8

    .line 153
    :cond_7
    move v1, v7

    .line 154
    goto :goto_3

    .line 155
    :cond_8
    move v1, v2

    .line 156
    :goto_2
    move v6, v8

    .line 157
    goto :goto_3

    .line 158
    :cond_9
    move v1, v7

    .line 159
    goto :goto_2

    .line 160
    :cond_a
    move v6, v1

    .line 161
    :goto_3
    new-instance v2, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;

    .line 163
    invoke-direct {v2, v4, v3, v1, v6}, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;-><init>(Ljava/lang/String;III)V

    .line 166
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 168
    monitor-enter v1

    .line 169
    :try_start_1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 171
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

    .line 173
    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    monitor-exit v1

    .line 177
    return-object v2

    .line 178
    :catchall_1
    move-exception p0

    .line 179
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    throw p0

    .line 181
    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    throw p0
.end method

.method public final getChildSessionParams()Landroid/net/ipsec/ike/ChildSessionParams;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 3
    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 16
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getAllowedAlgorithms()Ljava/util/List;

    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 22
    invoke-direct {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;-><init>()V

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    const/16 v2, 0x100

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v3

    .line 36
    const/16 v4, 0xc0

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v5

    .line 42
    const/16 v6, 0x80

    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v7

    .line 48
    filled-new-array {v3, v5, v7}, [Ljava/lang/Integer;

    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    move-result-object v3

    .line 56
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasNormalModeAlgorithms(Ljava/util/List;)Z

    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_a

    .line 62
    new-instance v5, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 64
    invoke-direct {v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    .line 67
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v3

    .line 71
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v7

    .line 75
    const/16 v8, 0xc

    .line 77
    const/16 v9, 0xd

    .line 79
    if-eqz v7, :cond_3

    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Ljava/lang/Integer;

    .line 87
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 90
    move-result v7

    .line 91
    const-string/jumbo v10, "rfc3686(ctr(aes))"

    .line 94
    invoke-interface {p0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 97
    move-result v10

    .line 98
    if-eqz v10, :cond_2

    .line 100
    invoke-virtual {v5, v9, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 103
    :cond_2
    const-string/jumbo v9, "cbc(aes)"

    .line 106
    invoke-interface {p0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_1

    .line 112
    invoke-virtual {v5, v8, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    const-string/jumbo v3, "hmac(sha512)"

    .line 119
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_4

    .line 125
    const/16 v3, 0xe

    .line 127
    invoke-virtual {v5, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 130
    :cond_4
    const-string/jumbo v3, "hmac(sha384)"

    .line 133
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_5

    .line 139
    invoke-virtual {v5, v9}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 142
    :cond_5
    const-string/jumbo v3, "hmac(sha256)"

    .line 145
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_6

    .line 151
    invoke-virtual {v5, v8}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 154
    :cond_6
    const-string/jumbo v3, "xcbc(aes)"

    .line 157
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_7

    .line 163
    const/4 v3, 0x5

    .line 164
    invoke-virtual {v5, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 167
    :cond_7
    const-string/jumbo v3, "cmac(aes)"

    .line 170
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_8

    .line 176
    const/16 v3, 0x8

    .line 178
    invoke-virtual {v5, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 181
    :cond_8
    invoke-virtual {v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v3}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    .line 188
    move-result-object v3

    .line 189
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_9

    .line 195
    const-string v3, "VpnIkev2Utils"

    .line 197
    const-string v5, "Missing integrity algorithm when buildling Child SA proposal"

    .line 199
    invoke-static {v3, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    goto :goto_1

    .line 203
    :cond_9
    invoke-virtual {v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_a
    :goto_1
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasAeadAlgorithms(Ljava/util/List;)Z

    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_d

    .line 216
    new-instance v3, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 218
    invoke-direct {v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    .line 221
    const-string/jumbo v5, "rfc7539esp(chacha20,poly1305)"

    .line 224
    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 227
    move-result v5

    .line 228
    if-eqz v5, :cond_b

    .line 230
    const/16 v5, 0x1c

    .line 232
    const/4 v7, 0x0

    .line 233
    invoke-virtual {v3, v5, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 236
    :cond_b
    const-string/jumbo v5, "rfc4106(gcm(aes))"

    .line 239
    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 242
    move-result p0

    .line 243
    if-eqz p0, :cond_c

    .line 245
    const/16 p0, 0x14

    .line 247
    invoke-virtual {v3, p0, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 250
    const/16 v5, 0x13

    .line 252
    invoke-virtual {v3, v5, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 255
    const/16 v7, 0x12

    .line 257
    invoke-virtual {v3, v7, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 260
    invoke-virtual {v3, p0, v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 263
    invoke-virtual {v3, v5, v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 266
    invoke-virtual {v3, v7, v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 269
    invoke-virtual {v3, p0, v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 272
    invoke-virtual {v3, v5, v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 275
    invoke-virtual {v3, v7, v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 278
    :cond_c
    invoke-virtual {v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    .line 281
    move-result-object p0

    .line 282
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 288
    move-result-object p0

    .line 289
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_e

    .line 295
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    move-result-object v1

    .line 299
    check-cast v1, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 301
    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 304
    goto :goto_2

    .line 305
    :cond_e
    sget p0, Landroid/system/OsConstants;->AF_INET:I

    .line 307
    invoke-virtual {v0, p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 310
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    .line 312
    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 315
    invoke-virtual {v0, p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 318
    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 321
    invoke-virtual {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->build()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 324
    move-result-object p0

    .line 325
    return-object p0
.end method

.method public final getIkeSessionParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 7
    invoke-virtual {v2}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 13
    new-instance v3, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 15
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v3, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/net/ipsec/ike/IkeSessionParams;)V

    .line 22
    invoke-virtual {v3, v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 25
    move-result-object v1

    .line 26
    goto/16 :goto_3

    .line 28
    :cond_0
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 30
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 32
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 34
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getUserIdentity()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    invoke-static {v4}, Lcom/android/server/connectivity/VpnIkev2Utils;->parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    invoke-static {v5}, Lcom/android/server/connectivity/VpnIkev2Utils;->parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;

    .line 49
    move-result-object v5

    .line 50
    new-instance v6, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 52
    invoke-direct {v6, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v6, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setServerHostname(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x2

    .line 68
    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addIkeOption(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v4}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setLocalIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v5}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setRemoteIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getType()I

    .line 83
    move-result v4

    .line 84
    const/16 v5, 0x8

    .line 86
    const/4 v6, 0x7

    .line 87
    const/4 v7, 0x6

    .line 88
    if-eq v4, v7, :cond_3

    .line 90
    if-eq v4, v6, :cond_2

    .line 92
    if-ne v4, v5, :cond_1

    .line 94
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getServerRootCaCert()Ljava/security/cert/X509Certificate;

    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getUserCert()Ljava/security/cert/X509Certificate;

    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getRsaPrivateKey()Ljava/security/PrivateKey;

    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v1, v4, v8, v3}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 112
    const-string v1, "Unknown auth method set"

    .line 114
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    throw v0

    .line 118
    :cond_2
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getPresharedKey()[B

    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v1, v3}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthPsk([B)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    new-instance v4, Landroid/net/eap/EapSessionConfig$Builder;

    .line 128
    invoke-direct {v4}, Landroid/net/eap/EapSessionConfig$Builder;-><init>()V

    .line 131
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getUsername()Ljava/lang/String;

    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getPassword()Ljava/lang/String;

    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v4, v8, v9}, Landroid/net/eap/EapSessionConfig$Builder;->setEapMsChapV2Config(Ljava/lang/String;Ljava/lang/String;)Landroid/net/eap/EapSessionConfig$Builder;

    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4}, Landroid/net/eap/EapSessionConfig$Builder;->build()Landroid/net/eap/EapSessionConfig;

    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getServerRootCaCert()Ljava/security/cert/X509Certificate;

    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v1, v3, v4}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthEap(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 154
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 156
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v4, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 161
    invoke-direct {v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    .line 164
    const/16 v8, 0xd

    .line 166
    const/16 v9, 0x100

    .line 168
    invoke-virtual {v4, v8, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 171
    const/16 v10, 0xc

    .line 173
    invoke-virtual {v4, v10, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 176
    const/16 v11, 0xc0

    .line 178
    invoke-virtual {v4, v8, v11}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 181
    invoke-virtual {v4, v10, v11}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 184
    const/16 v12, 0x80

    .line 186
    invoke-virtual {v4, v8, v12}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 189
    invoke-virtual {v4, v10, v12}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 192
    const/16 v13, 0xe

    .line 194
    invoke-virtual {v4, v13}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 197
    invoke-virtual {v4, v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 200
    invoke-virtual {v4, v10}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 203
    const/4 v8, 0x5

    .line 204
    invoke-virtual {v4, v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 207
    invoke-virtual {v4, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 210
    new-instance v10, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 212
    invoke-direct {v10}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    .line 215
    const/16 v14, 0x1c

    .line 217
    const/4 v15, 0x0

    .line 218
    invoke-virtual {v10, v14, v15}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 221
    const/16 v14, 0x14

    .line 223
    invoke-virtual {v10, v14, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 226
    const/16 v5, 0x13

    .line 228
    invoke-virtual {v10, v5, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 231
    const/16 v8, 0x12

    .line 233
    invoke-virtual {v10, v8, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 236
    invoke-virtual {v10, v14, v11}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 239
    invoke-virtual {v10, v5, v11}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 242
    invoke-virtual {v10, v8, v11}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 245
    invoke-virtual {v10, v14, v12}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 248
    invoke-virtual {v10, v5, v12}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 251
    invoke-virtual {v10, v8, v12}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 254
    new-array v5, v2, [Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 256
    aput-object v4, v5, v15

    .line 258
    const/4 v8, 0x1

    .line 259
    aput-object v10, v5, v8

    .line 261
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 264
    move-result-object v5

    .line 265
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 268
    move-result-object v5

    .line 269
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    move-result v8

    .line 273
    if-eqz v8, :cond_4

    .line 275
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    move-result-object v8

    .line 279
    check-cast v8, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 281
    const/16 v9, 0x10

    .line 283
    invoke-virtual {v8, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 286
    const/16 v9, 0x1f

    .line 288
    invoke-virtual {v8, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 291
    const/16 v9, 0xf

    .line 293
    invoke-virtual {v8, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 296
    invoke-virtual {v8, v13}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 299
    invoke-virtual {v8, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 302
    invoke-virtual {v8, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 305
    const/4 v9, 0x5

    .line 306
    invoke-virtual {v8, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 309
    const/4 v11, 0x4

    .line 310
    invoke-virtual {v8, v11}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 313
    const/16 v11, 0x8

    .line 315
    invoke-virtual {v8, v11}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 318
    invoke-virtual {v8, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 321
    goto :goto_1

    .line 322
    :cond_4
    invoke-virtual {v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {v10}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 339
    move-result-object v2

    .line 340
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 343
    move-result v3

    .line 344
    if-eqz v3, :cond_5

    .line 346
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 349
    move-result-object v3

    .line 350
    check-cast v3, Landroid/net/ipsec/ike/IkeSaProposal;

    .line 352
    invoke-virtual {v1, v3}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/IkeSaProposal;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 355
    goto :goto_2

    .line 356
    :cond_5
    :goto_3
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 358
    invoke-virtual {v2}, Landroid/net/Ikev2VpnProfile;->isAutomaticNattKeepaliveTimerEnabled()Z

    .line 361
    move-result v2

    .line 362
    if-eqz v2, :cond_6

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessNattKeepaliveTimerForNetwork()I

    .line 367
    move-result v2

    .line 368
    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNattKeepAliveDelaySeconds(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 371
    :cond_6
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 373
    invoke-virtual {v2}, Landroid/net/Ikev2VpnProfile;->isAutomaticIpVersionSelectionEnabled()Z

    .line 376
    move-result v2

    .line 377
    if-eqz v2, :cond_7

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessEspIpVersionForNetwork()I

    .line 382
    move-result v2

    .line 383
    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setIpVersion(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessEspEncapTypeForNetwork()I

    .line 389
    move-result v0

    .line 390
    invoke-virtual {v1, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setEncapType(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 393
    :cond_7
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    .line 396
    move-result-object v0

    .line 397
    return-object v0
.end method

.method public final getOrGuessKeepaliveDelaySeconds()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 3
    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->isAutomaticNattKeepaliveTimerEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessNattKeepaliveTimerForNetwork()I

    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 16
    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 24
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams;->getNattKeepAliveDelaySeconds()I

    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_1
    const/16 p0, 0x12c

    .line 39
    return p0
.end method

.method public final guessEspEncapTypeForNetwork()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroid/net/vcn/VcnTransportInfo;

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "IkeV2VpnRunner"

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string p0, "Running over VCN, encap type is auto"

    .line 16
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return v1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getCarrierConfigForUnderlyingNetwork()Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;

    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 26
    iget v1, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->encapType:I

    .line 28
    :cond_1
    if-eqz p0, :cond_2

    .line 30
    const-string v0, "Get customized encap type ("

    .line 32
    const-string v3, ") on SIM (mccmnc="

    .line 34
    invoke-static {v1, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v0

    .line 38
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->mccMnc:Ljava/lang/String;

    .line 40
    const-string v3, ")"

    .line 42
    invoke-static {v0, p0, v3, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2
    return v1
.end method

.method public final guessEspIpVersionForNetwork()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroid/net/vcn/VcnTransportInfo;

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "IkeV2VpnRunner"

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string p0, "Running over VCN, esp IP version is auto"

    .line 16
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return v1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getCarrierConfigForUnderlyingNetwork()Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;

    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 26
    iget v1, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->ipVersion:I

    .line 28
    :cond_1
    if-eqz p0, :cond_2

    .line 30
    const-string v0, "Get customized IP version ("

    .line 32
    const-string v3, ") on SIM (mccmnc="

    .line 34
    invoke-static {v1, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v0

    .line 38
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->mccMnc:Ljava/lang/String;

    .line 40
    const-string v3, ")"

    .line 42
    invoke-static {v0, p0, v3, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2
    return v1
.end method

.method public final guessNattKeepaliveTimerForNetwork()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/net/vcn/VcnTransportInfo;

    .line 9
    const-string v2, "IkeV2VpnRunner"

    .line 11
    if-eqz v1, :cond_0

    .line 13
    check-cast v0, Landroid/net/vcn/VcnTransportInfo;

    .line 15
    invoke-virtual {v0}, Landroid/net/vcn/VcnTransportInfo;->getMinUdpPort4500NatTimeoutSeconds()I

    .line 18
    move-result v0

    .line 19
    const-string v1, "Running over VCN, keepalive timer : "

    .line 21
    const-string/jumbo v3, "s"

    .line 24
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v1, -0x1

    .line 28
    if-eq v1, v0, :cond_0

    .line 30
    return v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getCarrierConfigForUnderlyingNetwork()Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;

    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 37
    iget v0, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->keepaliveDelaySec:I

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/16 v0, 0x1e

    .line 42
    :goto_0
    if-eqz p0, :cond_2

    .line 44
    const-string v1, "Get customized keepalive ("

    .line 46
    const-string/jumbo v3, "s) on SIM (mccmnc="

    .line 49
    invoke-static {v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v1

    .line 53
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->mccMnc:Ljava/lang/String;

    .line 55
    const-string v3, ")"

    .line 57
    invoke-static {v1, p0, v3, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    return v0
.end method

.method public final handleSessionLost(Ljava/lang/Exception;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 11
    const-string v2, "IkeV2VpnRunner"

    .line 13
    const-string v5, "Cancel the task for handling network lost timeout"

    .line 15
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 20
    invoke-interface {v2, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 23
    iput-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 25
    :cond_0
    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    .line 27
    if-eqz v2, :cond_1

    .line 29
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->markFailedAndDisconnect(Ljava/lang/Exception;)V

    .line 32
    return-void

    .line 33
    :cond_1
    instance-of v2, v1, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 35
    if-eqz v2, :cond_3

    .line 37
    move-object v2, v1

    .line 38
    check-cast v2, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 40
    const-string v4, "android.net.category.EVENT_IKE_ERROR"

    .line 42
    invoke-virtual {v2}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    .line 45
    move-result v7

    .line 46
    invoke-virtual {v2}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    .line 49
    move-result v2

    .line 50
    const/16 v8, 0xe

    .line 52
    if-eq v2, v8, :cond_2

    .line 54
    const/16 v8, 0x11

    .line 56
    if-eq v2, v8, :cond_2

    .line 58
    const/16 v8, 0x18

    .line 60
    if-eq v2, v8, :cond_2

    .line 62
    const/16 v8, 0x22

    .line 64
    if-eq v2, v8, :cond_2

    .line 66
    const/16 v8, 0x25

    .line 68
    if-eq v2, v8, :cond_2

    .line 70
    const/16 v8, 0x26

    .line 72
    if-eq v2, v8, :cond_2

    .line 74
    const/4 v2, 0x2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v2, 0x1

    .line 77
    :goto_0
    move-object v9, v4

    .line 78
    move v4, v7

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    instance-of v2, v1, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;

    .line 82
    if-eqz v2, :cond_4

    .line 84
    const-string v4, "android.net.category.EVENT_NETWORK_ERROR"

    .line 86
    move-object v9, v4

    .line 87
    const/4 v2, 0x2

    .line 88
    const/4 v4, 0x2

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    instance-of v2, v1, Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;

    .line 92
    const/4 v7, -0x1

    .line 93
    if-eqz v2, :cond_8

    .line 95
    const-string v2, "android.net.category.EVENT_NETWORK_ERROR"

    .line 97
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 100
    move-result-object v8

    .line 101
    instance-of v8, v8, Ljava/net/UnknownHostException;

    .line 103
    if-eqz v8, :cond_5

    .line 105
    :goto_1
    move-object v9, v2

    .line 106
    :goto_2
    const/4 v2, 0x2

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 111
    move-result-object v4

    .line 112
    instance-of v4, v4, Landroid/net/ipsec/ike/exceptions/IkeTimeoutException;

    .line 114
    if-eqz v4, :cond_6

    .line 116
    move-object v9, v2

    .line 117
    const/4 v2, 0x2

    .line 118
    const/4 v4, 0x1

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 123
    move-result-object v4

    .line 124
    instance-of v4, v4, Ljava/io/IOException;

    .line 126
    if-eqz v4, :cond_7

    .line 128
    const/4 v4, 0x3

    .line 129
    goto :goto_1

    .line 130
    :cond_7
    move-object v9, v2

    .line 131
    move v4, v7

    .line 132
    goto :goto_2

    .line 133
    :cond_8
    if-eqz v1, :cond_9

    .line 135
    const-string v2, "IkeV2VpnRunner"

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v8, "onSessionLost: exception = "

    .line 142
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v4

    .line 152
    invoke-static {v2, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_9
    move-object v9, v3

    .line 156
    move v2, v7

    .line 157
    move v4, v2

    .line 158
    :goto_3
    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 160
    monitor-enter v7

    .line 161
    :try_start_0
    iget-object v8, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 163
    iget-object v10, v8, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 165
    if-eq v10, v0, :cond_a

    .line 167
    monitor-exit v7

    .line 168
    return-void

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    goto/16 :goto_b

    .line 172
    :cond_a
    if-eqz v9, :cond_d

    .line 174
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 176
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    .line 179
    move-result v8

    .line 180
    if-eqz v8, :cond_d

    .line 182
    iget-object v8, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 184
    invoke-virtual {v8}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    .line 187
    move-result-object v12

    .line 188
    iget-object v13, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 190
    iget-object v10, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 192
    invoke-virtual {v10}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    .line 195
    move-result-object v14

    .line 196
    iget-object v15, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 198
    iget-object v10, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 200
    iget-object v11, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 202
    monitor-enter v10

    .line 203
    if-nez v11, :cond_b

    .line 205
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_4
    move-object/from16 v16, v3

    .line 208
    goto :goto_5

    .line 209
    :cond_b
    :try_start_1
    iget-object v6, v10, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 211
    iget v3, v10, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 213
    iget-object v5, v10, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 215
    invoke-virtual {v6, v11, v3, v5}, Landroid/net/ConnectivityManager;->getRedactedNetworkCapabilitiesForPackage(Landroid/net/NetworkCapabilities;ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 218
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 219
    :try_start_2
    monitor-exit v10

    .line 220
    goto :goto_4

    .line 221
    :goto_5
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 223
    iget-object v5, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 225
    monitor-enter v3

    .line 226
    if-nez v5, :cond_c

    .line 228
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    const/16 v17, 0x0

    .line 231
    goto :goto_6

    .line 232
    :cond_c
    :try_start_3
    iget-object v6, v3, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 234
    iget v10, v3, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 236
    iget-object v11, v3, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 238
    invoke-virtual {v6, v5, v10, v11}, Landroid/net/ConnectivityManager;->getRedactedLinkPropertiesForPackage(Landroid/net/LinkProperties;ILjava/lang/String;)Landroid/net/LinkProperties;

    .line 241
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    :try_start_4
    monitor-exit v3

    .line 243
    move-object/from16 v17, v5

    .line 245
    :goto_6
    move v10, v2

    .line 246
    move v11, v4

    .line 247
    invoke-virtual/range {v8 .. v17}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    .line 250
    goto :goto_7

    .line 251
    :catchall_1
    move-exception v0

    .line 252
    monitor-exit v3

    .line 253
    throw v0

    .line 254
    :catchall_2
    move-exception v0

    .line 255
    monitor-exit v10

    .line 256
    throw v0

    .line 257
    :cond_d
    :goto_7
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 258
    const/4 v3, 0x1

    .line 259
    if-ne v2, v3, :cond_e

    .line 261
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->markFailedAndDisconnect(Ljava/lang/Exception;)V

    .line 264
    return-void

    .line 265
    :cond_e
    const-wide/16 v1, -0x1

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->scheduleStartIkeSession(J)V

    .line 270
    const-string v1, "IkeV2VpnRunner"

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    .line 274
    const-string v3, "Resetting state for token: "

    .line 276
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    iget v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 281
    invoke-static {v2, v3, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 284
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 286
    monitor-enter v1

    .line 287
    :try_start_5
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 289
    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 291
    if-eq v3, v0, :cond_f

    .line 293
    monitor-exit v1

    .line 294
    return-void

    .line 295
    :catchall_3
    move-exception v0

    .line 296
    goto/16 :goto_a

    .line 298
    :cond_f
    const/4 v3, 0x0

    .line 299
    iput-object v3, v2, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 301
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 303
    const/4 v5, 0x7

    .line 304
    if-eqz v2, :cond_11

    .line 306
    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 308
    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 310
    if-eqz v2, :cond_11

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    .line 314
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 316
    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 318
    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 320
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 323
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 325
    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 327
    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 329
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 332
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 335
    move-result-object v2

    .line 336
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    move-result v3

    .line 340
    if-eqz v3, :cond_10

    .line 342
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    move-result-object v3

    .line 346
    check-cast v3, Landroid/net/RouteInfo;

    .line 348
    iget-object v6, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 350
    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 352
    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 354
    new-instance v7, Landroid/net/RouteInfo;

    .line 356
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    .line 359
    move-result-object v3

    .line 360
    const/4 v8, 0x0

    .line 361
    invoke-direct {v7, v3, v8, v8, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 364
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    goto :goto_8

    .line 368
    :cond_10
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 370
    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 372
    if-eqz v3, :cond_11

    .line 374
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    .line 377
    move-result-object v2

    .line 378
    invoke-static {v3, v2}, Lcom/android/server/connectivity/Vpn;->doSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V

    .line 381
    :cond_11
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    .line 385
    const/4 v1, 0x2

    .line 386
    if-eq v4, v1, :cond_13

    .line 388
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 390
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 392
    iget v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I

    .line 394
    const/4 v3, 0x1

    .line 395
    sub-int/2addr v2, v3

    .line 396
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    sget-object v1, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 401
    if-lt v2, v5, :cond_12

    .line 403
    const/4 v2, 0x6

    .line 404
    aget-wide v1, v1, v2

    .line 406
    goto :goto_9

    .line 407
    :cond_12
    aget-wide v1, v1, v2

    .line 409
    :goto_9
    const-wide/16 v3, 0x1388

    .line 411
    cmp-long v1, v1, v3

    .line 413
    if-lez v1, :cond_13

    .line 415
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 417
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 419
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    new-instance v2, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;

    .line 424
    invoke-direct {v2, v1, v0}, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 427
    invoke-static {v2}, Lcom/android/net/module/util/BinderUtils;->withCleanCallingIdentity(Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;)V

    .line 430
    :cond_13
    return-void

    .line 431
    :goto_a
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 432
    throw v0

    .line 433
    :goto_b
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 434
    throw v0
.end method

.method public final isActiveToken(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final markFailedAndDisconnect(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 6
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 8
    if-eq v2, p0, :cond_0

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1, v2, p1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 26
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v1, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;

    .line 33
    invoke-direct {v1, p1, v0}, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 36
    invoke-static {v1}, Lcom/android/net/module/util/BinderUtils;->withCleanCallingIdentity(Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->disconnectVpnRunner()V

    .line 42
    return-void

    .line 43
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public final maybeMigrateIkeSessionAndUpdateVpnTransportInfo(Landroid/net/Network;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getOrGuessKeepaliveDelaySeconds()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_3

    .line 11
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    .line 13
    if-nez v1, :cond_0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    const-string v4, "Migrate IKE Session with token "

    .line 20
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v4, " to network "

    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    const-string v4, "IkeV2VpnRunner"

    .line 42
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 47
    invoke-virtual {v1}, Landroid/net/Ikev2VpnProfile;->isAutomaticIpVersionSelectionEnabled()Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessEspIpVersionForNetwork()I

    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessEspEncapTypeForNetwork()I

    .line 60
    move-result v4

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 64
    invoke-virtual {v1}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 72
    invoke-virtual {v1}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getIpVersion()I

    .line 83
    move-result v1

    .line 84
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 86
    invoke-virtual {v4}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/net/ipsec/ike/IkeSessionParams;->getEncapType()I

    .line 97
    move-result v4

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    move v1, v2

    .line 100
    move v4, v1

    .line 101
    :goto_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    .line 103
    iget-object v5, v5, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 105
    invoke-virtual {v5, p1, v1, v4, v0}, Landroid/net/ipsec/ike/IkeSession;->setNetwork(Landroid/net/Network;III)V

    .line 108
    move p1, v3

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    :goto_1
    move p1, v2

    .line 111
    :goto_2
    if-eqz p1, :cond_6

    .line 113
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 115
    monitor-enter v1

    .line 116
    :try_start_0
    new-instance v4, Landroid/net/VpnTransportInfo;

    .line 118
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 120
    invoke-virtual {v5}, Lcom/android/server/connectivity/Vpn;->getActiveVpnType()I

    .line 123
    move-result v5

    .line 124
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 126
    iget-object v7, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 128
    iget-object v8, v7, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 130
    iget-boolean v7, v7, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    .line 132
    if-eqz v7, :cond_4

    .line 134
    iget-boolean v6, v6, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 136
    if-nez v6, :cond_4

    .line 138
    move v6, v3

    .line 139
    goto :goto_3

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto :goto_4

    .line 142
    :cond_4
    move v6, v2

    .line 143
    :goto_3
    const/16 v7, 0x3c

    .line 145
    if-ge v0, v7, :cond_5

    .line 147
    move v2, v3

    .line 148
    :cond_5
    invoke-direct {v4, v5, v8, v6, v2}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 151
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 154
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 156
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v4, v0}, Landroid/net/VpnTransportInfo;->equals(Ljava/lang/Object;)Z

    .line 163
    move-result v0

    .line 164
    xor-int/2addr v0, v3

    .line 165
    if-eqz v0, :cond_6

    .line 167
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 169
    new-instance v1, Landroid/net/NetworkCapabilities$Builder;

    .line 171
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 173
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 175
    invoke-direct {v1, v2}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 178
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 185
    move-result-object v1

    .line 186
    iput-object v1, v0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 188
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 190
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    const-string v2, "[VPNRunner] Update agent caps "

    .line 196
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 201
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 215
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 217
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 219
    invoke-static {v0, p0}, Lcom/android/server/connectivity/Vpn;->doSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V

    .line 222
    goto :goto_5

    .line 223
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    throw p0

    .line 225
    :cond_6
    :goto_5
    return p1
.end method

.method public final onIkeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "[IKEEvent-"

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 11
    iget-object p2, p2, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, "] onIkeConnectionInfoChanged obsolete token="

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p2, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 38
    const-string/jumbo p0, "onIkeConnectionInfoChanged called for obsolete token "

    .line 41
    const-string p2, "IkeV2VpnRunner"

    .line 43
    invoke-static {p1, p0, p2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 49
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 58
    const-string v3, "] onIkeConnectionInfoChanged token="

    .line 60
    const-string v4, ", localAddr="

    .line 62
    invoke-static {p1, v1, v3, v4, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 65
    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getLocalAddress()Ljava/net/InetAddress;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string p1, ", network="

    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 91
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 93
    return-void
.end method

.method public final onSessionLost(ILjava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "[IKE] Session lost on network "

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    if-nez p2, :cond_0

    .line 19
    const-string v2, ""

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    const-string v3, " reason "

    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v1, "onSessionLost() called for token "

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    const-string v1, "IkeV2VpnRunner"

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_1

    .line 76
    const-string/jumbo p0, "onSessionLost() called for obsolete token "

    .line 79
    invoke-static {p1, p0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->handleSessionLost(Ljava/lang/Exception;)V

    .line 86
    return-void
.end method

.method public final resetIkeState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    .line 9
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 17
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSession;->kill()V

    .line 20
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    .line 22
    :cond_1
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    .line 27
    return-void
.end method

.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 3
    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->isRestrictedToTestNetworks()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 11
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 14
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x7

    .line 19
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 22
    move-result-object v0

    .line 23
    const/16 v1, 0xf

    .line 25
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 35
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 37
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 39
    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 45
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 47
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 49
    new-instance v2, Landroid/os/Handler;

    .line 51
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 53
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 55
    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 61
    :goto_0
    return-void
.end method

.method public final scheduleStartIkeSession(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 3
    const-string v1, "IkeV2VpnRunner"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string p0, "There is a pending retrying task, skip the new retrying task"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    const-wide/16 v2, -0x1

    .line 15
    cmp-long v0, v2, p1

    .line 17
    if-eqz v0, :cond_1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 22
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 24
    iget p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I

    .line 26
    add-int/lit8 v0, p2, 0x1

    .line 28
    iput v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    sget-object p1, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 35
    const/4 v0, 0x7

    .line 36
    if-lt p2, v0, :cond_2

    .line 38
    const/4 p2, 0x6

    .line 39
    aget-wide p1, p1, p2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    aget-wide p1, p1, p2

    .line 44
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string v2, "Retry new IKE session after "

    .line 48
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, " milliseconds."

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 68
    new-instance v1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;

    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;I)V

    .line 74
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 76
    invoke-virtual {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 82
    return-void
.end method

.method public final startIkeSession(Landroid/net/Network;)V
    .locals 11

    .line 1
    const-string v0, "IKE session started for token "

    .line 3
    const-string v1, "IkeV2VpnRunner"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    const-string v3, "Start new IKE session on network "

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 24
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "[IKE] Start IKE session over "

    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 45
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 48
    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 50
    if-eq v3, p0, :cond_0

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v3, 0x0

    .line 57
    iput-object v3, v2, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 59
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    .line 63
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    .line 69
    invoke-virtual {v2, v1, v1, p1}, Landroid/net/IpSecManager;->createIpSecTunnelInterface(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 75
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 77
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/net/INetd;

    .line 79
    invoke-virtual {v1}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-static {v2, v1}, Lcom/android/net/module/util/NetdUtils;->setInterfaceUp(Landroid/net/INetd;Ljava/lang/String;)V

    .line 86
    iget v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 90
    iput v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 92
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 94
    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    .line 96
    iget-object v5, v2, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getIkeSessionParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;

    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getChildSessionParams()Landroid/net/ipsec/ike/ChildSessionParams;

    .line 105
    move-result-object v7

    .line 106
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 108
    new-instance v9, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;

    .line 110
    invoke-direct {v9, p0, v1}, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;I)V

    .line 113
    new-instance v10, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;

    .line 115
    invoke-direct {v10, p0, v1}, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;I)V

    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    new-instance p1, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    .line 123
    new-instance v2, Landroid/net/ipsec/ike/IkeSession;

    .line 125
    move-object v4, v2

    .line 126
    invoke-direct/range {v4 .. v10}, Landroid/net/ipsec/ike/IkeSession;-><init>(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    .line 129
    invoke-direct {p1, v2}, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;-><init>(Landroid/net/ipsec/ike/IkeSession;)V

    .line 132
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    .line 134
    const-string p1, "IkeV2VpnRunner"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 151
    goto :goto_2

    .line 152
    :catch_0
    move-exception p1

    .line 153
    goto :goto_1

    .line 154
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 156
    :goto_1
    const-string v0, "IkeV2VpnRunner"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    const-string v2, "Setup failed for token "

    .line 162
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    iget v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v2, ". Aborting"

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    iget v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 184
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    .line 187
    :goto_2
    return-void
.end method
