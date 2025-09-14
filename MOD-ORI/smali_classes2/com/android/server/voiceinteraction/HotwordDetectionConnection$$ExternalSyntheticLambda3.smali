.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const-string v0, "HotwordDetectionConnection"

    .line 12
    .line 13
    const-string v1, "Time to restart the process, TTL has passed"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eq v1, v3, :cond_1

    .line 34
    .line 35
    if-eq v1, v2, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v3, v2

    .line 40
    :cond_1
    :goto_0
    const/16 v1, 0x1b0

    .line 41
    .line 42
    invoke-static {v1, v3, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    :goto_1
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0

    .line 52
    :pswitch_0
    const-string v0, "HotwordDetectionConnection"

    .line 53
    .line 54
    const-string v1, "Timeout to reset mDebugHotwordLogging to false"

    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter v0

    .line 62
    const/4 v1, 0x0

    .line 63
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 64
    .line 65
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    invoke-direct {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    throw p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
