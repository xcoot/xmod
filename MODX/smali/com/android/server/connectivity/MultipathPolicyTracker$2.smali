.class public final Lcom/android/server/connectivity/MultipathPolicyTracker$2;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 3
    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 3
    iget-object p1, p1, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$2$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$2;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method
