.class public final Lcom/android/server/broadcastradio/aidl/TunerSession;
.super Landroid/hardware/radio/ITuner$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Landroid/hardware/radio/ITunerCallback;

.field public mIsClosed:Z

.field public mIsMuted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

.field public final mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

.field public mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

.field public mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

.field public final mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

.field public final mUid:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/RadioModule;Landroid/hardware/broadcastradio/IBroadcastRadio;Landroid/hardware/radio/ITunerCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 12
    .line 13
    const-string/jumbo p1, "service cannot be null"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserId:I

    .line 30
    .line 31
    const-string/jumbo p1, "callback cannot be null"

    .line 32
    .line 33
    .line 34
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iput-object p3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUid:I

    .line 44
    .line 45
    new-instance p1, Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 46
    .line 47
    const-string p2, "BcRadioAidlSrv.session"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/android/server/broadcastradio/RadioEventLogger;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 1
    const-string v0, "BcRadioAidlSrv.session"

    .line 2
    .line 3
    const-string v1, "Cancel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string p0, "BcRadioAidlSrv.session"

    .line 15
    .line 16
    const-string v0, "Cannot cancel on AIDL HAL client from non-current user"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 29
    .line 30
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_2
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    const-string v1, "BcRadioAidlSrv.session"

    .line 41
    .line 42
    const-string v2, "Failed to cancel tuner session"

    .line 43
    .line 44
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw p0
.end method

.method public final cancelAnnouncement()V
    .locals 1

    .line 1
    const-string p0, "BcRadioAidlSrv.session"

    .line 2
    .line 3
    const-string v0, "Announcements control doesn\'t involve cancelling at the HAL level in AIDL"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final checkNotClosedLocked()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Tuner is closed, no further operations are allowed"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Close tuner"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->close(Ljava/lang/Integer;)V

    return-void
.end method

