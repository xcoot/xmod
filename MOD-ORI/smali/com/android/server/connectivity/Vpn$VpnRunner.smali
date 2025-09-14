.class abstract Lcom/android/server/connectivity/Vpn$VpnRunner;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final exit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exitVpnRunner()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 8
    .line 9
    sget-object v1, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->cleanupVpnStateLocked()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public abstract exitVpnRunner()V
.end method
