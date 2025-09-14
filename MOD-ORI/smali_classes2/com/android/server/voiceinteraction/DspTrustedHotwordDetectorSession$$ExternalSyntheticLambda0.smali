.class public final synthetic Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final synthetic f$3:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

.field public final synthetic f$4:Landroid/service/voice/IDspHotwordDetectionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$4:Landroid/service/voice/IDspHotwordDetectionCallback;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 8
    .line 9
    iget-object v8, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$4:Landroid/service/voice/IDspHotwordDetectionCallback;

    .line 10
    .line 11
    move-object v3, p1

    .line 12
    check-cast v3, Landroid/service/voice/ISandboxedDetectionService;

    .line 13
    .line 14
    iget-object p0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    new-instance p1, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v1, 0xfa0

    .line 22
    .line 23
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    invoke-interface {p0, p1, v1, v2, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iput-object p0, v0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-wide/16 v6, 0xbb8

    .line 36
    .line 37
    invoke-interface/range {v3 .. v8}, Landroid/service/voice/ISandboxedDetectionService;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
