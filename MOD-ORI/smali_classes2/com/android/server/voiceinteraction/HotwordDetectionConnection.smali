.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z


# instance fields
.field public final mAccessibilitySettingsListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

.field public mAudioFlinger:Landroid/os/IBinder;

.field public final mAudioServerDeathRecipient:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

.field public final mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mContext:Landroid/content/Context;

.field public mDebugHotwordLogging:Z

.field public mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mDetectorSessions:Landroid/util/SparseArray;

.field public mDetectorType:I

.field public final mHotwordDetectionComponentName:Landroid/content/ComponentName;

.field public final mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

.field public mHotwordRecognitionCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public volatile mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

.field public mLastRestartInstant:Ljava/time/Instant;

.field public final mLock:Ljava/lang/Object;

.field public final mOnOpChangedListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

.field public final mReStartPeriodSeconds:I

.field public mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

.field public mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field public mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field public mRestartCount:I

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mUserId:I

.field public final mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

.field public final mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

.field public final mVoiceInteractionServiceUid:I

.field public final mVoiceInteractorIdentity:Landroid/media/permission/Identity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.hotword.visual_query_service_enabled"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;ILandroid/media/permission/Identity;Landroid/content/ComponentName;Landroid/content/ComponentName;IILcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 11
    .line 12
    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    iput v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    .line 24
    .line 25
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 26
    .line 27
    new-instance v4, Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 33
    .line 34
    new-instance v4, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

    .line 35
    .line 36
    invoke-direct {v4, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 37
    .line 38
    .line 39
    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mOnOpChangedListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    .line 46
    .line 47
    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 48
    .line 49
    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    .line 50
    .line 51
    iput-object p6, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    .line 52
    .line 53
    iput p7, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    .line 54
    .line 55
    iput p8, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    .line 56
    .line 57
    iput-object p9, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    const-string/jumbo p1, "voice_interaction"

    .line 60
    .line 61
    .line 62
    const-string/jumbo p3, "restart_period_in_seconds"

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p3, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mReStartPeriodSeconds:I

    .line 70
    .line 71
    new-instance p3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

    .line 72
    .line 73
    invoke-direct {p3, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 74
    .line 75
    .line 76
    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAccessibilitySettingsListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

    .line 77
    .line 78
    new-instance p3, Landroid/content/Intent;

    .line 79
    .line 80
    const-string p7, "android.service.voice.HotwordDetectionService"

    .line 81
    .line 82
    invoke-direct {p3, p7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    new-instance p5, Landroid/content/Intent;

    .line 89
    .line 90
    const-string p7, "android.service.voice.VisualQueryDetectionService"

    .line 91
    .line 92
    invoke-direct {p5, p7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p5, p6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlinger()V

    .line 99
    .line 100
    .line 101
    new-instance p6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 102
    .line 103
    invoke-direct {p6, p0, p3, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;I)V

    .line 104
    .line 105
    .line 106
    iput-object p6, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 107
    .line 108
    new-instance p3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 109
    .line 110
    const/4 p6, 0x2

    .line 111
    invoke-direct {p3, p0, p5, p6}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;I)V

    .line 112
    .line 113
    .line 114
    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 115
    .line 116
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 121
    .line 122
    const-class p3, Landroid/app/AppOpsManager;

    .line 123
    .line 124
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    check-cast p2, Landroid/app/AppOpsManager;

    .line 129
    .line 130
    const/16 p3, 0x88

    .line 131
    .line 132
    iget-object p4, p4, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p2, p3, p4, v4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 135
    .line 136
    .line 137
    if-gtz p1, :cond_0

    .line 138
    .line 139
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    .line 143
    .line 144
    .line 145
    new-instance p2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;

    .line 146
    .line 147
    const/4 p3, 0x1

    .line 148
    invoke-direct {p2, p0, p3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V

    .line 149
    .line 150
    .line 151
    int-to-long p5, p1

    .line 152
    sget-object p7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 153
    .line 154
    move-object p1, v0

    .line 155
    move-wide p3, p5

    .line 156
    invoke-virtual/range {p1 .. p7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 161
    .line 162
    :goto_0
    return-void
.end method


# virtual methods
.method public final cancelLocked()V
    .locals 4

    .line 1
    const-string v0, "HotwordDetectionConnection"

    .line 2
    .line 3
    const-string v1, "cancelLocked"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    :cond_0
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v0, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->resetDetectionProcessIdentityIfEmptyLocked()V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->resetDetectionProcessIdentityIfEmptyLocked()V

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    invoke-interface {v3, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    .line 74
    .line 75
    invoke-interface {v1, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    .line 79
    .line 80
    :cond_4
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    const-class v1, Landroid/app/AppOpsManager;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/app/AppOpsManager;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mOnOpChangedListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    check-cast p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 24
    .line 25
    move-object v5, p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const-string p0, "HotwordDetectionConnection"

    .line 28
    .line 29
    const-string v3, "Not found the Dsp detector"

    .line 30
    .line 31
    invoke-static {p0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-object v5, v2

    .line 35
    :goto_1
    if-eqz v5, :cond_4

    .line 36
    .line 37
    iget-object p0, v5, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-nez p2, :cond_2

    .line 42
    .line 43
    :try_start_1
    monitor-exit p0

    .line 44
    move v4, v3

    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_3

    .line 48
    :cond_2
    iget-object v4, v5, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 49
    .line 50
    invoke-interface {v4}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {p2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-interface {v4, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_2
    if-nez v4, :cond_3

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_3
    :try_start_2
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    invoke-direct {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 69
    .line 70
    .line 71
    new-instance v9, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;

    .line 72
    .line 73
    invoke-direct {v9, v5, v6, p1, p2}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;-><init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    .line 74
    .line 75
    .line 76
    iput-boolean v1, v5, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    .line 77
    .line 78
    iput-object v2, v5, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mLastHotwordRejectedResult:Landroid/service/voice/HotwordRejectedResult;

    .line 79
    .line 80
    iget-object p0, v5, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 81
    .line 82
    new-instance v1, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    move-object v4, v1

    .line 85
    move-object v7, p2

    .line 86
    move-object v8, p1

    .line 87
    invoke-direct/range {v4 .. v9}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 91
    .line 92
    .line 93
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    return-void

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    goto :goto_5

    .line 97
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :try_start_4
    throw p1

    .line 99
    :cond_4
    :goto_4
    const-string p0, "HotwordDetectionConnection"

    .line 100
    .line 101
    const-string p1, "Not found the Dsp detector by callback"

    .line 102
    .line 103
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    monitor-exit v0

    .line 107
    return-void

    .line 108
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    throw p0
.end method

.method public final getDetectorSessionByTokenLocked(Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/DetectorSession;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge v2, v3, :cond_3

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    iget-object v4, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v4

    .line 32
    :try_start_0
    iget-object v5, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mToken:Landroid/os/IBinder;

    .line 33
    .line 34
    if-ne v5, p1, :cond_1

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v5, v1

    .line 39
    :goto_1
    monitor-exit v4

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    return-object v3

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0

    .line 46
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    return-object v0
.end method

.method public final getVisualQueryDetectorSessionLocked()Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    check-cast p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    :goto_0
    const-string p0, "HotwordDetectionConnection"

    .line 23
    .line 24
    const-string v0, "Not found the visual query detector"

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final initAudioFlinger()V
    .locals 3

    .line 1
    const-string/jumbo v0, "media.audio_flinger"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_1
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const-string v1, "HotwordDetectionConnection"

    .line 28
    .line 29
    const-string v2, "Audio server died before we registered a DeathRecipient; retrying init."

    .line 30
    .line 31
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlinger()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v0

    .line 41
    const/4 v1, 0x0

    .line 42
    :try_start_2
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    .line 43
    .line 44
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "Service media.audio_flinger wasn\'t found."

    .line 48
    .line 49
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    throw p0
.end method

.method public final resetDetectionProcessIdentityIfEmptyLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 33
    .line 34
    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-direct {v3, v0, v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final restartProcessLocked()V
    .locals 5

    .line 1
    const-string v0, "HotwordDetectionConnection"

    .line 2
    .line 3
    const-string v1, "Restarting hotword detection process"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 13
    .line 14
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 19
    .line 20
    iget v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    .line 21
    .line 22
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    iput v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 35
    .line 36
    :cond_0
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 45
    .line 46
    :cond_1
    const-string v4, "Started the new process, dispatching processRestarted to detector"

    .line 47
    .line 48
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-direct {v0, v4, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    .line 58
    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->ignoreConnectionStatusEvents()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 66
    .line 67
    .line 68
    :cond_2
    if-eqz v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->ignoreConnectionStatusEvents()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 74
    .line 75
    .line 76
    :cond_3
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 83
    .line 84
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-direct {v1, v0, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;-><init>(II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    return-void
.end method

.method public final runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final safelyShutdownHotwordDetectionOnVoiceActivationDisabledLocked()V
    .locals 5

    .line 1
    const-string v0, "HotwordDetectionConnection"

    .line 2
    .line 3
    const-string/jumbo v1, "safelyShutdownHotwordDetectionOnVoiceActivationDisabled"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 16
    .line 17
    .line 18
    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 19
    .line 20
    :cond_0
    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-direct {v1, v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 50
    .line 51
    .line 52
    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 53
    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->resetDetectionProcessIdentityIfEmptyLocked()V

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    invoke-interface {v4, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    .line 72
    .line 73
    invoke-interface {v2, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 74
    .line 75
    .line 76
    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "Swallowing error while shutting down hotword detection.Error message: "

    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_2
    return-void
.end method

.method public final updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getDetectorSessionByTokenLocked(Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/DetectorSession;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    const-string p0, "HotwordDetectionConnection"

    .line 8
    .line 9
    const-string p1, "Not found the detector by token"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x3

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    iget v2, p3, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p3, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    const-string p0, "call updateStateAfterProcessStartLocked"

    .line 60
    .line 61
    const-string v0, "DetectorSession"

    .line 62
    .line 63
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object p0, p3, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 67
    .line 68
    new-instance v1, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;

    .line 69
    .line 70
    invoke-direct {v1, p3, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance p1, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;

    .line 78
    .line 79
    invoke-direct {p1, p3}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-nez p0, :cond_3

    .line 87
    .line 88
    const-string p0, "Failed to create AndroidFuture"

    .line 89
    .line 90
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object p0, p3, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 95
    .line 96
    new-instance p3, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda5;

    .line 97
    .line 98
    invoke-direct {p3, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda5;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p3}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_0
    return-void
.end method
