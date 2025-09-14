.class public final Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 5
    if-eqz v0, :cond_3

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v0, v2, :cond_2

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_1

    .line 13
    const/4 p0, 0x3

    .line 14
    if-eq v0, p0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, v1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 19
    if-eqz p0, :cond_4

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 28
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 30
    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;

    .line 32
    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;II)V

    .line 35
    invoke-static {v1, v2}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$monLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    check-cast p0, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 47
    invoke-static {v1, p0}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$monLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 50
    :cond_4
    :goto_0
    return-void
.end method
