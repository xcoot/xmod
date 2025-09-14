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

    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 6
    iput p2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 8
    return-void
.end method


# virtual methods
.method public final onClosed()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "IkeClosed for token "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 10
    const-string v2, "IkeV2VpnRunner"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 17
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 19
    const/4 v1, 0x0

    .line 20
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 22
    invoke-virtual {v0, p0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    .line 25
    return-void
.end method

.method public final onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "IkeClosedExceptionally for token "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "IkeV2VpnRunner"

    .line 19
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 24
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 26
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 28
    invoke-virtual {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    .line 31
    return-void
.end method

.method public final onError(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "IkeError for token "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    const-string v0, "IkeV2VpnRunner"

    .line 19
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    return-void
.end method

.method public final onIkeSessionConnectionInfoChanged(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onIkeSessionConnectionInfoChanged for token "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 11
    const-string v2, "IkeV2VpnRunner"

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 18
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 20
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 22
    invoke-virtual {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onIkeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 25
    return-void
.end method

.method public final onOpened(Landroid/net/ipsec/ike/IkeSessionConfiguration;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "IkeOpened for token "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 10
    const-string v2, "IkeV2VpnRunner"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 17
    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mToken:I

    .line 19
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    .line 24
    move-result v1

    .line 25
    const-string v3, "[IKEEvent-"

    .line 27
    if-nez v1, :cond_0

    .line 29
    iget-object p1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 31
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, "] onIkeOpened obsolete token="

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 58
    const-string/jumbo p1, "onIkeOpened called for obsolete token "

    .line 61
    invoke-static {p0, p1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v1, 0x2

    .line 66
    invoke-virtual {p1, v1}, Landroid/net/ipsec/ike/IkeSessionConfiguration;->isIkeExtensionEnabled(I)Z

    .line 69
    move-result v1

    .line 70
    iput-boolean v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    .line 72
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionConfiguration;->getIkeSessionConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 75
    move-result-object p1

    .line 76
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 78
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 87
    const-string v4, "] onIkeOpened token="

    .line 89
    const-string v5, ", localAddr="

    .line 91
    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 94
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getLocalAddress()Ljava/net/InetAddress;

    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string v3, ", network="

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    const-string v3, ", mobikeEnabled= "

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-boolean v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onIkeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 133
    :goto_0
    return-void
.end method
