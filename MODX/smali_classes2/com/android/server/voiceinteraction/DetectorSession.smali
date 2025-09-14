.class public abstract Lcom/android/server/voiceinteraction/DetectorSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

.field public final mAudioCopyExecutor:Ljava/util/concurrent/Executor;

.field public final mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

.field public mDebugHotwordLogging:Z

.field public mDestroyed:Z

.field public final mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

.field public mInitialized:Z

.field public final mLock:Ljava/lang/Object;

.field public mPerformingExternalSourceHotwordDetection:Z

.field public final mProximityCallbackInternal:Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;

.field public mProximityMeters:D

.field public mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field public mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mToken:Landroid/os/IBinder;

.field public final mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUserId:I

.field public final mVoiceInteractionServiceUid:I

.field public final mVoiceInteractorIdentity:Landroid/media/permission/Identity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x7530

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;I)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p3

    .line 3
    move-object v2, p7

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iput-object v3, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    iput-object v3, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    iput-object v3, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

    .line 23
    .line 24
    new-instance v5, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {v5, p0}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    .line 27
    .line 28
    .line 29
    iput-object v5, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityCallbackInternal:Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    iput-boolean v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    .line 32
    .line 33
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 34
    .line 35
    iput-wide v6, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityMeters:D

    .line 36
    .line 37
    iput-boolean v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    .line 38
    .line 39
    iput-boolean v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    .line 40
    .line 41
    move-object/from16 v4, p10

    .line 42
    .line 43
    iput-object v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    move-object v4, p1

    .line 46
    iput-object v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 47
    .line 48
    move-object v4, p2

    .line 49
    iput-object v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object v1, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    move-object v4, p4

    .line 54
    iput-object v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mToken:Landroid/os/IBinder;

    .line 55
    .line 56
    move/from16 v4, p11

    .line 57
    .line 58
    iput v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mUserId:I

    .line 59
    .line 60
    move-object v4, p5

    .line 61
    iput-object v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 62
    .line 63
    move v4, p6

    .line 64
    iput v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 65
    .line 66
    iput-object v2, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 67
    .line 68
    const-class v4, Landroid/app/AppOpsManager;

    .line 69
    .line 70
    invoke-virtual {p3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/app/AppOpsManager;

    .line 75
    .line 76
    iput-object v1, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const/4 v6, 0x3

    .line 83
    if-eq v4, v6, :cond_0

    .line 84
    .line 85
    new-instance v3, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    iget v6, v2, Landroid/media/permission/Identity;->uid:I

    .line 92
    .line 93
    iget-object v7, v2, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v2, v2, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    .line 96
    .line 97
    move-object p1, v3

    .line 98
    move-object p2, v1

    .line 99
    move p3, v4

    .line 100
    move p4, v6

    .line 101
    move-object p5, v7

    .line 102
    move-object p6, v2

    .line 103
    invoke-direct/range {p1 .. p6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;-><init>(Landroid/app/AppOpsManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iput-object v3, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 107
    .line 108
    :goto_0
    move-object/from16 v1, p8

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_0
    iput-object v3, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :goto_1
    iput-object v1, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 115
    .line 116
    move/from16 v1, p9

    .line 117
    .line 118
    iput-boolean v1, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    .line 119
    .line 120
    const-class v1, Landroid/attention/AttentionManagerInternal;

    .line 121
    .line 122
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroid/attention/AttentionManagerInternal;

    .line 127
    .line 128
    iput-object v1, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

    .line 129
    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/attention/AttentionManagerInternal;->isProximitySupported()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_1

    .line 137
    .line 138
    invoke-virtual {v1, v5}, Landroid/attention/AttentionManagerInternal;->onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z

    .line 139
    .line 140
    .line 141
    :cond_1
    return-void
.end method

.method public static enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/media/permission/PermissionUtil;->checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 9
    .line 10
    const-string p3, "Failed to obtain permission %s for identity %s"

    .line 11
    .line 12
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p3, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method


# virtual methods
.method public final closeExternalAudioStreamLocked(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Closing external audio stream to hotword detector: "

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "DetectorSession"

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 17
    .line 18
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final destroyLocked()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityCallbackInternal:Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/attention/AttentionManagerInternal;->onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "mCallback="

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "mUpdateStateAfterStartFinished="

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "mInitialized="

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    .line 39
    .line 40
    const-string v2, "mDestroyed="

    .line 41
    .line 42
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "DetectorType="

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Landroid/service/voice/HotwordDetector;->detectorTypeToString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v0, "mPerformingExternalSourceHotwordDetection="

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final enforceExtraKeyphraseIdNotLeaked(Landroid/service/voice/HotwordDetectedResult;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 3

    .line 1
    const-wide/32 v0, 0xcd1a6bb

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 5
    .line 6
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 14
    .line 15
    array-length p2, p0

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-ge v0, p2, :cond_2

    .line 18
    .line 19
    aget-object v1, p0, v0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->getKeyphraseId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p1}, Landroid/service/voice/HotwordDetectedResult;->getHotwordPhraseId()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 36
    .line 37
    const-string p1, "Ignoring #onDetected due to trusted service sharing a keyphrase ID which the DSP did not detect"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final getDetectorType()I
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    instance-of v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_1
    instance-of p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 14
    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    return p0

    .line 19
    :cond_2
    const-string p0, "DetectorSession"

    .line 20
    .line 21
    const-string v0, "Unexpected detector type"

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p0, -0x1

    .line 27
    return p0
.end method

.method public final handleExternalSourceHotwordDetectionLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V
    .locals 13

    .line 1
    move-object v11, p0

    .line 2
    iget-boolean v0, v11, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 3
    .line 4
    const-string v1, "DetectorSession"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "Hotword validation is already in progress for external source."

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct {v8, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    const/4 v1, 0x0

    .line 26
    aget-object v1, v0, v1

    .line 27
    .line 28
    aget-object v0, v0, v2

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    move-object v3, v0

    .line 37
    const-string v0, "Failed to create audio stream pipe"

    .line 38
    .line 39
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    :goto_0
    if-nez v0, :cond_1

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v7, v1

    .line 49
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 50
    .line 51
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v5, v0

    .line 54
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 55
    .line 56
    iput-object v7, v11, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 57
    .line 58
    iput-boolean v2, v11, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 59
    .line 60
    iget-object v0, v11, Lcom/android/server/voiceinteraction/DetectorSession;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    .line 61
    .line 62
    new-instance v1, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;

    .line 63
    .line 64
    move-object/from16 v9, p4

    .line 65
    .line 66
    invoke-direct {v1, p0, v8, v7, v9}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v11, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 73
    .line 74
    new-instance v12, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;

    .line 75
    .line 76
    move-object v1, v12

    .line 77
    move-object v2, p0

    .line 78
    move-object/from16 v3, p3

    .line 79
    .line 80
    move/from16 v4, p5

    .line 81
    .line 82
    move-object v6, p2

    .line 83
    move/from16 v10, p6

    .line 84
    .line 85
    invoke-direct/range {v1 .. v10}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;ZLandroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v12}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/16 v1, 0xa

    .line 96
    .line 97
    iget v2, v11, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 98
    .line 99
    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public abstract informRestartProcessLocked()V
.end method

.method public final isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final notifyOnDetectorRemoteException()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "notifyOnDetectorRemoteException: mRemoteExceptionListener="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DetectorSession"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mToken:Landroid/os/IBinder;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    :try_start_0
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    .line 39
    .line 40
    invoke-interface {v0, v1, p0}, Landroid/service/voice/IVoiceInteractionService;->detectorRemoteExceptionOccurred(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    const-string p0, "VoiceInteractionServiceManager"

    .line 45
    .line 46
    const-string v0, "Fail to notify client detector remote exception occurred."

    .line 47
    .line 48
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    return-void
.end method

.method public final reportErrorGetRemoteException()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xf

    .line 13
    .line 14
    iget v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final reportErrorLocked(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call onHotwordDetectionServiceFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetectorSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorGetRemoteException()V

    :goto_0
    return-void
.end method

.method public final reportErrorLocked(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call onVisualQueryDetectionServiceFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetectorSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorGetRemoteException()V

    :goto_0
    return-void
.end method

.method public final reportErrorLocked(Ljava/lang/String;)V
    .locals 2

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onUnknownFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call onUnknownFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetectorSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorGetRemoteException()V

    :goto_0
    return-void
.end method

.method public final saveProximityValueToBundle(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityMeters:D

    .line 7
    .line 8
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 9
    .line 10
    cmpl-double p0, v1, v3

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/service/voice/HotwordDetectedResult;->setProximity(D)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public startListeningFromExternalSourceLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 7

    .line 1
    const/4 v5, 0x1

    .line 2
    const/4 v6, 0x1

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/voiceinteraction/DetectorSession;->handleExternalSourceHotwordDetectionLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
