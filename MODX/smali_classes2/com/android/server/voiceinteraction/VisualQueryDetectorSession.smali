.class public final Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;
.super Lcom/android/server/voiceinteraction/DetectorSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

.field public mEgressingData:Z

.field public mEnableAccessibilityDataEgress:Z

.field public mQueryStreaming:Z


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    const-string p0, "    "

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final informRestartProcessLocked()V
    .locals 3

    .line 1
    const-string v0, "informRestartProcessLocked"

    .line 2
    .line 3
    const-string v1, "VisualQueryDetectorSession"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onProcessRestarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const-string v2, "Failed to communicate #onProcessRestarted"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final startListeningFromExternalSourceLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "HotwordDetectionService method should not be called from VisualQueryDetectorSession."

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
