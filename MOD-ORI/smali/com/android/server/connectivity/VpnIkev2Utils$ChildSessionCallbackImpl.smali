.class public final Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ipsec/ike/ChildSessionCallback;


# instance fields
.field public final mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

.field public final mToken:I


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClosed()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ChildClosed for token "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 9
    .line 10
    const-string v2, "IkeV2VpnRunner"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 21
    .line 22
    invoke-virtual {v0, p0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ChildClosedExceptionally for token "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "IkeV2VpnRunner"

    .line 18
    .line 19
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 25
    .line 26
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 27
    .line 28
    invoke-virtual {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V
    .locals 7

    .line 1
    const-string v0, "ChildTransformCreated; Direction: "

    .line 2
    .line 3
    const-string v1, "; token "

    .line 4
    .line 5
    invoke-static {p2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 10
    .line 11
    const-string v2, "IkeV2VpnRunner"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 19
    .line 20
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v3, "[IKEEvent-"

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget-object p1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, "] onChildTransformCreated obsolete token="

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p1, "ChildTransformCreated for obsolete token "

    .line 60
    .line 61
    invoke-static {p0, p1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 68
    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 75
    .line 76
    const-string v5, "] onChildTransformCreated token="

    .line 77
    .line 78
    const-string v6, ", direction="

    .line 79
    .line 80
    invoke-static {p0, v3, v5, v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, ", transform="

    .line 87
    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :try_start_0
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 102
    .line 103
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 104
    .line 105
    invoke-virtual {v3}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1, v3}, Landroid/net/IpSecManager$IpSecTunnelInterface;->setUnderlyingNetwork(Landroid/net/Network;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    .line 113
    .line 114
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 115
    .line 116
    invoke-virtual {v1, v3, p2, p1}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception p1

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v1, "Transform application failed for token "

    .line 124
    .line 125
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {v2, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    .line 139
    .line 140
    .line 141
    :goto_0
    return-void
.end method

.method public final onIpSecTransformDeleted(Landroid/net/IpSecTransform;I)V
    .locals 1

    .line 1
    const-string p1, "ChildTransformDeleted; Direction: "

    .line 2
    .line 3
    const-string v0, "; for token "

    .line 4
    .line 5
    invoke-static {p2, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 10
    .line 11
    const-string p2, "IkeV2VpnRunner"

    .line 12
    .line 13
    invoke-static {p1, p0, p2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onIpSecTransformsMigrated(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 9

    .line 1
    const-string v0, "IkeV2VpnRunner"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "ChildTransformsMigrated; token "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 18
    .line 19
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object p1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "[IKEEvent-"

    .line 34
    .line 35
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, "] onChildMigrated obsolete token="

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p1, "IkeV2VpnRunner"

    .line 59
    .line 60
    const-string/jumbo p2, "onChildMigrated for obsolete token "

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p2, p1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, "[IKEEvent-"

    .line 75
    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 80
    .line 81
    const-string v4, "] onChildMigrated token="

    .line 82
    .line 83
    const-string v5, ", in="

    .line 84
    .line 85
    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, ", out="

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :try_start_0
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 113
    .line 114
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 116
    .line 117
    iget-object v4, v3, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 118
    .line 119
    if-eq v4, v0, :cond_1

    .line 120
    .line 121
    monitor-exit v2

    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :catchall_0
    move-exception p1

    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 132
    .line 133
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 134
    .line 135
    const/4 v5, 0x1

    .line 136
    new-array v6, v5, [Landroid/net/Network;

    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    aput-object v1, v6, v7

    .line 140
    .line 141
    iput-object v6, v4, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->calculateVpnMtu()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    iput v6, v4, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 148
    .line 149
    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_2

    .line 164
    .line 165
    new-instance p1, Landroid/net/ipsec/ike/exceptions/IkeIOException;

    .line 166
    .line 167
    new-instance p2, Ljava/io/IOException;

    .line 168
    .line 169
    const-string v1, "No valid addresses for MTU < 1280"

    .line 170
    .line 171
    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p1, p2}, Landroid/net/ipsec/ike/exceptions/IkeIOException;-><init>(Ljava/io/IOException;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    .line 178
    .line 179
    .line 180
    monitor-exit v2

    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    .line 184
    .line 185
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-direct {v6, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-interface {v6, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-nez v8, :cond_3

    .line 204
    .line 205
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 206
    .line 207
    iget-object v4, v3, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 208
    .line 209
    const-string v8, "MTU too low for IPv6; restarting network agent"

    .line 210
    .line 211
    invoke-virtual {v3, v4, v8}, Lcom/android/server/connectivity/Vpn;->startNewNetworkAgent(Landroid/net/NetworkAgent;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-eqz v4, :cond_4

    .line 223
    .line 224
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    check-cast v4, Landroid/net/LinkAddress;

    .line 229
    .line 230
    iget-object v6, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 231
    .line 232
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    invoke-virtual {v6, v8, v4}, Landroid/net/IpSecManager$IpSecTunnelInterface;->removeAddress(Ljava/net/InetAddress;I)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-nez v3, :cond_4

    .line 249
    .line 250
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 251
    .line 252
    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 253
    .line 254
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Vpn;->doSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V

    .line 255
    .line 256
    .line 257
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :try_start_2
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 259
    .line 260
    invoke-virtual {v2, v1}, Landroid/net/IpSecManager$IpSecTunnelInterface;->setUnderlyingNetwork(Landroid/net/Network;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    .line 264
    .line 265
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 266
    .line 267
    invoke-virtual {v1, v2, v7, p1}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V

    .line 268
    .line 269
    .line 270
    iget-object p1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    .line 271
    .line 272
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 273
    .line 274
    invoke-virtual {p1, v1, v5, p2}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :catch_0
    move-exception p1

    .line 279
    goto :goto_2

    .line 280
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 282
    :goto_2
    const-string p2, "IkeV2VpnRunner"

    .line 283
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v2, "Transform application failed for token "

    .line 287
    .line 288
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-static {p2, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    .line 302
    .line 303
    .line 304
    :goto_3
    return-void
.end method

.method public final onOpened(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .locals 11

    .line 1
    const-string v0, "IkeV2VpnRunner"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "ChildOpened for token "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    .line 18
    .line 19
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object p1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "[IKEEvent-"

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, "] onChildOpened obsolete token="

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p1, "IkeV2VpnRunner"

    .line 59
    .line 60
    const-string/jumbo v0, "onChildOpened called for obsolete token "

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0, p1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, "[IKEEvent-"

    .line 75
    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 80
    .line 81
    const-string v4, "] onChildOpened token="

    .line 82
    .line 83
    const-string v5, ", addr="

    .line 84
    .line 85
    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 86
    .line 87
    .line 88
    const-string v3, ", "

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v3, " dns="

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v3, ", "

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :try_start_0
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->calculateVpnMtu()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    const/4 v6, 0x0

    .line 150
    move v7, v6

    .line 151
    move v8, v7

    .line 152
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_1

    .line 157
    .line 158
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    check-cast v9, Landroid/net/LinkAddress;

    .line 163
    .line 164
    invoke-virtual {v9}, Landroid/net/LinkAddress;->isIpv6()Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    or-int/2addr v7, v10

    .line 169
    invoke-virtual {v9}, Landroid/net/LinkAddress;->isIpv4()Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    or-int/2addr v8, v9

    .line 174
    goto :goto_0

    .line 175
    :cond_1
    if-eqz v7, :cond_2

    .line 176
    .line 177
    if-nez v8, :cond_2

    .line 178
    .line 179
    const/16 v5, 0x500

    .line 180
    .line 181
    if-ge v4, v5, :cond_2

    .line 182
    .line 183
    new-instance p1, Landroid/net/ipsec/ike/exceptions/IkeIOException;

    .line 184
    .line 185
    new-instance v1, Ljava/io/IOException;

    .line 186
    .line 187
    const-string v2, "No valid addresses for MTU < 1280"

    .line 188
    .line 189
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-direct {p1, v1}, Landroid/net/ipsec/ike/exceptions/IkeIOException;-><init>(Ljava/io/IOException;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_5

    .line 199
    .line 200
    :catch_0
    move-exception p1

    .line 201
    goto/16 :goto_4

    .line 202
    .line 203
    :cond_2
    invoke-virtual {p1}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getOutboundTrafficSelectors()Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-static {v5}, Lcom/android/server/connectivity/VpnIkev2Utils;->getRoutesFromTrafficSelectors(Ljava/util/List;)Ljava/util/Collection;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-eqz v8, :cond_3

    .line 220
    .line 221
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    check-cast v8, Landroid/net/LinkAddress;

    .line 226
    .line 227
    iget-object v9, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 228
    .line 229
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    invoke-virtual {v9, v10, v8}, Landroid/net/IpSecManager$IpSecTunnelInterface;->addAddress(Ljava/net/InetAddress;I)V

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_3
    invoke-virtual {p1}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-eqz v7, :cond_4

    .line 254
    .line 255
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    check-cast v7, Ljava/net/InetAddress;

    .line 260
    .line 261
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_4
    iget-object p1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 270
    .line 271
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 276
    .line 277
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :try_start_1
    iget-object v8, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 279
    .line 280
    iget-object v9, v8, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 281
    .line 282
    if-eq v9, v0, :cond_5

    .line 283
    .line 284
    monitor-exit v7

    .line 285
    goto/16 :goto_5

    .line 286
    .line 287
    :catchall_0
    move-exception p1

    .line 288
    goto/16 :goto_3

    .line 289
    .line 290
    :cond_5
    iput-object v1, v8, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 291
    .line 292
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 293
    .line 294
    iput v4, v8, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 295
    .line 296
    iput-object v1, v8, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 297
    .line 298
    iget-object v1, v8, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 299
    .line 300
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 301
    .line 302
    .line 303
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 304
    .line 305
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 306
    .line 307
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 308
    .line 309
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    .line 311
    .line 312
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 313
    .line 314
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 315
    .line 316
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 317
    .line 318
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 319
    .line 320
    .line 321
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 322
    .line 323
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 324
    .line 325
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 326
    .line 327
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 331
    .line 332
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 333
    .line 334
    iget-object v2, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 335
    .line 336
    if-nez v2, :cond_6

    .line 337
    .line 338
    new-instance v2, Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .line 342
    .line 343
    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 344
    .line 345
    :cond_6
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 346
    .line 347
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 348
    .line 349
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 350
    .line 351
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 355
    .line 356
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 357
    .line 358
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 359
    .line 360
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 361
    .line 362
    .line 363
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 364
    .line 365
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 366
    .line 367
    const/4 v3, 0x1

    .line 368
    new-array v3, v3, [Landroid/net/Network;

    .line 369
    .line 370
    aput-object p1, v3, v6

    .line 371
    .line 372
    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 373
    .line 374
    iget-object p1, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 375
    .line 376
    if-nez p1, :cond_8

    .line 377
    .line 378
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_7

    .line 383
    .line 384
    iget-object p1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 385
    .line 386
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mprepareStatusIntent(Lcom/android/server/connectivity/Vpn;)V

    .line 387
    .line 388
    .line 389
    :cond_7
    iget-object p1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 390
    .line 391
    new-instance v1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;

    .line 392
    .line 393
    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/connectivity/Vpn$VpnRunner;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/Vpn;->agentConnect(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;)V

    .line 397
    .line 398
    .line 399
    monitor-exit v7

    .line 400
    goto :goto_5

    .line 401
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :try_start_2
    invoke-static {p1, v1}, Lcom/android/server/connectivity/Vpn;->doSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V

    .line 407
    .line 408
    .line 409
    iput v6, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 410
    .line 411
    goto :goto_5

    .line 412
    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 413
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 414
    :goto_4
    const-string v1, "IkeV2VpnRunner"

    .line 415
    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v3, "Error in ChildOpened for token "

    .line 419
    .line 420
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    .line 434
    .line 435
    .line 436
    :goto_5
    return-void
.end method
