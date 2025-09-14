.class public final Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mExternalDisplayPeakHeight:I

.field public final mExternalDisplayPeakRefreshRate:I

.field public final mExternalDisplayPeakWidth:I

.field public final mExternalDisplaysConnected:Ljava/util/Set;

.field public final mHandler:Landroid/os/Handler;

.field public final mRefreshRateSynchronizationEnabled:Z

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/mode/VotesStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplaysConnected:Ljava/util/Set;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const p3, 0x10e00ae

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakRefreshRate:I

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const p3, 0x10e00af

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakWidth:I

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const p3, 0x10e00ad

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakHeight:I

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const p2, 0x111020a

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mRefreshRateSynchronizationEnabled:Z

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/DisplayInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    :goto_0
    if-eqz p0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_1
    return-object v0
.end method

.method public final isExternalDisplayLimitModeEnabled()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakWidth:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakHeight:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakRefreshRate:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsExternalDisplayLimitModeEnabled:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method public final onDisplayAdded(I)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayDeviceConfig(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayModes(ILandroid/view/DisplayInfo;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateUserSettingDisplayPreferredSize(Landroid/view/DisplayInfo;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    const/4 v1, 0x2

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget v2, v0, Landroid/view/DisplayInfo;->type:I

    .line 22
    .line 23
    if-ne v2, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->isExternalDisplayLimitModeEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 33
    .line 34
    iget v3, v0, Landroid/view/DisplayInfo;->displayId:I

    .line 35
    .line 36
    iget v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakWidth:I

    .line 37
    .line 38
    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakHeight:I

    .line 39
    .line 40
    iget v6, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakRefreshRate:I

    .line 41
    .line 42
    int-to-float v6, v6

    .line 43
    new-instance v7, Lcom/android/server/display/mode/CombinedVote;

    .line 44
    .line 45
    new-instance v8, Lcom/android/server/display/mode/SizeVote;

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    invoke-direct {v8, v4, v5, v9, v9}, Lcom/android/server/display/mode/SizeVote;-><init>(IIII)V

    .line 49
    .line 50
    .line 51
    new-instance v4, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-direct {v4, v5, v6}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    .line 55
    .line 56
    .line 57
    new-instance v10, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    .line 58
    .line 59
    cmpl-float v5, v5, v6

    .line 60
    .line 61
    if-nez v5, :cond_1

    .line 62
    .line 63
    move v9, p1

    .line 64
    :cond_1
    invoke-direct {v10, v9}, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;-><init>(Z)V

    .line 65
    .line 66
    .line 67
    invoke-static {v8, v4, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-direct {v7, v4}, Lcom/android/server/display/mode/CombinedVote;-><init>(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    const/16 v4, 0xf

    .line 75
    .line 76
    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 80
    .line 81
    iget v2, v0, Landroid/view/DisplayInfo;->type:I

    .line 82
    .line 83
    if-ne v2, v1, :cond_4

    .line 84
    .line 85
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mRefreshRateSynchronizationEnabled:Z

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 90
    .line 91
    iget-boolean v2, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    .line 92
    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 96
    .line 97
    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplaysConnected:Ljava/util/Set;

    .line 99
    .line 100
    iget v0, v0, Landroid/view/DisplayInfo;->displayId:I

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v2, Ljava/util/HashSet;

    .line 107
    .line 108
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplaysConnected:Ljava/util/Set;

    .line 112
    .line 113
    check-cast v0, Ljava/util/HashSet;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eq v0, p1, :cond_3

    .line 120
    .line 121
    monitor-exit v1

    .line 122
    goto :goto_2

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 127
    .line 128
    const/high16 p1, 0x426c0000    # 59.0f

    .line 129
    .line 130
    const/high16 v0, 0x42740000    # 61.0f

    .line 131
    .line 132
    invoke-static {p1, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const/4 v0, -0x1

    .line 137
    const/16 v1, 0xe

    .line 138
    .line 139
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    throw p0

    .line 145
    :cond_4
    :goto_2
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayDeviceConfig(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayModes(ILandroid/view/DisplayInfo;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateUserSettingDisplayPreferredSize(Landroid/view/DisplayInfo;)V

    .line 15
    .line 16
    .line 17
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->updateDefaultDisplayToken()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 37
    .line 38
    iget-boolean v2, v1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRatePhysicalLimitEnabled:Z

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    iget-object v2, v1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 46
    .line 47
    const/16 v4, 0xa

    .line 48
    .line 49
    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v2, v1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 55
    .line 56
    const/16 v4, 0xd

    .line 57
    .line 58
    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, v1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 64
    .line 65
    const/4 v4, 0x5

    .line 66
    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 75
    .line 76
    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 82
    .line 83
    iget-boolean v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    .line 84
    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 89
    .line 90
    const/4 v1, 0x6

    .line 91
    invoke-virtual {v0, p1, v1, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->isExternalDisplayLimitModeEnabled()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 102
    .line 103
    const/16 v1, 0xf

    .line 104
    .line 105
    invoke-virtual {v0, p1, v1, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mRefreshRateSynchronizationEnabled:Z

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 113
    .line 114
    iget-boolean v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    .line 115
    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v0

    .line 121
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplaysConnected:Ljava/util/Set;

    .line 122
    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v1, Ljava/util/HashSet;

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_3

    .line 134
    .line 135
    monitor-exit v0

    .line 136
    goto :goto_3

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    goto :goto_2

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplaysConnected:Ljava/util/Set;

    .line 140
    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast v1, Ljava/util/HashSet;

    .line 146
    .line 147
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplaysConnected:Ljava/util/Set;

    .line 151
    .line 152
    check-cast p1, Ljava/util/HashSet;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_4

    .line 159
    .line 160
    monitor-exit v0

    .line 161
    goto :goto_3

    .line 162
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 164
    .line 165
    const/4 p1, -0x1

    .line 166
    const/16 v0, 0xe

    .line 167
    .line 168
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    throw p0

    .line 174
    :cond_5
    :goto_3
    return-void

    .line 175
    :catchall_1
    move-exception p0

    .line 176
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    throw p0
.end method

.method public final updateDisplayDeviceConfig(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;->getDisplayDeviceConfig(I)Lcom/android/server/display/DisplayDeviceConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final updateDisplayModes(ILandroid/view/DisplayInfo;)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, [Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v2, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 31
    .line 32
    iget-object v3, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 33
    .line 34
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move v1, v2

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, [Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v4, p2, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 53
    .line 54
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 63
    .line 64
    iget-object v3, p2, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 65
    .line 66
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move v1, v2

    .line 70
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 71
    .line 72
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move v2, v1

    .line 101
    :goto_1
    if-eqz v2, :cond_4

    .line 102
    .line 103
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 111
    .line 112
    sget p2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->$r8$clinit:I

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(I)V

    .line 115
    .line 116
    .line 117
    :cond_4
    monitor-exit v0

    .line 118
    return-void

    .line 119
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p0
.end method

.method public final updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p2, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget v0, p2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 8
    .line 9
    iget p2, p2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 10
    .line 11
    invoke-static {v0, p2}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p2, 0x0

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 18
    .line 19
    const/16 v0, 0x11

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final updateUserSettingDisplayPreferredSize(Landroid/view/DisplayInfo;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    iget v0, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    :cond_1
    move-object v4, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 19
    .line 20
    array-length v1, v0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v1, :cond_1

    .line 23
    .line 24
    aget-object v4, v0, v3

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    iget v6, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 31
    .line 32
    if-ne v5, v6, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    const/4 v0, 0x6

    .line 39
    if-nez v4, :cond_5

    .line 40
    .line 41
    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 44
    .line 45
    iget-boolean v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    .line 46
    .line 47
    if-nez v1, :cond_4

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 51
    .line 52
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    return-void

    .line 56
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 57
    .line 58
    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    new-instance v3, Lcom/android/server/display/mode/SizeVote;

    .line 69
    .line 70
    invoke-direct {v3, v1, v2, v1, v2}, Lcom/android/server/display/mode/SizeVote;-><init>(IIII)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 74
    .line 75
    .line 76
    :cond_6
    :goto_3
    return-void
.end method
