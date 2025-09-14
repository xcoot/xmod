.class public final Lcom/android/server/soundtrigger_middleware/FakeHalFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/HalFactory;


# instance fields
.field public final mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create()Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 4
    .line 5
    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    .line 11
    .line 12
    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

    .line 13
    .line 14
    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v3, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, p0, v0, v3, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;)V

    .line 20
    .line 21
    .line 22
    return-object v2
.end method
