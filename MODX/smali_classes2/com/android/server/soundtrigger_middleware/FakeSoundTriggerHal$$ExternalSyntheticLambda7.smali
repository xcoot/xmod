.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->createDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1, p0, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast p1, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 26
    .line 27
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$smcreateDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, p0, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    check-cast p1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 39
    .line 40
    invoke-interface {p1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
