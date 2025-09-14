.class public final Lcom/android/server/display/mode/BaseModeRefreshRateVote;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/mode/Vote;


# instance fields
.field public final mAppRequestBaseModeRefreshRate:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/display/mode/BaseModeRefreshRateVote;->mAppRequestBaseModeRefreshRate:F

    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/display/mode/BaseModeRefreshRateVote;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 10
    check-cast p1, Lcom/android/server/display/mode/BaseModeRefreshRateVote;

    .line 12
    iget p1, p1, Lcom/android/server/display/mode/BaseModeRefreshRateVote;->mAppRequestBaseModeRefreshRate:F

    .line 14
    iget p0, p0, Lcom/android/server/display/mode/BaseModeRefreshRateVote;->mAppRequestBaseModeRefreshRate:F

    .line 16
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v2

    .line 24
    :goto_0
    return v0

    .line 25
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/mode/BaseModeRefreshRateVote;->mAppRequestBaseModeRefreshRate:F

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p0

    .line 7
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "BaseModeRefreshRateVote{ mAppRequestBaseModeRefreshRate="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget p0, p0, Lcom/android/server/display/mode/BaseModeRefreshRateVote;->mAppRequestBaseModeRefreshRate:F

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, " }"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget p0, p0, Lcom/android/server/display/mode/BaseModeRefreshRateVote;->mAppRequestBaseModeRefreshRate:F

    .line 10
    cmpl-float v0, p0, v1

    .line 12
    if-lez v0, :cond_0

    .line 14
    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    .line 16
    :cond_0
    return-void
.end method
