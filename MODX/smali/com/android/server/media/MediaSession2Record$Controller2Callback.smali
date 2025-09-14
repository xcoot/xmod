.class public final Lcom/android/server/media/MediaSession2Record$Controller2Callback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSession2Record;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSession2Record;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    .line 3
    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    const-string p1, "MediaSession2Record"

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v1, "connected to "

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    .line 17
    iget-object v1, v1, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", allowed="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    .line 39
    iget-object p1, p1, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    .line 41
    monitor-enter p1

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    .line 44
    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    .line 47
    iget-object p2, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    .line 49
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p2, p0, p1}, Lcom/android/server/media/MediaSessionService;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Landroid/media/session/PlaybackState;)V

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public final onDisconnected(Landroid/media/MediaController2;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    const-string p1, "MediaSession2Record"

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v1, "disconnected from "

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    .line 17
    iget-object v1, v1, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    .line 31
    iget-object p1, p1, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    .line 33
    monitor-enter p1

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    .line 39
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    .line 41
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 44
    monitor-enter v1

    .line 45
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    throw p0
.end method

.method public final onPlaybackActiveChanged(Landroid/media/MediaController2;Z)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    const-string p1, "MediaSession2Record"

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v1, "playback active changed, "

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    .line 17
    iget-object v1, v1, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", active="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    .line 39
    iget-object p1, p1, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    .line 41
    monitor-enter p1

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    .line 44
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    .line 46
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 p1, 0x0

    .line 48
    invoke-virtual {v0, p0, p2, p1}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;ZLandroid/media/session/PlaybackState;)V

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p0
.end method
