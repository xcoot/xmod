.class public final Lcom/android/server/net/NetworkPolicyManagerService$19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onUpstreamChanged(Landroid/net/Network;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onUpstreamChanged() network : "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "NetworkPolicy"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 23
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    .line 25
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 31
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 33
    const/16 v1, 0x3ef

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 48
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 50
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    .line 52
    const/4 v1, 0x1

    .line 53
    xor-int/2addr p1, v1

    .line 54
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 56
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 61
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    .line 63
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 65
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    .line 67
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    return-void
.end method
