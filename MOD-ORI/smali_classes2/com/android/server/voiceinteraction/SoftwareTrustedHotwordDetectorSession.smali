.class public final Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;
.super Lcom/android/server/voiceinteraction/DetectorSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mPerformingSoftwareHotwordDetection:Z

.field public mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;


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
    const-string/jumbo v0, "mPerformingSoftwareHotwordDetection="

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final informRestartProcessLocked()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 2
    .line 3
    const-string v1, "SoftwareTrustedHotwordDetectorSession"

    .line 4
    .line 5
    const-string v2, "informRestartProcessLocked"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    :try_start_0
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 18
    .line 19
    invoke-interface {v4}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onProcessRestarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v4

    .line 24
    const-string v5, "Failed to communicate #onProcessRestarted"

    .line 25
    .line 26
    invoke-static {v1, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    const/16 v4, 0x12

    .line 30
    .line 31
    invoke-static {v2, v4, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const-string v4, "Process restarted: calling startRecognition() again"

    .line 42
    .line 43
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;-><init>(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 52
    .line 53
    new-instance v5, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    invoke-direct {v5, v1}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x9

    .line 62
    .line 63
    invoke-static {v2, v1, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 67
    .line 68
    const-string/jumbo v0, "process restarted"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
