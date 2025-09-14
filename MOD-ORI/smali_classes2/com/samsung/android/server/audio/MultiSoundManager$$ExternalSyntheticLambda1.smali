.class public final synthetic Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

.field public final synthetic f$1:Lcom/samsung/android/media/AudioParameter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/media/AudioParameter;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/media/AudioParameter;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/media/AudioParameter;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
