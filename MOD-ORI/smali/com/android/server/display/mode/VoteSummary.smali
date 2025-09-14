.class public final Lcom/android/server/display/mode/VoteSummary;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public appRequestBaseModeRefreshRate:F

.field public disableRefreshRateSwitching:Z

.field public height:I

.field public final mIsDisplayResolutionRangeVotingEnabled:Z

.field public final mLoggingEnabled:Z

.field public final mSupportedModesVoteEnabled:Z

.field public final mSupportsFrameRateOverride:Z

.field public maxPhysicalRefreshRate:F

.field public maxRenderFrameRate:F

.field public minHeight:I

.field public minPhysicalRefreshRate:F

.field public minRenderFrameRate:F

.field public minWidth:I

.field public final requestedRefreshRates:Ljava/util/Set;

.field public supportedModeIds:Ljava/util/List;

.field public supportedRefreshRates:Ljava/util/List;

.field public width:I


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 12
    .line 13
    iput-boolean p2, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    .line 14
    .line 15
    iput-boolean p3, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    .line 16
    .line 17
    iput-boolean p4, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/display/mode/VoteSummary;->reset()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static equalsWithinFloatTolerance(FF)Z
    .locals 2

    .line 1
    const v0, 0x3c23d70a    # 0.01f

    .line 2
    .line 3
    .line 4
    sub-float v1, p1, v0

    .line 5
    .line 6
    cmpl-float v1, p0, v1

    .line 7
    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    add-float/2addr p1, v0

    .line 11
    cmpg-float p0, p0, p1

    .line 12
    .line 13
    if-gtz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method


