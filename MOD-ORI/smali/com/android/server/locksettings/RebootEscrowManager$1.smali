.class public final Lcom/android/server/locksettings/RebootEscrowManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/RebootEscrowManager;

.field public final synthetic val$rebootEscrowUsers:Ljava/util/List;

.field public final synthetic val$retryHandler:Landroid/os/Handler;

.field public final synthetic val$users:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$users:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$rebootEscrowUsers:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 12
    .line 13
    iget-boolean v0, p1, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataWithRetry:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p1, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataWithRetry:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$users:Ljava/util/List;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$rebootEscrowUsers:Ljava/util/List;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v2, v1, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    const-string p1, "RebootEscrowManager"

    .line 2
    .line 3
    const-string v0, "Network lost, still attempting to load escrow key."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onUnavailable()V
    .locals 4

    .line 1
    const-string v0, "RebootEscrowManager"

    .line 2
    .line 3
    const-string v1, "Failed to connect to network within timeout"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->this$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$users:Ljava/util/List;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$1;->val$retryHandler:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
