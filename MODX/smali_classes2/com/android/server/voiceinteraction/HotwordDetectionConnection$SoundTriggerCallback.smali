.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field public final mVoiceInteractorIdentity:Landroid/media/permission/Identity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/media/permission/Identity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 7
    .line 8
    iget v0, v0, Landroid/media/permission/Identity;->uid:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/16 v3, 0x1b1

    .line 12
    .line 13
    invoke-static {v3, v2, v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 19
    .line 20
    sget-boolean v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    .line 21
    .line 22
    invoke-virtual {v0, p1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-class v2, Landroid/app/AppOpsManager;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v2, v0

    .line 35
    check-cast v2, Landroid/app/AppOpsManager;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 38
    .line 39
    iget v4, v0, Landroid/media/permission/Identity;->uid:I

    .line 40
    .line 41
    iget-object v5, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v6, v0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    .line 44
    .line 45
    const-string v7, "Non-HDS keyphrase recognition to VoiceInteractionService"

    .line 46
    .line 47
    const/16 v3, 0x66

    .line 48
    .line 49
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const-string/jumbo p1, "onKeyphraseDetected suppressed, permission check returned: "

    .line 56
    .line 57
    .line 58
    const-string v1, "HotwordDetectionConnection"

    .line 59
    .line 60
    invoke-static {v0, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 64
    .line 65
    invoke-interface {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRecognitionPaused()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 70
    .line 71
    iget v0, v0, Landroid/media/permission/Identity;->uid:I

    .line 72
    .line 73
    invoke-static {v1, v1, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-interface {p0, p1, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method public final onModuleDied()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 2
    .line 3
    new-instance v0, Landroid/service/voice/SoundTriggerFailure;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "STHAL died"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onPauseFailed(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 2
    .line 3
    new-instance v0, Landroid/service/voice/SoundTriggerFailure;

    .line 4
    .line 5
    const-string v1, "STService recognition pause failed with: "

    .line 6
    .line 7
    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1, p1}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onPreempted()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 2
    .line 3
    new-instance v0, Landroid/service/voice/SoundTriggerFailure;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const-string v2, "Unexpected startRecognition on already started ST session"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onRecognitionPaused()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRecognitionPaused()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRecognitionResumed()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRecognitionResumed()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onResumeFailed(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 2
    .line 3
    new-instance v0, Landroid/service/voice/SoundTriggerFailure;

    .line 4
    .line 5
    const-string v1, "STService recognition resume failed with: "

    .line 6
    .line 7
    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1, p1}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
