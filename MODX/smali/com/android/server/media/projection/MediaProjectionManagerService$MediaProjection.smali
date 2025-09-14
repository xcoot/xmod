.class final Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
.super Landroid/media/projection/IMediaProjection$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCallback:Landroid/media/projection/IMediaProjectionCallback;

.field public mCountStarts:I

.field public final mCreateTimeMs:J

.field public mDeathEater:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda1;

.field public final mIsPrivileged:Z

.field public mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

.field public mRestoreSystemAlertWindow:Z

.field public mSession:Landroid/view/ContentRecordingSession;

.field public final mTargetSdkVersion:I

.field public mTaskId:I

.field public final mTimeoutMs:J

.field public mToken:Landroid/os/IBinder;

.field public final mType:I

.field public mVirtualDisplayId:I

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

.field public final uid:I

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZ)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 3
    invoke-direct {p0}, Landroid/media/projection/IMediaProjection$Stub;-><init>()V

    .line 6
    const-wide/16 v0, 0x5

    .line 8
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 15
    move-result-wide v0

    .line 16
    const/4 v2, -0x1

    .line 17
    iput v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTaskId:I

    .line 19
    const/4 v3, 0x0

    .line 20
    iput-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    .line 22
    iput-wide v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTimeoutMs:J

    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCountStarts:I

    .line 27
    iput v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    .line 29
    iput p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    .line 31
    iput p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 33
    iput-object p4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 35
    new-instance p2, Landroid/os/UserHandle;

    .line 37
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 40
    move-result p4

    .line 41
    invoke-direct {p2, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 44
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    .line 46
    iput p5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    .line 48
    iput-boolean p6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    .line 50
    iget-object p2, p1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 58
    move-result-wide p4

    .line 59
    iput-wide p4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCreateTimeMs:J

    .line 61
    iget-object p1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 63
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1, p3, p0, v0}, Landroid/app/ActivityManagerInternal;->notifyMediaProjectionEvent(ILandroid/os/IBinder;I)V

    .line 70
    return-void
.end method


# virtual methods
.method public final applyVirtualDisplayFlags(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->applyVirtualDisplayFlags_enforcePermission()V

    .line 4
    iget p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    .line 6
    if-nez p0, :cond_0

    .line 8
    and-int/lit8 p0, p1, -0x9

    .line 10
    or-int/lit8 p0, p0, 0x12

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    if-ne p0, v0, :cond_1

    .line 16
    and-int/lit8 p0, p1, -0x12

    .line 18
    or-int/lit8 p0, p0, 0xa

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 v0, 0x2

    .line 22
    if-ne p0, v0, :cond_2

    .line 24
    and-int/lit8 p0, p1, -0x9

    .line 26
    or-int/lit8 p0, p0, 0x13

    .line 28
    return p0

    .line 29
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 31
    const-string p1, "Unknown MediaProjection type"

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
.end method

.method public final canProjectAudio()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_1

    .line 9
    if-nez p0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :cond_1
    :goto_0
    return v0
.end method

.method public final canProjectSecureVideo()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final canProjectVideo()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :cond_1
    :goto_0
    return v0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "("

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", uid="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "): "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    .line 30
    if-eqz p0, :cond_2

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eq p0, v1, :cond_1

    .line 35
    const/4 v1, 0x2

    .line 36
    if-eq p0, v1, :cond_0

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p0, "TYPE_PRESENTATION"

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p0, "TYPE_MIRRORING"

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string p0, "TYPE_SCREEN_CAPTURE"

    .line 51
    :goto_0
    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 54
    return-void
.end method

.method public final getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->getLaunchCookie_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    .line 6
    return-object p0
.end method

.method public final getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 3

    .line 1
    new-instance v0, Landroid/media/projection/MediaProjectionInfo;

    .line 3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    .line 7
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    .line 9
    invoke-direct {v0, v1, v2, p0}, Landroid/media/projection/MediaProjectionInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ActivityOptions$LaunchCookie;)V

    .line 12
    return-object v0
.end method

.method public final getTaskId()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->getTaskId_enforcePermission()V

    .line 4
    iget p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTaskId:I

    .line 6
    return p0
.end method

