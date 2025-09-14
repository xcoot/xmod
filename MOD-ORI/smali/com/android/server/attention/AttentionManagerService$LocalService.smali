.class public final Lcom/android/server/attention/AttentionManagerService$LocalService;
.super Landroid/attention/AttentionManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/attention/AttentionManagerService;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isAttentionServiceSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isProximitySupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsProximityEnabled:Z

    .line 4
    .line 5
    return p0
.end method

.method public final onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
