.class public final Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;
.super Landroid/service/voice/VoiceInteractionManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 17
    .line 18
    return-object p0
.end method

.method public final getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eq v1, p1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_3
    :goto_0
    return-object v0
.end method

.method public final hasActiveSession(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final onPreCreatedUserConversion(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "VoiceInteractionManager"

    .line 10
    .line 11
    const-string/jumbo v2, "onPreCreatedUserConversion(%d): calling onRoleHoldersChanged() again"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mRoleObserver:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;

    .line 22
    .line 23
    const-string v0, "android.app.role.ASSISTANT"

    .line 24
    .line 25
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final startListeningFromWearable(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/content/ComponentName;ILandroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
    .locals 7

    .line 1
    const-string v0, "VoiceInteractionManager"

    .line 2
    .line 3
    const-string v1, "#startListeningFromWearable"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "Unable to start listening from wearable because the service impl is null."

    .line 17
    .line 18
    invoke-interface {p6, p0}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    if-eqz p4, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 25
    .line 26
    invoke-virtual {p4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    const-string p0, "Unable to start listening from wearable because the target VoiceInteractionService %s is different from the current VoiceInteractionService %s"

    .line 33
    .line 34
    iget-object p1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 35
    .line 36
    filled-new-array {p4, p1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p6, p0}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget p4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 49
    .line 50
    if-eq p5, p4, :cond_2

    .line 51
    .line 52
    const-string p0, "Unable to start listening from wearable because the target userId %s is different from the current VoiceInteractionManagerServiceImpl\'s userId %s"

    .line 53
    .line 54
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget p2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-interface {p6, p0}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 79
    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object p4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 82
    .line 83
    if-nez p4, :cond_3

    .line 84
    .line 85
    const-string p1, "Unable to start listening from wearable because the hotword detection connection is null."

    .line 86
    .line 87
    invoke-interface {p6, p1}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    iget-object p4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 92
    .line 93
    iget-object p4, p4, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 94
    .line 95
    const/4 p5, 0x1

    .line 96
    invoke-virtual {p4, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    check-cast p4, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 101
    .line 102
    if-eqz p4, :cond_5

    .line 103
    .line 104
    invoke-virtual {p4}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    .line 105
    .line 106
    .line 107
    move-result p5

    .line 108
    if-eqz p5, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    check-cast p4, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 112
    .line 113
    :goto_0
    move-object v0, p4

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    :goto_1
    const-string p4, "HotwordDetectionConnection"

    .line 116
    .line 117
    const-string p5, "Not found the Dsp detector"

    .line 118
    .line 119
    invoke-static {p4, p5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    const/4 p4, 0x0

    .line 123
    goto :goto_0

    .line 124
    :goto_2
    if-nez v0, :cond_6

    .line 125
    .line 126
    const-string p1, "Unable to start listening from wearable because the trusted hotword detection session is not available."

    .line 127
    .line 128
    invoke-interface {p6, p1}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    new-instance v4, Lcom/android/server/voiceinteraction/DetectorSession$2;

    .line 133
    .line 134
    invoke-direct {v4, v0, p6}, Lcom/android/server/voiceinteraction/DetectorSession$2;-><init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V

    .line 135
    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    const/4 v6, 0x0

    .line 139
    move-object v1, p1

    .line 140
    move-object v2, p2

    .line 141
    move-object v3, p3

    .line 142
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/voiceinteraction/DetectorSession;->handleExternalSourceHotwordDetectionLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V

    .line 143
    .line 144
    .line 145
    :goto_3
    monitor-exit p0

    .line 146
    return-void

    .line 147
    :catchall_0
    move-exception p1

    .line 148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    throw p1
.end method

.method public final startLocalVoiceInteraction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/16 v4, 0x13

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 29
    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 32
    .line 33
    new-instance v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;

    .line 34
    .line 35
    invoke-direct {v9, v0, p1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;-><init>(ILandroid/os/IBinder;Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 36
    .line 37
    .line 38
    const/16 v7, 0x10

    .line 39
    .line 40
    move-object v6, p3

    .line 41
    move-object v8, p2

    .line 42
    move-object v10, p1

    .line 43
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {p0, p1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final supportsLocalVoiceInteraction()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLocalInteraction()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :goto_0
    return p0
.end method
