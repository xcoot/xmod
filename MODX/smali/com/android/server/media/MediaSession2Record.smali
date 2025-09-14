.class public final Lcom/android/server/media/MediaSession2Record;
.super Lcom/android/server/media/MediaSessionRecordImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mController:Landroid/media/MediaController2;

.field public mIsClosed:Z

.field public mIsConnected:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPolicies:I

.field public final mService:Lcom/android/server/media/MediaSessionService;

.field public final mSessionToken:Landroid/media/Session2Token;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MediaSession2Record"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/media/Session2Token;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecordImpl;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 14
    iput-object p2, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    .line 16
    new-instance v1, Lcom/android/server/media/HandlerExecutor;

    .line 18
    new-instance v2, Landroid/os/Handler;

    .line 20
    invoke-direct {v2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    invoke-direct {v1, v2}, Lcom/android/server/media/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 26
    new-instance p3, Landroid/media/MediaController2$Builder;

    .line 28
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p3, p2, p1}, Landroid/media/MediaController2$Builder;-><init>(Landroid/content/Context;Landroid/media/Session2Token;)V

    .line 35
    new-instance p1, Lcom/android/server/media/MediaSession2Record$Controller2Callback;

    .line 37
    invoke-direct {p1, p0}, Lcom/android/server/media/MediaSession2Record$Controller2Callback;-><init>(Lcom/android/server/media/MediaSession2Record;)V

    .line 40
    invoke-virtual {p3, v1, p1}, Landroid/media/MediaController2$Builder;->setControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/MediaController2$Builder;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/media/MediaController2$Builder;->build()Landroid/media/MediaController2;

    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    .line 50
    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/android/server/media/MediaSession2Record;->mPolicies:I

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method


# virtual methods
.method public final checkPlaybackActiveState(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    .line 12
    invoke-virtual {p0}, Landroid/media/MediaController2;->isPlaybackActive()Z

    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 18
    move p0, v3

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move p0, v2

    .line 23
    :goto_0
    if-ne p0, p1, :cond_1

    .line 25
    move v2, v3

    .line 26
    :cond_1
    monitor-exit v0

    .line 27
    return v2

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/media/MediaSession2Record;->mIsClosed:Z

    .line 7
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    .line 9
    invoke-virtual {p0}, Landroid/media/MediaController2;->close()V

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "uniqueId="

    .line 4
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    move-result-object v0

    .line 8
    iget v1, p0, Lcom/android/server/media/MediaSessionRecordImpl;->mUniqueId:I

    .line 10
    const-string/jumbo v2, "token="

    .line 13
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v1, "controller="

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string p2, "  "

    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    const-string/jumbo v0, "playbackActive="

    .line 75
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object p2

    .line 79
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    .line 81
    invoke-virtual {p0}, Landroid/media/MediaController2;->isPlaybackActive()Z

    .line 84
    move-result p0

    .line 85
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public final expireTempEngaged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getForegroundServiceDelegationOptions()Landroid/app/ForegroundServiceDelegationOptions;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 3
    invoke-virtual {p0}, Landroid/media/Session2Token;->getPackageName()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSessionPolicies()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/media/MediaSession2Record;->mPolicies:I

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 3
    invoke-virtual {p0}, Landroid/media/Session2Token;->getUid()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getUserId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 3
    invoke-virtual {p0}, Landroid/media/Session2Token;->getUid()I

    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/media/MediaSession2Record;->mIsClosed:Z

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final isLinkedToNotification(Landroid/app/Notification;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isSystemPriority()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 8
    invoke-virtual {v1}, Landroid/media/Session2Token;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "/"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v1, p0, Lcom/android/server/media/MediaSessionRecordImpl;->mUniqueId:I

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " (userId="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/media/MediaSession2Record;->getUserId()I

    .line 33
    move-result p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string p0, ")"

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
