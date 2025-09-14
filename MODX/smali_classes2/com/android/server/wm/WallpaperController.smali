.class public final Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mComputeMaxZoomOutFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field public final mFindWallpaperTargetFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

.field public volatile mIsWallpaperNotifiedOnDisplaySwitch:Z

.field public mLargestDisplaySize:Landroid/graphics/Point;

.field public mLastFrozen:Z

.field public mLastWallpaperTimeoutTime:J

.field public mLastWallpaperZoomOut:F

.field public mMaxWallpaperScale:F

.field public mMinWallpaperScale:F

.field public mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public final mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mShouldOffsetWallpaperCenter:Z

.field public mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field public mWallpaperCropUtils:Lcom/android/server/wallpaper/WallpaperCropper$WallpaperCropUtils;

.field public mWallpaperDrawState:I

.field public mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public final mWallpaperTokens:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperCropUtils:Lcom/android/server/wallpaper/WallpaperCropper$WallpaperCropUtils;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 23
    .line 24
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 27
    .line 28
    new-instance v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 39
    .line 40
    iput-object v0, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 41
    .line 42
    iput-object v3, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 43
    .line 44
    iput-boolean v1, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 45
    .line 46
    iput-object v0, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 47
    .line 48
    iput-boolean v1, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 49
    .line 50
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 51
    .line 52
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WallpaperController;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WallpaperController;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    .line 65
    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 74
    .line 75
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const p2, 0x105011f

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    .line 91
    .line 92
    const p2, 0x105011e

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    .line 100
    .line 101
    const p2, 0x11101f4

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 109
    .line 110
    return-void
.end method

