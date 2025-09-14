.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/media/soundtrigger/RecognitionEvent;)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger/RecognitionEvent;)V
    .locals 1

    .line 4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/media/soundtrigger/RecognitionEvent;

    .line 13
    .line 14
    check-cast p1, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 17
    .line 18
    iget v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    .line 19
    .line 20
    invoke-interface {p1, v0, p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 31
    .line 32
    check-cast p1, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 35
    .line 36
    iget v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    .line 37
    .line 38
    invoke-interface {p1, v0, p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Landroid/media/soundtrigger/RecognitionEvent;

    .line 49
    .line 50
    check-cast p1, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    .line 51
    .line 52
    iget v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    .line 53
    .line 54
    invoke-interface {p1, v0, p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 65
    .line 66
    check-cast p1, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    .line 67
    .line 68
    iget v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    .line 69
    .line 70
    invoke-interface {p1, v0, p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
