.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClientCallbacks:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mWatcherCallbacks:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, p1, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 18
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 20
    new-instance p1, Landroid/util/ArrayMap;

    .line 22
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    .line 27
    new-instance p1, Landroid/util/ArrayMap;

    .line 29
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method public final dispatchResize(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;II)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    const-string p0, "MediaProjectionManagerService"

    .line 5
    const-string p1, "Tried to dispatch resize notification for a null media projection. Ignoring!"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    .line 16
    check-cast v0, Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/media/projection/IMediaProjectionCallback;

    .line 38
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v3, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda0;

    .line 42
    invoke-direct {v3, v1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/media/projection/IMediaProjectionCallback;II)V

    .line 45
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    monitor-exit p1

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final dispatchVisibilityChanged(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    const-string p0, "MediaProjectionManagerService"

    .line 5
    const-string p1, "Tried to dispatch visibility changed notification for a null media projection. Ignoring!"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    .line 16
    check-cast v0, Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/media/projection/IMediaProjectionCallback;

    .line 38
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v3, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda1;

    .line 42
    invoke-direct {v3, v1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/media/projection/IMediaProjectionCallback;Z)V

    .line 45
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    monitor-exit p1

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final remove(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    .line 6
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    .line 9
    move-result-object p1

    .line 10
    check-cast p0, Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method