.method public final isValid()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->isValid_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 6
    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 11
    iget-object v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    move-result-wide v1

    .line 20
    iget-wide v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCreateTimeMs:J

    .line 22
    sub-long/2addr v1, v3

    .line 23
    iget-wide v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTimeoutMs:J

    .line 25
    cmp-long v1, v1, v3

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-lez v1, :cond_0

    .line 31
    move v1, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v1, v2

    .line 34
    :goto_0
    iget v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    .line 36
    const/4 v5, -0x1

    .line 37
    if-eq v4, v5, :cond_1

    .line 39
    move v4, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v4, v2

    .line 42
    :goto_1
    if-nez v1, :cond_2

    .line 44
    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCountStarts:I

    .line 46
    if-gt v1, v3, :cond_2

    .line 48
    if-nez v4, :cond_2

    .line 50
    monitor-exit v0

    .line 51
    return v3

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 56
    iget-object v3, v1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mInjector:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    .line 58
    iget-object v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iget-object v3, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 65
    iget v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 67
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 70
    move-result-object v1

    .line 71
    const-wide/32 v4, 0xfddea07

    .line 74
    invoke-static {v4, v5, v3, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 80
    monitor-exit v0

    .line 81
    return v2

    .line 82
    :cond_3
    const-string v1, "MediaProjectionManagerService"

    .line 84
    const-string v2, "Reusing token: Throw exception due to invalid projection."

    .line 86
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 91
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 93
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 96
    new-instance p0, Ljava/lang/SecurityException;

    .line 98
    const-string v1, "Don\'t re-use the resultData to retrieve the same projection instance, and don\'t use a token that has timed out. Don\'t take multiple captures by invoking MediaProjection#createVirtualDisplay multiple times on the same instance."

    .line 100
    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p0

    .line 104
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p0
.end method

.method public final notifyVirtualDisplayCreated(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->notifyVirtualDisplayCreated_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 6
    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iput p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    .line 11
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    .line 13
    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    .line 18
    move-result p1

    .line 19
    const/4 v1, -0x1

    .line 20
    if-ne p1, v1, :cond_0

    .line 22
    const-string p1, "MediaProjectionManagerService"

    .line 24
    const-string v1, "Virtual display now created, so update session with the virtual display id"

    .line 26
    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    .line 31
    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/ContentRecordingSession;->setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;

    .line 36
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 38
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    .line 40
    invoke-virtual {p1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_0

    .line 46
    const-string p0, "MediaProjectionManagerService"

    .line 48
    const-string p1, "Failed to set session for virtual display id"

    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 5
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 7
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    .line 12
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    .line 15
    move-result-object v1

    .line 16
    check-cast p0, Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string/jumbo p1, "callback must not be null"

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
.end method

.method public final setLaunchCookie(Landroid/app/ActivityOptions$LaunchCookie;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->setLaunchCookie_enforcePermission()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mLaunchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    .line 6
    return-void
.end method

.method public final setTaskId(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->setTaskId_enforcePermission()V

    .line 4
    iput p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTaskId:I

    .line 6
    return-void
.end method

.method public final start(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 9

    .line 1
    const-string v0, "UID "

    .line 3
    if-eqz p1, :cond_5

    .line 5
    const-string v1, "MediaProjectionManagerService"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    const-string v3, "Start the token instance "

    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 26
    iget-object v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 28
    iget v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 30
    const/16 v3, 0x20

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    .line 35
    move-result v1

    .line 36
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 38
    iget-object v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 40
    monitor-enter v2

    .line 41
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 43
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Lcom/android/server/media/projection/MediaProjectionManagerService;->isCurrentProjection(Landroid/os/IBinder;)Z

    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x1

    .line 52
    if-eqz v3, :cond_0

    .line 54
    const-string p1, "MediaProjectionManagerService"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 64
    move-result v0

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, " attempted to start already started MediaProjection"

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCountStarts:I

    .line 82
    add-int/2addr p1, v4

    .line 83
    iput p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCountStarts:I

    .line 85
    monitor-exit v2

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto/16 :goto_5

    .line 90
    :cond_0
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    .line 92
    const/16 v3, 0x1d

    .line 94
    if-lt v0, v3, :cond_2

    .line 96
    iget-boolean v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    .line 98
    if-nez v0, :cond_2

    .line 100
    if-eqz v1, :cond_1

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 105
    const-string p1, "Media projections require a foreground service of type ServiceInfo.FOREGROUND_SERVICE_TYPE_MEDIA_PROJECTION"

    .line 107
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    .line 117
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda1;

    .line 119
    invoke-direct {v1, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Landroid/media/projection/IMediaProjectionCallback;)V

    .line 122
    iput-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda1;

    .line 124
    const/4 v3, 0x0

    .line 125
    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    .line 130
    if-nez v0, :cond_4

    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 135
    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :try_start_3
    iget-object v5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 138
    iget-object v5, v5, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 140
    iget-object v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 142
    iget v7, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 144
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 147
    move-result v7

    .line 148
    const/16 v8, 0x1000

    .line 150
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 153
    move-result-object v5

    .line 154
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 156
    const-string v6, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 158
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_3

    .line 164
    iget-object v5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 166
    iget-object v5, v5, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 168
    iget v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 170
    iget-object v7, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 172
    const/16 v8, 0x18

    .line 174
    invoke-virtual {v5, v8, v6, v7}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    .line 177
    move-result v5

    .line 178
    const/4 v6, 0x3

    .line 179
    if-ne v5, v6, :cond_3

    .line 181
    iget-object v5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 183
    iget-object v5, v5, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 185
    iget v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 187
    iget-object v7, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 189
    invoke-virtual {v5, v8, v6, v7, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 192
    iput-boolean v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mRestoreSystemAlertWindow:Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    goto :goto_1

    .line 195
    :catchall_1
    move-exception p0

    .line 196
    goto :goto_3

    .line 197
    :catch_0
    move-exception p0

    .line 198
    goto :goto_2

    .line 199
    :cond_3
    :goto_1
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    goto :goto_4

    .line 203
    :goto_2
    :try_start_5
    const-string p1, "MediaProjectionManagerService"

    .line 205
    const-string v3, "Package not found, aborting MediaProjection"

    .line 207
    invoke-static {p1, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 210
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    monitor-exit v2

    .line 214
    return-void

    .line 215
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    throw p0

    .line 219
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 221
    invoke-static {v0, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mstartProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 224
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 229
    iget p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCountStarts:I

    .line 231
    add-int/2addr p1, v4

    .line 232
    iput p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCountStarts:I

    .line 234
    monitor-exit v2

    .line 235
    return-void

    .line 236
    :catch_1
    move-exception p0

    .line 237
    const-string p1, "MediaProjectionManagerService"

    .line 239
    const-string v0, "MediaProjectionCallbacks must be valid, aborting MediaProjection"

    .line 241
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    monitor-exit v2

    .line 245
    return-void

    .line 246
    :goto_5
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 247
    throw p0

    .line 248
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 250
    const-string/jumbo p1, "callback must not be null"

    .line 253
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 256
    throw p0
.end method

.method public final stop()V
    .locals 10

    .line 1
    const-string v0, "Content Recording: handling stopping this projection token createTime= "

    .line 3
    const-string v1, "Attempted to stop inactive MediaProjection (uid="

    .line 5
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 7
    iget-object v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 12
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v3, v4}, Lcom/android/server/media/projection/MediaProjectionManagerService;->isCurrentProjection(Landroid/os/IBinder;)Z

    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 22
    const-string p0, "MediaProjectionManagerService"

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", pid="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ")"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    monitor-exit v2

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_3

    .line 64
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mRestoreSystemAlertWindow:Z

    .line 66
    const/4 v3, 0x0

    .line 67
    if-eqz v1, :cond_2

    .line 69
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 75
    iget-object v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 77
    iget v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 79
    iget-object v7, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 81
    const/16 v8, 0x18

    .line 83
    invoke-virtual {v1, v8, v6, v7}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 91
    iget-object v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 93
    iget v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 95
    iget-object v7, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 97
    const/4 v9, 0x3

    .line 98
    invoke-virtual {v1, v8, v6, v7, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 101
    goto :goto_0

    .line 102
    :catchall_1
    move-exception p0

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mRestoreSystemAlertWindow:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    goto :goto_2

    .line 110
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    throw p0

    .line 114
    :cond_2
    :goto_2
    const-string v1, "MediaProjectionManagerService"

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-wide v5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCreateTimeMs:J

    .line 123
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    const-string v0, " countStarts= "

    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCountStarts:I

    .line 133
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 145
    invoke-static {v0, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mstopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    .line 150
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda1;

    .line 152
    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 155
    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    .line 158
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 163
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 165
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 168
    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mHandler:Landroid/os/Handler;

    .line 170
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda0;

    .line 172
    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void

    .line 179
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    throw p0
.end method

.method public final unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 5
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string/jumbo p1, "callback must not be null"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method
