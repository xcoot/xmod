.class public final Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;
.super Landroid/service/attention/IProximityUpdateCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 3
    invoke-direct {p0}, Landroid/service/attention/IProximityUpdateCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onProximityUpdate(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 3
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    .line 5
    invoke-interface {v0, p1, p2}, Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;->onProximityUpdate(D)V

    .line 8
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 10
    iget-object p1, p1, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 12
    iget-object p1, p1, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 17
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 19
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    .line 22
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method
