.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/media/soundtrigger/RecognitionConfig;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 15
    .line 16
    check-cast p1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-interface {p1, v2, v0, v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Landroid/media/soundtrigger/PhraseSoundModel;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 32
    .line 33
    check-cast p1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v2, v1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    .line 39
    .line 40
    iget-object v1, v1, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    .line 43
    .line 44
    invoke-interface {p1, v2, v1, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Landroid/media/soundtrigger/SoundModel;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 57
    .line 58
    check-cast p1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-interface {p1, v1, v2, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
