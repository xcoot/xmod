.class public final Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;
.super Lcom/android/server/voiceinteraction/DetectorSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

.field public mLastHotwordRejectedResult:Landroid/service/voice/HotwordRejectedResult;

.field public mValidatingDspTrigger:Z


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "    "

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "mValidatingDspTrigger="

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final informRestartProcessLocked()V
    .locals 7

    .line 1
    const-string v0, "informRestartProcessLocked"

    .line 2
    .line 3
    const-string v1, "DspTrustedHotwordDetectorSession"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    .line 9
    .line 10
    const/16 v2, 0x1b2

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    iget v5, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 19
    .line 20
    new-instance v6, Landroid/service/voice/HotwordRejectedResult$Builder;

    .line 21
    .line 22
    invoke-direct {v6}, Landroid/service/voice/HotwordRejectedResult$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6}, Landroid/service/voice/HotwordRejectedResult$Builder;->build()Landroid/service/voice/HotwordRejectedResult;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-interface {v0, v6}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x1b1

    .line 33
    .line 34
    const/16 v6, 0xa

    .line 35
    .line 36
    invoke-static {v0, v4, v6, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const-string v0, "Failed to call #rejected"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x10

    .line 46
    .line 47
    invoke-static {v2, v4, v0, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 51
    .line 52
    .line 53
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    .line 59
    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 61
    .line 62
    invoke-interface {v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onProcessRestarted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_1
    move-exception v0

    .line 67
    const-string v6, "Failed to communicate #onProcessRestarted"

    .line 68
    .line 69
    invoke-static {v1, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    const/16 v0, 0x12

    .line 73
    .line 74
    invoke-static {v2, v4, v0, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 78
    .line 79
    .line 80
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 81
    .line 82
    const-string/jumbo v0, "process restarted"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
