.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DetectorSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Void;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Throwable;

    .line 6
    .line 7
    iget p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 8
    .line 9
    instance-of v0, p2, Ljava/util/concurrent/TimeoutException;

    .line 10
    .line 11
    const-string v1, "DetectorSession"

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    const-string/jumbo p2, "updateState timed out"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p2, 0x3

    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 33
    .line 34
    const/16 v3, 0x64

    .line 35
    .line 36
    invoke-interface {v2, v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onStatusReported(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eq v2, p2, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eq v2, v0, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    if-eq v2, v0, :cond_1

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    :cond_1
    const/16 v2, 0x1af

    .line 56
    .line 57
    const/4 v3, 0x4

    .line 58
    invoke-static {v2, v0, v3, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v2, "Failed to report initialization status UNKNOWN"

    .line 64
    .line 65
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eq v0, p2, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    const/16 v0, 0xe

    .line 79
    .line 80
    invoke-static {p2, v0, p1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    if-eqz p2, :cond_4

    .line 88
    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p1, "Failed to update state: "

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_0
    return-void
.end method
