.class public final synthetic Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda1;->f$0:I

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda1;->f$0:I

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    .line 10
    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-ne p1, p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0

    .line 28
    :pswitch_0
    iget v0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda1;->f$0:I

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda1;->f$1:I

    .line 31
    .line 32
    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ne v1, v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, p0, :cond_1

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    :goto_1
    return p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
