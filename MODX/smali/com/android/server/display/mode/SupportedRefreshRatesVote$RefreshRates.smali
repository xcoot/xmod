.class public final Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPeakRefreshRate:F

.field public final mVsyncRate:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    .line 6
    iput p2, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mVsyncRate:F

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 10
    check-cast p1, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    .line 12
    iget v1, p1, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    .line 14
    iget v3, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    .line 16
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 22
    iget p1, p1, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mVsyncRate:F

    .line 24
    iget p0, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mVsyncRate:F

    .line 26
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_0
    return v0

    .line 35
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mVsyncRate:F

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "RefreshRates{ mPeakRefreshRate="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mVsyncRate="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget p0, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mVsyncRate:F

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, " }"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
