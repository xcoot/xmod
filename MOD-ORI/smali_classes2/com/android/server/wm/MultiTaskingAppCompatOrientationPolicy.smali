.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SUPPORTS_MULTI_STAR:Z


# instance fields
.field public final mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

.field public final mRotationCompatPolicy:I

.field public mShouldApplyIgnoreOrientationRequestDueToMultiStar:Z

.field public mShouldIgnoreLandscapeRequestDueToMultiStar:Z

.field public final mTmpPrevBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->SUPPORTS_MULTI_STAR:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 15
    .line 16
    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/android/server/wm/PackagesChange;->sDumpCallbacks:Ljava/util/List;

    .line 22
    .line 23
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$2;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$2;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lcom/android/server/wm/PackagesChange;->sTaskChangeCallbacks:Ljava/util/List;

    .line 34
    .line 35
    check-cast p0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final getRespectOrientationRequestIfAllowed(ILcom/android/server/wm/ActivityRecord;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p2, :cond_5

    .line 3
    .line 4
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequestOverride:Z

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    sget-boolean v1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->SUPPORTS_MULTI_STAR:Z

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldIgnoreLandscapeRequestDueToMultiStar:Z

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    move p0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    :goto_0
    if-nez p0, :cond_5

    .line 32
    .line 33
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    :cond_1
    move v2, p1

    .line 45
    :cond_2
    if-eqz v2, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eq p0, p1, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    invoke-static {p2}, Lcom/android/server/wm/MultiTaskingAppCompatController;->inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 72
    .line 73
    iget v0, p0, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 74
    .line 75
    :cond_5
    :goto_1
    return v0
.end method

.method public final onOverridesChangedIfNeededInTask(Lcom/android/server/wm/Task;Z)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget v1, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 17
    .line 18
    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 19
    .line 20
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->getRespectOrientationRequest(ILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    if-eq v1, v0, :cond_2

    .line 29
    .line 30
    new-instance p2, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final requestActivityBoundsChangedTransitionIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_6

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_6

    .line 41
    .line 42
    :cond_1
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 43
    .line 44
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 52
    .line 53
    if-eqz p0, :cond_6

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iget-object v0, p2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/4 v6, 0x0

    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    iget-object v0, p2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    const/4 v2, 0x6

    .line 99
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-object v7, v0

    .line 104
    goto :goto_0

    .line 105
    :cond_5
    move-object v7, v6

    .line 106
    :goto_0
    iget-object v0, p2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 109
    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v2, 0x5

    .line 114
    move-object v0, p2

    .line 115
    move-object v1, p1

    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ChangeTransitionController;->updateChangeInfo(Lcom/android/server/wm/WindowContainer;IILandroid/graphics/Rect;I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 122
    .line 123
    .line 124
    if-eqz v7, :cond_6

    .line 125
    .line 126
    iget-object p1, p2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 127
    .line 128
    invoke-virtual {p1, v7, p0, v6, v6}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 129
    .line 130
    .line 131
    const/4 p1, 0x1

    .line 132
    invoke-virtual {v7, p0, p1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_1
    return-void
.end method

.method public final shouldCreateAppCompatDisplayInsetsForRotationCompat(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->getRespectOrientationRequestIfAllowed(ILcom/android/server/wm/ActivityRecord;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x20

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_d

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    :cond_2
    :goto_0
    move v1, v2

    .line 35
    goto/16 :goto_d

    .line 36
    .line 37
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 38
    .line 39
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    .line 40
    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    iget v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    .line 59
    .line 60
    if-ne v0, v3, :cond_5

    .line 61
    .line 62
    :goto_1
    move v1, v3

    .line 63
    goto/16 :goto_d

    .line 64
    .line 65
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mTabletRotationCompatList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 70
    .line 71
    if-eqz p0, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_6

    .line 78
    .line 79
    :goto_2
    goto :goto_1

    .line 80
    :cond_6
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 81
    .line 82
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 83
    .line 84
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 85
    .line 86
    iget-object v4, v4, Lcom/android/server/wm/MultiTaskingAppCompatController;->mResizeOverrides:Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    sget-object v5, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 92
    .line 93
    new-instance v6, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    .line 94
    .line 95
    const/4 v7, 0x4

    .line 96
    invoke-direct {v6, v0, v7}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v6, p0}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_7

    .line 104
    .line 105
    :goto_3
    move v1, v2

    .line 106
    goto/16 :goto_9

    .line 107
    .line 108
    :cond_7
    monitor-enter v4

    .line 109
    :try_start_0
    iget-object v5, v4, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;->mMetaDataCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    new-instance v7, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides$$ExternalSyntheticLambda0;

    .line 116
    .line 117
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    .line 126
    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Ljava/lang/Boolean;

    .line 131
    .line 132
    if-eqz v6, :cond_8

    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    monitor-exit v4

    .line 139
    goto :goto_7

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto/16 :goto_c

    .line 142
    .line 143
    :cond_8
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 145
    .line 146
    .line 147
    move-result-wide v6

    .line 148
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    const-wide/16 v9, 0x80

    .line 153
    .line 154
    invoke-interface {v8, v0, v9, v10, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 155
    .line 156
    .line 157
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    if-nez p0, :cond_9

    .line 159
    .line 160
    :goto_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    .line 162
    .line 163
    move p0, v2

    .line 164
    goto :goto_7

    .line 165
    :cond_9
    :try_start_2
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 166
    .line 167
    if-eqz p0, :cond_a

    .line 168
    .line 169
    const-string v8, "android.supports_size_changes"

    .line 170
    .line 171
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_a

    .line 176
    .line 177
    move p0, v3

    .line 178
    goto :goto_5

    .line 179
    :catchall_1
    move-exception p0

    .line 180
    goto/16 :goto_b

    .line 181
    .line 182
    :catch_0
    move-exception p0

    .line 183
    goto :goto_6

    .line 184
    :cond_a
    move p0, v2

    .line 185
    :goto_5
    monitor-enter v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    :try_start_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual {v5, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 194
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    .line 196
    .line 197
    goto :goto_7

    .line 198
    :catchall_2
    move-exception p0

    .line 199
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 200
    :try_start_5
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 201
    :goto_6
    :try_start_6
    const-string v5, "MultiTaskingAppCompat"

    .line 202
    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v9, "getApplicationInfo failed: "

    .line 209
    .line 210
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-static {v5, v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :goto_7
    const/4 v5, 0x2

    .line 225
    if-eqz p0, :cond_b

    .line 226
    .line 227
    move v1, v5

    .line 228
    goto :goto_9

    .line 229
    :cond_b
    monitor-enter v4

    .line 230
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 231
    monitor-enter v4

    .line 232
    :try_start_8
    iget-object p0, v4, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;->mForceNonResizeAppList:Ljava/util/Set;

    .line 233
    .line 234
    check-cast p0, Ljava/util/HashSet;

    .line 235
    .line 236
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    const/4 v6, 0x4

    .line 241
    if-eqz p0, :cond_c

    .line 242
    .line 243
    monitor-exit v4

    .line 244
    move p0, v6

    .line 245
    goto :goto_8

    .line 246
    :catchall_3
    move-exception p0

    .line 247
    goto :goto_a

    .line 248
    :cond_c
    iget-object p0, v4, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;->mForceResizeAppList:Ljava/util/Set;

    .line 249
    .line 250
    check-cast p0, Ljava/util/HashSet;

    .line 251
    .line 252
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result p0

    .line 256
    if-eqz p0, :cond_d

    .line 257
    .line 258
    monitor-exit v4

    .line 259
    move p0, v1

    .line 260
    goto :goto_8

    .line 261
    :cond_d
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 262
    move p0, v2

    .line 263
    :goto_8
    if-eq p0, v3, :cond_f

    .line 264
    .line 265
    if-eq p0, v5, :cond_e

    .line 266
    .line 267
    if-eq p0, v1, :cond_f

    .line 268
    .line 269
    if-eq p0, v6, :cond_e

    .line 270
    .line 271
    goto/16 :goto_3

    .line 272
    .line 273
    :cond_e
    move v1, v3

    .line 274
    :cond_f
    :goto_9
    if-eqz v1, :cond_10

    .line 275
    .line 276
    goto :goto_d

    .line 277
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    if-nez p0, :cond_2

    .line 282
    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :goto_a
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 286
    throw p0

    .line 287
    :catchall_4
    move-exception p0

    .line 288
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 289
    throw p0

    .line 290
    :goto_b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    .line 292
    .line 293
    throw p0

    .line 294
    :goto_c
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 295
    throw p0

    .line 296
    :goto_d
    if-ne v1, v3, :cond_11

    .line 297
    .line 298
    move v2, v3

    .line 299
    :cond_11
    return v2
.end method

.method public final shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->getRespectOrientationRequestIfAllowed(ILcom/android/server/wm/ActivityRecord;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 p1, -0x1

    .line 14
    if-eq p0, p1, :cond_2

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    const/16 p1, 0x20

    .line 19
    .line 20
    if-ne p0, p1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 p0, 0x1

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 26
    :goto_2
    return p0
.end method
