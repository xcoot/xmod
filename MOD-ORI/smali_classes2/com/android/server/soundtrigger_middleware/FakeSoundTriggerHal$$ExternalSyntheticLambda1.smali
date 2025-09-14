.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

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
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->mModelHandle:I

    .line 11
    .line 12
    invoke-interface {p1, p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->modelUnloaded(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 17
    .line 18
    invoke-interface {p1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
