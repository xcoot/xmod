.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

.field public final mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

.field public final mSession:Landroid/view/ContentRecordingSession;


# direct methods
.method public constructor <init>(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mSession:Landroid/view/ContentRecordingSession;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mSession:Landroid/view/ContentRecordingSession;

    .line 6
    .line 7
    invoke-interface {v0, v1, p0}, Landroid/media/projection/IMediaProjectionWatcherCallback;->onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string v0, "MediaProjectionManagerService"

    .line 13
    .line 14
    const-string v1, "Failed to notify content recording session changed"

    .line 15
    .line 16
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
