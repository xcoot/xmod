.class public final Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "IkeV2VpnRunner"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mTag:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onAvailable called for network: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;Landroid/net/Network;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "NC changed for net "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, " : "

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v0, p0, p2}, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;Landroid/net/NetworkCapabilities;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "LP changed for net "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, " : "

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v0, p0, p2}, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;Landroid/net/LinkProperties;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onLost called for network: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;Landroid/net/Network;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
