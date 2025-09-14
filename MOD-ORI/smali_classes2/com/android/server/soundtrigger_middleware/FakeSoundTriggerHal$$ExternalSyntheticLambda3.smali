.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;


# direct methods
.method public synthetic constructor <init>(IILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 6
    .line 7
    check-cast p1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 8
    .line 9
    invoke-interface {p1, v0, v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
