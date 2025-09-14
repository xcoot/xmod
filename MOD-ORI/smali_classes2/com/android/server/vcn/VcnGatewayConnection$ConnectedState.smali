.class public final Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;

.field public final synthetic this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V
    .locals 3

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p5, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Applying transform for unexpected direction: "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/net/IpSecManager$IpSecTunnelInterface;->setUnderlyingNetwork(Landroid/net/Network;)V

    .line 26
    .line 27
    .line 28
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 29
    .line 30
    iget-object p3, p3, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    .line 31
    .line 32
    invoke-virtual {p3, p2, p5, p4}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V

    .line 33
    .line 34
    .line 35
    if-nez p5, :cond_1

    .line 36
    .line 37
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 38
    .line 39
    iget-object p3, p3, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/android/server/vcn/VcnContext;->isFlagNetworkMetricMonitorEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 48
    .line 49
    iget-object p3, p3, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/android/server/vcn/VcnContext;->isFlagIpSecTransformStateEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-eqz p3, :cond_1

    .line 59
    .line 60
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 61
    .line 62
    iget-object v0, p3, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 63
    .line 64
    iget-object p3, p3, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 65
    .line 66
    invoke-virtual {v0, p3, p4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->updateInboundTransform(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/net/IpSecTransform;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p2

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 73
    .line 74
    iget-object p3, p3, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    if-nez p5, :cond_2

    .line 81
    .line 82
    const/4 p5, 0x2

    .line 83
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_2

    .line 92
    .line 93
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 94
    .line 95
    iget-object p3, p3, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    .line 96
    .line 97
    invoke-virtual {p3, p2, p5, p4}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :goto_1
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 102
    .line 103
    new-instance p4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string p5, "Transform application failed for network "

    .line 106
    .line 107
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    invoke-static {p3, p4, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 121
    .line 122
    invoke-static {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_2
    return-void
.end method

.method public final enterState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    .line 8
    .line 9
    sget-object v2, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 14
    .line 15
    invoke-virtual {v1, v2, v2, v3}, Landroid/net/IpSecManager;->createIpSecTunnelInterface(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public final exitState()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setSafeModeAlarm()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final processStateMsg(Landroid/os/Message;)V
    .locals 24

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iget v2, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->logUnhandledMessage(Landroid/os/Message;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_b

    .line 16
    .line 17
    :pswitch_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;->network:Landroid/net/Network;

    .line 22
    .line 23
    iget-object v1, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 26
    .line 27
    if-eqz v2, :cond_b

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 30
    .line 31
    if-eqz v1, :cond_b

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_b

    .line 44
    .line 45
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 46
    .line 47
    const-string v1, "Perform Mobility update to recover from suspected data stall"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/net/ipsec/ike/IkeSession;->setNetwork(Landroid/net/Network;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_b

    .line 66
    .line 67
    :pswitch_2
    iget-object v1, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 68
    .line 69
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;->ikeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 74
    .line 75
    iput-object v0, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 76
    .line 77
    goto/16 :goto_b

    .line 78
    .line 79
    :pswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    .line 82
    .line 83
    iget-object v1, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "Migration completed: "

    .line 88
    .line 89
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v3, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 93
    .line 94
    iget-object v3, v3, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 109
    .line 110
    iget v2, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 111
    .line 112
    iget-object v3, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 115
    .line 116
    iget-object v4, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 117
    .line 118
    iget-object v5, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    .line 119
    .line 120
    const/4 v6, 0x0

    .line 121
    move-object/from16 v1, p0

    .line 122
    .line 123
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 127
    .line 128
    iget v2, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 129
    .line 130
    iget-object v3, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 131
    .line 132
    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 133
    .line 134
    iget-object v4, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 135
    .line 136
    iget-object v5, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    .line 137
    .line 138
    const/4 v6, 0x1

    .line 139
    move-object/from16 v1, p0

    .line 140
    .line 141
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 147
    .line 148
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 149
    .line 150
    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 153
    .line 154
    invoke-virtual {v7, v1, v2, v3, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v1, v0, v8}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_b

    .line 173
    .line 174
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->handleSafeModeTimeoutExceeded()V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_b

    .line 178
    .line 179
    :pswitch_5
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    .line 182
    .line 183
    invoke-virtual {v7, v0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_b

    .line 187
    .line 188
    :pswitch_6
    iget-object v2, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 189
    .line 190
    iget-object v3, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 191
    .line 192
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    .line 195
    .line 196
    iget-object v12, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 197
    .line 198
    iput-object v12, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 199
    .line 200
    iget v4, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 201
    .line 202
    iget-object v11, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 203
    .line 204
    iget-object v14, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 205
    .line 206
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    .line 207
    .line 208
    iget-object v2, v12, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 209
    .line 210
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 215
    .line 216
    .line 217
    new-instance v2, Landroid/util/ArraySet;

    .line 218
    .line 219
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 220
    .line 221
    .line 222
    if-eqz v3, :cond_0

    .line 223
    .line 224
    iget-object v3, v3, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 225
    .line 226
    invoke-virtual {v3}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    goto :goto_3

    .line 236
    :cond_0
    :goto_0
    new-instance v3, Landroid/util/ArraySet;

    .line 237
    .line 238
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 245
    .line 246
    .line 247
    new-instance v5, Landroid/util/ArraySet;

    .line 248
    .line 249
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_1

    .line 267
    .line 268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    check-cast v2, Landroid/net/LinkAddress;

    .line 273
    .line 274
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-virtual {v11, v3, v2}, Landroid/net/IpSecManager$IpSecTunnelInterface;->addAddress(Ljava/net/InetAddress;I)V

    .line 283
    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_1
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_2

    .line 295
    .line 296
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Landroid/net/LinkAddress;

    .line 301
    .line 302
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    invoke-virtual {v11, v3, v2}, Landroid/net/IpSecManager$IpSecTunnelInterface;->removeAddress(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .line 312
    .line 313
    goto :goto_2

    .line 314
    :goto_3
    iget-object v2, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 315
    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v5, "Adding address to tunnel failed for token "

    .line 319
    .line 320
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-static {v2, v3, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    iget-object v2, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 334
    .line 335
    invoke-static {v2, v4, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    .line 336
    .line 337
    .line 338
    :cond_2
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 339
    .line 340
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 341
    .line 342
    if-nez v2, :cond_3

    .line 343
    .line 344
    iget-object v2, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 345
    .line 346
    iget-object v3, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 347
    .line 348
    iget-object v4, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 349
    .line 350
    iget-boolean v2, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    .line 351
    .line 352
    invoke-static {v3, v4, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;

    .line 353
    .line 354
    .line 355
    move-result-object v17

    .line 356
    iget-object v9, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 357
    .line 358
    iget-object v10, v9, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 359
    .line 360
    iget-object v13, v9, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 361
    .line 362
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/vcn/VcnGatewayConnection;->buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)Landroid/net/LinkProperties;

    .line 363
    .line 364
    .line 365
    move-result-object v18

    .line 366
    new-instance v2, Landroid/net/NetworkAgentConfig$Builder;

    .line 367
    .line 368
    invoke-direct {v2}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v8}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    const-string v3, "MOBILE"

    .line 376
    .line 377
    invoke-virtual {v2, v3}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {v2, v8}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-static {v8}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v2, v3}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    const-string v3, "VCN"

    .line 394
    .line 395
    invoke-virtual {v2, v3}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-virtual {v2}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    .line 400
    .line 401
    .line 402
    move-result-object v20

    .line 403
    iget-object v2, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 404
    .line 405
    iget-object v3, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 406
    .line 407
    iget-object v2, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 408
    .line 409
    sget-object v4, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    .line 410
    .line 411
    new-instance v4, Landroid/net/NetworkScore$Builder;

    .line 412
    .line 413
    invoke-direct {v4}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 414
    .line 415
    .line 416
    const/16 v5, 0x34

    .line 417
    .line 418
    invoke-virtual {v4, v5}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-virtual {v4, v1}, Landroid/net/NetworkScore$Builder;->setTransportPrimary(Z)Landroid/net/NetworkScore$Builder;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-virtual {v4}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    .line 427
    .line 428
    .line 429
    move-result-object v19

    .line 430
    iget-object v4, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 431
    .line 432
    iget-object v4, v4, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 433
    .line 434
    iget-object v4, v4, Lcom/android/server/vcn/VcnContext;->mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 435
    .line 436
    new-instance v5, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;

    .line 437
    .line 438
    invoke-direct {v5, v7, v8}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;I)V

    .line 439
    .line 440
    .line 441
    new-instance v6, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;

    .line 442
    .line 443
    invoke-direct {v6, v7, v1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    new-instance v3, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 450
    .line 451
    move-object v15, v3

    .line 452
    move-object/from16 v16, v2

    .line 453
    .line 454
    move-object/from16 v21, v4

    .line 455
    .line 456
    move-object/from16 v22, v5

    .line 457
    .line 458
    move-object/from16 v23, v6

    .line 459
    .line 460
    invoke-direct/range {v15 .. v23}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;)V

    .line 461
    .line 462
    .line 463
    iget-object v2, v3, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;

    .line 464
    .line 465
    invoke-virtual {v2}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Landroid/net/NetworkAgent;->markConnected()V

    .line 469
    .line 470
    .line 471
    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 472
    .line 473
    goto :goto_4

    .line 474
    :cond_3
    invoke-virtual {v7, v11, v2, v12, v14}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 475
    .line 476
    .line 477
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 478
    .line 479
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 482
    .line 483
    .line 484
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 485
    .line 486
    iput v8, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    .line 487
    .line 488
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    .line 489
    .line 490
    .line 491
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 492
    .line 493
    iput-boolean v8, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    .line 494
    .line 495
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    .line 496
    .line 497
    invoke-interface {v0}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onSafeModeStatusChanged()V

    .line 498
    .line 499
    .line 500
    :goto_4
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 501
    .line 502
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 503
    .line 504
    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 505
    .line 506
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 507
    .line 508
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    if-eqz v0, :cond_4

    .line 516
    .line 517
    iget-object v0, v0, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 518
    .line 519
    const-string/jumbo v2, "vcn_tunnel_aggregation_sa_count_max"

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    goto :goto_5

    .line 527
    :cond_4
    move v0, v1

    .line 528
    :goto_5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    iget-object v2, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 533
    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    const-string v4, "Parallel tunnel count: "

    .line 537
    .line 538
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    invoke-virtual {v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    :goto_6
    add-int/lit8 v2, v0, -0x1

    .line 552
    .line 553
    if-ge v8, v2, :cond_b

    .line 554
    .line 555
    iget-object v2, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 556
    .line 557
    iget-object v3, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 558
    .line 559
    iget-object v2, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 560
    .line 561
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    new-instance v4, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 570
    .line 571
    invoke-direct {v4}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;-><init>()V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSessionParams;->getChildSaProposals()Ljava/util/List;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 583
    .line 584
    .line 585
    move-result v6

    .line 586
    if-eqz v6, :cond_5

    .line 587
    .line 588
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v6

    .line 592
    check-cast v6, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 593
    .line 594
    invoke-virtual {v4, v6}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addChildSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 595
    .line 596
    .line 597
    goto :goto_7

    .line 598
    :cond_5
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSessionParams;->getInboundTrafficSelectors()Ljava/util/List;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 607
    .line 608
    .line 609
    move-result v6

    .line 610
    if-eqz v6, :cond_6

    .line 611
    .line 612
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v6

    .line 616
    check-cast v6, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 617
    .line 618
    invoke-virtual {v4, v6}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 619
    .line 620
    .line 621
    goto :goto_8

    .line 622
    :cond_6
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSessionParams;->getOutboundTrafficSelectors()Ljava/util/List;

    .line 623
    .line 624
    .line 625
    move-result-object v5

    .line 626
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 631
    .line 632
    .line 633
    move-result v6

    .line 634
    if-eqz v6, :cond_7

    .line 635
    .line 636
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v6

    .line 640
    check-cast v6, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 641
    .line 642
    invoke-virtual {v4, v6}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addOutboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 643
    .line 644
    .line 645
    goto :goto_9

    .line 646
    :cond_7
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSessionParams;->getHardLifetimeSeconds()I

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSessionParams;->getSoftLifetimeSeconds()I

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    invoke-virtual {v4, v5, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->setLifetimeSeconds(II)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v4}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->build()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    new-instance v4, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;

    .line 662
    .line 663
    iget-object v5, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 664
    .line 665
    iget v6, v5, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 666
    .line 667
    invoke-direct {v4, v5, v6, v1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;IZ)V

    .line 668
    .line 669
    .line 670
    iget-object v3, v3, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 671
    .line 672
    invoke-virtual {v3, v2, v4}, Landroid/net/ipsec/ike/IkeSession;->openChildSession(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    .line 673
    .line 674
    .line 675
    add-int/2addr v8, v1

    .line 676
    goto :goto_6

    .line 677
    :pswitch_7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    .line 680
    .line 681
    iget-object v1, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 682
    .line 683
    iget v2, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 684
    .line 685
    iget-object v3, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 686
    .line 687
    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 688
    .line 689
    iget-object v4, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 690
    .line 691
    iget-object v5, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    .line 692
    .line 693
    iget v6, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    .line 694
    .line 695
    move-object/from16 v1, p0

    .line 696
    .line 697
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 698
    .line 699
    .line 700
    goto/16 :goto_b

    .line 701
    .line 702
    :pswitch_8
    iget-object v1, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 703
    .line 704
    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 705
    .line 706
    .line 707
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 708
    .line 709
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 710
    .line 711
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 712
    .line 713
    .line 714
    goto :goto_b

    .line 715
    :pswitch_9
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 716
    .line 717
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 718
    .line 719
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 720
    .line 721
    .line 722
    goto :goto_b

    .line 723
    :pswitch_a
    iget-object v1, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 724
    .line 725
    iget-object v2, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 726
    .line 727
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    .line 730
    .line 731
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 732
    .line 733
    iput-object v0, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 734
    .line 735
    if-nez v0, :cond_8

    .line 736
    .line 737
    const-string v0, "Underlying network lost"

    .line 738
    .line 739
    invoke-virtual {v1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    goto :goto_b

    .line 743
    :cond_8
    if-eqz v2, :cond_a

    .line 744
    .line 745
    iget-object v1, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 746
    .line 747
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 748
    .line 749
    invoke-virtual {v1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    if-nez v0, :cond_9

    .line 754
    .line 755
    goto :goto_a

    .line 756
    :cond_9
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 757
    .line 758
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 759
    .line 760
    if-eqz v1, :cond_b

    .line 761
    .line 762
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 763
    .line 764
    if-eqz v2, :cond_b

    .line 765
    .line 766
    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 767
    .line 768
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 769
    .line 770
    invoke-virtual {v7, v3, v1, v2, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 771
    .line 772
    .line 773
    goto :goto_b

    .line 774
    :cond_a
    :goto_a
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 775
    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    .line 777
    .line 778
    const-string v2, "Migrating to new network: "

    .line 779
    .line 780
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    iget-object v2, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 784
    .line 785
    iget-object v2, v2, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 786
    .line 787
    iget-object v2, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 788
    .line 789
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    iget-object v0, v7, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 800
    .line 801
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 802
    .line 803
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 804
    .line 805
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 806
    .line 807
    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 808
    .line 809
    invoke-virtual {v1, v0}, Landroid/net/ipsec/ike/IkeSession;->setNetwork(Landroid/net/Network;)V

    .line 810
    .line 811
    .line 812
    :cond_b
    :goto_b
    return-void

    .line 813
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 16
    .line 17
    iget-object v5, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 18
    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p3

    .line 21
    move-object v6, p4

    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection;->buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)Landroid/net/LinkProperties;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p3, p2, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;

    .line 27
    .line 28
    invoke-virtual {p3, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p2, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 39
    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 45
    .line 46
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    invoke-virtual {p2, p0}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
