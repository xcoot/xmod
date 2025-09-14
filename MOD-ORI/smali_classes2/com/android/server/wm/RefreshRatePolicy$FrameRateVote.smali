.class public final Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCompatibility:I

.field public mRefreshRate:F

.field public mSelectionStrategy:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 8
    .line 9
    iget v0, p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    .line 12
    .line 13
    const v3, 0x3c23d70a    # 0.01f

    .line 14
    .line 15
    .line 16
    add-float v4, v0, v3

    .line 17
    .line 18
    cmpg-float v4, v2, v4

    .line 19
    .line 20
    if-gtz v4, :cond_1

    .line 21
    .line 22
    sub-float/2addr v0, v3

    .line 23
    cmpl-float v0, v2, v0

    .line 24
    .line 25
    if-ltz v0, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    .line 28
    .line 29
    iget v2, p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    .line 34
    .line 35
    iget p1, p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    .line 36
    .line 37
    if-ne p0, p1, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "mRefreshRate="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", mCompatibility="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", mSelectionStrategy="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final update(IIF)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    .line 2
    .line 3
    const v1, 0x3c23d70a    # 0.01f

    .line 4
    .line 5
    .line 6
    add-float v2, p3, v1

    .line 7
    .line 8
    cmpg-float v2, v0, v2

    .line 9
    .line 10
    if-gtz v2, :cond_1

    .line 11
    .line 12
    sub-float v1, p3, v1

    .line 13
    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-ltz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    .line 19
    .line 20
    if-ne v0, p1, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    .line 23
    .line 24
    if-eq v0, p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    :goto_0
    iput p3, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    .line 30
    .line 31
    iput p1, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    .line 32
    .line 33
    iput p2, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0
.end method
