.class public final Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;
.super Lcom/android/server/display/mode/RefreshRateVote;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/display/mode/RefreshRateVote;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "PhysicalVote{ "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-super {p0}, Lcom/android/server/display/mode/RefreshRateVote;->toString()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    const-string v1, " }"

    .line 14
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 3
    iget v1, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMinRefreshRate:F

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 8
    move-result v0

    .line 9
    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 11
    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 13
    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    .line 15
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    .line 18
    move-result v0

    .line 19
    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 21
    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 23
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    .line 26
    move-result p0

    .line 27
    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 29
    return-void
.end method
