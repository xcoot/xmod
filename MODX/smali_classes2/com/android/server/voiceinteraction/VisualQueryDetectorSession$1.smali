.class public final Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;
.super Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

.field public final synthetic val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    .locals 3

    .line 1
    const-string v0, "VisualQueryDetectorSession"

    .line 2
    .line 3
    const-string v1, "BinderCallback#onAttentionGained"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;->onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :try_start_2
    const-string v1, "VisualQueryDetectorSession"

    .line 32
    .line 33
    const-string v2, "Error delivering attention gained event."

    .line 34
    .line 35
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 39
    .line 40
    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 41
    .line 42
    const-string v1, "Attention listener fails to switch to GAINED state."

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_1
    :try_start_4
    const-string p0, "VisualQueryDetectorSession"

    .line 53
    .line 54
    const-string p1, "Fail to call onVisualQueryDetectionServiceFailure"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    throw p0
.end method

.method public final onAttentionLost(I)V
    .locals 3

    .line 1
    const-string v0, "VisualQueryDetectorSession"

    .line 2
    .line 3
    const-string v1, "BinderCallback#onAttentionLost"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;->onAttentionLost(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :try_start_2
    const-string v1, "VisualQueryDetectorSession"

    .line 32
    .line 33
    const-string v2, "Error delivering attention lost event."

    .line 34
    .line 35
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 39
    .line 40
    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 41
    .line 42
    const-string v1, "Attention listener fails to switch to LOST state."

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_1
    :try_start_4
    const-string p0, "VisualQueryDetectorSession"

    .line 53
    .line 54
    const-string p1, "Fail to call onVisualQueryDetectionServiceFailure"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    throw p0
.end method

.method public final onQueryDetected(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "VisualQueryDetectorSession"

    .line 2
    .line 3
    const-string v1, "BinderCallback#onQueryDetected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 17
    .line 18
    iget-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-string p1, "VisualQueryDetectorSession"

    .line 24
    .line 25
    const-string v1, "Query should not be egressed within the unattention state."

    .line 26
    .line 27
    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 31
    .line 32
    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 33
    .line 34
    const-string v1, "Cannot stream queries without attention signals."

    .line 35
    .line 36
    invoke-direct {p1, v3, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_1
    const-string v2, "android.permission.RECORD_AUDIO"

    .line 47
    .line 48
    new-instance v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    const/16 v5, 0x1b

    .line 51
    .line 52
    invoke-direct {v4, v1, v2, v5}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 64
    .line 65
    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryDetected(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p0, "VisualQueryDetectorSession"

    .line 69
    .line 70
    const-string p1, "Egressed from visual query detection process."

    .line 71
    .line 72
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :catch_0
    move-exception p1

    .line 78
    const-string v1, "VisualQueryDetectorSession"

    .line 79
    .line 80
    const-string v2, "Ignoring #onQueryDetected due to a SecurityException"

    .line 81
    .line 82
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .line 84
    .line 85
    :try_start_3
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 86
    .line 87
    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 88
    .line 89
    const-string v2, "Cannot stream queries without audio permission."

    .line 90
    .line 91
    invoke-direct {v1, v3, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .line 96
    .line 97
    :try_start_4
    monitor-exit v0

    .line 98
    return-void

    .line 99
    :catch_1
    move-exception p1

    .line 100
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    throw p0
.end method

.method public final onQueryFinished()V
    .locals 4

    .line 1
    const-string v0, "VisualQueryDetectorSession"

    .line 2
    .line 3
    const-string v1, "BinderCallback#onQueryFinished"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 14
    .line 15
    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "VisualQueryDetectorSession"

    .line 20
    .line 21
    const-string v2, "Query streaming state signal FINISHED is block since there is no active query being streamed."

    .line 22
    .line 23
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 27
    .line 28
    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 29
    .line 30
    const-string v2, "Cannot send FINISHED signal with no query streamed."

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    invoke-direct {v1, v3, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 44
    .line 45
    invoke-interface {v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryFinished()V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final onQueryRejected()V
    .locals 4

    .line 1
    const-string v0, "VisualQueryDetectorSession"

    .line 2
    .line 3
    const-string v1, "BinderCallback#onQueryRejected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 14
    .line 15
    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "VisualQueryDetectorSession"

    .line 20
    .line 21
    const-string v2, "Query streaming state signal REJECTED is block since there is no active query being streamed."

    .line 22
    .line 23
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 27
    .line 28
    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 29
    .line 30
    const-string v2, "Cannot send REJECTED signal with no query streamed."

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    invoke-direct {v1, v3, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 44
    .line 45
    invoke-interface {v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryRejected()V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V
    .locals 6

    .line 1
    const-string v0, "VisualQueryDetectorSession"

    .line 2
    .line 3
    const-string v1, "BinderCallback#onResultDetected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 17
    .line 18
    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string p1, "VisualQueryDetectorSession"

    .line 24
    .line 25
    const-string v1, "Result should not be egressed within the unattention state."

    .line 26
    .line 27
    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 31
    .line 32
    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 33
    .line 34
    const-string v1, "Cannot stream results without attention signals."

    .line 35
    .line 36
    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getAccessibilityDetectionData()[B

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 54
    .line 55
    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEnableAccessibilityDataEgress:Z

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string p1, "VisualQueryDetectorSession"

    .line 61
    .line 62
    const-string v1, "Accessibility data can be egressed only when the isAccessibilityDetectionEnabled() is true."

    .line 63
    .line 64
    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 68
    .line 69
    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 70
    .line 71
    const-string v1, "Cannot stream accessibility data without enabling the setting."

    .line 72
    .line 73
    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 77
    .line 78
    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getAccessibilityDetectionData()[B

    .line 82
    .line 83
    .line 84
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 88
    .line 89
    const-string v3, "android.permission.CAMERA"

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;

    .line 95
    .line 96
    const/16 v5, 0x1a

    .line 97
    .line 98
    invoke-direct {v4, v1, v3, v5}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception p1

    .line 106
    :try_start_2
    const-string v1, "VisualQueryDetectorSession"

    .line 107
    .line 108
    const-string v3, "Ignoring #onQueryDetected due to a SecurityException"

    .line 109
    .line 110
    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    :try_start_3
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 114
    .line 115
    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 116
    .line 117
    const-string v3, "Cannot stream visual only accessibility data without camera permission."

    .line 118
    .line 119
    invoke-direct {v1, v2, v3}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    .line 124
    .line 125
    :try_start_4
    monitor-exit v0

    .line 126
    return-void

    .line 127
    :catch_1
    move-exception p1

    .line 128
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getPartialQuery()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    if-nez v1, :cond_4

    .line 143
    .line 144
    :try_start_5
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 145
    .line 146
    const-string v3, "android.permission.RECORD_AUDIO"

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;

    .line 152
    .line 153
    const/16 v5, 0x1b

    .line 154
    .line 155
    invoke-direct {v4, v1, v3, v5}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catch_2
    move-exception p1

    .line 163
    :try_start_6
    const-string v1, "VisualQueryDetectorSession"

    .line 164
    .line 165
    const-string v3, "Ignoring #onQueryDetected due to a SecurityException"

    .line 166
    .line 167
    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 168
    .line 169
    .line 170
    :try_start_7
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 171
    .line 172
    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 173
    .line 174
    const-string v3, "Cannot stream queries without audio permission."

    .line 175
    .line 176
    invoke-direct {v1, v2, v3}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 180
    .line 181
    .line 182
    :try_start_8
    monitor-exit v0

    .line 183
    return-void

    .line 184
    :catch_3
    move-exception p1

    .line 185
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 192
    .line 193
    const/4 v2, 0x1

    .line 194
    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    .line 197
    .line 198
    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V

    .line 199
    .line 200
    .line 201
    const-string p0, "VisualQueryDetectorSession"

    .line 202
    .line 203
    const-string p1, "Egressed from visual query detection process."

    .line 204
    .line 205
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    monitor-exit v0

    .line 209
    return-void

    .line 210
    :goto_3
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 211
    throw p0
.end method
