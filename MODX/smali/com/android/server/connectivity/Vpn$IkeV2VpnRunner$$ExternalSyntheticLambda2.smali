.class public final synthetic Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;ILandroid/net/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 6
    iput p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;->f$2:Landroid/net/Network;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 3
    iget v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;->f$1:I

    .line 5
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;->f$2:Landroid/net/Network;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 13
    new-instance v1, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;

    .line 15
    invoke-direct {v1, p0}, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;-><init>(Landroid/net/Network;)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->handleSessionLost(Ljava/lang/Exception;)V

    .line 21
    iget-object p0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 26
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 28
    if-eq v2, v0, :cond_0

    .line 30
    monitor-exit p0

    .line 31
    goto :goto_2

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 36
    const-string v3, "Network lost"

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 41
    monitor-exit p0

    .line 42
    goto :goto_1

    .line 43
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v0

    .line 45
    :cond_1
    const-string p0, "IkeV2VpnRunner"

    .line 47
    const-string v2, "Scheduled handleSessionLost fired for obsolete token "

    .line 49
    invoke-static {v1, v2, p0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_1
    const/4 p0, 0x0

    .line 53
    iput-object p0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 55
    :goto_2
    return-void
.end method
