.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic f$1:Landroid/os/PersistableBundle;

.field public final synthetic f$2:Landroid/os/SharedMemory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;->f$1:Landroid/os/PersistableBundle;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;->f$2:Landroid/os/SharedMemory;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;->f$1:Landroid/os/PersistableBundle;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;->f$2:Landroid/os/SharedMemory;

    .line 6
    .line 7
    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    .line 8
    .line 9
    iget v2, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 10
    .line 11
    new-instance v3, Lcom/android/internal/infra/AndroidFuture;

    .line 12
    .line 13
    invoke-direct {v3}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/android/server/voiceinteraction/DetectorSession$1;

    .line 17
    .line 18
    invoke-direct {v4, v0, v3}, Lcom/android/server/voiceinteraction/DetectorSession$1;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Lcom/android/internal/infra/AndroidFuture;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    :try_start_0
    invoke-interface {p1, v1, p0, v4}, Landroid/service/voice/ISandboxedDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eq p0, v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const/4 p1, 0x4

    .line 36
    invoke-static {p0, p1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "DetectorSession"

    .line 42
    .line 43
    const-string v1, "Failed to updateState for HotwordDetectionService"

    .line 44
    .line 45
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eq p0, v5, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/16 p1, 0x13

    .line 59
    .line 60
    invoke-static {p0, p1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    const-wide/16 p0, 0x7530

    .line 64
    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    .line 67
    invoke-virtual {v3, p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method
