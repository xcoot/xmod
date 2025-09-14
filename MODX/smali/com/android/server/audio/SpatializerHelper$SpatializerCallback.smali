.class public final Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;
.super Landroid/media/INativeSpatializerCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 3
    invoke-direct {p0}, Landroid/media/INativeSpatializerCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onLevelChanged(B)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "SpatializerCallback.onLevelChanged level:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 23
    if-eqz p1, :cond_1

    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq p1, v1, :cond_2

    .line 28
    const/4 v1, 0x2

    .line 29
    if-ne p1, v1, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "Unexpected spatializer level:"

    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    :cond_2
    :goto_0
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0
.end method

.method public final onOutputChanged(I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "SpatializerCallback.onOutputChanged output:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 23
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    .line 25
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eq v1, p1, :cond_1

    .line 30
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    .line 32
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-ge v1, v0, :cond_0

    .line 39
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    .line 41
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/media/ISpatializerOutputCallback;

    .line 47
    invoke-interface {v2, p1}, Landroid/media/ISpatializerOutputCallback;->dispatchSpatializerOutputChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v2

    .line 52
    const-string v3, "AS.SpatializerHelper"

    .line 54
    const-string v4, "Error in dispatchOutputUpdate"

    .line 56
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 67
    :cond_1
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    throw p0
.end method
