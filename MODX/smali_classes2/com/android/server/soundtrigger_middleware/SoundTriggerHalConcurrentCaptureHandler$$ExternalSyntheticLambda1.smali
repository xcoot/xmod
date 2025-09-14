.class public final synthetic Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;->f$0:I

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->mDelegateCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 13
    .line 14
    invoke-interface {v0, p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->modelUnloaded(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;->f$0:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;

    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;->type:I

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;->callback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    if-eq v1, v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Landroid/media/soundtrigger/RecognitionEvent;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    .line 38
    .line 39
    .line 40
    new-array v2, v2, [B

    .line 41
    .line 42
    iput-object v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    .line 43
    .line 44
    iput v3, v1, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    .line 45
    .line 46
    iput v3, v1, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 47
    .line 48
    new-instance v2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;

    .line 49
    .line 50
    invoke-direct {v2}, Landroid/media/soundtrigger_middleware/RecognitionEventSys;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, v2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    .line 54
    .line 55
    invoke-interface {p0, v0, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 60
    .line 61
    invoke-direct {v1}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v4, Landroid/media/soundtrigger/RecognitionEvent;

    .line 65
    .line 66
    invoke-direct {v4}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    .line 67
    .line 68
    .line 69
    new-array v5, v2, [B

    .line 70
    .line 71
    iput-object v5, v4, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    .line 72
    .line 73
    iput-object v4, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 74
    .line 75
    new-array v5, v2, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 76
    .line 77
    iput-object v5, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 78
    .line 79
    iput v2, v4, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    .line 80
    .line 81
    iput v3, v4, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 82
    .line 83
    new-instance v2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    .line 84
    .line 85
    invoke-direct {v2}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v1, v2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 89
    .line 90
    invoke-interface {p0, v0, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
