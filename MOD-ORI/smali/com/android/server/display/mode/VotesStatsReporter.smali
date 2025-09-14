.class public final Lcom/android/server/display/mode/VotesStatsReporter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFrameworkStatsLogReportingEnabled:Z

.field public final mIgnoredRenderRate:Z

.field public mLastMinPriorityReported:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x19

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityReported:I

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    .line 9
    .line 10
    iput-boolean p2, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mFrameworkStatsLogReportingEnabled:Z

    .line 11
    .line 12
    return-void
.end method

.method public static getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    .line 8
    .line 9
    :goto_0
    float-to-int p0, p0

    .line 10
    goto :goto_3

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    instance-of v0, p0, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p0, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    instance-of v0, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    check-cast p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;->mRefreshRates:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 p1, 0x0

    .line 35
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    .line 46
    .line 47
    iget v0, v0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    .line 48
    .line 49
    float-to-int v0, v0

    .line 50
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move p0, p1

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    instance-of v0, p0, Lcom/android/server/display/mode/CombinedVote;

    .line 58
    .line 59
    const/16 v1, 0x3e8

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    check-cast p0, Lcom/android/server/display/mode/CombinedVote;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/display/mode/CombinedVote;->mVotes:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/android/server/display/mode/Vote;

    .line 82
    .line 83
    invoke-static {v0, p1}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move p0, v1

    .line 93
    :goto_3
    return p0
.end method


# virtual methods
.method public final reportVoteChanged(IILcom/android/server/display/mode/Vote;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mFrameworkStatsLogReportingEnabled:Z

    .line 2
    .line 3
    const-wide/32 v1, 0x20000

    .line 4
    .line 5
    .line 6
    const-string v3, ":"

    .line 7
    .line 8
    const-string v4, "VotesStatsReporter."

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    invoke-static {p1, v4, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 p3, -0x1

    .line 28
    invoke-static {v1, v2, p0, p3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 v7, -0x1

    .line 34
    const/4 v8, -0x1

    .line 35
    const/16 v3, 0x318

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    move v4, p1

    .line 39
    move v5, p2

    .line 40
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    .line 45
    .line 46
    invoke-static {p3, p0}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    invoke-static {p1, v4, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v1, v2, p0, v9}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    const/16 v5, 0x318

    .line 71
    .line 72
    const/4 v8, 0x1

    .line 73
    const/4 v10, -0x1

    .line 74
    move v6, p1

    .line 75
    move v7, p2

    .line 76
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void
.end method
