.class public final synthetic Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

.field public final synthetic f$1:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder$DeathRecipient;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder$DeathRecipient;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda3;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->push(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
