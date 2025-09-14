.class Lcom/android/server/broadcastradio/hal1/Tuner;
.super Landroid/hardware/radio/ITuner$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio1Srv.Tuner"


# instance fields
.field public final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mIsClosed:Z

.field public mIsMuted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNativeContext:J

.field public mRegion:I

.field public final mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field public final mWithAudio:Z


# direct methods
.method public constructor <init>(Landroid/hardware/radio/ITunerCallback;IIZI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    .line 16
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 18
    new-instance v1, Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 20
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/broadcastradio/hal1/TunerCallback;-><init>(Lcom/android/server/broadcastradio/hal1/Tuner;Landroid/hardware/radio/ITunerCallback;I)V

    .line 23
    iput-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 25
    iput p3, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    .line 27
    iput-boolean p4, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    .line 29
    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeInit(IZI)J

    .line 32
    move-result-wide p2

    .line 33
    iput-wide p2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 35
    new-instance p2, Lcom/android/server/broadcastradio/hal1/Tuner$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {p2, p0}, Lcom/android/server/broadcastradio/hal1/Tuner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/hal1/Tuner;)V

    .line 40
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 42
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    .line 53
    :goto_0
    return-void
.end method

.method private native nativeCancel(J)V
.end method

.method private native nativeCancelAnnouncement(J)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;
.end method

.method private native nativeGetImage(JI)[B
.end method

.method private native nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;
.end method

.method private native nativeInit(IZI)J
.end method

.method private native nativeIsAnalogForced(J)Z
.end method

.method private native nativeScan(JZZ)V
.end method

.method private native nativeSetAnalogForced(JZ)V
.end method

.method private native nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V
.end method

.method private native nativeStartBackgroundScan(J)Z
.end method

.method private native nativeStep(JZZ)V
.end method

.method private native nativeTune(JLandroid/hardware/radio/ProgramSelector;)V
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "BcRadio1Srv.Tuner"

    .line 9
    const-string v0, "Cannot cancel on HAL 1.x client from non-current user"

    .line 11
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 21
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 23
    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeCancel(J)V

    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final cancelAnnouncement()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "BcRadio1Srv.Tuner"

    .line 9
    const-string v0, "Cannot cancel announcement on HAL 1.x client from non-current user"

    .line 11
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 21
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 23
    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeCancelAnnouncement(J)V

    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final checkConfiguredLocked()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 3
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const-string p0, "BcRadio1Srv.Tuner"

    .line 11
    const-string v0, "Initial configuration is still pending, skipping the operation"

    .line 13
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final checkNotClosedLocked()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    .line 3
    if-nez p0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v0, "Tuner is closed, no further operations are allowed"

    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p0
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    .line 15
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 17
    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->detach()V

    .line 20
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 22
    invoke-interface {v1}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 32
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 34
    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeClose(J)V

    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeFinalize(J)V

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9
    return-void
.end method

.method public final getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 7
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 9
    iget v3, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    .line 11
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;

    .line 14
    move-result-object p0

    .line 15
    monitor-exit v0

    .line 16
    return-object p0

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

.method public final getImage(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 8
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetImage(JI)[B

    .line 11
    move-result-object p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz p0, :cond_1

    .line 15
    array-length p1, p0

    .line 16
    if-nez p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    array-length v0, p0

    .line 21
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string p1, "Image ID is missing"

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0
.end method

.method public final getParameters(Ljava/util/List;)Ljava/util/Map;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string p1, "Not supported by HAL 1.x"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p0
.end method

.method public final getProgramList(Ljava/util/Map;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 7
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 9
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;

    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    const-string p1, "Program list is not ready"

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final isClosed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    .line 3
    return p0
.end method

.method public final isConfigFlagSet(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 10
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeIsAnalogForced(J)Z

    .line 15
    move-result p0

    .line 16
    monitor-exit p1

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 23
    const-string p1, "Not supported by HAL 1.x"

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
.end method

.method public final isConfigFlagSupported(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    if-ne p1, p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public final isMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string p0, "BcRadio1Srv.Tuner"

    .line 7
    const-string v0, "Tuner did not request audio, pretending it was muted"

    .line 9
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 20
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final seek(ZZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "BcRadio1Srv.Tuner"

    .line 9
    const-string p1, "Cannot seek on HAL 1.x client from non-current user"

    .line 11
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 21
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 33
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeScan(JZZ)V

    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final setConfigFlag(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "BcRadio1Srv.Tuner"

    .line 9
    const-string p1, "Cannot set config flag for HAL 1.x client from non-current user"

    .line 11
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    if-ne p1, v0, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 24
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 26
    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeSetAnalogForced(JZ)V

    .line 29
    monitor-exit p1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 36
    const-string p1, "Not supported by HAL 1.x"

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
.end method

.method public final setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "BcRadio1Srv.Tuner"

    .line 9
    const-string p1, "Cannot set configuration for HAL 1.x client from non-current user"

    .line 11
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 23
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 25
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V

    .line 28
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getRegion()I

    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    const-string p1, "The argument must not be a null pointer"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
.end method

.method public final setMuted(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 11
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    .line 13
    if-ne v1, p1, :cond_0

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    .line 21
    const-string p0, "BcRadio1Srv.Tuner"

    .line 23
    const-string p1, "Mute via RadioService is not implemented - please handle it via app"

    .line 25
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    const-string p1, "Can\'t operate on mute - no audio requested"

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0
.end method

.method public final setParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string p1, "Not supported by HAL 1.x"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p0
.end method

.method public final startBackgroundScan()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "BcRadio1Srv.Tuner"

    .line 9
    const-string v0, "Cannot start background scan on HAL 1.x client from non-current user"

    .line 11
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 22
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 24
    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeStartBackgroundScan(J)Z

    .line 27
    move-result p0

    .line 28
    monitor-exit v0

    .line 29
    return p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "BcRadio1Srv.Tuner"

    .line 9
    const-string p1, "Cannot start program list updates on HAL 1.x client from non-current user"

    .line 11
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V

    .line 20
    return-void
.end method

.method public final step(ZZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "BcRadio1Srv.Tuner"

    .line 9
    const-string p1, "Cannot step on HAL 1.x client from non-current user"

    .line 11
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 21
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 33
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeStep(JZZ)V

    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final stopProgramListUpdates()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "BcRadio1Srv.Tuner"

    .line 9
    const-string v0, "Cannot stop program list updates on HAL 1.x client from non-current user"

    .line 11
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 17
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->stopProgramListUpdates()V

    .line 20
    return-void
.end method

.method public final tune(Landroid/hardware/radio/ProgramSelector;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "BcRadio1Srv.Tuner"

    .line 9
    const-string p1, "Cannot tune on HAL 1.x client from non-current user"

    .line 11
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    if-eqz p1, :cond_2

    .line 17
    const-string v0, "BcRadio1Srv.Tuner"

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "Tuning to "

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 54
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeTune(JLandroid/hardware/radio/ProgramSelector;)V

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 63
    const-string p1, "The argument must not be a null pointer"

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0
.end method
