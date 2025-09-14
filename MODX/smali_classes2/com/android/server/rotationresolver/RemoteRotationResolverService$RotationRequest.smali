.class final Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

.field public mCancellation:Landroid/os/ICancellationSignal;

.field public final mCancellationSignalInternal:Landroid/os/CancellationSignal;

.field public final mIRotationResolverCallback:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;

.field public mIsDispatched:Z

.field public mIsFulfilled:Z

.field public final mLock:Ljava/lang/Object;

.field final mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

.field public final mRequestStartTimeMillis:J


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 7
    .line 8
    new-instance p1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;-><init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIRotationResolverCallback:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCancellationSignalInternal:Landroid/os/CancellationSignal;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    iput-wide p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRequestStartTimeMillis:J

    .line 22
    .line 23
    iput-object p4, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final cancelInternal()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p0, v0}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
