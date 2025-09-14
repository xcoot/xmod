.class public final Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIgnorePreferredRefreshRate:Z

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SWITCHABLE:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p2, Lcom/android/server/display/feature/DisplayManagerFlags;->mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 16
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 22
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 24
    if-eqz p1, :cond_2

    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public final findModeLocked(IIF)Landroid/view/Display$Mode;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p2, :cond_2

    .line 7
    iget-object p0, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, [Landroid/view/Display$Mode;

    .line 15
    if-nez p0, :cond_0

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    array-length p1, p0

    .line 19
    :goto_0
    if-ge v0, p1, :cond_5

    .line 21
    aget-object p3, p0, v0

    .line 23
    invoke-virtual {p3}, Landroid/view/Display$Mode;->getModeId()I

    .line 26
    move-result v1

    .line 27
    if-ne v1, p2, :cond_1

    .line 29
    move-object v2, p3

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p2, 0x0

    .line 35
    cmpl-float p2, p3, p2

    .line 37
    if-eqz p2, :cond_5

    .line 39
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    .line 41
    if-nez p0, :cond_5

    .line 43
    iget-object p0, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    check-cast p0, [Landroid/view/Display$Mode;

    .line 51
    iget-object p2, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/view/Display$Mode;

    .line 59
    :goto_1
    array-length v1, p0

    .line 60
    if-ge v0, v1, :cond_4

    .line 62
    aget-object v1, p0, v0

    .line 64
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 67
    move-result v3

    .line 68
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 71
    move-result v4

    .line 72
    invoke-virtual {v1, v3, v4, p3}, Landroid/view/Display$Mode;->matches(IIF)Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 78
    aget-object v2, p0, v0

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    const-string p2, "Couldn\'t find a mode for the requestedRefreshRate: "

    .line 90
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 96
    const-string p2, " on Display: "

    .line 98
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    const-string p1, "DisplayModeDirector"

    .line 110
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_5
    :goto_3
    return-object v2
.end method

.method public final setAppRequest(IIFFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->findModeLocked(IIF)Landroid/view/Display$Mode;

    .line 9
    move-result-object p2

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 v0, 0x0

    .line 12
    cmpl-float v1, p4, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-gtz v1, :cond_1

    .line 17
    cmpl-float v1, p5, v0

    .line 19
    if-lez v1, :cond_0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    move-object v1, v2

    .line 23
    goto :goto_3

    .line 24
    :cond_1
    :goto_1
    cmpl-float v1, p5, v0

    .line 26
    if-lez v1, :cond_2

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    const/high16 p5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 31
    :goto_2
    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 33
    invoke-direct {v1, p4, p5}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 36
    iget p4, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 38
    cmpl-float p4, p4, v0

    .line 40
    if-nez p4, :cond_3

    .line 42
    iget p4, v1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 44
    cmpl-float p4, p4, v0

    .line 46
    if-nez p4, :cond_3

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 51
    iget p4, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 53
    iget p5, v1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 55
    new-instance v1, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    .line 57
    invoke-direct {v1, p4, p5}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    .line 60
    goto :goto_4

    .line 61
    :cond_4
    move-object v1, v2

    .line 62
    :goto_4
    if-eqz p2, :cond_6

    .line 64
    invoke-virtual {p2}, Landroid/view/Display$Mode;->isSynthetic()Z

    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_5

    .line 70
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 73
    move-result p3

    .line 74
    new-instance p4, Lcom/android/server/display/mode/RequestedRefreshRateVote;

    .line 76
    invoke-direct {p4, p3}, Lcom/android/server/display/mode/RequestedRefreshRateVote;-><init>(F)V

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 83
    move-result p3

    .line 84
    new-instance p4, Lcom/android/server/display/mode/BaseModeRefreshRateVote;

    .line 86
    invoke-direct {p4, p3}, Lcom/android/server/display/mode/BaseModeRefreshRateVote;-><init>(F)V

    .line 89
    goto :goto_5

    .line 90
    :cond_6
    cmpl-float p4, p3, v0

    .line 92
    if-eqz p4, :cond_7

    .line 94
    iget-boolean p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    .line 96
    if-eqz p4, :cond_7

    .line 98
    new-instance p4, Lcom/android/server/display/mode/RequestedRefreshRateVote;

    .line 100
    invoke-direct {p4, p3}, Lcom/android/server/display/mode/RequestedRefreshRateVote;-><init>(F)V

    .line 103
    goto :goto_5

    .line 104
    :cond_7
    move-object p4, v2

    .line 105
    :goto_5
    if-eqz p2, :cond_8

    .line 107
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 110
    move-result p3

    .line 111
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 114
    move-result p2

    .line 115
    new-instance v2, Lcom/android/server/display/mode/SizeVote;

    .line 117
    invoke-direct {v2, p3, p2, p3, p2}, Lcom/android/server/display/mode/SizeVote;-><init>(IIII)V

    .line 120
    :cond_8
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 122
    iget-object p2, p2, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 124
    const/4 p3, 0x7

    .line 125
    invoke-virtual {p2, p1, p3, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 128
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 130
    iget-object p2, p2, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 132
    const/16 p3, 0x8

    .line 134
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 137
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 139
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 141
    const/16 p2, 0x9

    .line 143
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 146
    return-void

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw p0
.end method
