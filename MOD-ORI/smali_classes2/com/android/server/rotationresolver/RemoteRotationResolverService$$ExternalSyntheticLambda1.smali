.class public final synthetic Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    monitor-exit v1

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :try_start_1
    iget-object v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCancellation:Landroid/os/ICancellationSignal;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->cancel()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCancellation:Landroid/os/ICancellationSignal;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    :try_start_2
    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    .line 34
    .line 35
    const-string p0, "RemoteRotationResolverService"

    .line 36
    .line 37
    const-string v0, "Failed to cancel request in remote service."

    .line 38
    .line 39
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    monitor-exit v1

    .line 43
    :goto_1
    return-void

    .line 44
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw p0

    .line 46
    :pswitch_0
    sget v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    .line 56
    .line 57
    invoke-interface {v2, v0}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    .line 58
    .line 59
    .line 60
    const-string v0, "RemoteRotationResolverService"

    .line 61
    .line 62
    const-string v2, "Trying to cancel the remote request. Reason: Timed out."

    .line 63
    .line 64
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    goto :goto_4

    .line 73
    :cond_2
    :goto_3
    monitor-exit v1

    .line 74
    return-void

    .line 75
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    throw p0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
