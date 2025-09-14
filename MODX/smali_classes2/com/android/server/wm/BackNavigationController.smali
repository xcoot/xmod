.class public final Lcom/android/server/wm/BackNavigationController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sDefaultAnimationResId:I

.field public static final sPredictBackEnable:Z


# instance fields
.field public mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

.field public mBackAnimationInProgress:Z

.field public mBackGestureFinished:Z

.field public mLastBackType:I

.field public final mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

.field public mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

.field public mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

.field public mShowWallpaper:Z

.field public final mTmpCloseApps:Ljava/util/ArrayList;

.field public final mTmpOpenApps:Ljava/util/ArrayList;

.field public mWaitTransitionFinish:Lcom/android/server/wm/Transition;

.field public mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.wm.debug.predictive_back"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 24
    .line 25
    return-void
.end method

.method public static addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public static getAnimatablePrevActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    .line 23
    .line 24
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    move v0, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v2

    .line 39
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/android/server/wm/ActivityClientController;->shouldMoveTaskToBack(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    return v3

    .line 55
    :cond_2
    new-instance v0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-direct {v0, v1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_9

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-nez v1, :cond_9

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    return v3

    .line 89
    :cond_3
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 90
    .line 91
    if-nez v1, :cond_6

    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-gtz v1, :cond_4

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 104
    .line 105
    sub-int/2addr v1, v3

    .line 106
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :goto_1
    if-eqz v1, :cond_9

    .line 117
    .line 118
    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 119
    .line 120
    if-ne v4, p1, :cond_9

    .line 121
    .line 122
    new-instance p1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;

    .line 123
    .line 124
    const/4 v0, 0x2

    .line 125
    invoke-direct {p1, v0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance v0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;

    .line 133
    .line 134
    const/4 v1, 0x3

    .line 135
    invoke-direct {v0, v1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    if-eqz p0, :cond_5

    .line 143
    .line 144
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    invoke-static {p0, p2}, Lcom/android/server/wm/BackNavigationController;->addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    return v3

    .line 151
    :cond_6
    iget-object p2, v1, Lcom/android/server/wm/TaskFragment;->mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 152
    .line 153
    if-ne p2, p1, :cond_8

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iget-object p2, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 166
    .line 167
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-ge v0, p2, :cond_7

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_7
    move-object p1, v1

    .line 175
    :goto_2
    invoke-virtual {p1, v3, v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    new-instance p2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;

    .line 180
    .line 181
    const/4 v0, 0x4

    .line 182
    invoke-direct {p2, v0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p2, p1, v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    if-nez p0, :cond_8

    .line 190
    .line 191
    move v2, v3

    .line 192
    :cond_8
    return v2

    .line 193
    :cond_9
    if-nez v0, :cond_a

    .line 194
    .line 195
    return v3

    .line 196
    :cond_a
    invoke-static {v0, p2}, Lcom/android/server/wm/BackNavigationController;->addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    return v3
.end method

.method public static hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    sub-int/2addr p0, v2

    .line 21
    :goto_0
    if-ltz p0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->hasWallpaper()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return v2

    .line 46
    :cond_3
    return v0

    .line 47
    :cond_4
    :goto_2
    return v2
.end method

.method public static isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    xor-int/lit8 p0, p0, 0x1

    .line 31
    .line 32
    return p0
.end method

.method public static isCustomizeExitAnimation(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "android"

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 30
    .line 31
    const/4 v2, 0x7

    .line 32
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationResId(Landroid/view/WindowManager$LayoutParams;II)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {p0}, Landroid/content/res/ResourceId;->isValid(I)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    sget v3, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/TransitionAnimation;->getDefaultAnimationResId(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sput v0, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    .line 51
    .line 52
    :cond_1
    sget v0, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    .line 53
    .line 54
    if-eq v0, p0, :cond_2

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_2
    return v1
.end method

.method public static setLaunchBehind(Lcom/android/server/wm/ActivityRecord;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 31
    .line 32
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 33
    .line 34
    aget-boolean v0, v0, v1

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 43
    .line 44
    const-string v7, "Setting Activity.mLauncherTaskBehind to true. Activity=%s"

    .line 45
    .line 46
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const-wide v4, 0x1cd3c640fb4335b0L    # 8.187030472293235E-170

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final cancelPendingAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/window/IBackAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const-string v1, "CoreBackPreview"

    .line 18
    .line 19
    const-string v2, "Remote animation gone"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 26
    .line 27
    return-void
.end method

.method public final clearBackAnimations(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWaitTransitionFinish:Lcom/android/server/wm/Transition;

    .line 12
    .line 13
    return-void
.end method

.method public final isMonitoringTransition()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public final onBackNavigationDone(ILandroid/os/Bundle;)V
    .locals 9

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "NavigationFinished"

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    const-string v0, "NavigationFinished"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aget-boolean v1, v1, v2

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 30
    .line 31
    const-string/jumbo v7, "onBackNavigationDone backType=%s, triggerBack=%b"

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    const-wide v4, 0x3b7efecc2bb300dL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const/16 v6, 0xc

    .line 48
    .line 49
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 55
    .line 56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 57
    .line 58
    .line 59
    monitor-enter p1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    iput-object v1, v0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    .line 64
    .line 65
    iput-boolean v2, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    .line 66
    .line 67
    iput-boolean v2, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    .line 68
    .line 69
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 72
    .line 73
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM_BUG_FIX:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iput-boolean v2, p0, Lcom/android/server/wm/BackNavigationController;->mBackGestureFinished:Z

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_3
    :goto_2
    const-string p1, "GestureFinished"

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_9

    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 103
    .line 104
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 105
    .line 106
    .line 107
    monitor-enter p1

    .line 108
    :try_start_2
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM_BUG_FIX:Z

    .line 109
    .line 110
    const/4 v0, 0x1

    .line 111
    if-eqz p2, :cond_4

    .line 112
    .line 113
    iput-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackGestureFinished:Z

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    goto :goto_6

    .line 118
    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 119
    .line 120
    iget-boolean v1, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 121
    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    iget-boolean v1, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 125
    .line 126
    if-nez v1, :cond_8

    .line 127
    .line 128
    iget-object v1, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    .line 129
    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    iget p2, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 133
    .line 134
    if-eq p2, v0, :cond_5

    .line 135
    .line 136
    const/4 v2, 0x2

    .line 137
    if-eq p2, v2, :cond_5

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_5
    array-length p2, v1

    .line 141
    sub-int/2addr p2, v0

    .line 142
    :goto_4
    if-ltz p2, :cond_7

    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    .line 147
    .line 148
    aget-object v0, v0, p2

    .line 149
    .line 150
    iget-boolean v1, v0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 151
    .line 152
    if-nez v1, :cond_6

    .line 153
    .line 154
    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController;->setLaunchBehind(Lcom/android/server/wm/ActivityRecord;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    add-int/lit8 p2, p2, -0x1

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_7
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 162
    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_8
    :goto_5
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :goto_6
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 171
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 172
    .line 173
    .line 174
    throw p0

    .line 175
    :cond_9
    :goto_7
    return-void
.end method

.method public final scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    iget-object v4, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    if-eqz v4, :cond_9

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    iget-object v5, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/window/ITaskOrganizer;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    move v0, v6

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v0, v4

    .line 45
    :goto_0
    iget-object v7, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 46
    .line 47
    aget-object v8, v7, v6

    .line 48
    .line 49
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    if-eqz v9, :cond_5

    .line 54
    .line 55
    new-instance v7, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v8, v4, v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    if-eqz v8, :cond_4

    .line 69
    .line 70
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    if-eqz v8, :cond_4

    .line 78
    .line 79
    iget-object v8, v8, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 80
    .line 81
    if-nez v8, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v8, v4, v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    if-nez v8, :cond_3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    new-array v8, v8, [Lcom/android/server/wm/ActivityRecord;

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    sub-int/2addr v9, v4

    .line 105
    :goto_2
    if-ltz v9, :cond_8

    .line 106
    .line 107
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 112
    .line 113
    aput-object v10, v8, v9

    .line 114
    .line 115
    add-int/lit8 v9, v9, -0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    if-eqz v8, :cond_7

    .line 123
    .line 124
    array-length v8, v7

    .line 125
    new-array v9, v8, [Lcom/android/server/wm/ActivityRecord;

    .line 126
    .line 127
    sub-int/2addr v8, v4

    .line 128
    :goto_3
    if-ltz v8, :cond_6

    .line 129
    .line 130
    aget-object v10, v7, v8

    .line 131
    .line 132
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    aput-object v10, v9, v8

    .line 137
    .line 138
    add-int/lit8 v8, v8, -0x1

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    move-object v8, v9

    .line 142
    goto :goto_4

    .line 143
    :cond_7
    const/4 v8, 0x0

    .line 144
    :cond_8
    :goto_4
    const-string v7, "CoreBackPreview"

    .line 145
    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    if-nez v8, :cond_a

    .line 149
    .line 150
    const-string v0, "No opening activity"

    .line 151
    .line 152
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_9
    :goto_5
    const/4 v3, 0x0

    .line 156
    goto/16 :goto_20

    .line 157
    .line 158
    :cond_a
    iget-object v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 159
    .line 160
    iget-object v9, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 161
    .line 162
    iget-boolean v10, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 163
    .line 164
    if-nez v10, :cond_31

    .line 165
    .line 166
    iget-boolean v10, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 167
    .line 168
    if-eqz v10, :cond_b

    .line 169
    .line 170
    goto/16 :goto_1f

    .line 171
    .line 172
    :cond_b
    invoke-virtual {v5, v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    .line 173
    .line 174
    .line 175
    if-eqz v0, :cond_30

    .line 176
    .line 177
    if-eqz v9, :cond_30

    .line 178
    .line 179
    array-length v10, v9

    .line 180
    if-eqz v10, :cond_30

    .line 181
    .line 182
    array-length v10, v9

    .line 183
    const/4 v11, 0x2

    .line 184
    if-le v10, v11, :cond_c

    .line 185
    .line 186
    goto/16 :goto_1e

    .line 187
    .line 188
    :cond_c
    array-length v10, v9

    .line 189
    const/4 v12, -0x1

    .line 190
    const/4 v13, 0x3

    .line 191
    if-eqz v10, :cond_10

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    if-nez v10, :cond_d

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 205
    .line 206
    array-length v14, v9

    .line 207
    sub-int/2addr v14, v4

    .line 208
    :goto_6
    if-ltz v14, :cond_f

    .line 209
    .line 210
    aget-object v15, v9, v14

    .line 211
    .line 212
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 213
    .line 214
    .line 215
    move-result-object v15

    .line 216
    if-eqz v15, :cond_10

    .line 217
    .line 218
    aget-object v15, v9, v14

    .line 219
    .line 220
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    iget-object v15, v15, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 225
    .line 226
    if-eq v10, v15, :cond_e

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_e
    add-int/lit8 v14, v14, -0x1

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_f
    iput v11, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 233
    .line 234
    goto :goto_9

    .line 235
    :cond_10
    :goto_7
    array-length v10, v9

    .line 236
    if-ne v10, v4, :cond_12

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    if-nez v10, :cond_11

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_11
    aget-object v10, v9, v6

    .line 246
    .line 247
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    if-eqz v10, :cond_12

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    aget-object v14, v9, v6

    .line 258
    .line 259
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 260
    .line 261
    .line 262
    move-result-object v14

    .line 263
    if-eq v10, v14, :cond_12

    .line 264
    .line 265
    iput v4, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 266
    .line 267
    goto :goto_9

    .line 268
    :cond_12
    :goto_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    if-eqz v10, :cond_18

    .line 273
    .line 274
    iput v13, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 275
    .line 276
    :goto_9
    iget v10, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 277
    .line 278
    invoke-static {v10, v0, v6}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->createAdaptor(ILcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iput-object v0, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 283
    .line 284
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 285
    .line 286
    if-nez v0, :cond_13

    .line 287
    .line 288
    const-string v0, "composeNewAnimations fail, skip"

    .line 289
    .line 290
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5, v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    .line 294
    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_13
    array-length v0, v8

    .line 298
    if-ne v0, v4, :cond_15

    .line 299
    .line 300
    aget-object v0, v8, v6

    .line 301
    .line 302
    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 303
    .line 304
    invoke-virtual {v10, v0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    .line 305
    .line 306
    .line 307
    move-result v14

    .line 308
    if-eq v14, v12, :cond_14

    .line 309
    .line 310
    invoke-virtual {v10, v0, v14}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    .line 311
    .line 312
    .line 313
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    .line 314
    .line 315
    .line 316
    move-result v14

    .line 317
    if-eqz v14, :cond_15

    .line 318
    .line 319
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 324
    .line 325
    .line 326
    move-result v14

    .line 327
    invoke-virtual {v10, v14, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(ILcom/android/server/wm/ActivityRecord;)V

    .line 328
    .line 329
    .line 330
    :cond_15
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 331
    .line 332
    iget v10, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 333
    .line 334
    invoke-direct {v0, v10, v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;-><init>(I[Lcom/android/server/wm/WindowContainer;)V

    .line 335
    .line 336
    .line 337
    iput-object v0, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 338
    .line 339
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 340
    .line 341
    array-length v9, v0

    .line 342
    sub-int/2addr v9, v4

    .line 343
    :goto_a
    if-ltz v9, :cond_17

    .line 344
    .line 345
    aget-object v10, v0, v9

    .line 346
    .line 347
    iget-object v10, v10, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 348
    .line 349
    if-nez v10, :cond_16

    .line 350
    .line 351
    const-string v0, "compose animations fail, skip"

    .line 352
    .line 353
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5, v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    .line 357
    .line 358
    .line 359
    goto :goto_b

    .line 360
    :cond_16
    add-int/lit8 v9, v9, -0x1

    .line 361
    .line 362
    goto :goto_a

    .line 363
    :cond_17
    iput-object v8, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_18
    iput v6, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 367
    .line 368
    :goto_b
    iget v0, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 369
    .line 370
    if-nez v0, :cond_19

    .line 371
    .line 372
    goto/16 :goto_5

    .line 373
    .line 374
    :cond_19
    iput-boolean v4, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 375
    .line 376
    iput-boolean v6, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 377
    .line 378
    iget-object v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 379
    .line 380
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 381
    .line 382
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 383
    .line 384
    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 385
    .line 386
    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    if-eqz v7, :cond_1a

    .line 391
    .line 392
    goto :goto_c

    .line 393
    :cond_1a
    iget-object v0, v0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    .line 394
    .line 395
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 396
    .line 397
    .line 398
    :goto_c
    iget-object v7, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 399
    .line 400
    iget-object v9, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 401
    .line 402
    iget-object v0, v9, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 403
    .line 404
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 405
    .line 406
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    check-cast v0, Landroid/window/ITaskOrganizer;

    .line 413
    .line 414
    if-eqz v0, :cond_2c

    .line 415
    .line 416
    iget-boolean v0, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mShowWindowlessSurface:Z

    .line 417
    .line 418
    if-eqz v0, :cond_2c

    .line 419
    .line 420
    iget-boolean v0, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    .line 421
    .line 422
    if-nez v0, :cond_2c

    .line 423
    .line 424
    iget-object v0, v7, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 425
    .line 426
    aget-object v0, v0, v6

    .line 427
    .line 428
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 429
    .line 430
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    if-eqz v10, :cond_1b

    .line 435
    .line 436
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 441
    .line 442
    iget-object v10, v10, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 443
    .line 444
    iget-object v14, v10, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 445
    .line 446
    iget v15, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 447
    .line 448
    iget v0, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 449
    .line 450
    const/16 v17, 0x0

    .line 451
    .line 452
    const/16 v18, 0x0

    .line 453
    .line 454
    const/16 v19, 0x0

    .line 455
    .line 456
    move/from16 v16, v0

    .line 457
    .line 458
    invoke-virtual/range {v14 .. v19}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZZ)Landroid/window/TaskSnapshot;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    goto :goto_d

    .line 463
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 464
    .line 465
    .line 466
    move-result-object v10

    .line 467
    if-eqz v10, :cond_1c

    .line 468
    .line 469
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 474
    .line 475
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 476
    .line 477
    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 478
    .line 479
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivitySnapshotController;->getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    goto :goto_d

    .line 484
    :cond_1c
    const/4 v0, 0x0

    .line 485
    :goto_d
    if-nez v0, :cond_1d

    .line 486
    .line 487
    :goto_e
    move v14, v6

    .line 488
    goto :goto_10

    .line 489
    :cond_1d
    array-length v10, v8

    .line 490
    sub-int/2addr v10, v4

    .line 491
    move v14, v6

    .line 492
    :goto_f
    if-ltz v10, :cond_1f

    .line 493
    .line 494
    aget-object v15, v8, v10

    .line 495
    .line 496
    invoke-virtual {v15, v0}, Lcom/android/server/wm/ActivityRecord;->isSnapshotOrientationCompatible(Landroid/window/TaskSnapshot;)Z

    .line 497
    .line 498
    .line 499
    move-result v16

    .line 500
    if-nez v16, :cond_1e

    .line 501
    .line 502
    goto :goto_e

    .line 503
    :cond_1e
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getTopActivityComponent()Landroid/content/ComponentName;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    iget-object v15, v15, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 508
    .line 509
    invoke-virtual {v3, v15}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    or-int/2addr v14, v3

    .line 514
    add-int/lit8 v10, v10, -0x1

    .line 515
    .line 516
    goto :goto_f

    .line 517
    :cond_1f
    :goto_10
    if-eqz v14, :cond_20

    .line 518
    .line 519
    move-object v3, v0

    .line 520
    goto :goto_11

    .line 521
    :cond_20
    const/4 v3, 0x0

    .line 522
    :goto_11
    iget-object v0, v7, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 523
    .line 524
    aget-object v10, v0, v6

    .line 525
    .line 526
    iget v14, v10, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mSwitchType:I

    .line 527
    .line 528
    if-ne v14, v13, :cond_21

    .line 529
    .line 530
    goto/16 :goto_18

    .line 531
    .line 532
    :cond_21
    iget-object v10, v10, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 533
    .line 534
    if-ne v14, v4, :cond_22

    .line 535
    .line 536
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 537
    .line 538
    .line 539
    move-result-object v13

    .line 540
    goto :goto_12

    .line 541
    :cond_22
    if-ne v14, v11, :cond_23

    .line 542
    .line 543
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 544
    .line 545
    .line 546
    move-result-object v13

    .line 547
    iget-object v13, v13, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 548
    .line 549
    goto :goto_12

    .line 550
    :cond_23
    const/4 v13, 0x0

    .line 551
    :goto_12
    if-nez v13, :cond_24

    .line 552
    .line 553
    goto/16 :goto_18

    .line 554
    .line 555
    :cond_24
    if-ne v14, v11, :cond_25

    .line 556
    .line 557
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 558
    .line 559
    .line 560
    move-result-object v10

    .line 561
    goto :goto_13

    .line 562
    :cond_25
    invoke-virtual {v13, v4, v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 563
    .line 564
    .line 565
    move-result-object v10

    .line 566
    :goto_13
    if-nez v10, :cond_26

    .line 567
    .line 568
    goto :goto_18

    .line 569
    :cond_26
    array-length v14, v0

    .line 570
    if-ne v14, v4, :cond_27

    .line 571
    .line 572
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 573
    .line 574
    .line 575
    move-result-object v14

    .line 576
    goto :goto_14

    .line 577
    :cond_27
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 578
    .line 579
    .line 580
    move-result-object v14

    .line 581
    :goto_14
    iget-object v15, v13, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 582
    .line 583
    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 584
    .line 585
    array-length v0, v0

    .line 586
    if-ne v0, v4, :cond_28

    .line 587
    .line 588
    iget-object v0, v10, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 589
    .line 590
    goto :goto_15

    .line 591
    :cond_28
    iget-object v0, v7, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 592
    .line 593
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 594
    .line 595
    :goto_15
    new-instance v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;

    .line 596
    .line 597
    invoke-direct {v6, v7, v13}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;Lcom/android/server/wm/Task;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 604
    .line 605
    .line 606
    move-result-object v18

    .line 607
    if-nez v18, :cond_29

    .line 608
    .line 609
    :goto_16
    move v0, v12

    .line 610
    goto :goto_17

    .line 611
    :cond_29
    iget-object v15, v15, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    .line 612
    .line 613
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v15

    .line 617
    check-cast v15, Landroid/window/ITaskOrganizer;

    .line 618
    .line 619
    if-nez v15, :cond_2a

    .line 620
    .line 621
    goto :goto_16

    .line 622
    :cond_2a
    invoke-virtual {v13, v10}, Lcom/android/server/wm/Task;->getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;

    .line 623
    .line 624
    .line 625
    move-result-object v11

    .line 626
    iget-object v4, v11, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 627
    .line 628
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 629
    .line 630
    invoke-virtual {v4, v14}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 631
    .line 632
    .line 633
    iget-object v4, v11, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 634
    .line 635
    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 636
    .line 637
    iput-object v10, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 638
    .line 639
    iput-object v3, v11, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 640
    .line 641
    iput-object v6, v11, Landroid/window/StartingWindowInfo;->windowlessStartingSurfaceCallback:Landroid/window/IWindowlessStartingSurfaceCallback;

    .line 642
    .line 643
    iput-object v0, v11, Landroid/window/StartingWindowInfo;->rootSurface:Landroid/view/SurfaceControl;

    .line 644
    .line 645
    :try_start_0
    invoke-interface {v15, v11}, Landroid/window/ITaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    .line 647
    .line 648
    iget v0, v13, Lcom/android/server/wm/Task;->mTaskId:I

    .line 649
    .line 650
    goto :goto_17

    .line 651
    :catch_0
    move-exception v0

    .line 652
    move-object v4, v0

    .line 653
    const-string v0, "TaskOrganizerController"

    .line 654
    .line 655
    const-string v6, "Exception sending addWindowlessStartingSurface "

    .line 656
    .line 657
    invoke-static {v0, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    .line 659
    .line 660
    goto :goto_16

    .line 661
    :goto_17
    iput v0, v7, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    .line 662
    .line 663
    :goto_18
    if-nez v3, :cond_2b

    .line 664
    .line 665
    iget v0, v7, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    .line 666
    .line 667
    if-eq v0, v12, :cond_2b

    .line 668
    .line 669
    goto :goto_19

    .line 670
    :cond_2b
    const/4 v0, 0x0

    .line 671
    goto :goto_1a

    .line 672
    :cond_2c
    :goto_19
    const/4 v0, 0x1

    .line 673
    :goto_1a
    if-eqz v0, :cond_2d

    .line 674
    .line 675
    array-length v0, v8

    .line 676
    const/4 v3, 0x1

    .line 677
    sub-int/2addr v0, v3

    .line 678
    :goto_1b
    if-ltz v0, :cond_2d

    .line 679
    .line 680
    aget-object v3, v8, v0

    .line 681
    .line 682
    invoke-static {v3}, Lcom/android/server/wm/BackNavigationController;->setLaunchBehind(Lcom/android/server/wm/ActivityRecord;)V

    .line 683
    .line 684
    .line 685
    add-int/lit8 v0, v0, -0x1

    .line 686
    .line 687
    goto :goto_1b

    .line 688
    :cond_2d
    iget-object v0, v9, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 689
    .line 690
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 691
    .line 692
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 693
    .line 694
    .line 695
    move-result v0

    .line 696
    if-eqz v0, :cond_2e

    .line 697
    .line 698
    array-length v0, v8

    .line 699
    const/4 v3, 0x1

    .line 700
    sub-int/2addr v0, v3

    .line 701
    :goto_1c
    if-ltz v0, :cond_2e

    .line 702
    .line 703
    aget-object v3, v8, v0

    .line 704
    .line 705
    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->enforceSurfaceVisible(Lcom/android/server/wm/WindowContainer;)V

    .line 706
    .line 707
    .line 708
    add-int/lit8 v0, v0, -0x1

    .line 709
    .line 710
    goto :goto_1c

    .line 711
    :cond_2e
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;

    .line 712
    .line 713
    invoke-direct {v0, v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    .line 714
    .line 715
    .line 716
    iget-boolean v3, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 717
    .line 718
    if-nez v3, :cond_2f

    .line 719
    .line 720
    const/4 v3, 0x0

    .line 721
    goto :goto_1d

    .line 722
    :cond_2f
    const/4 v3, 0x2

    .line 723
    new-array v3, v3, [Landroid/view/RemoteAnimationTarget;

    .line 724
    .line 725
    iget-object v4, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 726
    .line 727
    iget-object v4, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 728
    .line 729
    const/4 v6, 0x0

    .line 730
    aput-object v4, v3, v6

    .line 731
    .line 732
    iget-object v4, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 733
    .line 734
    iget-object v4, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 735
    .line 736
    const/4 v5, 0x1

    .line 737
    aput-object v4, v3, v5

    .line 738
    .line 739
    :goto_1d
    new-instance v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 740
    .line 741
    invoke-direct {v4, v2, v3, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Landroid/view/RemoteAnimationTarget;Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;)V

    .line 742
    .line 743
    .line 744
    move-object v3, v4

    .line 745
    goto :goto_20

    .line 746
    :cond_30
    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 747
    .line 748
    const-string/jumbo v3, "reset animation with null target close: "

    .line 749
    .line 750
    .line 751
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v0, " open: "

    .line 758
    .line 759
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-static {v2, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    goto/16 :goto_5

    .line 770
    .line 771
    :cond_31
    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    const-string v2, "Previous animation is running "

    .line 774
    .line 775
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .line 787
    .line 788
    goto/16 :goto_5

    .line 789
    .line 790
    :goto_20
    iput-object v3, v1, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 791
    .line 792
    iget-object v0, v1, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 793
    .line 794
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 795
    .line 796
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 797
    .line 798
    .line 799
    iget-boolean v0, v1, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    .line 800
    .line 801
    if-eqz v0, :cond_33

    .line 802
    .line 803
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_PREDICTIVE_BACK_ANIM:Z

    .line 804
    .line 805
    if-eqz v0, :cond_32

    .line 806
    .line 807
    iget-object v0, v1, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 808
    .line 809
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 810
    .line 811
    .line 812
    :cond_32
    iget-object v0, v1, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 813
    .line 814
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 819
    .line 820
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 821
    .line 822
    .line 823
    :cond_33
    return-void
.end method

.method public startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Previous animation hasn\'t finish, status: "

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-object v3

    .line 11
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    new-instance v4, Landroid/window/BackNavigationInfo$Builder;

    .line 14
    .line 15
    invoke-direct {v4}, Landroid/window/BackNavigationInfo$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v5, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 19
    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 21
    .line 22
    .line 23
    monitor-enter v5

    .line 24
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BackNavigationController;->isMonitoringTransition()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    const-string v2, "CoreBackPreview"

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 38
    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 51
    .line 52
    .line 53
    return-object v3

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto/16 :goto_15

    .line 56
    .line 57
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v6, 0x3

    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 65
    .line 66
    aget-boolean v1, v1, v6

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 71
    .line 72
    const-string v11, "No focused window, defaulting to top current task\'s window"

    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v12, 0x0

    .line 76
    const-wide v8, -0x9b41c630000c8cdL    # -6.860898158053238E261

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    new-instance v7, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;

    .line 95
    .line 96
    const/4 v8, 0x5

    .line 97
    invoke-direct {v7, v8}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    move-object v1, v3

    .line 106
    :cond_4
    :goto_0
    if-nez v1, :cond_5

    .line 107
    .line 108
    const-string v0, "CoreBackPreview"

    .line 109
    .line 110
    const-string v1, "Window is null, returning null."

    .line 111
    .line 112
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 117
    .line 118
    .line 119
    return-object v3

    .line 120
    :cond_5
    :try_start_2
    iget-object v7, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 121
    .line 122
    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowManagerService;->moveFocusToAdjacentEmbeddedWindow(Lcom/android/server/wm/WindowState;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_6

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-nez v1, :cond_6

    .line 133
    .line 134
    const-string v0, "CoreBackPreview"

    .line 135
    .line 136
    const-string v1, "New focused window is null, returning null."

    .line 137
    .line 138
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 143
    .line 144
    .line 145
    return-object v3

    .line 146
    :cond_6
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    const/4 v7, 0x0

    .line 151
    if-nez v2, :cond_8

    .line 152
    .line 153
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 154
    .line 155
    aget-boolean v0, v0, v7

    .line 156
    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 160
    .line 161
    const-string v10, "Focused window didn\'t have a valid surface drawn."

    .line 162
    .line 163
    const/4 v9, 0x0

    .line 164
    const/4 v11, 0x0

    .line 165
    const-wide v7, 0x27fbab9c3de33d6dL    # 4.389109128093316E-116

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 175
    .line 176
    .line 177
    return-object v3

    .line 178
    :cond_8
    :try_start_4
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    if-eqz v8, :cond_9

    .line 185
    .line 186
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    if-eqz v9, :cond_a

    .line 191
    .line 192
    :cond_9
    if-eqz v2, :cond_c

    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-nez v9, :cond_c

    .line 199
    .line 200
    :cond_a
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 201
    .line 202
    aget-boolean v0, v0, v7

    .line 203
    .line 204
    if-eqz v0, :cond_b

    .line 205
    .line 206
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 207
    .line 208
    const-string v10, "Focus window is closing."

    .line 209
    .line 210
    const/4 v9, 0x0

    .line 211
    const/4 v11, 0x0

    .line 212
    const-wide v7, -0x55d06398df97c38aL

    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_b
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 222
    .line 223
    .line 224
    return-object v3

    .line 225
    :cond_c
    :try_start_5
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    .line 226
    .line 227
    if-nez v9, :cond_d

    .line 228
    .line 229
    const-string v0, "CoreBackPreview"

    .line 230
    .line 231
    const-string v1, "No callback registered, returning null."

    .line 232
    .line 233
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 237
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 238
    .line 239
    .line 240
    return-object v3

    .line 241
    :cond_d
    :try_start_6
    invoke-virtual {v9}, Landroid/window/OnBackInvokedCallbackInfo;->isSystemCallback()Z

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    const/4 v11, 0x4

    .line 246
    if-nez v10, :cond_e

    .line 247
    .line 248
    move v10, v11

    .line 249
    goto :goto_1

    .line 250
    :cond_e
    const/4 v10, -0x1

    .line 251
    :goto_1
    invoke-virtual {v9}, Landroid/window/OnBackInvokedCallbackInfo;->getCallback()Landroid/window/IOnBackInvokedCallback;

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    invoke-virtual {v4, v12}, Landroid/window/BackNavigationInfo$Builder;->setOnBackInvokedCallback(Landroid/window/IOnBackInvokedCallback;)Landroid/window/BackNavigationInfo$Builder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9}, Landroid/window/OnBackInvokedCallbackInfo;->isAnimationCallback()Z

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    invoke-virtual {v4, v12}, Landroid/window/BackNavigationInfo$Builder;->setAnimationCallback(Z)Landroid/window/BackNavigationInfo$Builder;

    .line 263
    .line 264
    .line 265
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 266
    .line 267
    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 268
    .line 269
    invoke-virtual {v4, v12}, Landroid/window/BackNavigationInfo$Builder;->setTouchableRegion(Landroid/graphics/Rect;)Landroid/window/BackNavigationInfo$Builder;

    .line 270
    .line 271
    .line 272
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 273
    .line 274
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 275
    .line 276
    and-int/lit16 v12, v12, 0x80

    .line 277
    .line 278
    const/4 v15, 0x1

    .line 279
    if-eqz v12, :cond_f

    .line 280
    .line 281
    move v12, v15

    .line 282
    goto :goto_2

    .line 283
    :cond_f
    move v12, v7

    .line 284
    :goto_2
    invoke-virtual {v4, v12}, Landroid/window/BackNavigationInfo$Builder;->setAppProgressAllowed(Z)Landroid/window/BackNavigationInfo$Builder;

    .line 285
    .line 286
    .line 287
    iget-object v12, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 288
    .line 289
    iput-object v1, v12, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    .line 290
    .line 291
    move-object/from16 v13, p1

    .line 292
    .line 293
    iput-object v13, v12, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    .line 294
    .line 295
    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 296
    .line 297
    aget-boolean v12, v12, v7

    .line 298
    .line 299
    if-eqz v12, :cond_10

    .line 300
    .line 301
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v13

    .line 309
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v14

    .line 317
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 318
    .line 319
    const-string/jumbo v20, "startBackNavigation currentTask=%s, topRunningActivity=%s, callbackInfo=%s, currentFocus=%s"

    .line 320
    .line 321
    .line 322
    filled-new-array {v12, v13, v9, v14}, [Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v21

    .line 326
    const-wide v17, 0x380e880485133941L    # 1.1215435302787646E-38

    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    const/16 v19, 0x0

    .line 332
    .line 333
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    :cond_10
    if-eq v10, v11, :cond_35

    .line 337
    .line 338
    if-eqz v2, :cond_35

    .line 339
    .line 340
    if-eqz v8, :cond_35

    .line 341
    .line 342
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    if-eqz v9, :cond_11

    .line 347
    .line 348
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 349
    .line 350
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 351
    .line 352
    if-eq v9, v15, :cond_35

    .line 353
    .line 354
    :cond_11
    iget-boolean v9, v2, Lcom/android/server/wm/ActivityRecord;->mHasSceneTransition:Z

    .line 355
    .line 356
    if-eqz v9, :cond_12

    .line 357
    .line 358
    goto/16 :goto_14

    .line 359
    .line 360
    :cond_12
    new-instance v9, Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-static {v8, v2, v9}, Lcom/android/server/wm/BackNavigationController;->getAnimatablePrevActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    .line 366
    .line 367
    .line 368
    move-result v10

    .line 369
    iget-object v12, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 370
    .line 371
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 372
    .line 373
    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 374
    .line 375
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 376
    .line 377
    .line 378
    move-result v13

    .line 379
    invoke-virtual {v12, v13}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    .line 380
    .line 381
    .line 382
    move-result v12

    .line 383
    const/4 v13, 0x2

    .line 384
    if-nez v10, :cond_14

    .line 385
    .line 386
    :cond_13
    :goto_3
    move-object v1, v3

    .line 387
    move-object/from16 v17, v1

    .line 388
    .line 389
    goto/16 :goto_b

    .line 390
    .line 391
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 396
    .line 397
    .line 398
    move-result v10

    .line 399
    if-le v10, v15, :cond_15

    .line 400
    .line 401
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 402
    .line 403
    .line 404
    move-result-object v10

    .line 405
    invoke-virtual {v10, v7}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 406
    .line 407
    .line 408
    move-result-object v10

    .line 409
    if-eq v10, v1, :cond_15

    .line 410
    .line 411
    move-object/from16 v17, v3

    .line 412
    .line 413
    move v11, v7

    .line 414
    goto/16 :goto_b

    .line 415
    .line 416
    :cond_15
    invoke-static {v2, v9}, Lcom/android/server/wm/BackNavigationController;->hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    .line 417
    .line 418
    .line 419
    move-result v10

    .line 420
    if-eqz v10, :cond_16

    .line 421
    .line 422
    goto :goto_3

    .line 423
    :cond_16
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 424
    .line 425
    .line 426
    move-result v10

    .line 427
    if-lez v10, :cond_1e

    .line 428
    .line 429
    if-eqz v12, :cond_17

    .line 430
    .line 431
    invoke-static {v9}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z

    .line 432
    .line 433
    .line 434
    move-result v10

    .line 435
    if-eqz v10, :cond_13

    .line 436
    .line 437
    :cond_17
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 438
    .line 439
    .line 440
    move-result v10

    .line 441
    sub-int/2addr v10, v15

    .line 442
    :goto_4
    if-ltz v10, :cond_19

    .line 443
    .line 444
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v12

    .line 448
    check-cast v12, Lcom/android/server/wm/ActivityRecord;

    .line 449
    .line 450
    sget-object v14, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    .line 451
    .line 452
    invoke-virtual {v12, v14}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 453
    .line 454
    .line 455
    move-result v12

    .line 456
    if-eqz v12, :cond_18

    .line 457
    .line 458
    move v10, v7

    .line 459
    goto :goto_5

    .line 460
    :cond_18
    add-int/lit8 v10, v10, -0x1

    .line 461
    .line 462
    goto :goto_4

    .line 463
    :cond_19
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 464
    .line 465
    .line 466
    move-result v10

    .line 467
    xor-int/2addr v10, v15

    .line 468
    :goto_5
    if-eqz v10, :cond_13

    .line 469
    .line 470
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 471
    .line 472
    .line 473
    move-result-object v10

    .line 474
    if-eqz v10, :cond_1b

    .line 475
    .line 476
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 477
    .line 478
    .line 479
    move-result-object v11

    .line 480
    if-nez v11, :cond_1a

    .line 481
    .line 482
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 483
    .line 484
    .line 485
    move-result-object v11

    .line 486
    if-eqz v11, :cond_1b

    .line 487
    .line 488
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->canCustomizeAppTransition()Z

    .line 489
    .line 490
    .line 491
    move-result v10

    .line 492
    if-eqz v10, :cond_1b

    .line 493
    .line 494
    :cond_1a
    move v10, v15

    .line 495
    goto :goto_6

    .line 496
    :cond_1b
    move v10, v7

    .line 497
    :goto_6
    if-eqz v10, :cond_1d

    .line 498
    .line 499
    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController;->isCustomizeExitAnimation(Lcom/android/server/wm/WindowState;)Z

    .line 500
    .line 501
    .line 502
    move-result v10

    .line 503
    if-eqz v10, :cond_1c

    .line 504
    .line 505
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 506
    .line 507
    iget-object v10, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 508
    .line 509
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 510
    .line 511
    invoke-virtual {v4, v10, v1}, Landroid/window/BackNavigationInfo$Builder;->setWindowAnimations(Ljava/lang/String;I)Landroid/window/BackNavigationInfo$Builder;

    .line 512
    .line 513
    .line 514
    :cond_1c
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 515
    .line 516
    if-eqz v1, :cond_1d

    .line 517
    .line 518
    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 519
    .line 520
    iget v11, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    .line 521
    .line 522
    iget v12, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    .line 523
    .line 524
    iget v1, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    .line 525
    .line 526
    invoke-virtual {v4, v10, v11, v12, v1}, Landroid/window/BackNavigationInfo$Builder;->setCustomAnimation(Ljava/lang/String;III)Landroid/window/BackNavigationInfo$Builder;

    .line 527
    .line 528
    .line 529
    :cond_1d
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 530
    .line 531
    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 532
    .line 533
    iget-object v1, v1, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 534
    .line 535
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {v1}, Landroid/graphics/Color;->toArgb()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    invoke-virtual {v4, v1}, Landroid/window/BackNavigationInfo$Builder;->setLetterboxColor(I)Landroid/window/BackNavigationInfo$Builder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 551
    .line 552
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 553
    .line 554
    move-object/from16 v17, v1

    .line 555
    .line 556
    move-object v1, v2

    .line 557
    move v11, v13

    .line 558
    goto/16 :goto_b

    .line 559
    .line 560
    :cond_1e
    iget-object v1, v8, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 561
    .line 562
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 563
    .line 564
    invoke-virtual {v1, v8}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    if-eqz v1, :cond_1f

    .line 569
    .line 570
    goto/16 :goto_3

    .line 571
    .line 572
    :cond_1f
    iget-object v1, v8, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 573
    .line 574
    new-instance v10, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;

    .line 575
    .line 576
    const/4 v14, 0x0

    .line 577
    invoke-direct {v10, v14}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1, v10, v8, v7, v15}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    if-eqz v1, :cond_20

    .line 585
    .line 586
    invoke-virtual {v1, v15, v15}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 587
    .line 588
    .line 589
    move-result-object v10

    .line 590
    goto :goto_7

    .line 591
    :cond_20
    move-object v10, v3

    .line 592
    :goto_7
    if-eqz v10, :cond_23

    .line 593
    .line 594
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 598
    .line 599
    .line 600
    move-result-object v10

    .line 601
    if-eqz v10, :cond_23

    .line 602
    .line 603
    iget-object v10, v10, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 604
    .line 605
    if-nez v10, :cond_21

    .line 606
    .line 607
    goto :goto_8

    .line 608
    :cond_21
    invoke-virtual {v10, v15, v15}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 609
    .line 610
    .line 611
    move-result-object v10

    .line 612
    if-nez v10, :cond_22

    .line 613
    .line 614
    goto :goto_8

    .line 615
    :cond_22
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    :cond_23
    :goto_8
    if-eqz v1, :cond_28

    .line 619
    .line 620
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 621
    .line 622
    .line 623
    move-result v10

    .line 624
    if-nez v10, :cond_28

    .line 625
    .line 626
    if-eqz v12, :cond_24

    .line 627
    .line 628
    invoke-static {v9}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z

    .line 629
    .line 630
    .line 631
    move-result v10

    .line 632
    if-nez v10, :cond_24

    .line 633
    .line 634
    goto :goto_a

    .line 635
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 636
    .line 637
    .line 638
    move-result v10

    .line 639
    if-eqz v10, :cond_26

    .line 640
    .line 641
    invoke-virtual {v1, v15, v15}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 642
    .line 643
    .line 644
    move-result-object v10

    .line 645
    if-eqz v10, :cond_25

    .line 646
    .line 647
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->hasWallpaper()Z

    .line 648
    .line 649
    .line 650
    move-result v10

    .line 651
    if-eqz v10, :cond_25

    .line 652
    .line 653
    move v10, v15

    .line 654
    goto :goto_9

    .line 655
    :cond_25
    move v10, v7

    .line 656
    :goto_9
    iput-boolean v10, v0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    .line 657
    .line 658
    move-object/from16 v17, v1

    .line 659
    .line 660
    move-object v1, v8

    .line 661
    move v11, v15

    .line 662
    goto :goto_b

    .line 663
    :cond_26
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 664
    .line 665
    .line 666
    move-result-object v10

    .line 667
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 668
    .line 669
    .line 670
    move-result-object v10

    .line 671
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 672
    .line 673
    .line 674
    move-result-object v12

    .line 675
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 676
    .line 677
    .line 678
    move-result-object v12

    .line 679
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 680
    .line 681
    .line 682
    move-result v14

    .line 683
    if-eqz v14, :cond_27

    .line 684
    .line 685
    if-ne v10, v12, :cond_28

    .line 686
    .line 687
    :cond_27
    invoke-static {v2, v9}, Lcom/android/server/wm/BackNavigationController;->hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    .line 688
    .line 689
    .line 690
    move-result v10

    .line 691
    if-eqz v10, :cond_29

    .line 692
    .line 693
    :cond_28
    :goto_a
    move-object/from16 v17, v1

    .line 694
    .line 695
    move-object v1, v3

    .line 696
    goto :goto_b

    .line 697
    :cond_29
    move-object/from16 v17, v1

    .line 698
    .line 699
    move v11, v6

    .line 700
    :goto_b
    invoke-virtual {v4, v11}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    .line 701
    .line 702
    .line 703
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 704
    .line 705
    aget-boolean v12, v10, v7

    .line 706
    .line 707
    if-eqz v12, :cond_2c

    .line 708
    .line 709
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 710
    .line 711
    .line 712
    move-result v12

    .line 713
    if-lez v12, :cond_2a

    .line 714
    .line 715
    const-string v12, ";"

    .line 716
    .line 717
    invoke-virtual {v9}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 718
    .line 719
    .line 720
    move-result-object v14

    .line 721
    new-instance v7, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;

    .line 722
    .line 723
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 724
    .line 725
    .line 726
    invoke-interface {v14, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 727
    .line 728
    .line 729
    move-result-object v7

    .line 730
    invoke-interface {v7}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v7

    .line 734
    invoke-static {v12, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v7

    .line 738
    goto :goto_c

    .line 739
    :cond_2a
    move-object v7, v3

    .line 740
    :goto_c
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v7

    .line 744
    if-eqz v17, :cond_2b

    .line 745
    .line 746
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v12

    .line 750
    goto :goto_d

    .line 751
    :cond_2b
    move-object v12, v3

    .line 752
    :goto_d
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v12

    .line 756
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v14

    .line 760
    invoke-static {v11}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v16

    .line 764
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    sget-object v22, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 769
    .line 770
    const-string v26, "Previous Destination is Activity:%s Task:%s removedContainer:%s, backType=%s"

    .line 771
    .line 772
    filled-new-array {v7, v12, v14, v3}, [Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v27

    .line 776
    const-wide v23, 0x755cb5c5d22e3a9dL    # 2.1554118172289596E257

    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    const/16 v25, 0x0

    .line 782
    .line 783
    invoke-static/range {v22 .. v27}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 784
    .line 785
    .line 786
    :cond_2c
    if-eq v11, v15, :cond_2d

    .line 787
    .line 788
    if-eq v11, v6, :cond_2d

    .line 789
    .line 790
    if-eq v11, v13, :cond_2d

    .line 791
    .line 792
    if-nez v11, :cond_2e

    .line 793
    .line 794
    :cond_2d
    if-eqz p2, :cond_2e

    .line 795
    .line 796
    move v3, v15

    .line 797
    goto :goto_e

    .line 798
    :cond_2e
    const/4 v3, 0x0

    .line 799
    :goto_e
    if-eqz v3, :cond_33

    .line 800
    .line 801
    iget-object v12, v0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 802
    .line 803
    iget-object v7, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 804
    .line 805
    move v13, v11

    .line 806
    move-object/from16 v14, p2

    .line 807
    .line 808
    move v6, v15

    .line 809
    move-object v15, v7

    .line 810
    move-object/from16 v16, v8

    .line 811
    .line 812
    move-object/from16 v18, v2

    .line 813
    .line 814
    move-object/from16 v19, v9

    .line 815
    .line 816
    move-object/from16 v20, v1

    .line 817
    .line 818
    invoke-virtual/range {v12 .. v20}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->prepareAnimation(ILandroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 819
    .line 820
    .line 821
    move-result-object v2

    .line 822
    if-eqz v2, :cond_2f

    .line 823
    .line 824
    move v7, v6

    .line 825
    goto :goto_f

    .line 826
    :cond_2f
    const/4 v7, 0x0

    .line 827
    :goto_f
    iput-boolean v7, v0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    .line 828
    .line 829
    if-eqz v7, :cond_33

    .line 830
    .line 831
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->hasCommittedReparentToAnimationLeash()Z

    .line 832
    .line 833
    .line 834
    move-result v7

    .line 835
    if-nez v7, :cond_30

    .line 836
    .line 837
    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 838
    .line 839
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 840
    .line 841
    .line 842
    move-result v7

    .line 843
    if-nez v7, :cond_30

    .line 844
    .line 845
    iget-object v7, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 846
    .line 847
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 848
    .line 849
    iget-object v7, v7, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    .line 850
    .line 851
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 852
    .line 853
    .line 854
    move-result v7

    .line 855
    xor-int/2addr v7, v6

    .line 856
    if-eqz v7, :cond_31

    .line 857
    .line 858
    :cond_30
    const/4 v7, 0x3

    .line 859
    goto :goto_10

    .line 860
    :cond_31
    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackNavigationController;->scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    .line 861
    .line 862
    .line 863
    goto :goto_12

    .line 864
    :goto_10
    aget-boolean v7, v10, v7

    .line 865
    .line 866
    if-eqz v7, :cond_32

    .line 867
    .line 868
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 869
    .line 870
    const-string v16, "Pending back animation due to another animation is running"

    .line 871
    .line 872
    const/4 v15, 0x0

    .line 873
    const/16 v17, 0x0

    .line 874
    .line 875
    const-wide v13, 0x4403bbab80973f99L    # 4.550139763671087E19

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 881
    .line 882
    .line 883
    :cond_32
    iput-object v2, v0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 884
    .line 885
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 886
    .line 887
    .line 888
    move-result v2

    .line 889
    sub-int/2addr v2, v6

    .line 890
    :goto_11
    if-ltz v2, :cond_33

    .line 891
    .line 892
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v7

    .line 896
    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 897
    .line 898
    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 899
    .line 900
    .line 901
    add-int/lit8 v2, v2, -0x1

    .line 902
    .line 903
    goto :goto_11

    .line 904
    :cond_33
    :goto_12
    invoke-virtual {v4, v3}, Landroid/window/BackNavigationInfo$Builder;->setPrepareRemoteAnimation(Z)Landroid/window/BackNavigationInfo$Builder;

    .line 905
    .line 906
    .line 907
    if-eqz v1, :cond_34

    .line 908
    .line 909
    new-instance v1, Landroid/os/RemoteCallback;

    .line 910
    .line 911
    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda8;

    .line 912
    .line 913
    invoke-direct {v2, v0, v11}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/BackNavigationController;I)V

    .line 914
    .line 915
    .line 916
    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v4, v1}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    .line 920
    .line 921
    .line 922
    goto :goto_13

    .line 923
    :cond_34
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 924
    .line 925
    const/4 v2, 0x0

    .line 926
    iput-object v2, v1, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    .line 927
    .line 928
    :goto_13
    iput v11, v0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    .line 929
    .line 930
    invoke-virtual {v4}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    .line 931
    .line 932
    .line 933
    move-result-object v0

    .line 934
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 935
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 936
    .line 937
    .line 938
    return-object v0

    .line 939
    :cond_35
    :goto_14
    :try_start_7
    invoke-virtual {v4, v11}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    .line 940
    .line 941
    .line 942
    new-instance v1, Landroid/os/RemoteCallback;

    .line 943
    .line 944
    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda5;

    .line 945
    .line 946
    invoke-direct {v2, v0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    .line 947
    .line 948
    .line 949
    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v4, v1}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    .line 953
    .line 954
    .line 955
    iput v11, v0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    .line 956
    .line 957
    invoke-virtual {v4}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 962
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 963
    .line 964
    .line 965
    return-object v0

    .line 966
    :goto_15
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 967
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 968
    .line 969
    .line 970
    throw v0
.end method
