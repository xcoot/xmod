.class public final Lcom/android/server/job/controllers/ConnectivityController$4;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$4;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 3
    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onRestrictBackgroundChanged(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onRestrictBackgroundChanged: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "JobScheduler.Connectivity"

    .line 22
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$4;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 27
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 29
    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 37
    return-void
.end method

.method public final onUidPoliciesChanged(II)V
    .locals 1

    .line 1
    sget-boolean p2, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 3
    if-eqz p2, :cond_0

    .line 5
    const-string/jumbo p2, "onUidPoliciesChanged: "

    .line 8
    const-string v0, "JobScheduler.Connectivity"

    .line 10
    invoke-static {p1, p2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$4;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 15
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    .line 17
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 19
    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicyManager;->getRestrictBackgroundStatus(I)I

    .line 22
    move-result p0

    .line 23
    const/4 v0, 0x3

    .line 24
    invoke-virtual {p2, v0, p1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 31
    return-void
.end method
