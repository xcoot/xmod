.class public final Lcom/android/server/broadcastradio/hal2/TunerSession;
.super Landroid/hardware/radio/ITuner$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Landroid/hardware/radio/ITunerCallback;

.field public mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

.field public final mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

.field public final mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

.field public mIsClosed:Z

.field public mIsMuted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

.field public mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;Landroid/hardware/radio/ITunerCallback;)V
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
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 22
    .line 23
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserId:I

    .line 37
    .line 38
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iput-object p3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    .line 42
    .line 43
    new-instance p1, Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 44
    .line 45
    const-string p2, "BcRadio2Srv.session"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Lcom/android/server/broadcastradio/RadioEventLogger;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    .line 1
    const-string v0, "BcRadio2Srv.session"

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
    const-string p0, "BcRadio2Srv.session"

    .line 15
    .line 16
    const-string v0, "Cannot cancel on HAL 2.0 client from non-current user"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 29
    .line 30
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    new-instance v1, Landroid/os/HwParcel;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "android.hardware.broadcastradio@2.0::ITunerSession"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroid/os/HwParcel;

    .line 44
    .line 45
    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    .line 48
    :try_start_2
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 49
    .line 50
    const/4 v3, 0x4

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-interface {p0, v3, v1, v2, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    :try_start_3
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 67
    .line 68
    .line 69
    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    :catch_0
    move-exception p0

    .line 71
    :try_start_4
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 72
    .line 73
    .line 74
    :goto_0
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    throw p0
.end method

.method public final cancelAnnouncement()V
    .locals 1

    .line 1
    const-string p0, "BcRadio2Srv.session"

    .line 2
    .line 3
    const-string v0, "Announcements control doesn\'t involve cancelling at the HAL level in HAL 2.0"

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
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

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
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->close(Ljava/lang/Integer;)V

    return-void
.end method

.method public final close(Ljava/lang/Integer;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Close on error %d"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    const-string v0, "BcRadio2Srv.session"

    const-string/jumbo v1, "mCallback.onError() failed: "

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 11
    iget-object v1, p1, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_2
    filled-new-array {p0}, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 14
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 15
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final dispatchClientUpdateChunks(Ljava/util/List;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/hardware/radio/ProgramList$Chunk;

    .line 19
    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const-string v1, "BcRadio2Srv.session"

    .line 28
    .line 29
    const-string/jumbo v2, "mCallback.onProgramListUpdated() failed: "

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
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
    const-string v0, "HIDL HAL Session: %s\n"

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 15
    .line 16
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    const-string v2, "Is session closed? %s\n"

    .line 27
    .line 28
    iget-boolean v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    const-string v3, "Yes"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    const-string v3, "No"

    .line 38
    .line 39
    :goto_0
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 44
    .line 45
    .line 46
    const-string v2, "Is muted? %s\n"

    .line 47
    .line 48
    iget-boolean v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    const-string v3, "Yes"

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string v3, "No"

    .line 56
    .line 57
    :goto_1
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
    const-string v2, "ProgramInfoCache: %s\n"

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

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
    const-string v2, "Config: %s\n"

    .line 76
    .line 77
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 78
    .line 79
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 84
    .line 85
    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const-string v0, "Tuner session events:\n"

    .line 88
    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p0
.end method

.method public final getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

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
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

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
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 27
    .line 28
    const-string v2, "Get image for id %d"

    .line 29
    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x0

    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 38
    .line 39
    check-cast p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroid/os/HwParcel;

    .line 45
    .line 46
    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Landroid/os/HwParcel;

    .line 58
    .line 59
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :try_start_1
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 63
    .line 64
    const/4 v3, 0x5

    .line 65
    invoke-interface {p0, v3, v2, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 84
    .line 85
    .line 86
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 89
    .line 90
    .line 91
    move-object p0, v0

    .line 92
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    new-array v2, p1, [B

    .line 97
    .line 98
    move v3, v1

    .line 99
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-ge v3, v4, :cond_0

    .line 104
    .line 105
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Ljava/lang/Byte;

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    aput-byte v4, v2, v3

    .line 116
    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_0
    if-nez p1, :cond_1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_1
    invoke-static {v2, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_2
    return-object v0

    .line 128
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    const-string p1, "Image ID is missing"

    .line 131
    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method public final getParameters(Ljava/util/List;)Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->exec()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    :goto_0
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    monitor-exit v0

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p0
.end method

.method public final isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

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
    .locals 6

    .line 1
    const-string v0, "Failed to check flag "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 4
    .line 5
    const-string v2, "Is ConfigFlagSet for %s"

    .line 6
    .line 7
    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/util/MutableInt;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {v2, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Landroid/util/MutableBoolean;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct {v3, v4}, Landroid/util/MutableBoolean;-><init>(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 37
    .line 38
    new-instance v4, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-direct {v4, v5, v2, v3}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, v4}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->isConfigFlagSet(ILcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_2
    const-string/jumbo p0, "isConfigFlagSet"

    .line 48
    .line 49
    .line 50
    iget p1, v2, Landroid/util/MutableInt;->value:I

    .line 51
    .line 52
    invoke-static {p1, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-boolean p0, v3, Landroid/util/MutableBoolean;->value:Z

    .line 56
    .line 57
    monitor-exit v1

    .line 58
    return p0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    new-instance v2, Ljava/lang/RuntimeException;

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v2

    .line 84
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p0
.end method

.method public final isConfigFlagSupported(I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->isConfigFlagSet(I)Z
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
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 5
    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

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
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

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
    const-string p0, "BcRadio2Srv.session"

    .line 37
    .line 38
    const-string p1, "Cannot scan on HAL 2.0 client from non-current user"

    .line 39
    .line 40
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 51
    .line 52
    xor-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->scan(ZZ)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const-string/jumbo p1, "step"

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final setConfigFlag(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    const-string v1, "Set ConfigFlag  %s = %b"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string p0, "BcRadio2Srv.session"

    .line 27
    .line 28
    const-string p1, "Cannot set config flag for HAL 2.0 client from non-current user"

    .line 29
    .line 30
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->setConfigFlag(IZ)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const-string/jumbo p1, "setConfigFlag"

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
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
    const-string p0, "BcRadio2Srv.session"

    .line 8
    .line 9
    const-string p1, "Cannot set configuration for HAL 2.0 client from non-current user"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const-string v0, "BcRadio2Srv.session"

    .line 28
    .line 29
    const-string v1, "Ignoring setConfiguration - not applicable for broadcastradio HAL 2.0"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 35
    .line 36
    new-instance v0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda4;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {p1, v1, p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p0
.end method

.method public final setMuted(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 5
    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

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
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const-string p0, "BcRadio2Srv.session"

    .line 19
    .line 20
    const-string p1, "Mute via RadioService is not implemented - please handle it via app"

    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method public final setParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

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
    const-string p0, "BcRadio2Srv.session"

    .line 8
    .line 9
    const-string p1, "Cannot set parameters for HAL 2.0 client from non-current user"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    new-instance p0, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->exec()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    :goto_0
    check-cast p0, Ljava/util/List;

    .line 43
    .line 44
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    monitor-exit v0

    .line 49
    return-object p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p0
.end method

.method public final startBackgroundScan()Z
    .locals 3

    .line 1
    const-string v0, "BcRadio2Srv.session"

    .line 2
    .line 3
    const-string v1, "Explicit background scan trigger is not supported with HAL 2.0"

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
    const-string p0, "Cannot start background scan on HAL 2.0 client from non-current user"

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
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda1;

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
    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v2, p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

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
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    const-string/jumbo v1, "start programList updates %s"

    .line 4
    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p0, "BcRadio2Srv.session"

    .line 20
    .line 21
    const-string p1, "Cannot start program list updates on HAL 2.0 client from non-current user"

    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    if-nez p1, :cond_1

    .line 28
    .line 29
    new-instance p1, Landroid/hardware/radio/ProgramList$Filter;

    .line 30
    .line 31
    new-instance v0, Landroid/util/ArraySet;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v1, Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {p1, v0, v1, v2, v3}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 53
    .line 54
    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 58
    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 61
    .line 62
    iget-object v1, p1, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v1

    .line 65
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 66
    .line 67
    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    throw p0
.end method

.method public final step(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

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
    const-string p0, "BcRadio2Srv.session"

    .line 37
    .line 38
    const-string p1, "Cannot step on HAL 2.0 client from non-current user"

    .line 39
    .line 40
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter p2

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 51
    .line 52
    xor-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->step(Z)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const-string/jumbo p1, "step"

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    monitor-exit p2

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final stopProgramListUpdates()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

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
    const-string p0, "BcRadio2Srv.session"

    .line 18
    .line 19
    const-string v0, "Cannot stop program list updates on HAL 2.0 client from non-current user"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

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
    const-string p0, "BcRadio2Srv.session"

    .line 19
    .line 20
    const-string p1, "Cannot tune on HAL 2.0 client from non-current user"

    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorToHal(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const-string/jumbo p1, "tune"

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method
