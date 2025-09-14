.class public final synthetic Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    const-string v1, "Timed out on #detectFromDspSource"

    .line 15
    .line 16
    const-string v3, "DspTrustedHotwordDetectorSession"

    .line 17
    .line 18
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x1b1

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    iget v5, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 25
    .line 26
    invoke-static {v1, v2, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    new-instance v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 30
    .line 31
    const-string v4, "Timeout to response to the detection result."

    .line 32
    .line 33
    const/4 v6, 0x4

    .line 34
    invoke-direct {v1, v6, v4}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    const-string v1, "Failed to report onError status: "

    .line 43
    .line 44
    invoke-static {v3, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    const/16 p0, 0x1b2

    .line 48
    .line 49
    const/16 v1, 0xf

    .line 50
    .line 51
    invoke-static {p0, v2, v1, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method
