.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 3
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 8
    if-eqz p3, :cond_4

    .line 10
    iget v0, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 12
    if-eq v0, p2, :cond_0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    iget v0, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    .line 17
    const/16 v1, 0x1d

    .line 19
    if-lt v0, v1, :cond_3

    .line 21
    iget-boolean p3, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    .line 23
    if-nez p3, :cond_3

    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 28
    const/16 p3, 0x20

    .line 30
    invoke-virtual {p1, p2, p3}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter p2

    .line 40
    :try_start_1
    const-string p1, "MediaProjectionManagerService"

    .line 42
    const-string p3, "Content Recording: Stopped MediaProjection due to foreground service change"

    .line 44
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 49
    if-eqz p0, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    monitor-exit p2

    .line 58
    goto :goto_3

    .line 59
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    goto :goto_4

    .line 63
    :cond_3
    :try_start_2
    monitor-exit p1

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    :goto_2
    monitor-exit p1

    .line 66
    :goto_3
    return-void

    .line 67
    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    throw p0
.end method

.method public final onProcessDied(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
