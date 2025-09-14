.class Lcom/android/server/wm/Transition$ChangeInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAbsoluteBounds:Landroid/graphics/Rect;

.field public mAffordanceTargetFreeformTask:Z

.field public mChangeLeash:Landroid/view/SurfaceControl;

.field public mChangeTransitFlags:I

.field public mChangeTransitMode:I

.field public mCommonAncestor:Lcom/android/server/wm/WindowContainer;

.field public final mContainer:Lcom/android/server/wm/WindowContainer;

.field public final mDisplayId:I

.field public mEndParent:Lcom/android/server/wm/WindowContainer;

.field public mExistenceChanged:Z

.field public mFlags:I

.field public mForceChangeSplitTask:Z

.field public mForceChanged:Z

.field public mForceHidingTransit:I

.field public final mFreezeOutsets:Landroid/graphics/Rect;

.field public mHideWhileTwoHandDragging:Z

.field public mKnownConfigChanges:I

.field public mMinimizeAnimState:I

.field public final mMinimizePoint:Landroid/graphics/PointF;

.field public mReadyFlags:I

.field public mReadyMode:I

.field public mResumedAffordance:Z

.field public final mRotation:I

.field public final mShowWallpaper:Z

.field public mSnapshot:Landroid/view/SurfaceControl;

.field public mSnapshotLuma:F

.field public final mStartParent:Lcom/android/server/wm/WindowContainer;

.field public mVisible:Z

.field public mWindowingMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 5
    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    .line 6
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 8
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    .line 10
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAffordanceTargetFreeformTask:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChanged:Z

    .line 12
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    .line 13
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    .line 14
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizePoint:Landroid/graphics/PointF;

    .line 15
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChangeSplitTask:Z

    .line 17
    iput-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 24
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;ZZ)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 26
    iput-boolean p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 27
    iput-boolean p3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    return-void
.end method


# virtual methods
.method public final getTransitMode(Lcom/android/server/wm/WindowContainer;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x2

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    move v1, v2

    .line 13
    :cond_0
    return v1

    .line 14
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mHideWhileTwoHandDragging:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 30
    .line 31
    if-ne p1, v0, :cond_3

    .line 32
    .line 33
    const/4 p0, 0x6

    .line 34
    return p0

    .line 35
    :cond_3
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 36
    .line 37
    if-eqz p0, :cond_5

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    :cond_4
    return v2

    .line 43
    :cond_5
    if-eqz p1, :cond_6

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    :cond_6
    return v1
.end method

.method public final hasChanged()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_c

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x4

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChangeSplitTask:Z

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    move v0, v3

    .line 38
    :goto_1
    if-eqz v0, :cond_3

    .line 39
    .line 40
    return v2

    .line 41
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-boolean v4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 46
    .line 47
    if-ne v0, v4, :cond_4

    .line 48
    .line 49
    if-nez v4, :cond_4

    .line 50
    .line 51
    return v3

    .line 52
    :cond_4
    if-ne v0, v4, :cond_c

    .line 53
    .line 54
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    .line 55
    .line 56
    if-nez v0, :cond_c

    .line 57
    .line 58
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget v4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 67
    .line 68
    if-ne v0, v4, :cond_c

    .line 69
    .line 70
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_c

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget v4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 91
    .line 92
    if-ne v4, v0, :cond_c

    .line 93
    .line 94
    invoke-static {v1}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    .line 99
    .line 100
    if-ne v1, v0, :cond_c

    .line 101
    .line 102
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 103
    .line 104
    and-int/lit8 v0, v0, 0x20

    .line 105
    .line 106
    if-nez v0, :cond_c

    .line 107
    .line 108
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 118
    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChanged:Z

    .line 122
    .line 123
    if-eqz v0, :cond_7

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mHideWhileTwoHandDragging:Z

    .line 127
    .line 128
    if-eqz v0, :cond_8

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_8
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    .line 132
    .line 133
    if-eqz v0, :cond_9

    .line 134
    .line 135
    move v0, v2

    .line 136
    goto :goto_2

    .line 137
    :cond_9
    move v0, v3

    .line 138
    :goto_2
    if-eqz v0, :cond_a

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 142
    .line 143
    if-eqz v0, :cond_b

    .line 144
    .line 145
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 146
    .line 147
    if-eqz p0, :cond_b

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_b
    move v2, v3

    .line 151
    :cond_c
    :goto_3
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
