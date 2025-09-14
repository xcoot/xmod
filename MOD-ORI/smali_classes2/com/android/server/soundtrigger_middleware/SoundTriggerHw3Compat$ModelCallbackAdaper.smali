.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;
.super Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "6b24e60ad261e3ff56106efd86ce6aa7ef5621b0"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final modelUnloaded(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->modelUnloaded(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .locals 4

    .line 1
    iget-object v0, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 4
    .line 5
    iget v2, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    if-ne v2, v3, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    or-int/2addr v1, v2

    .line 14
    iput-boolean v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 15
    .line 16
    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    iput-wide v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->halEventReceivedMillis:J

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 30
    .line 31
    invoke-interface {p0, p1, v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V
    .locals 3

    .line 1
    iget-boolean v0, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 2
    .line 3
    iget v1, p2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    or-int/2addr v0, v1

    .line 12
    iput-boolean v0, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 13
    .line 14
    new-instance v0, Landroid/media/soundtrigger_middleware/RecognitionEventSys;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/RecognitionEventSys;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, v0, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->halEventReceivedMillis:J

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 28
    .line 29
    invoke-interface {p0, p1, v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