.method public static dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V
    .locals 2

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "="

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    cmpl-float p1, p2, p1

    .line 28
    .line 29
    if-ltz p1, :cond_0

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p1, "NA"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final adjustWallpaperWindows()V
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v8, v7, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    iput-boolean v9, v8, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 7
    .line 8
    iget-object v10, v7, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 9
    .line 10
    iget-object v0, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 16
    .line 17
    iput-boolean v9, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    .line 18
    .line 19
    iput-object v1, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    iput-boolean v9, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 22
    .line 23
    iput-boolean v9, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 24
    .line 25
    iget-object v0, v7, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 28
    .line 29
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 32
    .line 33
    iget-boolean v2, v2, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 34
    .line 35
    const/4 v11, 0x1

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 39
    .line 40
    iget-boolean v0, v0, Lcom/android/server/wm/MultiTaskingController;->mIsMinimalBatteryUse:Z

    .line 41
    .line 42
    xor-int/2addr v0, v11

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iput-boolean v11, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 46
    .line 47
    :cond_0
    iget-object v0, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    sub-int/2addr v0, v11

    .line 54
    :goto_0
    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 55
    .line 56
    if-ltz v0, :cond_a

    .line 57
    .line 58
    iget-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 65
    .line 66
    iget-boolean v3, v2, Lcom/android/server/wm/WallpaperWindowToken;->mShowWhenLocked:Z

    .line 67
    .line 68
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->canShowInCurrentDevice()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_1

    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    sub-int/2addr v4, v11

    .line 85
    :goto_1
    if-ltz v4, :cond_9

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 92
    .line 93
    iget-boolean v6, v5, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 94
    .line 95
    if-nez v6, :cond_2

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_2
    iget-object v6, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 99
    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    iget-object v13, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 103
    .line 104
    if-eqz v13, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    if-eq v13, v5, :cond_4

    .line 108
    .line 109
    aget-boolean v13, v12, v9

    .line 110
    .line 111
    if-eqz v13, :cond_4

    .line 112
    .line 113
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    iget-object v14, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 118
    .line 119
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 124
    .line 125
    filled-new-array {v13, v14}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v20

    .line 129
    const-wide v16, 0x605add785e27328bL    # 1.4408093641668366E156

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    const/16 v18, 0x0

    .line 135
    .line 136
    const/16 v19, 0x0

    .line 137
    .line 138
    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    iput-object v5, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_5
    :goto_2
    if-nez v3, :cond_8

    .line 145
    .line 146
    iget-object v13, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 147
    .line 148
    if-eqz v13, :cond_6

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    if-eq v13, v5, :cond_7

    .line 152
    .line 153
    aget-boolean v13, v12, v9

    .line 154
    .line 155
    if-eqz v13, :cond_7

    .line 156
    .line 157
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    iget-object v14, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 162
    .line 163
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 168
    .line 169
    filled-new-array {v13, v14}, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v20

    .line 173
    const-wide v16, 0x399c7a35ffd03f3cL    # 3.5101088849872048E-31

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    const/16 v18, 0x0

    .line 179
    .line 180
    const/16 v19, 0x0

    .line 181
    .line 182
    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_7
    iput-object v5, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 186
    .line 187
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, -0x1

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_a
    iget-object v0, v7, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    .line 195
    .line 196
    invoke-virtual {v8, v0, v11}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 197
    .line 198
    .line 199
    iget-boolean v0, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    .line 200
    .line 201
    if-eqz v0, :cond_b

    .line 202
    .line 203
    iput-boolean v11, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 204
    .line 205
    :cond_b
    iget-object v0, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 206
    .line 207
    if-nez v0, :cond_f

    .line 208
    .line 209
    iget-boolean v0, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 210
    .line 211
    if-eqz v0, :cond_f

    .line 212
    .line 213
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_d

    .line 218
    .line 219
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_c

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_c
    move v0, v9

    .line 227
    goto :goto_6

    .line 228
    :cond_d
    :goto_5
    move v0, v11

    .line 229
    :goto_6
    iget-object v2, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 230
    .line 231
    if-nez v0, :cond_e

    .line 232
    .line 233
    iget-object v0, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 234
    .line 235
    if-eqz v0, :cond_e

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_e
    iget-object v0, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 239
    .line 240
    :goto_7
    iput-object v0, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 241
    .line 242
    :cond_f
    iget-object v0, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 243
    .line 244
    iget-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 245
    .line 246
    const/4 v3, 0x3

    .line 247
    if-eq v2, v0, :cond_1e

    .line 248
    .line 249
    iget-object v2, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 250
    .line 251
    if-eqz v2, :cond_10

    .line 252
    .line 253
    if-ne v2, v0, :cond_10

    .line 254
    .line 255
    goto/16 :goto_b

    .line 256
    .line 257
    :cond_10
    aget-boolean v2, v12, v11

    .line 258
    .line 259
    if-eqz v2, :cond_11

    .line 260
    .line 261
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    iget-object v4, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 266
    .line 267
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    const/4 v5, 0x5

    .line 272
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 281
    .line 282
    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v18

    .line 286
    const/16 v16, 0x0

    .line 287
    .line 288
    const/16 v17, 0x0

    .line 289
    .line 290
    const-wide v14, -0x340f41839ad4cc1aL    # -6.569020556411756E57

    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :cond_11
    iput-object v1, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 299
    .line 300
    iget-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 301
    .line 302
    iput-object v0, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 303
    .line 304
    if-nez v2, :cond_12

    .line 305
    .line 306
    if-eqz v0, :cond_12

    .line 307
    .line 308
    invoke-virtual {v7, v0, v9}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 309
    .line 310
    .line 311
    :cond_12
    if-eqz v0, :cond_21

    .line 312
    .line 313
    if-nez v2, :cond_13

    .line 314
    .line 315
    goto/16 :goto_c

    .line 316
    .line 317
    :cond_13
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    aget-boolean v5, v12, v11

    .line 326
    .line 327
    if-eqz v5, :cond_14

    .line 328
    .line 329
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 338
    .line 339
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v18

    .line 343
    const/16 v16, 0x0

    .line 344
    .line 345
    const/16 v17, 0x0

    .line 346
    .line 347
    const-wide v14, 0x4e10cf5a90ab34e7L    # 1.132990118440253E68

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    :cond_14
    if-eqz v3, :cond_21

    .line 356
    .line 357
    if-nez v4, :cond_15

    .line 358
    .line 359
    goto/16 :goto_c

    .line 360
    .line 361
    :cond_15
    new-instance v3, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;

    .line 362
    .line 363
    invoke-direct {v3, v2}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowState;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v8, v3}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    if-nez v3, :cond_16

    .line 371
    .line 372
    goto/16 :goto_c

    .line 373
    .line 374
    :cond_16
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 375
    .line 376
    if-eqz v3, :cond_17

    .line 377
    .line 378
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    if-nez v3, :cond_17

    .line 383
    .line 384
    move v3, v11

    .line 385
    goto :goto_8

    .line 386
    :cond_17
    move v3, v9

    .line 387
    :goto_8
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 388
    .line 389
    if-eqz v4, :cond_18

    .line 390
    .line 391
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-nez v4, :cond_18

    .line 396
    .line 397
    move v4, v11

    .line 398
    goto :goto_9

    .line 399
    :cond_18
    move v4, v9

    .line 400
    :goto_9
    aget-boolean v5, v12, v11

    .line 401
    .line 402
    if-eqz v5, :cond_19

    .line 403
    .line 404
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 413
    .line 414
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 415
    .line 416
    .line 417
    move-result-object v14

    .line 418
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 419
    .line 420
    .line 421
    move-result-object v15

    .line 422
    filled-new-array {v5, v14, v6, v15}, [Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v18

    .line 426
    const/16 v17, 0x0

    .line 427
    .line 428
    const-wide v14, 0x69f347bd77e2314cL    # 2.3612905130085716E202

    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    const/16 v16, 0xcc

    .line 434
    .line 435
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    :cond_19
    iput-object v2, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 439
    .line 440
    if-eqz v3, :cond_1b

    .line 441
    .line 442
    if-nez v4, :cond_1b

    .line 443
    .line 444
    aget-boolean v3, v12, v11

    .line 445
    .line 446
    if-eqz v3, :cond_1a

    .line 447
    .line 448
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 449
    .line 450
    const/16 v17, 0x0

    .line 451
    .line 452
    const/16 v18, 0x0

    .line 453
    .line 454
    const-wide v14, -0x3c4cd0cffd3dc73cL    # -1.3823763990325996E18

    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    const/16 v16, 0x0

    .line 460
    .line 461
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    :cond_1a
    iput-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 465
    .line 466
    goto :goto_a

    .line 467
    :cond_1b
    if-ne v3, v4, :cond_1d

    .line 468
    .line 469
    iget-object v3, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 470
    .line 471
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 472
    .line 473
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-nez v3, :cond_1d

    .line 478
    .line 479
    iget-object v3, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 480
    .line 481
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 482
    .line 483
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    if-nez v3, :cond_1c

    .line 488
    .line 489
    iget-object v3, v8, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 490
    .line 491
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 492
    .line 493
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    if-eqz v3, :cond_1d

    .line 498
    .line 499
    :cond_1c
    iput-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 500
    .line 501
    :cond_1d
    :goto_a
    iput-object v0, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 502
    .line 503
    goto :goto_c

    .line 504
    :cond_1e
    :goto_b
    iget-object v2, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 505
    .line 506
    if-nez v2, :cond_1f

    .line 507
    .line 508
    goto :goto_c

    .line 509
    :cond_1f
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    if-nez v2, :cond_21

    .line 514
    .line 515
    aget-boolean v2, v12, v11

    .line 516
    .line 517
    if-eqz v2, :cond_20

    .line 518
    .line 519
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 520
    .line 521
    const/16 v17, 0x0

    .line 522
    .line 523
    const/16 v18, 0x0

    .line 524
    .line 525
    const-wide v14, -0x304118fe7ad8c55bL    # -1.3977537621012356E76

    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    const/16 v16, 0x0

    .line 531
    .line 532
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    :cond_20
    iput-object v1, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 536
    .line 537
    iput-object v0, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 538
    .line 539
    :cond_21
    :goto_c
    iget-object v0, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 540
    .line 541
    invoke-virtual {v7, v0}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    if-eqz v0, :cond_22

    .line 546
    .line 547
    move v13, v11

    .line 548
    goto :goto_d

    .line 549
    :cond_22
    move v13, v9

    .line 550
    :goto_d
    if-eqz v13, :cond_26

    .line 551
    .line 552
    iget-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 553
    .line 554
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 555
    .line 556
    const/4 v4, 0x0

    .line 557
    cmpl-float v5, v3, v4

    .line 558
    .line 559
    if-ltz v5, :cond_23

    .line 560
    .line 561
    iput v3, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 562
    .line 563
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 564
    .line 565
    iput v3, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 566
    .line 567
    :cond_23
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 568
    .line 569
    cmpl-float v4, v3, v4

    .line 570
    .line 571
    if-ltz v4, :cond_24

    .line 572
    .line 573
    iput v3, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 574
    .line 575
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 576
    .line 577
    iput v3, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 578
    .line 579
    :cond_24
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 580
    .line 581
    const/high16 v4, -0x80000000

    .line 582
    .line 583
    if-eq v3, v4, :cond_25

    .line 584
    .line 585
    iput v3, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 586
    .line 587
    :cond_25
    iget v2, v2, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 588
    .line 589
    if-eq v2, v4, :cond_26

    .line 590
    .line 591
    iput v2, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 592
    .line 593
    :cond_26
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    if-nez v0, :cond_28

    .line 598
    .line 599
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-eqz v0, :cond_27

    .line 604
    .line 605
    goto :goto_e

    .line 606
    :cond_27
    move v0, v9

    .line 607
    goto :goto_f

    .line 608
    :cond_28
    :goto_e
    move v0, v11

    .line 609
    :goto_f
    aget-boolean v2, v12, v11

    .line 610
    .line 611
    if-eqz v2, :cond_29

    .line 612
    .line 613
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 614
    .line 615
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v19

    .line 627
    const/16 v18, 0x0

    .line 628
    .line 629
    const-wide v15, 0x39249a0d81e31e2L

    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    const/16 v17, 0xf

    .line 635
    .line 636
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    :cond_29
    iget-object v2, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 640
    .line 641
    if-nez v0, :cond_2a

    .line 642
    .line 643
    iget-object v0, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 644
    .line 645
    if-eqz v0, :cond_2a

    .line 646
    .line 647
    goto :goto_10

    .line 648
    :cond_2a
    iget-object v0, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 649
    .line 650
    :goto_10
    if-nez v0, :cond_2b

    .line 651
    .line 652
    goto :goto_11

    .line 653
    :cond_2b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 654
    .line 655
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    :goto_11
    iget-object v0, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 660
    .line 661
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    sub-int/2addr v0, v11

    .line 666
    :goto_12
    if-ltz v0, :cond_35

    .line 667
    .line 668
    iget-object v2, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 669
    .line 670
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 675
    .line 676
    if-eqz v13, :cond_2c

    .line 677
    .line 678
    if-ne v2, v1, :cond_2c

    .line 679
    .line 680
    move v3, v11

    .line 681
    goto :goto_13

    .line 682
    :cond_2c
    move v3, v9

    .line 683
    :goto_13
    iget-boolean v4, v2, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 684
    .line 685
    if-eq v4, v3, :cond_2e

    .line 686
    .line 687
    aget-boolean v4, v12, v9

    .line 688
    .line 689
    if-eqz v4, :cond_2d

    .line 690
    .line 691
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 692
    .line 693
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v4

    .line 697
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 698
    .line 699
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 700
    .line 701
    .line 702
    move-result-object v5

    .line 703
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v19

    .line 707
    const-wide v15, -0x6e2447dcd5a9cbebL

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    const/16 v17, 0xc

    .line 713
    .line 714
    const/16 v18, 0x0

    .line 715
    .line 716
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 717
    .line 718
    .line 719
    :cond_2d
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    .line 720
    .line 721
    .line 722
    :cond_2e
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 723
    .line 724
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 725
    .line 726
    iget-object v4, v4, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 727
    .line 728
    if-eqz v3, :cond_33

    .line 729
    .line 730
    if-eqz v4, :cond_33

    .line 731
    .line 732
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 733
    .line 734
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 735
    .line 736
    if-eqz v5, :cond_30

    .line 737
    .line 738
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 739
    .line 740
    .line 741
    move-result-object v6

    .line 742
    invoke-virtual {v5, v6}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    .line 743
    .line 744
    .line 745
    move-result v6

    .line 746
    if-eqz v6, :cond_30

    .line 747
    .line 748
    iget-object v4, v5, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 749
    .line 750
    if-nez v4, :cond_2f

    .line 751
    .line 752
    goto :goto_14

    .line 753
    :cond_2f
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WallpaperWindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 754
    .line 755
    .line 756
    goto :goto_14

    .line 757
    :cond_30
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 758
    .line 759
    if-eqz v5, :cond_31

    .line 760
    .line 761
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 762
    .line 763
    .line 764
    move-result v5

    .line 765
    if-eqz v5, :cond_32

    .line 766
    .line 767
    :cond_31
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 768
    .line 769
    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    .line 770
    .line 771
    .line 772
    move-result v5

    .line 773
    if-eqz v5, :cond_32

    .line 774
    .line 775
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 776
    .line 777
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WallpaperWindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 778
    .line 779
    .line 780
    goto :goto_14

    .line 781
    :cond_32
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 782
    .line 783
    if-eqz v5, :cond_33

    .line 784
    .line 785
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 786
    .line 787
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 788
    .line 789
    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 790
    .line 791
    if-nez v5, :cond_33

    .line 792
    .line 793
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 794
    .line 795
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    .line 796
    .line 797
    .line 798
    move-result v5

    .line 799
    if-eqz v5, :cond_33

    .line 800
    .line 801
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 802
    .line 803
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 804
    .line 805
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 806
    .line 807
    check-cast v5, Lcom/android/server/policy/PhoneWindowManager;

    .line 808
    .line 809
    invoke-virtual {v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    .line 810
    .line 811
    .line 812
    move-result v4

    .line 813
    if-eqz v4, :cond_33

    .line 814
    .line 815
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 816
    .line 817
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 818
    .line 819
    if-eqz v4, :cond_33

    .line 820
    .line 821
    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    .line 822
    .line 823
    .line 824
    move-result v5

    .line 825
    if-eqz v5, :cond_33

    .line 826
    .line 827
    iget-object v5, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 828
    .line 829
    invoke-virtual {v5, v4}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 830
    .line 831
    .line 832
    move-result v5

    .line 833
    if-eqz v5, :cond_33

    .line 834
    .line 835
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WallpaperWindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 836
    .line 837
    .line 838
    :cond_33
    :goto_14
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 839
    .line 840
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 841
    .line 842
    .line 843
    move-result v4

    .line 844
    if-eqz v4, :cond_34

    .line 845
    .line 846
    goto :goto_15

    .line 847
    :cond_34
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WallpaperWindowToken;->setVisible$1(Z)V

    .line 848
    .line 849
    .line 850
    :goto_15
    add-int/lit8 v0, v0, -0x1

    .line 851
    .line 852
    goto/16 :goto_12

    .line 853
    .line 854
    :cond_35
    aget-boolean v0, v12, v11

    .line 855
    .line 856
    if-eqz v0, :cond_38

    .line 857
    .line 858
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 859
    .line 860
    int-to-long v0, v0

    .line 861
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 862
    .line 863
    .line 864
    move-result v2

    .line 865
    if-nez v2, :cond_37

    .line 866
    .line 867
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 868
    .line 869
    .line 870
    move-result v2

    .line 871
    if-eqz v2, :cond_36

    .line 872
    .line 873
    goto :goto_16

    .line 874
    :cond_36
    move v2, v9

    .line 875
    goto :goto_17

    .line 876
    :cond_37
    :goto_16
    move v2, v11

    .line 877
    :goto_17
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 878
    .line 879
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v19

    .line 895
    const/16 v17, 0x3d

    .line 896
    .line 897
    const/16 v18, 0x0

    .line 898
    .line 899
    const-wide v15, 0x66cfee6d654a358fL    # 1.736699569115551E187

    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 905
    .line 906
    .line 907
    :cond_38
    if-eqz v13, :cond_3a

    .line 908
    .line 909
    iget-boolean v0, v7, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 910
    .line 911
    iget-boolean v1, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 912
    .line 913
    if-eq v0, v1, :cond_3a

    .line 914
    .line 915
    iput-boolean v1, v7, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 916
    .line 917
    if-eqz v1, :cond_39

    .line 918
    .line 919
    const-string v0, "android.wallpaper.freeze"

    .line 920
    .line 921
    :goto_18
    move-object v1, v0

    .line 922
    goto :goto_19

    .line 923
    :cond_39
    const-string v0, "android.wallpaper.unfreeze"

    .line 924
    .line 925
    goto :goto_18

    .line 926
    :goto_19
    const/4 v3, 0x0

    .line 927
    const/4 v4, 0x0

    .line 928
    const/4 v2, 0x0

    .line 929
    const/4 v5, 0x0

    .line 930
    const/4 v6, 0x0

    .line 931
    move-object/from16 v0, p0

    .line 932
    .line 933
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 934
    .line 935
    .line 936
    :cond_3a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 937
    .line 938
    if-eqz v0, :cond_3c

    .line 939
    .line 940
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    .line 941
    .line 942
    if-eqz v0, :cond_3c

    .line 943
    .line 944
    if-eqz v13, :cond_3b

    .line 945
    .line 946
    iget-boolean v1, v10, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 947
    .line 948
    if-eqz v1, :cond_3b

    .line 949
    .line 950
    goto :goto_1a

    .line 951
    :cond_3b
    move v11, v9

    .line 952
    :goto_1a
    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->onAdjustWallpaperWindows(Z)V

    .line 953
    .line 954
    .line 955
    :cond_3c
    aget-boolean v0, v12, v9

    .line 956
    .line 957
    if-eqz v0, :cond_3d

    .line 958
    .line 959
    iget-object v0, v7, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 960
    .line 961
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    iget-object v1, v7, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 966
    .line 967
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 972
    .line 973
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v7

    .line 977
    const-wide v3, -0x775400407b09c9a8L    # -6.783856069054106E-267

    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    const/4 v5, 0x0

    .line 983
    const/4 v6, 0x0

    .line 984
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 985
    .line 986
    .line 987
    :cond_3d
    return-void
.end method

.method public canScreenshotWallpaper()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public final canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 4
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v0, 0x0

    .line 5
    const-string v1, "WindowManager"

    if-nez p0, :cond_0

    .line 6
    const-string p0, "Attempted to take screenshot while display was off."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    const-string p0, "No visible wallpaper to screenshot"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "displayId="

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 14
    .line 15
    const-string/jumbo v2, "mWallpaperTarget="

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p1, v0, v2}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "mLastWallpaperZoomOut="

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "mPrevWallpaperTarget="

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "mFindResults"

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "  mTopHideWhenLockedWallpaper="

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 75
    .line 76
    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v2, "    mTopHideWhenLockedWallpaper.Token="

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 100
    .line 101
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 102
    .line 103
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v2, "  mTopShowWhenLockedWallpaper="

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 115
    .line 116
    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 122
    .line 123
    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 124
    .line 125
    if-eqz v2, :cond_2

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v2, "    mTopShowWhenLockedWallpaper.Token="

    .line 131
    .line 132
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 138
    .line 139
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    add-int/lit8 v1, v1, -0x1

    .line 151
    .line 152
    :goto_0
    if-ltz v1, :cond_4

    .line 153
    .line 154
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string/jumbo v4, "token "

    .line 168
    .line 169
    .line 170
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v4, ":"

    .line 177
    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v3, "  canShowWhenLocked="

    .line 192
    .line 193
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-boolean v3, v2, Lcom/android/server/wm/WallpaperWindowToken;->mShowWhenLocked:Z

    .line 197
    .line 198
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 199
    .line 200
    .line 201
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    .line 202
    .line 203
    if-eqz v3, :cond_3

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v3, "  isForPrimaryDevice="

    .line 209
    .line 210
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isForPrimaryDevice()Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v3, "  canShowInCurrentDevice="

    .line 224
    .line 225
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->canShowInCurrentDevice()Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 233
    .line 234
    .line 235
    :cond_3
    const-string/jumbo v3, "mWallpaperX"

    .line 236
    .line 237
    .line 238
    iget v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 239
    .line 240
    invoke-static {p1, v3, v4}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 241
    .line 242
    .line 243
    const-string/jumbo v3, "mWallpaperY"

    .line 244
    .line 245
    .line 246
    iget v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 247
    .line 248
    invoke-static {p1, v3, v4}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 249
    .line 250
    .line 251
    const-string/jumbo v3, "mWallpaperXStep"

    .line 252
    .line 253
    .line 254
    iget v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 255
    .line 256
    invoke-static {p1, v3, v4}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 257
    .line 258
    .line 259
    const-string/jumbo v3, "mWallpaperYStep"

    .line 260
    .line 261
    .line 262
    iget v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 263
    .line 264
    invoke-static {p1, v3, v4}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 265
    .line 266
    .line 267
    iget v3, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 268
    .line 269
    int-to-float v3, v3

    .line 270
    const-string/jumbo v4, "mWallpaperDisplayOffsetX"

    .line 271
    .line 272
    .line 273
    invoke-static {p1, v4, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 274
    .line 275
    .line 276
    iget v2, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 277
    .line 278
    int-to-float v2, v2

    .line 279
    const-string/jumbo v3, "mWallpaperDisplayOffsetY"

    .line 280
    .line 281
    .line 282
    invoke-static {p1, v3, v2}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    .line 283
    .line 284
    .line 285
    add-int/lit8 v1, v1, -0x1

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_4
    return-void
.end method

.method public final getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_4

    .line 30
    .line 31
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/4 p1, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 43
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 46
    .line 47
    if-nez p1, :cond_5

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 50
    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 55
    .line 56
    :goto_2
    if-nez p1, :cond_6

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_6
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_3
    return-object v0
.end method

.method public final getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    :goto_1
    if-ltz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 32
    .line 33
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 42
    .line 43
    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    cmpl-float v4, v4, v5

    .line 47
    .line 48
    if-lez v4, :cond_0

    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public final hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    return-void

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    :goto_0
    if-ltz v0, :cond_4

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    .line 39
    .line 40
    .line 41
    iget-boolean v3, v1, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 46
    .line 47
    aget-boolean v2, v3, v2

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const/4 v5, 0x5

    .line 72
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 81
    .line 82
    const/4 v10, 0x0

    .line 83
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    const-wide v7, -0x48eb40cce662c01dL    # -2.3258049552014316E-43

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    return-void
.end method

.method public final isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 6
    .line 7
    if-gtz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isWallpaperVisible()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 18
    .line 19
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final notifyDisplaySwitch(Z)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/wm/WallpaperWindowToken;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    sub-int/2addr v4, v1

    .line 25
    :goto_1
    if-ltz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_0
    :try_start_0
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 45
    .line 46
    const-string v8, "android.wallpaper.displayswitch"

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    move v11, p1

    .line 53
    invoke-interface/range {v7 .. v13}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception v2

    .line 58
    const-string v5, "Failed to dispatch COMMAND_DISPLAY_SWITCH "

    .line 59
    .line 60
    const-string v6, "WindowManager"

    .line 61
    .line 62
    invoke-static {v5, v2, v6}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_2
    move v2, v1

    .line 66
    :goto_3
    add-int/lit8 v4, v4, -0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return v2
.end method

.method public final screenshotWallpaperLocked(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    new-instance p0, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    iget p1, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 21
    .line 22
    neg-int p1, p1

    .line 23
    iget v2, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 24
    .line 25
    neg-int v2, v2

    .line 26
    invoke-virtual {p0, p1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 39
    .line 40
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-boolean v3, p1, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 49
    .line 50
    invoke-static {p1, p0, v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 56
    .line 57
    invoke-static {p1, p0, v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_1
    if-nez p0, :cond_3

    .line 62
    .line 63
    const-string p0, "WindowManager"

    .line 64
    .line 65
    const-string p1, "Failed to screenshot wallpaper"

    .line 66
    .line 67
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p1, p0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public final sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz v1, :cond_1

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 19
    .line 20
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    add-int/lit8 v3, v3, -0x1

    .line 27
    .line 28
    move/from16 v11, p6

    .line 29
    .line 30
    :goto_1
    if-ltz v3, :cond_0

    .line 31
    .line 32
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 39
    .line 40
    :try_start_0
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 41
    .line 42
    move-object v5, p1

    .line 43
    move v6, p2

    .line 44
    move v7, p3

    .line 45
    move/from16 v8, p4

    .line 46
    .line 47
    move-object/from16 v9, p5

    .line 48
    .line 49
    move v10, v11

    .line 50
    invoke-interface/range {v4 .. v10}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    :catch_0
    add-int/lit8 v3, v3, -0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public setMaxWallpaperScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    .line 2
    .line 3
    return-void
.end method

.method public setMinWallpaperScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    .line 2
    .line 3
    return-void
.end method

.method public setShouldOffsetWallpaperCenter(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 2
    .line 3
    return-void
.end method

.method public final startRemoteWallpaperAnimation(Landroid/os/IBinder;ILandroid/view/IRemoteAnimationRunner;)Landroid/view/SurfaceControl;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    .line 14
    .line 15
    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v4, v2, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 26
    .line 27
    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    move v5, v4

    .line 32
    :goto_0
    iget-object v6, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-ge v5, v6, :cond_1

    .line 39
    .line 40
    iget-object v6, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/android/server/wm/RootDisplayArea;

    .line 47
    .line 48
    invoke-static {v6, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v5, 0x1

    .line 59
    if-ne v2, v5, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/android/server/wm/DisplayArea;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v2, v1

    .line 69
    :goto_1
    if-eqz v2, :cond_3

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;

    .line 81
    .line 82
    move-object v3, v1

    .line 83
    move-object v4, p0

    .line 84
    move-object v5, p1

    .line 85
    move-object v6, v2

    .line 86
    move v7, p2

    .line 87
    move-object v8, p3

    .line 88
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;-><init>(Lcom/android/server/wm/WallpaperController;Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;ILandroid/view/IRemoteAnimationRunner;)V

    .line 89
    .line 90
    .line 91
    new-instance v8, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-direct {v8, p0, p1}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WallpaperController;Landroid/os/IBinder;)V

    .line 94
    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    const/16 v7, 0x200

    .line 98
    .line 99
    move-object v3, v2

    .line 100
    move-object v4, v0

    .line 101
    move-object v5, v1

    .line 102
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getAnimationLeash()Landroid/view/SurfaceControl;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_3
    return-object v1
.end method

.method public final updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    int-to-float v5, v3

    .line 20
    int-to-float v6, v4

    .line 21
    div-float v7, v5, v6

    .line 22
    .line 23
    new-instance v8, Landroid/graphics/Point;

    .line 24
    .line 25
    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 26
    .line 27
    .line 28
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 29
    .line 30
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    const-string v11, "WindowManager"

    .line 39
    .line 40
    const/high16 v12, 0x3f800000    # 1.0f

    .line 41
    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v14, 0x1

    .line 44
    if-eqz v10, :cond_8

    .line 45
    .line 46
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperCropUtils:Lcom/android/server/wallpaper/WallpaperCropper$WallpaperCropUtils;

    .line 47
    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    const-string v0, "Update wallpaper offsets before the system is ready. Aborting"

    .line 51
    .line 52
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return v13

    .line 56
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    .line 57
    .line 58
    iget v4, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 59
    .line 60
    iget v10, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 61
    .line 62
    invoke-direct {v3, v4, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 63
    .line 64
    .line 65
    iget-object v4, v8, Lcom/android/server/wm/WallpaperWindowToken;->mCropHints:Landroid/util/SparseArray;

    .line 66
    .line 67
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 68
    .line 69
    if-lez v4, :cond_2

    .line 70
    .line 71
    iget v4, v3, Landroid/graphics/Point;->y:I

    .line 72
    .line 73
    if-gtz v4, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperCropUtils:Lcom/android/server/wallpaper/WallpaperCropper$WallpaperCropUtils;

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    .line 79
    .line 80
    .line 81
    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;

    .line 82
    .line 83
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v4, Landroid/graphics/Rect;

    .line 89
    .line 90
    iget v10, v3, Landroid/graphics/Point;->x:I

    .line 91
    .line 92
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 93
    .line 94
    invoke-direct {v4, v13, v13, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 99
    .line 100
    iget-object v4, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 101
    .line 102
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    int-to-float v3, v3

    .line 111
    int-to-float v10, v10

    .line 112
    div-float v15, v3, v10

    .line 113
    .line 114
    cmpl-float v15, v15, v7

    .line 115
    .line 116
    if-ltz v15, :cond_3

    .line 117
    .line 118
    move v15, v14

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move v15, v13

    .line 121
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v16

    .line 125
    if-eqz v16, :cond_4

    .line 126
    .line 127
    move v6, v12

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    if-eqz v15, :cond_5

    .line 130
    .line 131
    div-float/2addr v6, v10

    .line 132
    iget v5, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 133
    .line 134
    div-float/2addr v6, v5

    .line 135
    goto :goto_3

    .line 136
    :cond_5
    div-float/2addr v5, v3

    .line 137
    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 138
    .line 139
    div-float v6, v5, v6

    .line 140
    .line 141
    :goto_3
    if-eqz v15, :cond_6

    .line 142
    .line 143
    mul-float v5, v10, v7

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    move v5, v3

    .line 147
    :goto_4
    if-eqz v15, :cond_7

    .line 148
    .line 149
    move v7, v10

    .line 150
    goto :goto_5

    .line 151
    :cond_7
    div-float v7, v3, v7

    .line 152
    .line 153
    :goto_5
    iget v15, v4, Landroid/graphics/Rect;->left:I

    .line 154
    .line 155
    neg-int v15, v15

    .line 156
    sub-float v16, v6, v12

    .line 157
    .line 158
    mul-float v17, v16, v5

    .line 159
    .line 160
    const/high16 v18, 0x40000000    # 2.0f

    .line 161
    .line 162
    div-float v12, v17, v18

    .line 163
    .line 164
    float-to-int v12, v12

    .line 165
    add-int/2addr v15, v12

    .line 166
    iget v12, v4, Landroid/graphics/Rect;->top:I

    .line 167
    .line 168
    neg-int v12, v12

    .line 169
    mul-float v16, v16, v7

    .line 170
    .line 171
    div-float v13, v16, v18

    .line 172
    .line 173
    float-to-int v13, v13

    .line 174
    add-int/2addr v12, v13

    .line 175
    sub-float/2addr v3, v5

    .line 176
    iget v5, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 177
    .line 178
    mul-float/2addr v3, v5

    .line 179
    float-to-int v3, v3

    .line 180
    sub-float/2addr v10, v7

    .line 181
    iget v5, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 182
    .line 183
    mul-float/2addr v10, v5

    .line 184
    float-to-int v5, v10

    .line 185
    goto :goto_6

    .line 186
    :cond_8
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 187
    .line 188
    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 189
    .line 190
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    sub-int v3, v6, v3

    .line 195
    .line 196
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    sub-int v4, v6, v4

    .line 201
    .line 202
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 203
    .line 204
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 205
    .line 206
    and-int/lit16 v6, v6, 0x4000

    .line 207
    .line 208
    if-eqz v6, :cond_9

    .line 209
    .line 210
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-le v6, v14, :cond_9

    .line 215
    .line 216
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-le v6, v14, :cond_9

    .line 221
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v1, "Skip wallpaper offset with inconsistent orientation, bounds="

    .line 225
    .line 226
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, " frame="

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    const/4 v0, 0x0

    .line 248
    return v0

    .line 249
    :cond_9
    const/high16 v6, 0x3f800000    # 1.0f

    .line 250
    .line 251
    const/4 v12, 0x0

    .line 252
    const/4 v15, 0x0

    .line 253
    move-object/from16 v28, v5

    .line 254
    .line 255
    move v5, v4

    .line 256
    move-object/from16 v4, v28

    .line 257
    .line 258
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    const/4 v10, 0x0

    .line 263
    if-eqz v7, :cond_a

    .line 264
    .line 265
    const/high16 v7, 0x3f800000    # 1.0f

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_a
    move v7, v10

    .line 269
    :goto_7
    iget v13, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 270
    .line 271
    cmpl-float v16, v13, v10

    .line 272
    .line 273
    if-ltz v16, :cond_b

    .line 274
    .line 275
    move v7, v13

    .line 276
    :cond_b
    iget v13, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 277
    .line 278
    cmpl-float v16, v13, v10

    .line 279
    .line 280
    const/high16 v18, -0x40800000    # -1.0f

    .line 281
    .line 282
    if-ltz v16, :cond_c

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_c
    move/from16 v13, v18

    .line 286
    .line 287
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    .line 288
    .line 289
    .line 290
    move-result v16

    .line 291
    iget-boolean v10, v0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 292
    .line 293
    iget-object v14, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 294
    .line 295
    if-eqz v10, :cond_d

    .line 296
    .line 297
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    if-eqz v10, :cond_e

    .line 302
    .line 303
    :cond_d
    move-object/from16 v25, v4

    .line 304
    .line 305
    move/from16 v26, v6

    .line 306
    .line 307
    move-object/from16 v20, v9

    .line 308
    .line 309
    move-object/from16 v23, v11

    .line 310
    .line 311
    move/from16 v27, v12

    .line 312
    .line 313
    move-object/from16 v21, v14

    .line 314
    .line 315
    goto/16 :goto_d

    .line 316
    .line 317
    :cond_e
    iget-object v10, v0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 318
    .line 319
    if-nez v10, :cond_13

    .line 320
    .line 321
    iget-boolean v10, v0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 322
    .line 323
    if-eqz v10, :cond_f

    .line 324
    .line 325
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    if-eqz v10, :cond_10

    .line 330
    .line 331
    :cond_f
    move-object/from16 v25, v4

    .line 332
    .line 333
    move/from16 v26, v6

    .line 334
    .line 335
    move-object/from16 v20, v9

    .line 336
    .line 337
    move-object/from16 v23, v11

    .line 338
    .line 339
    move/from16 v27, v12

    .line 340
    .line 341
    move-object/from16 v21, v14

    .line 342
    .line 343
    goto :goto_a

    .line 344
    :cond_10
    new-instance v10, Landroid/graphics/Point;

    .line 345
    .line 346
    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 347
    .line 348
    .line 349
    move-object/from16 v20, v9

    .line 350
    .line 351
    iget-object v9, v14, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    .line 352
    .line 353
    move-object/from16 v21, v14

    .line 354
    .line 355
    const/4 v14, 0x0

    .line 356
    invoke-virtual {v9, v14}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->getPossibleDisplayInfos(I)Ljava/util/List;

    .line 357
    .line 358
    .line 359
    move-result-object v9

    .line 360
    move-object/from16 v23, v11

    .line 361
    .line 362
    const/16 v22, 0x0

    .line 363
    .line 364
    :goto_9
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 365
    .line 366
    .line 367
    move-result v11

    .line 368
    if-ge v14, v11, :cond_12

    .line 369
    .line 370
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v11

    .line 374
    check-cast v11, Landroid/view/DisplayInfo;

    .line 375
    .line 376
    move-object/from16 v24, v9

    .line 377
    .line 378
    iget v9, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 379
    .line 380
    move-object/from16 v25, v4

    .line 381
    .line 382
    int-to-float v4, v9

    .line 383
    move/from16 v26, v6

    .line 384
    .line 385
    iget v6, v11, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 386
    .line 387
    div-float/2addr v4, v6

    .line 388
    iget v6, v11, Landroid/view/DisplayInfo;->type:I

    .line 389
    .line 390
    move/from16 v27, v12

    .line 391
    .line 392
    const/4 v12, 0x1

    .line 393
    if-ne v6, v12, :cond_11

    .line 394
    .line 395
    cmpl-float v6, v4, v22

    .line 396
    .line 397
    if-lez v6, :cond_11

    .line 398
    .line 399
    iget v6, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 400
    .line 401
    invoke-virtual {v10, v9, v6}, Landroid/graphics/Point;->set(II)V

    .line 402
    .line 403
    .line 404
    move/from16 v22, v4

    .line 405
    .line 406
    :cond_11
    add-int/lit8 v14, v14, 0x1

    .line 407
    .line 408
    move-object/from16 v9, v24

    .line 409
    .line 410
    move-object/from16 v4, v25

    .line 411
    .line 412
    move/from16 v6, v26

    .line 413
    .line 414
    move/from16 v12, v27

    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_12
    move-object/from16 v25, v4

    .line 418
    .line 419
    move/from16 v26, v6

    .line 420
    .line 421
    move/from16 v27, v12

    .line 422
    .line 423
    goto :goto_b

    .line 424
    :goto_a
    const/4 v10, 0x0

    .line 425
    :goto_b
    iput-object v10, v0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 426
    .line 427
    goto :goto_c

    .line 428
    :cond_13
    move-object/from16 v25, v4

    .line 429
    .line 430
    move/from16 v26, v6

    .line 431
    .line 432
    move-object/from16 v20, v9

    .line 433
    .line 434
    move-object/from16 v23, v11

    .line 435
    .line 436
    move/from16 v27, v12

    .line 437
    .line 438
    move-object/from16 v21, v14

    .line 439
    .line 440
    :goto_c
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 441
    .line 442
    if-nez v4, :cond_15

    .line 443
    .line 444
    :cond_14
    :goto_d
    const/4 v4, 0x0

    .line 445
    goto :goto_e

    .line 446
    :cond_15
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    iget-object v6, v0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 451
    .line 452
    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 453
    .line 454
    if-eq v6, v4, :cond_14

    .line 455
    .line 456
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 461
    .line 462
    .line 463
    move-result v9

    .line 464
    if-ge v6, v9, :cond_14

    .line 465
    .line 466
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    int-to-float v6, v6

    .line 471
    iget-object v9, v0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 472
    .line 473
    iget v10, v9, Landroid/graphics/Point;->y:I

    .line 474
    .line 475
    int-to-float v10, v10

    .line 476
    div-float/2addr v6, v10

    .line 477
    iget v9, v9, Landroid/graphics/Point;->x:I

    .line 478
    .line 479
    int-to-float v9, v9

    .line 480
    mul-float/2addr v9, v6

    .line 481
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    if-eqz v16, :cond_16

    .line 486
    .line 487
    add-int/2addr v4, v6

    .line 488
    div-int/lit8 v4, v4, 0x2

    .line 489
    .line 490
    sub-int/2addr v6, v4

    .line 491
    move v4, v6

    .line 492
    goto :goto_e

    .line 493
    :cond_16
    sub-int/2addr v6, v4

    .line 494
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    div-int/lit8 v4, v4, 0x2

    .line 499
    .line 500
    :goto_e
    sub-int/2addr v3, v4

    .line 501
    const/high16 v6, 0x3f000000    # 0.5f

    .line 502
    .line 503
    if-lez v3, :cond_17

    .line 504
    .line 505
    int-to-float v3, v3

    .line 506
    mul-float/2addr v3, v7

    .line 507
    add-float/2addr v3, v6

    .line 508
    float-to-int v3, v3

    .line 509
    neg-int v3, v3

    .line 510
    goto :goto_f

    .line 511
    :cond_17
    const/4 v3, 0x0

    .line 512
    :goto_f
    iget v9, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 513
    .line 514
    const/high16 v10, -0x80000000

    .line 515
    .line 516
    if-eq v9, v10, :cond_18

    .line 517
    .line 518
    add-int/2addr v3, v9

    .line 519
    goto :goto_10

    .line 520
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    .line 521
    .line 522
    .line 523
    move-result v9

    .line 524
    if-nez v9, :cond_19

    .line 525
    .line 526
    sub-int/2addr v3, v4

    .line 527
    :cond_19
    :goto_10
    int-to-float v3, v3

    .line 528
    int-to-float v9, v15

    .line 529
    iget v11, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 530
    .line 531
    mul-float/2addr v9, v11

    .line 532
    add-float/2addr v9, v3

    .line 533
    float-to-int v3, v9

    .line 534
    iget v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 535
    .line 536
    cmpl-float v9, v9, v7

    .line 537
    .line 538
    if-nez v9, :cond_1b

    .line 539
    .line 540
    iget v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 541
    .line 542
    cmpl-float v9, v9, v13

    .line 543
    .line 544
    if-eqz v9, :cond_1a

    .line 545
    .line 546
    goto :goto_11

    .line 547
    :cond_1a
    const/4 v9, 0x0

    .line 548
    goto :goto_12

    .line 549
    :cond_1b
    :goto_11
    iput v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 550
    .line 551
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 552
    .line 553
    const/4 v9, 0x1

    .line 554
    :goto_12
    iget v11, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 555
    .line 556
    const/4 v12, 0x0

    .line 557
    cmpl-float v13, v11, v12

    .line 558
    .line 559
    if-ltz v13, :cond_1c

    .line 560
    .line 561
    goto :goto_13

    .line 562
    :cond_1c
    move v11, v6

    .line 563
    :goto_13
    iget v13, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 564
    .line 565
    cmpl-float v12, v13, v12

    .line 566
    .line 567
    if-ltz v12, :cond_1d

    .line 568
    .line 569
    goto :goto_14

    .line 570
    :cond_1d
    move/from16 v13, v18

    .line 571
    .line 572
    :goto_14
    if-lez v5, :cond_1e

    .line 573
    .line 574
    int-to-float v5, v5

    .line 575
    mul-float/2addr v5, v11

    .line 576
    add-float/2addr v5, v6

    .line 577
    float-to-int v5, v5

    .line 578
    neg-int v5, v5

    .line 579
    goto :goto_15

    .line 580
    :cond_1e
    const/4 v5, 0x0

    .line 581
    :goto_15
    iget v6, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 582
    .line 583
    if-eq v6, v10, :cond_1f

    .line 584
    .line 585
    add-int/2addr v5, v6

    .line 586
    :cond_1f
    int-to-float v5, v5

    .line 587
    move/from16 v12, v27

    .line 588
    .line 589
    int-to-float v6, v12

    .line 590
    iget v8, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 591
    .line 592
    mul-float/2addr v6, v8

    .line 593
    add-float/2addr v6, v5

    .line 594
    float-to-int v5, v6

    .line 595
    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 596
    .line 597
    cmpl-float v6, v6, v11

    .line 598
    .line 599
    if-nez v6, :cond_20

    .line 600
    .line 601
    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 602
    .line 603
    cmpl-float v6, v6, v13

    .line 604
    .line 605
    if-eqz v6, :cond_21

    .line 606
    .line 607
    :cond_20
    iput v11, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 608
    .line 609
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 610
    .line 611
    const/4 v9, 0x1

    .line 612
    :cond_21
    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 613
    .line 614
    iget v8, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 615
    .line 616
    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    .line 617
    .line 618
    .line 619
    move-result v6

    .line 620
    if-eqz v6, :cond_22

    .line 621
    .line 622
    iget v6, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 623
    .line 624
    iput v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 625
    .line 626
    const/4 v9, 0x1

    .line 627
    :cond_22
    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    .line 628
    .line 629
    if-eqz v6, :cond_23

    .line 630
    .line 631
    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 632
    .line 633
    iget v8, v0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    .line 634
    .line 635
    iget v10, v0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    .line 636
    .line 637
    const/high16 v12, 0x3f800000    # 1.0f

    .line 638
    .line 639
    sub-float/2addr v12, v6

    .line 640
    invoke-static {v8, v10, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 641
    .line 642
    .line 643
    move-result v12

    .line 644
    goto :goto_16

    .line 645
    :cond_23
    const/high16 v12, 0x3f800000    # 1.0f

    .line 646
    .line 647
    :goto_16
    mul-float v12, v12, v26

    .line 648
    .line 649
    iget v6, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 650
    .line 651
    if-ne v6, v3, :cond_24

    .line 652
    .line 653
    iget v6, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 654
    .line 655
    if-ne v6, v5, :cond_24

    .line 656
    .line 657
    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 658
    .line 659
    invoke-static {v6, v12}, Ljava/lang/Float;->compare(FF)I

    .line 660
    .line 661
    .line 662
    move-result v6

    .line 663
    if-nez v6, :cond_24

    .line 664
    .line 665
    const/4 v13, 0x0

    .line 666
    goto :goto_17

    .line 667
    :cond_24
    iput v3, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 668
    .line 669
    iput v5, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 670
    .line 671
    iput v12, v1, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 672
    .line 673
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 674
    .line 675
    .line 676
    const/4 v13, 0x1

    .line 677
    :goto_17
    if-eqz v13, :cond_25

    .line 678
    .line 679
    const-string/jumbo v6, "updateWallpaperOffset: offsetX="

    .line 680
    .line 681
    .line 682
    const-string v8, ", offsetY="

    .line 683
    .line 684
    const-string v10, ", wallpaperFrame="

    .line 685
    .line 686
    invoke-static {v3, v5, v6, v8, v10}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    move-object/from16 v5, v25

    .line 691
    .line 692
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    const-string v5, ", wBounds="

    .line 696
    .line 697
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    const-string v2, ", dOffset="

    .line 704
    .line 705
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    const-string v2, ", wpx="

    .line 712
    .line 713
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    const-string v2, ", wpy="

    .line 720
    .line 721
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    const-string v2, ", zoom="

    .line 728
    .line 729
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    iget v2, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 733
    .line 734
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    const-string v2, ", win="

    .line 738
    .line 739
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    move-object/from16 v3, v23

    .line 750
    .line 751
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .line 753
    .line 754
    :cond_25
    if-eqz v9, :cond_2b

    .line 755
    .line 756
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 757
    .line 758
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 759
    .line 760
    and-int/lit8 v2, v2, 0x4

    .line 761
    .line 762
    if-eqz v2, :cond_2b

    .line 763
    .line 764
    if-eqz p2, :cond_26

    .line 765
    .line 766
    :try_start_0
    iput-object v1, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 767
    .line 768
    :cond_26
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 769
    .line 770
    iget v3, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 771
    .line 772
    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 773
    .line 774
    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 775
    .line 776
    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 777
    .line 778
    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 779
    .line 780
    move/from16 v8, p2

    .line 781
    .line 782
    invoke-interface/range {v2 .. v8}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFFZ)V

    .line 783
    .line 784
    .line 785
    if-eqz p2, :cond_2b

    .line 786
    .line 787
    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 788
    .line 789
    if-eqz v2, :cond_2b

    .line 790
    .line 791
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 792
    .line 793
    .line 794
    move-result-wide v2

    .line 795
    iget-wide v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 796
    .line 797
    const-wide/16 v6, 0x2710

    .line 798
    .line 799
    add-long/2addr v4, v6

    .line 800
    cmp-long v4, v4, v2

    .line 801
    .line 802
    if-gez v4, :cond_2a

    .line 803
    .line 804
    const-wide/16 v4, 0x96

    .line 805
    .line 806
    const/4 v6, 0x1

    .line 807
    :try_start_1
    aget-boolean v7, v20, v6

    .line 808
    .line 809
    if-eqz v7, :cond_27

    .line 810
    .line 811
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 812
    .line 813
    const-wide v15, -0x5f25f808633bc7f4L    # -1.988085530651E-150

    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    const/16 v17, 0x0

    .line 819
    .line 820
    const/16 v18, 0x0

    .line 821
    .line 822
    const/16 v19, 0x0

    .line 823
    .line 824
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 825
    .line 826
    .line 827
    :cond_27
    move-object/from16 v6, v21

    .line 828
    .line 829
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 830
    .line 831
    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 832
    .line 833
    .line 834
    :catch_0
    const/4 v6, 0x1

    .line 835
    :try_start_2
    aget-boolean v7, v20, v6

    .line 836
    .line 837
    if-eqz v7, :cond_28

    .line 838
    .line 839
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 840
    .line 841
    const-wide v15, -0x52cdf6d55098c638L    # -5.533716568926851E-91

    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    const/16 v17, 0x0

    .line 847
    .line 848
    const/16 v18, 0x0

    .line 849
    .line 850
    const/16 v19, 0x0

    .line 851
    .line 852
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    :cond_28
    add-long/2addr v4, v2

    .line 856
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 857
    .line 858
    .line 859
    move-result-wide v6

    .line 860
    cmp-long v4, v4, v6

    .line 861
    .line 862
    if-gez v4, :cond_2a

    .line 863
    .line 864
    const/4 v4, 0x1

    .line 865
    aget-boolean v4, v20, v4

    .line 866
    .line 867
    if-eqz v4, :cond_29

    .line 868
    .line 869
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v1

    .line 873
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 874
    .line 875
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v9

    .line 879
    const-wide v5, 0x3a45415bfc1334bdL    # 5.365594543687691E-28

    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    const/4 v7, 0x0

    .line 885
    const/4 v8, 0x0

    .line 886
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 887
    .line 888
    .line 889
    :cond_29
    iput-wide v2, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 890
    .line 891
    :cond_2a
    const/4 v1, 0x0

    .line 892
    iput-object v1, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 893
    .line 894
    :catch_1
    :cond_2b
    return v13
.end method

.method public final updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    cmpl-float v3, v1, v2

    .line 33
    .line 34
    if-ltz v3, :cond_2

    .line 35
    .line 36
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 40
    .line 41
    cmpl-float v3, v1, v2

    .line 42
    .line 43
    if-ltz v3, :cond_3

    .line 44
    .line 45
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 46
    .line 47
    :cond_3
    :goto_0
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 48
    .line 49
    cmpl-float v3, v1, v2

    .line 50
    .line 51
    if-ltz v3, :cond_4

    .line 52
    .line 53
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 57
    .line 58
    cmpl-float v3, v1, v2

    .line 59
    .line 60
    if-ltz v3, :cond_5

    .line 61
    .line 62
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 63
    .line 64
    :cond_5
    :goto_1
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 65
    .line 66
    const/high16 v3, -0x80000000

    .line 67
    .line 68
    if-eq v1, v3, :cond_6

    .line 69
    .line 70
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_6
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 74
    .line 75
    if-eq v1, v3, :cond_7

    .line 76
    .line 77
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 78
    .line 79
    :cond_7
    :goto_2
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 80
    .line 81
    if-eq v1, v3, :cond_8

    .line 82
    .line 83
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_8
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 87
    .line 88
    if-eq v1, v3, :cond_9

    .line 89
    .line 90
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 91
    .line 92
    :cond_9
    :goto_3
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 93
    .line 94
    cmpl-float v3, v1, v2

    .line 95
    .line 96
    if-ltz v3, :cond_a

    .line 97
    .line 98
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_a
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 102
    .line 103
    cmpl-float v3, v1, v2

    .line 104
    .line 105
    if-ltz v3, :cond_b

    .line 106
    .line 107
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 108
    .line 109
    :cond_b
    :goto_4
    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 110
    .line 111
    cmpl-float v1, v0, v2

    .line 112
    .line 113
    if-ltz v1, :cond_c

    .line 114
    .line 115
    iput v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_c
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 119
    .line 120
    cmpl-float v0, p1, v2

    .line 121
    .line 122
    if-ltz v0, :cond_d

    .line 123
    .line 124
    iput p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 125
    .line 126
    :cond_d
    :goto_5
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(Z)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final wallpaperTransitionReady()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    const/16 v2, 0x27

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-ltz v0, :cond_4

    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lcom/android/server/wm/WallpaperWindowToken;

    .line 23
    .line 24
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_3

    .line 29
    .line 30
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    if-eq v0, v5, :cond_0

    .line 34
    .line 35
    move v5, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v5, v1

    .line 38
    :goto_1
    if-nez v0, :cond_1

    .line 39
    .line 40
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 41
    .line 42
    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 43
    .line 44
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 48
    .line 49
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-wide/16 v7, 0x1f4

    .line 54
    .line 55
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 59
    .line 60
    aget-boolean v0, v0, v1

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 65
    .line 66
    int-to-long v0, v0

    .line 67
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 68
    .line 69
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    const-wide v7, -0x4af7cbdd60b2c42bL    # -3.158724139617855E-53

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    const/4 v9, 0x1

    .line 83
    const/4 v10, 0x0

    .line 84
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    move v1, v4

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    move v5, v1

    .line 93
    :goto_2
    if-eqz v1, :cond_5

    .line 94
    .line 95
    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 96
    .line 97
    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 98
    .line 99
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    return v5
.end method
