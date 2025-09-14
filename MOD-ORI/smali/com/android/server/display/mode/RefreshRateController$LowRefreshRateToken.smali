.class public final Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;
.super Lcom/android/server/display/mode/RefreshRateToken;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final accept()V
    .locals 3

    .line 1
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    const/high16 v0, 0x42700000    # 60.0f

    .line 23
    .line 24
    invoke-static {p0, v0}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    const/16 v2, 0x13

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
