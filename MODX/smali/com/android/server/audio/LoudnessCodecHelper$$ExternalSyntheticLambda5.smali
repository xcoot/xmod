.class public final synthetic Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    check-cast p1, Ljava/util/Map$Entry;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    .line 16
    iget p1, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mPid:I

    .line 18
    if-ne p1, p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0

    .line 24
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    .line 30
    iget p1, p1, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;->mPid:I

    .line 32
    if-ne p1, p0, :cond_1

    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    :goto_1
    return p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
