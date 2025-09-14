.class public final Lcom/android/server/audio/SoundEffectsHelper$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    .line 11
    return-void

    .line 12
    :pswitch_0
    const/4 v0, 0x0

    .line 13
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 15
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 17
    if-nez p1, :cond_0

    .line 19
    const-string p1, "AS.SfxHelper"

    .line 21
    const-string/jumbo v0, "onLoadSoundEffects(), Error while loading samples"

    .line 24
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