.method public final close(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Close tuner session on error null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Close tuner session on error %d"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    if-eqz v1, :cond_1

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    const-string v1, "BcRadioAidlSrv.session"

    const-string/jumbo v2, "mCallback.onError(%s) failed"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, v2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 13
    iget-object v1, p1, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_2
    filled-new-array {p0}, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    .line 16
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 17
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final dispatchClientUpdateChunks(Ljava/util/List;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_2

    .line 11
    .line 12
    :try_start_0
    iget v2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUid:I

    .line 13
    .line 14
    const-wide/32 v3, 0xf9a4b7c

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v4, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/hardware/radio/ProgramList$Chunk;

    .line 28
    .line 29
    iget v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUid:I

    .line 30
    .line 31
    invoke-static {v2, v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->convertChunkToTargetSdkVersion(Landroid/hardware/radio/ProgramList$Chunk;I)Landroid/hardware/radio/ProgramList$Chunk;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    .line 36
    .line 37
    invoke-interface {v3, v2}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    .line 44
    .line 45
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/hardware/radio/ProgramList$Chunk;

    .line 50
    .line 51
    invoke-interface {v2, v3}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_1
    const-string/jumbo v3, "mCallback.onProgramListUpdated() failed"

    .line 56
    .line 57
    .line 58
    new-array v4, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v5, "BcRadioAidlSrv.session"

    .line 61
    .line 62
    invoke-static {v5, v2, v3, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method

.method public final dumpInfo(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "TunerSession\n"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    const-string v2, "Is session closed? %s\n"

    .line 16
    .line 17
    iget-boolean v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-string v3, "Yes"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    const-string v3, "No"

    .line 27
    .line 28
    :goto_0
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 33
    .line 34
    .line 35
    const-string v2, "Is muted? %s\n"

    .line 36
    .line 37
    iget-boolean v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const-string v3, "Yes"

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v3, "No"

    .line 45
    .line 46
    :goto_1
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 51
    .line 52
    .line 53
    const-string v2, "ProgramInfoCache: %s\n"

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 56
    .line 57
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 62
    .line 63
    .line 64
    const-string v2, "Config: %s\n"

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 67
    .line 68
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 73
    .line 74
    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const-string v0, "Tuner session events:\n"

    .line 77
    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p0
.end method

.method public final getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final getImage(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Get image for %d"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 27
    .line 28
    const-string v2, "Get image for id = %d"

    .line 29
    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 36
    .line 37
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->getImage(I)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    array-length p1, p0

    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    array-length v0, p0

    .line 51
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 57
    :goto_1
    return-object p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    throw p0

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string p1, "Image ID is missing"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public final getParameters(Ljava/util/List;)Ljava/util/Map;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    const-string v1, "Get parameters "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v3}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 18
    .line 19
    new-array v1, v2, [Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, [Ljava/lang/String;

    .line 26
    .line 27
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->getParameters([Ljava/lang/String;)[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    monitor-exit v0

    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    throw p0

    .line 47
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw p0
.end method

.method public final isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    .line 5
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

.method public final isConfigFlagSet(I)Z
    .locals 4

    .line 1
    const-string v0, "Failed to check flag "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 4
    .line 5
    const-string/jumbo v2, "is ConfigFlag %s set? "

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/hardware/broadcastradio/ConfigFlag$$;->toString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 26
    .line 27
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->isConfigFlagSet(I)Z

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    monitor-exit v1

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance v2, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Landroid/hardware/broadcastradio/ConfigFlag$$;->toString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v2

    .line 60
    :catch_1
    move-exception p0

    .line 61
    const-string/jumbo p1, "isConfigFlagSet"

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    throw p0

    .line 69
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    throw p0
.end method

.method public final isConfigFlagSupported(I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession;->isConfigFlagSet(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final isMuted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    .line 5
    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final seek(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    const-string v1, "Seek with direction %s, skipSubChannel? %s"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v2, "down"

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string/jumbo v2, "up"

    .line 12
    .line 13
    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const-string/jumbo v3, "yes"

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const-string/jumbo v3, "no"

    .line 21
    .line 22
    .line 23
    :goto_1
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const-string p0, "BcRadioAidlSrv.session"

    .line 37
    .line 38
    const-string p1, "Cannot scan on AIDL HAL client from non-current user"

    .line 39
    .line 40
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 51
    .line 52
    xor-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->seek(ZZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_2
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception p0

    .line 64
    const-string/jumbo p1, "seek"

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0

    .line 72
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    throw p0
.end method

.method public final setConfigFlag(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    const-string/jumbo v1, "set ConfigFlag %s to %b "

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/hardware/broadcastradio/ConfigFlag$$;->toString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string p0, "BcRadioAidlSrv.session"

    .line 28
    .line 29
    const-string p1, "Cannot set config flag for AIDL HAL client from non-current user"

    .line 30
    .line 31
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 42
    .line 43
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 44
    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->setConfigFlag(IZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_2
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    const-string/jumbo p1, "setConfigFlag"

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    throw p0

    .line 61
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    throw p0
.end method

.method public final setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "BcRadioAidlSrv.session"

    .line 8
    .line 9
    const-string p1, "Cannot set configuration for AIDL HAL client from non-current user"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "config cannot be null"

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 28
    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const-string v0, "BcRadioAidlSrv.session"

    .line 31
    .line 32
    const-string v1, "Ignoring setConfiguration - not applicable for broadcastradio HAL AIDL"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {p1, v1, p0, v0}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p0
.end method

.method public final setMuted(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    .line 5
    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    .line 8
    .line 9
    if-ne v1, p1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const-string p0, "BcRadioAidlSrv.session"

    .line 19
    .line 20
    const-string v0, "Mute %b via RadioService is not implemented - please handle it via app"

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method

.method public final setParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    const-string v1, "Set parameters "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string p0, "BcRadioAidlSrv.session"

    .line 18
    .line 19
    const-string p1, "Cannot set parameters for AIDL HAL client from non-current user"

    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    new-instance p0, Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoToHalVendorKeyValues(Ljava/util/Map;)[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->setParameters([Landroid/hardware/broadcastradio/VendorKeyValue;)[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    monitor-exit v0

    .line 53
    return-object p0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    throw p0

    .line 62
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    throw p0
.end method

.method public final startBackgroundScan()Z
    .locals 3

    .line 1
    const-string v0, "BcRadioAidlSrv.session"

    .line 2
    .line 3
    const-string v1, "Explicit background scan trigger is not supported with HAL AIDL"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string p0, "Cannot start background scan on AIDL HAL client from non-current user"

    .line 15
    .line 16
    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v2, p0, v0}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method public final startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    const-string v1, "Start programList updates %s"

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string p0, "BcRadioAidlSrv.session"

    .line 19
    .line 20
    const-string p1, "Cannot start program list updates on AIDL HAL client from non-current user"

    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    if-nez p1, :cond_1

    .line 27
    .line 28
    new-instance p1, Landroid/hardware/radio/ProgramList$Filter;

    .line 29
    .line 30
    new-instance v0, Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {p1, v0, v1, v2, v3}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 52
    .line 53
    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 57
    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 60
    .line 61
    iget-object v1, p1, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v1

    .line 64
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    .line 65
    .line 66
    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    throw p0
.end method

.method public final step(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    const-string v1, "Step with direction %s, skipSubChannel?  %s"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v2, "down"

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string/jumbo v2, "up"

    .line 12
    .line 13
    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const-string/jumbo p2, "yes"

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const-string/jumbo p2, "no"

    .line 21
    .line 22
    .line 23
    :goto_1
    filled-new-array {v2, p2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, v1, p2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    const-string p0, "BcRadioAidlSrv.session"

    .line 37
    .line 38
    const-string p1, "Cannot step on AIDL HAL client from non-current user"

    .line 39
    .line 40
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter p2

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 51
    .line 52
    xor-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->step(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_2
    monitor-exit p2

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception p0

    .line 64
    const-string/jumbo p1, "step"

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0

    .line 72
    :goto_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    throw p0
.end method

.method public final stopProgramListUpdates()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    const-string v1, "Stop programList updates"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string p0, "BcRadioAidlSrv.session"

    .line 18
    .line 19
    const-string v0, "Cannot stop program list updates on AIDL HAL client from non-current user"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    .line 41
    .line 42
    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    throw p0
.end method

.method public final tune(Landroid/hardware/radio/ProgramSelector;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    const-string v1, "Tune with selector %s"

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string p0, "BcRadioAidlSrv.session"

    .line 19
    .line 20
    const-string p1, "Cannot tune on AIDL HAL client from non-current user"

    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v0, Landroid/hardware/broadcastradio/ProgramSelector;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    array-length v2, p1

    .line 48
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    array-length v3, p1

    .line 53
    if-ge v2, v3, :cond_2

    .line 54
    .line 55
    aget-object v3, p1, v2

    .line 56
    .line 57
    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget v4, v3, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 62
    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    aget-object v3, p1, v2

    .line 70
    .line 71
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "BcRadioAidlSrv.convert"

    .line 76
    .line 77
    const-string v5, "Invalid secondary id: %s"

    .line 78
    .line 79
    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    new-instance p1, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    invoke-direct {p1, v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 96
    .line 97
    iput-object p1, v0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_3

    .line 104
    .line 105
    const/4 v0, 0x0

    .line 106
    :cond_3
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 109
    .line 110
    monitor-enter p1

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 115
    .line 116
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->tune(Landroid/hardware/broadcastradio/ProgramSelector;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    :try_start_2
    monitor-exit p1

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception p0

    .line 126
    const-string/jumbo v0, "tune"

    .line 127
    .line 128
    .line 129
    invoke-static {p0, v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    throw p0

    .line 134
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    throw p0

    .line 136
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    const-string/jumbo p1, "tune: INVALID_ARGUMENTS for program selector"

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method