# virtual methods
.method public final adjustSize(Landroid/view/Display$Mode;[Landroid/view/Display$Mode;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    iget v2, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 7
    .line 8
    if-ne v2, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 13
    .line 14
    if-eqz p1, :cond_5

    .line 15
    .line 16
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 17
    .line 18
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 19
    .line 20
    array-length p1, p2

    .line 21
    const/4 v1, 0x0

    .line 22
    move v3, v1

    .line 23
    :goto_0
    if-ge v1, p1, :cond_5

    .line 24
    .line 25
    aget-object v4, p2, v1

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-gt v5, v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-gt v5, v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    .line 44
    .line 45
    if-lt v5, v6, :cond_3

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    .line 52
    .line 53
    if-lt v5, v6, :cond_3

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 60
    .line 61
    const v7, 0x3c23d70a    # 0.01f

    .line 62
    .line 63
    .line 64
    sub-float/2addr v6, v7

    .line 65
    cmpg-float v5, v5, v6

    .line 66
    .line 67
    if-ltz v5, :cond_3

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 74
    .line 75
    add-float/2addr v6, v7

    .line 76
    cmpl-float v5, v5, v6

    .line 77
    .line 78
    if-lez v5, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    mul-int/2addr v6, v5

    .line 90
    if-gt v6, v3, :cond_2

    .line 91
    .line 92
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-ne v5, v2, :cond_3

    .line 97
    .line 98
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-ne v5, v0, :cond_3

    .line 103
    .line 104
    :cond_2
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    iput v3, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    iput v3, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 115
    .line 116
    move v3, v6

    .line 117
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    iput p2, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 131
    .line 132
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    .line 133
    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string p2, "adjustSize: "

    .line 139
    .line 140
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const-string p1, "VoteSummary"

    .line 151
    .line 152
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_6
    return-void
.end method

.method public final applyVotes(IILandroid/util/SparseArray;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/mode/VoteSummary;->reset()V

    .line 2
    .line 3
    .line 4
    move v0, p2

    .line 5
    :goto_0
    if-lt v0, p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/server/display/mode/Vote;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v1, p0}, Lcom/android/server/display/mode/Vote;->updateSummary(Lcom/android/server/display/mode/VoteSummary;)V

    .line 17
    .line 18
    .line 19
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean p3, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    .line 23
    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v0, "applyVotes for range ["

    .line 29
    .line 30
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ", "

    .line 41
    .line 42
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, "]: "

    .line 53
    .line 54
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p1, "VoteSummary"

    .line 65
    .line 66
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public final disableModeSwitching(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 6
    .line 7
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Disabled mode switching on summary: "

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "VoteSummary"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final disableRenderRateSwitching(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VoteSummary;->isRenderRateAchievable(F)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 12
    .line 13
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 14
    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "Disabled render rate switching on summary: "

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "VoteSummary"

    .line 34
    .line 35
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final filterModes([Landroid/view/Display$Mode;)Ljava/util/List;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 8
    .line 9
    const v4, 0x3c23d70a    # 0.01f

    .line 10
    .line 11
    .line 12
    add-float/2addr v3, v4

    .line 13
    cmpl-float v2, v2, v3

    .line 14
    .line 15
    const-string v3, ", maxRenderFrameRate="

    .line 16
    .line 17
    iget-boolean v5, v0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    .line 18
    .line 19
    const-string v6, "VoteSummary"

    .line 20
    .line 21
    if-lez v2, :cond_0

    .line 22
    .line 23
    if-eqz v5, :cond_4

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Vote summary resulted in empty set (invalid frame rate range): minRenderFrameRate="

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v2, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v0, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v2, v0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    .line 54
    .line 55
    iget-boolean v7, v0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    check-cast v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    if-eqz v5, :cond_4

    .line 70
    .line 71
    const-string v0, "Vote summary resulted in empty set (empty supportedModes)"

    .line 72
    .line 73
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v2, v0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    .line 78
    .line 79
    check-cast v2, Ljava/util/HashSet;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_5

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Ljava/lang/Float;

    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    iget v10, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 102
    .line 103
    cmpg-float v9, v9, v10

    .line 104
    .line 105
    if-ltz v9, :cond_3

    .line 106
    .line 107
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    iget v10, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 112
    .line 113
    cmpl-float v9, v9, v10

    .line 114
    .line 115
    if-lez v9, :cond_2

    .line 116
    .line 117
    :cond_3
    if-eqz v5, :cond_4

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v2, "Requested refreshRate is outside frame rate range: requestedRefreshRates="

    .line 122
    .line 123
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, v0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, ", requestedRefreshRate="

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, ", minRenderFrameRate="

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v2, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget v0, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    :cond_4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    return-object v0

    .line 170
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    iget v8, v0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    .line 176
    .line 177
    const/4 v9, 0x0

    .line 178
    cmpl-float v8, v8, v9

    .line 179
    .line 180
    if-lez v8, :cond_6

    .line 181
    .line 182
    const/4 v8, 0x1

    .line 183
    goto :goto_1

    .line 184
    :cond_6
    const/4 v8, 0x0

    .line 185
    :goto_1
    array-length v10, v1

    .line 186
    const/4 v11, 0x0

    .line 187
    :goto_2
    if-ge v11, v10, :cond_17

    .line 188
    .line 189
    aget-object v12, v1, v11

    .line 190
    .line 191
    iget-object v13, v0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    .line 192
    .line 193
    const-string v14, "Discarding mode "

    .line 194
    .line 195
    if-eqz v13, :cond_b

    .line 196
    .line 197
    if-nez v7, :cond_7

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    check-cast v13, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    if-eqz v15, :cond_9

    .line 211
    .line 212
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v15

    .line 216
    check-cast v15, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    .line 217
    .line 218
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    iget v4, v15, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    .line 223
    .line 224
    invoke-static {v9, v4}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_8

    .line 229
    .line 230
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getVsyncRate()F

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    iget v9, v15, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mVsyncRate:F

    .line 235
    .line 236
    invoke-static {v4, v9}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_8

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_8
    const v4, 0x3c23d70a    # 0.01f

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_9
    if-eqz v5, :cond_a

    .line 248
    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v9, ", supportedRefreshRates not found: mode.refreshRate="

    .line 262
    .line 263
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v9, ", mode.vsyncRate="

    .line 274
    .line 275
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getVsyncRate()F

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v9, ", supportedRefreshRates="

    .line 286
    .line 287
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget-object v9, v0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    .line 291
    .line 292
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    :cond_a
    :goto_4
    const v13, 0x3c23d70a    # 0.01f

    .line 303
    .line 304
    .line 305
    goto/16 :goto_9

    .line 306
    .line 307
    :cond_b
    :goto_5
    iget-object v4, v0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    .line 308
    .line 309
    if-eqz v4, :cond_e

    .line 310
    .line 311
    if-nez v7, :cond_c

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_c
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 315
    .line 316
    .line 317
    move-result v9

    .line 318
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eqz v4, :cond_d

    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_d
    if-eqz v5, :cond_a

    .line 330
    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v9, ", supportedMode not found: mode.modeId="

    .line 344
    .line 345
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v9, ", supportedModeIds="

    .line 356
    .line 357
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget-object v9, v0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    .line 361
    .line 362
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_e
    :goto_6
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    iget v9, v0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 378
    .line 379
    if-ne v4, v9, :cond_f

    .line 380
    .line 381
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    iget v9, v0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 386
    .line 387
    if-eq v4, v9, :cond_10

    .line 388
    .line 389
    :cond_f
    const v13, 0x3c23d70a    # 0.01f

    .line 390
    .line 391
    .line 392
    goto/16 :goto_8

    .line 393
    .line 394
    :cond_10
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    iget v9, v0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 399
    .line 400
    const v13, 0x3c23d70a    # 0.01f

    .line 401
    .line 402
    .line 403
    sub-float/2addr v9, v13

    .line 404
    cmpg-float v9, v4, v9

    .line 405
    .line 406
    const-string v15, ", modeRefreshRate="

    .line 407
    .line 408
    if-ltz v9, :cond_15

    .line 409
    .line 410
    iget v9, v0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 411
    .line 412
    add-float/2addr v9, v13

    .line 413
    cmpl-float v9, v4, v9

    .line 414
    .line 415
    if-lez v9, :cond_11

    .line 416
    .line 417
    goto/16 :goto_7

    .line 418
    .line 419
    :cond_11
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    iget-boolean v9, v0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    .line 424
    .line 425
    if-nez v9, :cond_13

    .line 426
    .line 427
    iget v9, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 428
    .line 429
    sub-float/2addr v9, v13

    .line 430
    cmpg-float v9, v4, v9

    .line 431
    .line 432
    if-ltz v9, :cond_12

    .line 433
    .line 434
    iget v9, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 435
    .line 436
    add-float/2addr v9, v13

    .line 437
    cmpl-float v9, v4, v9

    .line 438
    .line 439
    if-lez v9, :cond_13

    .line 440
    .line 441
    :cond_12
    if-eqz v5, :cond_16

    .line 442
    .line 443
    new-instance v9, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 449
    .line 450
    .line 451
    move-result v12

    .line 452
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const-string v12, ", outside render rate bounds: minRenderFrameRate="

    .line 456
    .line 457
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    iget v12, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 461
    .line 462
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    iget v12, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 469
    .line 470
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    goto/16 :goto_9

    .line 487
    .line 488
    :cond_13
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    invoke-virtual {v0, v4}, Lcom/android/server/display/mode/VoteSummary;->isRenderRateAchievable(F)Z

    .line 493
    .line 494
    .line 495
    move-result v9

    .line 496
    if-nez v9, :cond_14

    .line 497
    .line 498
    if-eqz v5, :cond_16

    .line 499
    .line 500
    new-instance v9, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 506
    .line 507
    .line 508
    move-result v12

    .line 509
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    const-string v12, ", outside frame rate bounds: minRenderFrameRate="

    .line 513
    .line 514
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    iget v12, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 518
    .line 519
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    iget v12, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 526
    .line 527
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v12, ", modePhysicalRefreshRate="

    .line 531
    .line 532
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    goto/16 :goto_9

    .line 546
    .line 547
    :cond_14
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    iget v9, v0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    .line 555
    .line 556
    invoke-static {v4, v9}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    .line 557
    .line 558
    .line 559
    move-result v4

    .line 560
    if-eqz v4, :cond_16

    .line 561
    .line 562
    const/4 v8, 0x0

    .line 563
    goto :goto_9

    .line 564
    :cond_15
    :goto_7
    if-eqz v5, :cond_16

    .line 565
    .line 566
    new-instance v9, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 572
    .line 573
    .line 574
    move-result v12

    .line 575
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    const-string v12, ", outside refresh rate bounds: minPhysicalRefreshRate="

    .line 579
    .line 580
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    iget v12, v0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 584
    .line 585
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    const-string v12, ", maxPhysicalRefreshRate="

    .line 589
    .line 590
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    iget v12, v0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 594
    .line 595
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .line 610
    .line 611
    goto :goto_9

    .line 612
    :goto_8
    if-eqz v5, :cond_16

    .line 613
    .line 614
    new-instance v4, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 620
    .line 621
    .line 622
    move-result v9

    .line 623
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    const-string v9, ", wrong size: desiredWidth="

    .line 627
    .line 628
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    iget v9, v0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 632
    .line 633
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    const-string v9, ": desiredHeight="

    .line 637
    .line 638
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    iget v9, v0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 642
    .line 643
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    const-string v9, ": actualWidth="

    .line 647
    .line 648
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 652
    .line 653
    .line 654
    move-result v9

    .line 655
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    const-string v9, ": actualHeight="

    .line 659
    .line 660
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 664
    .line 665
    .line 666
    move-result v9

    .line 667
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .line 676
    .line 677
    :cond_16
    :goto_9
    add-int/lit8 v11, v11, 0x1

    .line 678
    .line 679
    move v4, v13

    .line 680
    goto/16 :goto_2

    .line 681
    .line 682
    :cond_17
    if-eqz v8, :cond_18

    .line 683
    .line 684
    new-instance v0, Ljava/util/ArrayList;

    .line 685
    .line 686
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .line 688
    .line 689
    return-object v0

    .line 690
    :cond_18
    return-object v2
.end method

.method public final isRenderRateAchievable(F)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 2
    .line 3
    div-float v0, p1, v0

    .line 4
    .line 5
    const v1, 0x3c23d70a    # 0.01f

    .line 6
    .line 7
    .line 8
    sub-float/2addr v0, v1

    .line 9
    float-to-double v2, v0

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    double-to-int v0, v2

    .line 15
    int-to-float v0, v0

    .line 16
    div-float/2addr p1, v0

    .line 17
    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 18
    .line 19
    sub-float/2addr p0, v1

    .line 20
    cmpl-float p0, p1, p0

    .line 21
    .line 22
    if-ltz p0, :cond_0

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
.end method

.method public final limitRefreshRanges(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 20
    .line 21
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 22
    .line 23
    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 30
    .line 31
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 32
    .line 33
    iget p1, p1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 34
    .line 35
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 40
    .line 41
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo v0, "limitRefreshRanges: "

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "VoteSummary"

    .line 61
    .line 62
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 3
    .line 4
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 5
    .line 6
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 7
    .line 8
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 9
    .line 10
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 14
    .line 15
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    .line 19
    .line 20
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    .line 23
    .line 24
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "Summary reset: "

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v0, "VoteSummary"

    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public final selectBaseMode(Ljava/util/List;Landroid/view/Display$Mode;I)Landroid/view/Display$Mode;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v2, v0, v1

    .line 5
    .line 6
    if-lez v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    if-nez p3, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    .line 30
    .line 31
    cmpl-float p0, p0, v1

    .line 32
    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance p2, Lcom/android/server/display/mode/VoteSummary$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Landroid/view/Display$Mode;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_3

    .line 67
    .line 68
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    check-cast p2, Landroid/view/Display$Mode;

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    invoke-static {v0, p3}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-eqz p3, :cond_2

    .line 83
    .line 84
    return-object p2

    .line 85
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_4

    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Landroid/view/Display$Mode;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/4 p0, 0x0

    .line 100
    :goto_1
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VoteSummary{ minPhysicalRefreshRate="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", maxPhysicalRefreshRate="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", minRenderFrameRate="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", maxRenderFrameRate="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", width="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", height="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", minWidth="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", minHeight="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", disableRefreshRateSwitching="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", appRequestBaseModeRefreshRate="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", requestRefreshRates="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", supportedRefreshRates="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", supportedModeIds="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", mIsDisplayResolutionRangeVotingEnabled="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", mSupportedModesVoteEnabled="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", mSupportsFrameRateOverride="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-boolean p0, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    .line 159
    .line 160
    const-string v1, " }"

    .line 161
    .line 162
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0
.end method
