.class public final Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

.field public final synthetic val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
.end method

.method public final onSuccess(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onSuccess(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
.end method
