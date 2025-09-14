.class public final Lcom/android/server/wm/AsyncRotationController;
.super Lcom/android/server/wm/FadeAnimationController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mHasScreenRotationAnimation:Z

.field public mHideImmediately:Z

.field public mIsStartTransactionCommitted:Z

.field public mIsStartTransactionPrepared:Z

.field public mIsSyncDrawRequested:Z

.field public mNavBarToken:Lcom/android/server/wm/WindowToken;

.field public mOnShowRunnable:Ljava/lang/Runnable;

.field public mOriginalRotation:I

.field public mRotator:Lcom/android/server/wm/SeamlessRotator;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSyncId:I

.field public final mTargetWindowTokens:Landroid/util/ArrayMap;

.field public mTimeoutRunnable:Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

.field public final mTransitionOp:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/FadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    .line 24
    .line 25
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x6

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-ne v0, v1, :cond_3

    .line 36
    .line 37
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 38
    .line 39
    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 48
    .line 49
    const/4 v6, 0x3

    .line 50
    if-ne v5, v6, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget v1, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    .line 59
    .line 60
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 61
    .line 62
    iget-boolean v7, v0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 63
    .line 64
    if-nez v7, :cond_1

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 67
    .line 68
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    if-eq v1, v3, :cond_2

    .line 74
    .line 75
    if-eq v5, v3, :cond_2

    .line 76
    .line 77
    :cond_1
    :goto_0
    iput v6, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iput v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    iput v4, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    iput v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 95
    .line 96
    :goto_1
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 97
    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 101
    .line 102
    if-ne v0, v3, :cond_6

    .line 103
    .line 104
    :cond_5
    move v2, v4

    .line 105
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    .line 106
    .line 107
    if-eqz v2, :cond_7

    .line 108
    .line 109
    iput-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 110
    .line 111
    :cond_7
    invoke-virtual {p1, p0, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 112
    .line 113
    .line 114
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 115
    .line 116
    if-nez v0, :cond_8

    .line 117
    .line 118
    iput-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_9

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->keepAppearanceInPreviousRotation()V

    .line 130
    .line 131
    .line 132
    :cond_9
    :goto_2
    return-void
.end method

.method public static canBeAsync(Lcom/android/server/wm/WindowToken;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0xa48

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    const/16 v1, 0x96f

    .line 19
    .line 20
    if-eq v0, v1, :cond_4

    .line 21
    .line 22
    const/16 v1, 0x7d9

    .line 23
    .line 24
    if-eq v0, v1, :cond_4

    .line 25
    .line 26
    const/16 v1, 0x96b

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    const/16 v1, 0x7f5

    .line 37
    .line 38
    if-ne v0, v1, :cond_3

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 45
    .line 46
    if-ne v1, v3, :cond_3

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 49
    .line 50
    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    .line 51
    .line 52
    and-int/lit16 p0, p0, 0x2000

    .line 53
    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    return v2

    .line 57
    :cond_3
    const/16 p0, 0x63

    .line 58
    .line 59
    if-le v0, p0, :cond_4

    .line 60
    .line 61
    const/16 p0, 0x7db

    .line 62
    .line 63
    if-eq v0, p0, :cond_4

    .line 64
    .line 65
    const/16 p0, 0x7dd

    .line 66
    .line 67
    if-eq v0, p0, :cond_4

    .line 68
    .line 69
    const/16 p0, 0x7f8

    .line 70
    .line 71
    if-eq v0, p0, :cond_4

    .line 72
    .line 73
    move v2, v3

    .line 74
    :cond_4
    :goto_0
    return v2
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/server/wm/AsyncRotationController;->canBeAsync(Lcom/android/server/wm/WindowToken;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    .line 16
    .line 17
    if-eqz v0, :cond_b

    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 20
    .line 21
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 22
    .line 23
    const/16 v1, 0xa2c

    .line 24
    .line 25
    if-ne v0, v1, :cond_b

    .line 26
    .line 27
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 30
    .line 31
    if-eqz v0, :cond_b

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_b

    .line 38
    .line 39
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 52
    .line 53
    const/16 v2, 0x7e3

    .line 54
    .line 55
    const/4 v3, 0x3

    .line 56
    const/4 v4, 0x2

    .line 57
    const/4 v5, 0x1

    .line 58
    if-ne v1, v2, :cond_8

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 63
    .line 64
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 65
    .line 66
    iget v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 67
    .line 68
    if-nez v1, :cond_4

    .line 69
    .line 70
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mNavBarToken:Lcom/android/server/wm/WindowToken;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    iget-boolean v0, v0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    .line 84
    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    if-eq v1, v3, :cond_6

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 93
    .line 94
    iget-boolean v1, v1, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 95
    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 123
    .line 124
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    and-int/2addr v0, v1

    .line 129
    if-nez v0, :cond_6

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    :goto_0
    move v4, v5

    .line 133
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 136
    .line 137
    new-instance v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 138
    .line 139
    invoke-direct {v0, v4}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_8
    if-eq v0, v3, :cond_9

    .line 147
    .line 148
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 149
    .line 150
    if-eqz v0, :cond_a

    .line 151
    .line 152
    :cond_9
    move v4, v5

    .line 153
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 156
    .line 157
    new-instance v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 158
    .line 159
    invoke-direct {v0, v4}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_b
    :goto_2
    return-void
.end method

.method public final finishOp(Lcom/android/server/wm/WindowToken;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "AsyncRotation_WindowManager"

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v4, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 26
    .line 27
    .line 28
    iput-object v2, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, "finishOp merge transaction "

    .line 33
    .line 34
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    const/4 v1, 0x1

    .line 52
    const/4 v4, 0x3

    .line 53
    iget v5, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    .line 54
    .line 55
    if-ne v5, v4, :cond_2

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "finishOp fade-in IME "

    .line 60
    .line 61
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const/4 v6, 0x2

    .line 88
    if-ne v5, v6, :cond_3

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v5, "finishOp fade-in "

    .line 93
    .line 94
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/AsyncRotationController$Operation;->isValidSeamless()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v5, "finishOp undo seamless "

    .line 124
    .line 125
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iget-object v0, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 147
    .line 148
    const/high16 v7, 0x3f800000    # 1.0f

    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    const/4 v9, 0x0

    .line 152
    const/high16 v10, 0x3f800000    # 1.0f

    .line 153
    .line 154
    move-object v5, v2

    .line 155
    move-object v6, v0

    .line 156
    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 157
    .line 158
    .line 159
    const/4 v3, 0x0

    .line 160
    invoke-virtual {v2, v0, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 161
    .line 162
    .line 163
    :cond_4
    :goto_0
    iget p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 164
    .line 165
    if-eq p0, v1, :cond_5

    .line 166
    .line 167
    if-ne p0, v4, :cond_7

    .line 168
    .line 169
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    sub-int/2addr p0, v1

    .line 174
    :goto_1
    if-ltz p0, :cond_7

    .line 175
    .line 176
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-eqz v1, :cond_6

    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/InsetsSourceProvider;->updateInsetsControlPosition(Lcom/android/server/wm/WindowState;Z)V

    .line 190
    .line 191
    .line 192
    :cond_6
    add-int/lit8 p0, p0, -0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_7
    return-void
.end method

.method public final getFadeInAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v0, 0x10a00c2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const/high16 v1, 0x10a0000

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/high16 p0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 15
    .line 16
    invoke-direct {v0, p0, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const v0, 0x10a0036

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const v1, 0x10a0001

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public final hideImmediately(Lcom/android/server/wm/WindowToken;I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 7
    .line 8
    invoke-direct {v1, p2}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 28
    .line 29
    return-void
.end method

.method public final keepAppearanceInPreviousRotation()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    :goto_0
    const-string v2, "AsyncRotation_WindowManager"

    .line 15
    .line 16
    if-ltz v0, :cond_3

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 25
    .line 26
    iget v3, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    .line 27
    .line 28
    if-eq v3, v1, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sub-int/2addr v4, v1

    .line 44
    :goto_1
    if-ltz v4, :cond_2

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 51
    .line 52
    new-instance v6, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda3;

    .line 53
    .line 54
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(ILjava/util/function/Consumer;)V

    .line 59
    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v6, "Sync draw for "

    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    add-int/lit8 v4, v4, -0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    .line 89
    .line 90
    const-string p0, "Requested to sync draw transaction"

    .line 91
    .line 92
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final onAllCompleted()V
    .locals 2

    .line 1
    const-string v0, "AsyncRotation_WindowManager"

    .line 2
    .line 3
    const-string/jumbo v1, "onAllCompleted"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final onTransitionFinished()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v1, "onTransitionFinished "

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "AsyncRotation_WindowManager"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    :goto_0
    if-ltz v0, :cond_5

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    add-int/lit8 v3, v3, -0x1

    .line 75
    .line 76
    :goto_1
    if-ltz v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_7

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    .line 109
    .line 110
    if-nez v0, :cond_6

    .line 111
    .line 112
    new-instance v0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    .line 118
    .line 119
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    .line 124
    .line 125
    const-wide/16 v1, 0x7d0

    .line 126
    .line 127
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    .line 129
    .line 130
    :cond_7
    return-void
.end method

.method public final setupStartTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    :goto_0
    if-ltz v0, :cond_5

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 23
    .line 24
    iget-object v3, v2, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    if-eqz v3, :cond_4

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    .line 36
    .line 37
    const-string v5, "AsyncRotation_WindowManager"

    .line 38
    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    iget v2, v2, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    if-ne v2, v4, :cond_2

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 48
    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "Setup alpha0 "

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    .line 81
    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    new-instance v2, Lcom/android/server/wm/SeamlessRotator;

    .line 85
    .line 86
    iget v4, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    .line 87
    .line 88
    iget-object v6, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 89
    .line 90
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    invoke-direct {v2, v4, v7, v6, v8}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;Z)V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    .line 105
    .line 106
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    .line 107
    .line 108
    iget-object v4, v2, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    .line 111
    .line 112
    invoke-virtual {p1, v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 113
    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v3, "Setup unrotate "

    .line 118
    .line 119
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 123
    .line 124
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_5
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 151
    .line 152
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 153
    .line 154
    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda4;

    .line 158
    .line 159
    invoke-direct {v2, p0}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 163
    .line 164
    .line 165
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionPrepared:Z

    .line 166
    .line 167
    return-void
.end method
