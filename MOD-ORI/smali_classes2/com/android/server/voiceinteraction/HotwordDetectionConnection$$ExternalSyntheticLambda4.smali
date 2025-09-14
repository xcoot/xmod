.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "HotwordDetectionConnection"

    .line 7
    .line 8
    const-string v1, "Audio server died; restarting the HotwordDetectionService."

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlinger()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eq v1, v2, :cond_0

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    if-eq v1, v3, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v3, v2

    .line 38
    :cond_1
    :goto_0
    const/16 v1, 0x1b0

    .line 39
    .line 40
    invoke-static {v1, v3, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method
