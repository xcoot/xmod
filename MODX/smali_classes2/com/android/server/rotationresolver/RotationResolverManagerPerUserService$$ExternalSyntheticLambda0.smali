.class public final synthetic Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "RotationResolverManagerPerUserService"

    .line 15
    .line 16
    const-string v2, "Trying to cancel the remote request. Reason: Client cancelled."

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method
