.class public final Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;
.super Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
