.class public final Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;
.super Lcom/android/server/display/mode/RefreshRateToken;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final accept()V
    .locals 3

    .line 1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->getModeSwitchingType()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    invoke-direct {v0, v1}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, v1}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken$$ExternalSyntheticLambda1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;

    .line 43
    .line 44
    const/4 v1, 0x6

    .line 45
    invoke-direct {v0, v1}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken$$ExternalSyntheticLambda2;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/high16 v0, -0x80000000

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-ne p0, v0, :cond_1

    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    int-to-float p0, p0

    .line 82
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 83
    .line 84
    invoke-static {p0, v0}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :goto_0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 89
    .line 90
    const/4 v1, -0x1

    .line 91
    const/4 v2, 0x2

    .line 92
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 93
    .line 94
    .line 95
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 100
    .line 101
    const/4 v2, 0x7

    .line 102
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    :goto_1
    return-void
.end method
