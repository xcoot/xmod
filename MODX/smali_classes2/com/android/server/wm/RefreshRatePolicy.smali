.class public final Lcom/android/server/wm/RefreshRatePolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultMode:Landroid/view/Display$Mode;

.field public final mDisplayInfo:Landroid/view/DisplayInfo;

.field public final mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

.field public mLowRefreshRateMode:Landroid/view/Display$Mode;

.field public mMaxSupportedRefreshRate:F

.field public mMinSupportedRefreshRate:F

.field public final mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

.field public final mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

.field public final mReportedRestrictHighRefreshRate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mRestrictHighRefreshRate:Z

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;-><init>(Lcom/android/server/wm/RefreshRatePolicy;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicyLogger;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/wm/RefreshRatePolicyLogger;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    .line 27
    .line 28
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mReportedRestrictHighRefreshRate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDefaultMode:Landroid/view/Display$Mode;

    .line 42
    .line 43
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateMode(Landroid/view/DisplayInfo;Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    .line 48
    .line 49
    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 52
    .line 53
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    new-instance p1, Lcom/android/server/wm/RefreshRatePolicyLogger;

    .line 58
    .line 59
    invoke-direct {p1}, Lcom/android/server/wm/RefreshRatePolicyLogger;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public static shouldIgnoreRestrictedRange(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 20
    .line 21
    const/16 v1, 0x7f6

    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    :cond_1
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method


# virtual methods
.method public final findLowRefreshRateMode(Landroid/view/DisplayInfo;Landroid/view/Display$Mode;)Landroid/view/Display$Mode;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->getDefaultRefreshRates([Landroid/view/Display$Mode;)[F

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iput p2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 21
    .line 22
    iput p2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 23
    .line 24
    array-length v1, v0

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    :goto_1
    if-ltz v1, :cond_4

    .line 28
    .line 29
    iget v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 30
    .line 31
    aget v3, v0, v1

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iput v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 38
    .line 39
    iget v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 40
    .line 41
    aget v3, v0, v1

    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 48
    .line 49
    aget v2, v0, v1

    .line 50
    .line 51
    const/high16 v3, 0x42700000    # 60.0f

    .line 52
    .line 53
    cmpl-float v4, v2, v3

    .line 54
    .line 55
    if-ltz v4, :cond_3

    .line 56
    .line 57
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    cmpg-float v3, p2, v3

    .line 62
    .line 63
    if-ltz v3, :cond_2

    .line 64
    .line 65
    :cond_1
    cmpg-float v3, v2, p2

    .line 66
    .line 67
    if-gez v3, :cond_3

    .line 68
    .line 69
    :cond_2
    move p2, v2

    .line 70
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 74
    .line 75
    if-eqz p0, :cond_5

    .line 76
    .line 77
    iget-object p0, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 78
    .line 79
    invoke-virtual {p1, p2, p0}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F[Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_5
    invoke-virtual {p1, p2}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)Landroid/view/Display$Mode;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method

.method public final getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/window/flags/Flags;->explicitRefreshRateHints()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_5

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_5

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 22
    .line 23
    iget-object p1, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 24
    .line 25
    array-length v2, p1

    .line 26
    move v3, v1

    .line 27
    :goto_0
    if-ge v3, v2, :cond_2

    .line 28
    .line 29
    aget-object v4, p1, v3

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ne v0, v5, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v4, 0x0

    .line 42
    :goto_1
    if-eqz v4, :cond_4

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDefaultMode:Landroid/view/Display$Mode;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-ne p1, v3, :cond_3

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDefaultMode:Landroid/view/Display$Mode;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eq v2, v3, :cond_4

    .line 67
    .line 68
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-ne p1, v3, :cond_4

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-ne v2, p0, :cond_4

    .line 83
    .line 84
    return v0

    .line 85
    :cond_4
    return v1

    .line 86
    :cond_5
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 87
    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 91
    .line 92
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    const-string v2, ""

    .line 96
    .line 97
    :goto_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    .line 98
    .line 99
    if-eqz v3, :cond_7

    .line 100
    .line 101
    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_7

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    .line 111
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    return p0

    .line 122
    :cond_7
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    .line 123
    .line 124
    iget-object v4, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 125
    .line 126
    if-eqz v3, :cond_8

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_8

    .line 133
    .line 134
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 135
    .line 136
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 137
    .line 138
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 139
    .line 140
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_8

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getModeId()I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    return p0

    .line 153
    :cond_8
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HRR_CHINA_DELTA:Z

    .line 154
    .line 155
    if-eqz p0, :cond_b

    .line 156
    .line 157
    if-eqz v0, :cond_b

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    if-eqz p0, :cond_b

    .line 164
    .line 165
    iget-object p0, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 168
    .line 169
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 170
    .line 171
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_b

    .line 176
    .line 177
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 178
    .line 179
    if-eqz p0, :cond_9

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    iget-object p0, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    iget-object p0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 193
    .line 194
    :goto_3
    array-length p1, p0

    .line 195
    move v2, v1

    .line 196
    :goto_4
    if-ge v2, p1, :cond_b

    .line 197
    .line 198
    aget-object v3, p0, v2

    .line 199
    .line 200
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-ne v0, v4, :cond_a

    .line 205
    .line 206
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    const v4, 0x42effae1    # 119.99f

    .line 211
    .line 212
    .line 213
    cmpl-float v3, v3, v4

    .line 214
    .line 215
    if-ltz v3, :cond_a

    .line 216
    .line 217
    return v1

    .line 218
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_b
    return v0
.end method

.method public final getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    iget-object p1, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 32
    .line 33
    array-length v0, p1

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-ge v1, v0, :cond_2

    .line 36
    .line 37
    aget-object v3, p1, v1

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ne p0, v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return v2
.end method

.method public final updateLog(Lcom/android/server/wm/WindowState;IFI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;

    .line 10
    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    iget-object p4, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mLastRequester:Lcom/android/server/wm/WindowState;

    .line 14
    .line 15
    if-ne p4, p1, :cond_0

    .line 16
    .line 17
    iget p4, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    .line 18
    .line 19
    if-ne p4, p2, :cond_0

    .line 20
    .line 21
    iget p4, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    .line 22
    .line 23
    cmpl-float p4, p4, p3

    .line 24
    .line 25
    if-eqz p4, :cond_3

    .line 26
    .line 27
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mLastRequester:Lcom/android/server/wm/WindowState;

    .line 28
    .line 29
    iput p2, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    .line 30
    .line 31
    iput p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mHistory:Lcom/samsung/android/core/SystemHistory;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p3, "Requested ("

    .line 40
    .line 41
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    .line 45
    .line 46
    const/high16 p4, -0x40800000    # -1.0f

    .line 47
    .line 48
    cmpl-float p3, p3, p4

    .line 49
    .line 50
    if-eqz p3, :cond_1

    .line 51
    .line 52
    const-string p3, " refreshRate="

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    .line 58
    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_1
    iget p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    .line 63
    .line 64
    const/4 p4, -0x1

    .line 65
    if-eq p3, p4, :cond_2

    .line 66
    .line 67
    const-string p3, " modeId="

    .line 68
    .line 69
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    .line 73
    .line 74
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_2
    const-string p3, " w="

    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mLastRequester:Lcom/android/server/wm/WindowState;

    .line 83
    .line 84
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p0, ")"

    .line 88
    .line 89
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p1, p0}, Lcom/samsung/android/core/SystemHistory;->add(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method
