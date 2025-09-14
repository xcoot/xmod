.class public final Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ipsec/ike/IkeSessionCallback;


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
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

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
    const-string v1, "IkeClosed for token "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 9
    .line 10
    const-string v2, "IkeV2VpnRunner"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

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
    const-string v1, "IkeClosedExceptionally for token "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

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
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

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

.method public final onError(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "IkeError for token "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "IkeV2VpnRunner"

    .line 18
    .line 19
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onIkeSessionConnectionInfoChanged(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onIkeSessionConnectionInfoChanged for token "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 10
    .line 11
    const-string v2, "IkeV2VpnRunner"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 19
    .line 20
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 21
    .line 22
    invoke-virtual {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onIkeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onOpened(Landroid/net/ipsec/ike/IkeSessionConfiguration;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "IkeOpened for token "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 9
    .line 10
    const-string v2, "IkeV2VpnRunner"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

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
    const-string v3, "[IKEEvent-"

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object p1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    const-string v0, "] onIkeOpened obsolete token="

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
    const-string/jumbo p1, "onIkeOpened called for obsolete token "

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v1, 0x2

    .line 66
    invoke-virtual {p1, v1}, Landroid/net/ipsec/ike/IkeSessionConfiguration;->isIkeExtensionEnabled(I)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput-boolean v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionConfiguration;->getIkeSessionConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 86
    .line 87
    const-string v4, "] onIkeOpened token="

    .line 88
    .line 89
    const-string v5, ", localAddr="

    .line 90
    .line 91
    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getLocalAddress()Ljava/net/InetAddress;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v3, ", network="

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v3, ", mobikeEnabled= "

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-boolean v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onIkeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    return-void
.end method
