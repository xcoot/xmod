.class public final Lcom/android/server/media/MediaSessionRecord$SessionStub;
.super Landroid/media/session/ISession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    invoke-direct {p0}, Landroid/media/session/ISession$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final destroySession()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 7
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 9
    iget-object v3, v2, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 15
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    :catchall_1
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    throw p0
.end method

.method public final getBinderForSetQueue()Landroid/os/IBinder;
    .locals 3

    .line 1
    new-instance v0, Landroid/media/session/ParcelableListBinder;

    .line 3
    const-class v1, Landroid/media/session/MediaSession$QueueItem;

    .line 5
    new-instance v2, Lcom/android/server/media/MediaSessionRecord$SessionStub$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v2, p0}, Lcom/android/server/media/MediaSessionRecord$SessionStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaSessionRecord$SessionStub;)V

    .line 10
    invoke-direct {v0, v1, v2}, Landroid/media/session/ParcelableListBinder;-><init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 13
    return-object v0
.end method

.method public final getController()Landroid/media/session/ISessionController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 5
    return-object p0
.end method

.method public final resetQueue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 14
    const/4 v0, 0x3

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p0
.end method

.method public final sanitizeMediaMetadata(Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    .line 7
    invoke-direct {v1, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    .line 10
    sget-object v2, Lcom/android/server/media/MediaSessionRecord;->ART_URIS:[Ljava/lang/String;

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    const/4 v4, 0x3

    .line 14
    if-ge v3, v4, :cond_3

    .line 16
    aget-object v4, v2, v3

    .line 18
    invoke-virtual {p1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v5

    .line 22
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    const-string/jumbo v7, "content"

    .line 40
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 49
    iget-object v7, v6, Lcom/android/server/media/MediaSessionRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 51
    iget v9, v6, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 53
    iget-object v10, v6, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 55
    invoke-static {v5}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 58
    move-result-object v11

    .line 59
    iget-object v6, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 61
    iget v6, v6, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 63
    invoke-static {v5, v6}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 66
    move-result v13

    .line 67
    move-object v8, v7

    .line 68
    check-cast v8, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 70
    const/4 v12, 0x1

    .line 71
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    invoke-virtual {v1, v4, v0}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 78
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->size()I

    .line 88
    return-object p0
.end method

.method public final sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 5
    if-nez p2, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 11
    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 14
    move-object p2, v0

    .line 15
    :goto_0
    const/4 v0, 0x6

    .line 16
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    return-void
.end method

.method public final setActive(Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const-class v3, Landroid/app/ActivityManagerInternal;

    .line 14
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 20
    invoke-virtual {v3, v2, v0, v1}, Landroid/app/ActivityManagerInternal;->logFgsApiBegin(III)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-class v3, Landroid/app/ActivityManagerInternal;

    .line 26
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 32
    invoke-virtual {v3, v2, v0, v1}, Landroid/app/ActivityManagerInternal;->logFgsApiEnd(III)V

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 37
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 42
    iput-boolean p1, v1, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->updateUserEngagedStateIfNeededLocked(Z)V

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    move-result-wide v0

    .line 53
    :try_start_1
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 55
    iget-object v2, p1, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 57
    iget-object v3, p1, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 59
    invoke-virtual {v2, p1, v3}, Lcom/android/server/media/MediaSessionService;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Landroid/media/session/PlaybackState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 67
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 69
    const/4 p1, 0x7

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    throw p0

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    throw p0
.end method

.method public final setCurrentVolume(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 7
    const/16 p1, 0x8

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 12
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 8
    if-nez p1, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    .line 14
    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 17
    move-object p1, v2

    .line 18
    :goto_0
    iput-object p1, v1, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 23
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 25
    const/4 p1, 0x5

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method public final setFlags(I)V
    .locals 5

    .line 1
    const/high16 v0, 0x10000

    .line 3
    and-int/2addr v0, p1

    .line 4
    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    move-result v1

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 16
    iget-object v3, v3, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 18
    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 20
    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    .line 22
    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 31
    const-string p1, "Must hold the MODIFY_PHONE_STATE permission."

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0

    .line 37
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 39
    int-to-long v2, p1

    .line 40
    iput-wide v2, v1, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    .line 42
    if-eqz v0, :cond_2

    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 47
    move-result-wide v0

    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 50
    iget-object v2, p1, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 52
    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionService;->setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw p0

    .line 64
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 66
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 68
    const/4 p1, 0x7

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 72
    return-void
.end method

.method public final setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 5
    return-void
.end method

.method public final setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V
    .locals 11

    .line 1
    const-string/jumbo v0, "setMediaButtonBroadcastReceiver(): Ignoring invalid component name="

    .line 4
    const-string v1, "Invalid component name: "

    .line 6
    const-string/jumbo v2, "receiver does not belong to package name provided to MediaSessionRecord. Pkg = "

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v3

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v4

    .line 17
    if-eqz p1, :cond_1

    .line 19
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 21
    iget-object v6, v6, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    move-result-object v7

    .line 27
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "238177121"

    .line 36
    const/4 v1, -0x1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    const-string v3, ""

    .line 43
    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    const v1, 0x534e4554

    .line 50
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 62
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string p0, ", Receiver Pkg = "

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw v0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto/16 :goto_1

    .line 90
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 92
    iget v6, v2, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/4 v7, 0x1

    .line 95
    and-int/2addr v6, v7

    .line 96
    if-eqz v6, :cond_2

    .line 98
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    return-void

    .line 102
    :cond_2
    :try_start_1
    iget-object v6, v2, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 104
    iget v2, v2, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 106
    new-instance v8, Landroid/content/Intent;

    .line 108
    const-string v9, "android.intent.action.MEDIA_BUTTON"

    .line 110
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    const/high16 v9, 0x10000000

    .line 115
    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 128
    move-result-object v6

    .line 129
    const-wide/16 v9, 0x0

    .line 131
    invoke-static {v9, v10}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 134
    move-result-object v9

    .line 135
    invoke-virtual {v6, v8, v9, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;

    .line 138
    move-result-object v2

    .line 139
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 142
    move-result v2

    .line 143
    xor-int/2addr v2, v7

    .line 144
    if-nez v2, :cond_4

    .line 146
    const-wide/32 v6, 0x1018a063

    .line 149
    invoke-static {v6, v7, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_3

    .line 155
    const-string p0, "MediaSessionRecord"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p1

    .line 169
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    return-void

    .line 176
    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    throw p0

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 196
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 198
    new-instance v2, Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 200
    const/4 v3, 0x0

    .line 201
    invoke-direct {v2, v1, v3, p1, v7}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    .line 204
    iput-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 206
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 208
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 210
    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    return-void

    .line 217
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    throw p0
.end method

.method public final setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 11
    iget v3, v3, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v4, 0x1

    .line 14
    and-int/2addr v3, v4

    .line 15
    if-eqz v3, :cond_0

    .line 17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    return-void

    .line 21
    :cond_0
    if-eqz p1, :cond_2

    .line 23
    :try_start_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 29
    const-wide/32 p0, 0x1041a3ac

    .line 32
    invoke-static {p0, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 38
    const-string p0, "MediaSessionRecord"

    .line 40
    const-string p1, "Ignoring invalid media button receiver targeting an activity."

    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto/16 :goto_5

    .line 52
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string p1, "The media button receiver cannot be set to an activity."

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 62
    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 64
    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 66
    const/4 v6, 0x0

    .line 67
    if-nez p1, :cond_3

    .line 69
    goto/16 :goto_4

    .line 71
    :cond_3
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isBroadcast()Z

    .line 74
    move-result v7

    .line 75
    const/4 v8, 0x3

    .line 76
    const/4 v9, 0x2

    .line 77
    if-eqz v7, :cond_4

    .line 79
    move v7, v4

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_5

    .line 87
    move v7, v9

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isForegroundService()Z

    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_7

    .line 95
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isService()Z

    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_6

    .line 101
    goto :goto_0

    .line 102
    :cond_6
    const/4 v7, 0x0

    .line 103
    goto :goto_1

    .line 104
    :cond_7
    :goto_0
    move v7, v8

    .line 105
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 108
    move-result-object v10

    .line 109
    if-eq v7, v4, :cond_a

    .line 111
    if-eq v7, v9, :cond_9

    .line 113
    if-eq v7, v8, :cond_8

    .line 115
    goto :goto_2

    .line 116
    :cond_8
    const v4, 0xc0004

    .line 119
    invoke-virtual {p1, v4}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    .line 122
    move-result-object v10

    .line 123
    goto :goto_2

    .line 124
    :cond_9
    const v4, 0xd0001

    .line 127
    invoke-virtual {p1, v4}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    .line 130
    move-result-object v10

    .line 131
    goto :goto_2

    .line 132
    :cond_a
    const v4, 0xc0002

    .line 135
    invoke-virtual {p1, v4}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    .line 138
    move-result-object v10

    .line 139
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    move-result-object v4

    .line 143
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_e

    .line 149
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    move-result-object v8

    .line 153
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 155
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 157
    if-eqz v9, :cond_c

    .line 159
    goto :goto_3

    .line 160
    :cond_c
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 162
    if-eqz v9, :cond_d

    .line 164
    goto :goto_3

    .line 165
    :cond_d
    move-object v9, v6

    .line 166
    :goto_3
    if-eqz v9, :cond_b

    .line 168
    iget-object v8, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 173
    move-result-object v10

    .line 174
    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 177
    move-result v8

    .line 178
    if-eqz v8, :cond_b

    .line 180
    iget-object v8, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 182
    if-eqz v8, :cond_b

    .line 184
    iget-object v8, v9, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 186
    if-eqz v8, :cond_b

    .line 188
    new-instance v6, Landroid/content/ComponentName;

    .line 190
    iget-object v4, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 192
    iget-object v8, v9, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 194
    invoke-direct {v6, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_e
    if-eqz v6, :cond_f

    .line 199
    new-instance v4, Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 201
    invoke-direct {v4, v3, p1, v6, v7}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    .line 204
    move-object v6, v4

    .line 205
    goto :goto_4

    .line 206
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 208
    const-string v6, "Unresolvable implicit intent is set, pi="

    .line 210
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object v4

    .line 220
    const-string v6, "PendingIntentHolder"

    .line 222
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v6, Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 227
    invoke-direct {v6, v5, p1, v3}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 230
    :goto_4
    iput-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 232
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 234
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 236
    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    return-void

    .line 243
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    throw p0
.end method

.method public final setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 8
    iput-wide p2, v1, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 10
    iput-object p4, v1, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->sanitizeMediaMetadata(Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, v1, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MEDIA_SESSION_AI:Z

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    move-result-wide p1

    .line 27
    :try_start_1
    iget-object p3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 29
    iget-object p4, p3, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 31
    iget-object v0, p3, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 33
    invoke-virtual {p4, p3, v0}, Lcom/android/server/media/MediaSessionService;->onSessionMetadataChanged(Lcom/android/server/media/MediaSessionRecordImpl;Landroid/media/MediaMetadata;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    throw p0

    .line 45
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 47
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 49
    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 53
    return-void

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    throw p0
.end method

.method public final setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    .line 13
    move-result v0

    .line 14
    :goto_0
    if-nez p1, :cond_1

    .line 16
    move v2, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    .line 21
    move-result v2

    .line 22
    :goto_1
    sget-object v3, Lcom/android/server/media/MediaSessionRecord;->ALWAYS_PRIORITY_STATES:Ljava/util/List;

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_3

    .line 34
    sget-object v3, Lcom/android/server/media/MediaSessionRecord;->TRANSITION_PRIORITY_STATES:Ljava/util/List;

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move v0, v1

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 60
    :goto_3
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 62
    iget-object v2, v2, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 64
    monitor-enter v2

    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 67
    iput-object p1, v3, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 69
    invoke-virtual {v3, v1}, Lcom/android/server/media/MediaSessionRecord;->updateUserEngagedStateIfNeededLocked(Z)V

    .line 72
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 76
    move-result-wide v1

    .line 77
    :try_start_1
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 79
    iget-object v3, p1, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 81
    iget-object v4, p1, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 83
    invoke-virtual {v3, p1, v0, v4}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;ZLandroid/media/session/PlaybackState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 91
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 93
    const/4 p1, 0x2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    throw p0

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    throw p0
.end method

.method public final setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 8
    iget v2, v1, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 14
    move v2, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    iput v4, v1, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 19
    const/4 v3, 0x0

    .line 20
    iput-object v3, v1, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    .line 22
    if-eqz p1, :cond_1

    .line 24
    iput-object p1, v1, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string p1, "MediaSessionRecord"

    .line 29
    const-string v1, "Received null audio attributes, using existing attributes"

    .line 31
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    if-eqz v2, :cond_2

    .line 37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 40
    move-result-wide v0

    .line 41
    :try_start_1
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 43
    iget-object v2, p1, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 45
    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 53
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 55
    const/16 p1, 0x8

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    throw p0

    .line 66
    :cond_2
    :goto_2
    return-void

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    throw p0
.end method

.method public final setPlaybackToRemote(IILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 8
    iget v2, v1, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    const/4 v2, 0x2

    .line 16
    iput v2, v1, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 18
    iput p1, v1, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 20
    iput p2, v1, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 22
    iput-object p3, v1, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    if-eqz v3, :cond_1

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    move-result-wide p1

    .line 31
    :try_start_1
    iget-object p3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 33
    iget-object v0, p3, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 35
    invoke-virtual {v0, p3}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 43
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 45
    const/16 p1, 0x8

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    throw p0

    .line 56
    :cond_1
    :goto_1
    return-void

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    throw p0
.end method

.method public final setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 7
    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 11
    return-void
.end method

.method public final setRatingType(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    .line 5
    return-void
.end method
