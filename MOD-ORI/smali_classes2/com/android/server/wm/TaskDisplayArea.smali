.class public final Lcom/android/server/wm/TaskDisplayArea;
.super Lcom/android/server/wm/DisplayArea;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBackgroundColor:I

.field public final mCanHostHomeTask:Z

.field public mChangeLeashAnchor:Landroid/view/SurfaceControl;

.field public mColorLayerCounter:I

.field public final mCreatedByOrganizer:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFloatingLeashAnchor:Landroid/view/SurfaceControl;

.field public final mFreeformTaskPinningController:Lcom/android/server/wm/FreeformTaskPinningController;

.field public mLastFocusedRootTask:Lcom/android/server/wm/Task;

.field public mLastLeafTaskToFrontId:I

.field mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

.field public final mLaunchRootTasks:Ljava/util/ArrayList;

.field mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

.field public mRemoved:Z

.field public mRootCellStageTask:Lcom/android/server/wm/Task;

.field public mRootHomeTask:Lcom/android/server/wm/Task;

.field public mRootMainStageTask:Lcom/android/server/wm/Task;

.field public mRootPinnedTask:Lcom/android/server/wm/Task;

.field public mRootSideStageTask:Lcom/android/server/wm/Task;

.field public final mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public final mTempConfiguration:Landroid/content/res/Configuration;

.field public final mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

.field public final mTmpFreeformChildren:Ljava/util/ArrayList;

.field public final mTmpFreeformPinnedChildren:Ljava/util/ArrayList;

.field public final mTmpHomeChildren:Ljava/util/ArrayList;

.field public final mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

.field public final mTmpNormalChildren:Ljava/util/ArrayList;

.field public final mTmpTasks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    iput p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mBackgroundColor:I

    .line 8
    .line 9
    iput p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    .line 10
    .line 11
    new-instance p3, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance p3, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance p3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance p3, Landroid/util/IntArray;

    .line 33
    .line 34
    invoke-direct {p3}, Landroid/util/IntArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    .line 38
    .line 39
    new-instance p3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance p3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance p3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformPinnedChildren:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance p3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance p3, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 73
    .line 74
    new-instance p3, Landroid/content/res/Configuration;

    .line 75
    .line 76
    invoke-direct {p3}, Landroid/content/res/Configuration;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 82
    .line 83
    iget-object p1, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 86
    .line 87
    iget-object p1, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 90
    .line 91
    iput-boolean p5, p0, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mCanHostHomeTask:Z

    .line 95
    .line 96
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    .line 97
    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    new-instance p1, Lcom/android/server/wm/FreeformTaskPinningController;

    .line 101
    .line 102
    invoke-direct {p1, p0}, Lcom/android/server/wm/FreeformTaskPinningController;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    const/4 p1, 0x0

    .line 107
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformTaskPinningController:Lcom/android/server/wm/FreeformTaskPinningController;

    .line 108
    .line 109
    return-void
.end method

.method public static getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    add-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge p0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/server/wm/Task;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    return-object p0
.end method

.method public static isWindowingModeSupported(IZZZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    const/4 p1, 0x6

    .line 12
    if-ne p0, p1, :cond_2

    .line 13
    .line 14
    return v0

    .line 15
    :cond_2
    if-nez p2, :cond_3

    .line 16
    .line 17
    const/4 p1, 0x5

    .line 18
    if-ne p0, p1, :cond_3

    .line 19
    .line 20
    return v1

    .line 21
    :cond_3
    if-nez p3, :cond_4

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    if-ne p0, p1, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    :goto_0
    return v0
.end method

.method public static moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-gt v1, p1, :cond_2

    .line 32
    .line 33
    add-int/lit8 p1, p1, -0x1

    .line 34
    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForRootTask(ILcom/android/server/wm/Task;Z)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-gez p2, :cond_1

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 52
    .line 53
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 54
    .line 55
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 56
    .line 57
    const-string v0, "addChildTask"

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v0, "TaskDisplayArea can only add Task and TaskDisplayArea, but found "

    .line 76
    .line 77
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, " rootTask="

    .line 6
    .line 7
    const-string v2, " already exist on display="

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "addRootTaskReferenceIfNeeded: root home task="

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 57
    .line 58
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v3, 0x2

    .line 70
    if-ne v0, v3, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 73
    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v4, "addRootTaskReferenceIfNeeded: root pinned task="

    .line 84
    .line 85
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_5
    const/4 v1, 0x6

    .line 114
    if-ne v0, v1, :cond_b

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_b

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    const/4 v1, 0x1

    .line 131
    if-ne v0, v1, :cond_7

    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 134
    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->handleExceptionForRootStageTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_7
    if-ne v0, v3, :cond_9

    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 146
    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->handleExceptionForRootStageTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 150
    .line 151
    .line 152
    :cond_8
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_9
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 156
    .line 157
    if-eqz v1, :cond_b

    .line 158
    .line 159
    const/4 v1, 0x4

    .line 160
    if-ne v0, v1, :cond_b

    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    .line 163
    .line 164
    if-eqz v0, :cond_a

    .line 165
    .line 166
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->handleExceptionForRootStageTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 167
    .line 168
    .line 169
    :cond_a
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    .line 170
    .line 171
    :cond_b
    :goto_1
    return-void
.end method

.method public final adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_5

    .line 13
    .line 14
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x1

    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-boolean v5, v5, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    move v5, v6

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v5, v1

    .line 48
    :goto_1
    if-eqz v4, :cond_1

    .line 49
    .line 50
    new-array v5, v6, [Z

    .line 51
    .line 52
    new-instance v6, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v7, 0x1

    .line 55
    invoke-direct {v6, v7, v5}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 59
    .line 60
    .line 61
    aget-boolean v6, v5, v1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move v6, v1

    .line 74
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    .line 77
    .line 78
    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    add-int/lit8 v4, p3, 0x1

    .line 83
    .line 84
    invoke-virtual {v3, p1, p3}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 85
    .line 86
    .line 87
    move p3, v4

    .line 88
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    :goto_4
    if-ge v1, v0, :cond_6

    .line 98
    .line 99
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    .line 100
    .line 101
    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 110
    .line 111
    add-int/lit8 v3, p3, 0x1

    .line 112
    .line 113
    invoke-virtual {v2, p1, p3}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    move p3, v3

    .line 119
    goto :goto_4

    .line 120
    :cond_6
    return p3
.end method

.method public final allResumedActivitiesComplete()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

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
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    return v4

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    return v4

    .line 64
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    .line 72
    .line 73
    return v1
.end method

.method public final asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformPinnedChildren:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    .line 38
    .line 39
    :cond_1
    move v0, v1

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ge v0, v2, :cond_c

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_6

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_4

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    .line 123
    .line 124
    if-eqz v3, :cond_7

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_7

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_7

    .line 137
    .line 138
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformPinnedChildren:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_7
    iget-boolean v3, v2, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    .line 145
    .line 146
    if-eqz v3, :cond_8

    .line 147
    .line 148
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_8
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_a

    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_9

    .line 165
    .line 166
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_b

    .line 183
    .line 184
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 212
    .line 213
    if-eqz v2, :cond_d

    .line 214
    .line 215
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeLeashAnchor:Landroid/view/SurfaceControl;

    .line 216
    .line 217
    if-eqz v2, :cond_d

    .line 218
    .line 219
    add-int/lit8 v3, v0, 0x1

    .line 220
    .line 221
    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 222
    .line 223
    .line 224
    move v0, v3

    .line 225
    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    .line 232
    .line 233
    if-eqz v2, :cond_e

    .line 234
    .line 235
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformPinnedChildren:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    :cond_e
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 242
    .line 243
    if-eqz v2, :cond_f

    .line 244
    .line 245
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mFloatingLeashAnchor:Landroid/view/SurfaceControl;

    .line 246
    .line 247
    if-eqz v2, :cond_f

    .line 248
    .line 249
    add-int/lit8 v3, v0, 0x1

    .line 250
    .line 251
    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 252
    .line 253
    .line 254
    move v0, v3

    .line 255
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    .line 258
    .line 259
    .line 260
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-ge v1, v0, :cond_10

    .line 267
    .line 268
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 275
    .line 276
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 277
    .line 278
    .line 279
    add-int/lit8 v1, v1, 0x1

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_10
    return-void
.end method

.method public final canCreateRemoteAnimationTarget()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/server/wm/WindowManagerService;->sEnableShellTransitions:Z

    .line 2
    .line 3
    return p0
.end method

.method public final canHostHomeTask()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isHomeSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mCanHostHomeTask:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const-string v0, "TaskDisplayArea "

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "  "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-super {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    const-string/jumbo v2, "mPreferredTopFocusableRootTask="

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    const-string v2, "mLastFocusedRootTask="

    .line 69
    .line 70
    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-lez v3, :cond_2

    .line 97
    .line 98
    const-string/jumbo v3, "mLaunchRootTasks:"

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    add-int/lit8 v3, v3, -0x1

    .line 111
    .line 112
    :goto_0
    if-ltz v3, :cond_2

    .line 113
    .line 114
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    .line 121
    .line 122
    invoke-static {v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    iget-object v6, v4, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->activityTypes:[I

    .line 127
    .line 128
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v6, " "

    .line 136
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v6, v4, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->windowingModes:[I

    .line 141
    .line 142
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v6, "  task="

    .line 150
    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v4, v4, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    .line 155
    .line 156
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    add-int/lit8 v3, v3, -0x1

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v4, "Application tokens in top down Z order:"

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    add-int/lit8 v3, v3, -0x1

    .line 194
    .line 195
    :goto_1
    if-ltz v3, :cond_4

    .line 196
    .line 197
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    if-eqz v5, :cond_3

    .line 206
    .line 207
    invoke-virtual {v4, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    const-string v5, "* "

    .line 216
    .line 217
    invoke-static {v0, v5}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->toFullString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, p1, v2, p3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 236
    .line 237
    .line 238
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_4
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    .line 242
    .line 243
    if-eqz p3, :cond_6

    .line 244
    .line 245
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformTaskPinningController:Lcom/android/server/wm/FreeformTaskPinningController;

    .line 246
    .line 247
    iget-object p3, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    .line 248
    .line 249
    if-nez p3, :cond_5

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_5
    invoke-static {p2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string p2, "FreeformTaskPinningController :"

    .line 265
    .line 266
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string/jumbo p3, "mPinnedTask :"

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    .line 291
    .line 292
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_6
    :goto_3
    return-void
.end method

.method public final ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance p1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final findPositionForRootTask(ILcom/android/server/wm/Task;Z)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

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
    const/4 v2, 0x0

    .line 10
    if-ltz v0, :cond_2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 19
    .line 20
    if-ne v3, p2, :cond_0

    .line 21
    .line 22
    move v4, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v4, v2

    .line 25
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-gt v5, v6, :cond_1

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_ORDERING:Z

    .line 38
    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-lez v3, :cond_3

    .line 80
    .line 81
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move v0, v2

    .line 85
    :cond_3
    const/high16 v1, -0x80000000

    .line 86
    .line 87
    move v4, v1

    .line 88
    move v3, v2

    .line 89
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-ge v3, v5, :cond_4

    .line 96
    .line 97
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 98
    .line 99
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 104
    .line 105
    invoke-virtual {p0, v5}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-ge v5, v6, :cond_4

    .line 114
    .line 115
    add-int/lit8 v4, v3, 0x1

    .line 116
    .line 117
    move v7, v4

    .line 118
    move v4, v3

    .line 119
    move v3, v7

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 128
    .line 129
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-le v3, v4, :cond_5

    .line 134
    .line 135
    move v4, v3

    .line 136
    :cond_5
    const v3, 0x7fffffff

    .line 137
    .line 138
    .line 139
    if-ne p1, v3, :cond_6

    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    goto :goto_3

    .line 148
    :cond_6
    if-ne p1, v1, :cond_7

    .line 149
    .line 150
    move p1, v2

    .line 151
    :cond_7
    :goto_3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 160
    .line 161
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-eq v0, p1, :cond_9

    .line 166
    .line 167
    if-nez p3, :cond_8

    .line 168
    .line 169
    if-ge v0, p0, :cond_9

    .line 170
    .line 171
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 172
    .line 173
    :cond_9
    return v0
.end method

.method public final forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    .line 5
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    :goto_0
    return-void
.end method

.method public final forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 3
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0
.end method

.method public final getFocusedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 16
    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    :cond_2
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_3
    return-object v0
.end method

.method public final getFocusedRootTask()Lcom/android/server/wm/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    :goto_0
    if-ltz v0, :cond_3

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method

.method public final getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    return-object p2

    .line 15
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_1
    return-object v0
.end method

.method public final getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-static {p3}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p3, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object p3

    .line 18
    :cond_0
    and-int/lit16 p3, p5, 0x1000

    .line 19
    .line 20
    const/4 p5, 0x1

    .line 21
    if-eqz p3, :cond_9

    .line 22
    .line 23
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 24
    .line 25
    if-eqz p3, :cond_9

    .line 26
    .line 27
    const-string p3, "getLaunchRootTask: Skip adjacent flag, "

    .line 28
    .line 29
    const-string v0, "WindowManager"

    .line 30
    .line 31
    if-eqz p4, :cond_1

    .line 32
    .line 33
    if-ne p4, p6, :cond_1

    .line 34
    .line 35
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-ne v1, p4, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    :cond_1
    if-eqz p4, :cond_3

    .line 56
    .line 57
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    :goto_0
    if-eqz p4, :cond_4

    .line 87
    .line 88
    if-ne p4, p6, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    if-eqz p4, :cond_7

    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getAdjacentTask()Lcom/android/server/wm/Task;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_7

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 102
    .line 103
    if-eq p4, v1, :cond_5

    .line 104
    .line 105
    invoke-virtual {p4, v1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    :cond_5
    const/4 p1, 0x0

    .line 112
    invoke-virtual {p4, p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    if-eqz p2, :cond_6

    .line 117
    .line 118
    invoke-virtual {p4, p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getAdjacentTask()Lcom/android/server/wm/Task;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    :cond_7
    if-eqz p4, :cond_8

    .line 151
    .line 152
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_8

    .line 157
    .line 158
    invoke-virtual {p4, p5}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_8

    .line 163
    .line 164
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_8

    .line 171
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 189
    .line 190
    return-object p0

    .line 191
    :cond_9
    :goto_1
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    sub-int/2addr p3, p5

    .line 198
    :goto_2
    const/4 v0, 0x0

    .line 199
    if-ltz p3, :cond_e

    .line 200
    .line 201
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    check-cast v1, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    .line 208
    .line 209
    iget-object v2, v1, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->windowingModes:[I

    .line 210
    .line 211
    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_d

    .line 216
    .line 217
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->activityTypes:[I

    .line 218
    .line 219
    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_d

    .line 224
    .line 225
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    check-cast p0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    .line 232
    .line 233
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    .line 234
    .line 235
    if-eqz p0, :cond_a

    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getAdjacentTask()Lcom/android/server/wm/Task;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :cond_a
    if-eqz p4, :cond_c

    .line 242
    .line 243
    if-eqz v0, :cond_c

    .line 244
    .line 245
    if-eq p4, v0, :cond_b

    .line 246
    .line 247
    invoke-virtual {p4, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-eqz p1, :cond_c

    .line 252
    .line 253
    :cond_b
    return-object v0

    .line 254
    :cond_c
    return-object p0

    .line 255
    :cond_d
    add-int/lit8 p3, p3, -0x1

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_e
    if-eqz p4, :cond_16

    .line 259
    .line 260
    if-eqz p6, :cond_f

    .line 261
    .line 262
    invoke-virtual {p6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    const/4 p1, 0x2

    .line 267
    if-eq p0, p1, :cond_16

    .line 268
    .line 269
    :cond_f
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    if-eqz p0, :cond_13

    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-eqz p1, :cond_13

    .line 280
    .line 281
    if-eqz p6, :cond_11

    .line 282
    .line 283
    invoke-virtual {p6}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-eqz p1, :cond_11

    .line 288
    .line 289
    invoke-virtual {p6}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_10

    .line 294
    .line 295
    return-object v0

    .line 296
    :cond_10
    invoke-virtual {p6}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    if-eqz p1, :cond_12

    .line 301
    .line 302
    return-object p1

    .line 303
    :cond_11
    invoke-virtual {p0, p5, p5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    if-nez p1, :cond_12

    .line 308
    .line 309
    return-object v0

    .line 310
    :cond_12
    return-object p0

    .line 311
    :cond_13
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getAdjacentTask()Lcom/android/server/wm/Task;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    if-eqz p0, :cond_16

    .line 316
    .line 317
    if-eqz p6, :cond_15

    .line 318
    .line 319
    if-eq p6, p0, :cond_14

    .line 320
    .line 321
    invoke-virtual {p6, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-eqz p1, :cond_15

    .line 326
    .line 327
    :cond_14
    return-object p0

    .line 328
    :cond_15
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    return-object p0

    .line 333
    :cond_16
    return-object v0
.end method

.method public final getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

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
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    .line 20
    .line 21
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 22
    .line 23
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 24
    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    :goto_1
    return-object p0
.end method

.method public final getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    :goto_1
    if-ltz v1, :cond_6

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    if-ne v2, p1, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    const/4 v3, 0x5

    .line 75
    if-eq v0, v3, :cond_5

    .line 76
    .line 77
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    return-object v2

    .line 81
    :cond_6
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method

.method public getNextRootTaskId()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 6
    .line 7
    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->canHostHomeTask()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/Task$Builder;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, v0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    iput v1, v0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 23
    .line 24
    iput-object p0, v0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 25
    .line 26
    iput-boolean p1, v0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    iput-object p0, v0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_0
    return-object v0
.end method

.method public final getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;
    .locals 13

    move-object v8, p0

    move v0, p1

    move v3, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    invoke-static {v2, p2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_12

    return-object v1

    :cond_1
    if-eqz v10, :cond_12

    if-eqz v9, :cond_2

    const v1, 0x7fffffff

    :goto_1
    move v12, v1

    goto :goto_2

    :cond_2
    const/high16 v1, -0x80000000

    goto :goto_1

    :goto_2
    move-object v1, p0

    move v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    move/from16 v6, p7

    move-object/from16 v7, p4

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_3

    .line 6
    invoke-virtual {v1, v10, v12}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_4

    .line 7
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eq v3, v1, :cond_9

    .line 8
    invoke-virtual {v10, v1, v12}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_4

    .line 9
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-ne v1, v8, :cond_7

    .line 10
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    if-eqz v1, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-nez v1, :cond_9

    if-ne v0, v2, :cond_9

    .line 12
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 13
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    new-instance v1, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 15
    iget v3, v10, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSplitToFreeformTaskId(I)V

    .line 16
    iget-object v3, v8, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 17
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 18
    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    goto :goto_4

    .line 19
    :cond_6
    invoke-virtual {v10, p0, v9}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_4

    .line 20
    :cond_7
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_8

    .line 21
    invoke-virtual {p0, v10, v12}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_4

    .line 22
    :cond_8
    invoke-virtual {v10, p0, v9}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    :cond_9
    :goto_4
    const/4 v12, 0x0

    if-eqz v0, :cond_a

    .line 23
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 24
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-ne v1, v0, :cond_b

    .line 25
    :cond_a
    invoke-static {v11, v12, v10}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v1

    if-eqz v1, :cond_10

    .line 26
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    if-eq v3, v1, :cond_10

    .line 27
    :cond_b
    iget-object v1, v10, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 28
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_c

    if-ne v0, v2, :cond_c

    iget-object v1, v8, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 29
    iget-boolean v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    if-nez v5, :cond_c

    .line 30
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 31
    :try_start_0
    invoke-virtual {v10, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v1, v8, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 33
    iput-boolean v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 34
    iget-object v0, v8, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 35
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 36
    throw v1

    :cond_c
    if-eqz v11, :cond_d

    .line 37
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 38
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 39
    invoke-virtual {v10, p0, v9}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_5

    .line 40
    :cond_d
    invoke-virtual {v10, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    :goto_5
    if-ne v0, v2, :cond_10

    .line 41
    invoke-virtual {v10, v4, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 42
    iget-object v1, v10, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_e

    .line 43
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 44
    :cond_e
    invoke-virtual {v10, v4, v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 45
    iget-object v1, v8, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 46
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    if-eqz v4, :cond_f

    .line 47
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v3, v2

    goto :goto_6

    :cond_f
    move-object v3, v12

    :goto_6
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x0

    move-object/from16 v2, p4

    .line 48
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    .line 49
    :cond_10
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 50
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-eq v1, v0, :cond_11

    .line 51
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-nez v1, :cond_11

    .line 52
    invoke-virtual {v10, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 53
    iput-object v12, v10, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 54
    invoke-virtual {v10, v12}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 55
    :cond_11
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 56
    :cond_12
    new-instance v1, Lcom/android/server/wm/Task$Builder;

    iget-object v2, v8, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 57
    iput v0, v1, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 58
    iput v3, v1, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 59
    iput-boolean v9, v1, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    .line 60
    iput-object v8, v1, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    move-object/from16 v0, p5

    .line 61
    iput-object v0, v1, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    .line 62
    iput-object v11, v1, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    move/from16 v0, p7

    .line 63
    iput v0, v1, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    .line 64
    invoke-virtual {v1}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;
    .locals 8

    move-object v0, p1

    move-object v6, p2

    move-object v4, p3

    move-object v1, p5

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 65
    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    .line 66
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 67
    :goto_0
    invoke-static {p2, p1, p3}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v3

    :cond_2
    move-object v3, p0

    .line 68
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    move-object v0, p0

    move v2, p7

    move/from16 v3, p8

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    move v7, p6

    .line 69
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getOrientation(I)I
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    move v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    const/4 v3, -0x2

    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iput-object v4, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;

    .line 28
    .line 29
    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;-><init>(ILcom/android/server/wm/TaskDisplayArea;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_ORIENTATION_POLICY:Z

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isFlexPanelRunning()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 60
    .line 61
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-direct {v1, v5}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    const/4 p0, 0x6

    .line 80
    return p0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenVisible()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenStarting()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    move-object v4, p1

    .line 103
    check-cast v4, Lcom/android/server/wm/Task;

    .line 104
    .line 105
    :cond_4
    new-instance p1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda13;

    .line 106
    .line 107
    invoke-direct {p1, v4}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/Task;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-ne p1, v4, :cond_5

    .line 115
    .line 116
    const/4 p0, -0x1

    .line 117
    return p0

    .line 118
    :cond_5
    :goto_1
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 119
    .line 120
    if-eq v0, v3, :cond_7

    .line 121
    .line 122
    const/4 v1, 0x3

    .line 123
    if-eq v0, v1, :cond_7

    .line 124
    .line 125
    aget-boolean p1, p1, v2

    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    int-to-long v1, v0

    .line 130
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 131
    .line 132
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 133
    .line 134
    int-to-long p0, p0

    .line 135
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 136
    .line 137
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    const/4 v6, 0x5

    .line 150
    const/4 v7, 0x0

    .line 151
    const-wide v4, 0x6664c35f03a13aa3L    # 1.764497227017777E185

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    return v0

    .line 160
    :cond_7
    aget-boolean p1, p1, v2

    .line 161
    .line 162
    if-eqz p1, :cond_8

    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 165
    .line 166
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 167
    .line 168
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 169
    .line 170
    int-to-long v0, v0

    .line 171
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 172
    .line 173
    int-to-long v2, p1

    .line 174
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 175
    .line 176
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    const/4 v7, 0x5

    .line 189
    const/4 v8, 0x0

    .line 190
    const-wide v5, 0x1bd4f736b03b3395L    # 1.324498405266978E-174

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 199
    .line 200
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 201
    .line 202
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 203
    .line 204
    return p0
.end method

.method public final getPriority(Lcom/android/server/wm/WindowContainer;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x2

    .line 25
    const/4 v4, 0x3

    .line 26
    const/4 v5, 0x4

    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 30
    .line 31
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    move v1, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    move v1, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    move v1, v3

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_5

    .line 78
    .line 79
    move v1, v2

    .line 80
    :cond_5
    :goto_0
    return v1

    .line 81
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 82
    .line 83
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    .line 84
    .line 85
    if-eqz p0, :cond_7

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_7

    .line 92
    .line 93
    return v5

    .line 94
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_8

    .line 99
    .line 100
    return v4

    .line 101
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_9

    .line 106
    .line 107
    return v3

    .line 108
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_a

    .line 113
    .line 114
    return v2

    .line 115
    :cond_a
    return v1
.end method

.method public final getRootTask(II)Lcom/android/server/wm/Task;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getTopRootStageTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/wm/Task;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    :goto_0
    if-eqz p0, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/server/wm/Task;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_2
    :goto_1
    return-object v0
.end method

.method public getTopRootTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final handleExceptionForRootStageTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 13
    .line 14
    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizerState(Landroid/os/IBinder;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    .line 25
    .line 26
    .line 27
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "addRootTaskReferenceIfNeeded: root stage task="

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " already exist on display="

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, " rootTask="

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p1, "TaskDisplayArea"

    .line 58
    .line 59
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final hasChildTaskInSideStage()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final hasPinnedTask()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-eqz p0, :cond_0

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

.method public final isMultiSplitActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isOnTop()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isSplitScreenModeActivated()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-nez v2, :cond_4

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-nez p0, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-ne v0, p0, :cond_3

    .line 39
    .line 40
    move v1, v3

    .line 41
    :cond_3
    return v1

    .line 42
    :cond_4
    :goto_0
    return v3

    .line 43
    :cond_5
    :goto_1
    return v1
.end method

.method public final isSplitScreenStarting()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_2

    .line 32
    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method

.method public final isSplitScreenVisible()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method

.method public final isTaskDisplayArea()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isUnderHomeTask(Lcom/android/server/wm/Task;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-le v0, p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_6

    .line 12
    .line 13
    if-eqz p3, :cond_3

    .line 14
    .line 15
    iget-object v1, p3, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p3, p0, v4}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v4

    .line 30
    :goto_0
    invoke-virtual {p3, p0, v4}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    const/4 p0, 0x2

    .line 37
    if-ne p1, p0, :cond_1

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v1, v4

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    :goto_1
    move v1, v3

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    if-eqz p2, :cond_4

    .line 47
    .line 48
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :cond_4
    :goto_2
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    .line 61
    .line 62
    if-eqz p0, :cond_6

    .line 63
    .line 64
    const/4 p0, 0x5

    .line 65
    if-ne p1, p0, :cond_6

    .line 66
    .line 67
    if-nez v2, :cond_6

    .line 68
    .line 69
    sget-object p0, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 70
    .line 71
    if-eqz p3, :cond_5

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    iget-object p3, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 75
    .line 76
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {p3, v4}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-eqz p0, :cond_6

    .line 84
    .line 85
    move v1, v3

    .line 86
    move v2, v1

    .line 87
    :cond_6
    if-eqz p1, :cond_7

    .line 88
    .line 89
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZ)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_7

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_7
    move v3, v4

    .line 97
    :goto_4
    return v3
.end method

.method public final migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBackgroundColor:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->setBackgroundColor(IZ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeLeashAnchor:Landroid/view/SurfaceControl;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 23
    .line 24
    .line 25
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFloatingLeashAnchor:Landroid/view/SurfaceControl;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final moveHomeRootTaskToFront(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    :goto_0
    move v4, v3

    .line 41
    :goto_1
    if-ge v4, v2, :cond_7

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v6, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;

    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    invoke-direct {v6, v7}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/DisplayArea;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    :goto_2
    if-eq v5, p1, :cond_6

    .line 95
    .line 96
    if-nez v5, :cond_4

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    const/4 v7, 0x1

    .line 104
    if-ne v6, v7, :cond_5

    .line 105
    .line 106
    move v6, v7

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    move v6, v3

    .line 109
    :goto_3
    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_6

    .line 114
    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    sub-int/2addr v4, v7

    .line 118
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p0, p1, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_7
    :goto_5
    return-void
.end method

.method public final onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$1;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onLeafTaskMoved(Lcom/android/server/wm/Task;ZZ)V
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p3, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 12
    .line 13
    const/16 v2, 0x1b

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p3, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-virtual {p3, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 25
    .line 26
    .line 27
    :cond_0
    if-nez p2, :cond_2

    .line 28
    .line 29
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 30
    .line 31
    iget p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    .line 32
    .line 33
    if-ne p1, p2, :cond_1

    .line 34
    .line 35
    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    :cond_2
    iget p2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 59
    .line 60
    iget p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    .line 61
    .line 62
    if-eq p2, p3, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-nez p2, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget p2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 72
    .line 73
    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    .line 74
    .line 75
    iget p3, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 78
    .line 79
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 80
    .line 81
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    filled-new-array {p3, p2, v0}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    const/16 p3, 0x7532

    .line 98
    .line 99
    invoke-static {p3, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_0
    return-void
.end method

.method public final onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 17
    .line 18
    .line 19
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeLeashAnchor:Landroid/view/SurfaceControl;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeLeashAnchor:Landroid/view/SurfaceControl;

    .line 44
    .line 45
    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFloatingLeashAnchor:Landroid/view/SurfaceControl;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mFloatingLeashAnchor:Landroid/view/SurfaceControl;

    .line 69
    .line 70
    :cond_2
    :goto_0
    return-void
.end method

.method public final onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

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
    if-ltz v0, :cond_5

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/RecentsAnimation;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aget-boolean v3, v3, v4

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 34
    .line 35
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    const-wide v5, 0x3eaa3bbe471f3f26L    # 7.818154144026887E-7

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    new-instance v3, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda4;

    .line 50
    .line 51
    invoke-direct {v3, p1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/Task;)V

    .line 52
    .line 53
    .line 54
    iget-object v4, v2, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 55
    .line 56
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v2, v2, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 71
    .line 72
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 73
    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    :cond_3
    iget-boolean v4, v3, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    .line 98
    .line 99
    if-eqz v4, :cond_4

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    .line 102
    .line 103
    .line 104
    iput-boolean v1, v3, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    .line 105
    .line 106
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    return-void
.end method

.method public final onStageSplitScreenDismissed(Lcom/android/server/wm/Task;Z)V
    .locals 11

    .line 1
    const-string/jumbo v0, "onStageSplitScreenDismissed"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [Lcom/android/server/wm/Task;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :try_start_0
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 15
    .line 16
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    new-instance v6, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;

    .line 25
    .line 26
    invoke-direct {v6, p0, v2, p1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/TaskDisplayArea;[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 30
    .line 31
    .line 32
    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    sub-int/2addr v6, v1

    .line 39
    :goto_0
    if-ltz v6, :cond_1

    .line 40
    .line 41
    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lcom/android/server/wm/Task;

    .line 48
    .line 49
    move v8, v4

    .line 50
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-ge v8, v9, :cond_0

    .line 55
    .line 56
    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    new-instance v10, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda10;

    .line 61
    .line 62
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 66
    .line 67
    .line 68
    iget-object v9, v9, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 69
    .line 70
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-virtual {v5, v9, v3, p2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v9, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 78
    .line 79
    .line 80
    add-int/lit8 v8, v8, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p2

    .line 84
    goto :goto_5

    .line 85
    :cond_0
    add-int/lit8 v6, v6, -0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 89
    .line 90
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 91
    .line 92
    invoke-virtual {p2, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    move-object p2, p1

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-ne v1, v5, :cond_4

    .line 116
    .line 117
    :cond_3
    if-eqz p1, :cond_5

    .line 118
    .line 119
    :cond_4
    aget-object p1, v2, v4

    .line 120
    .line 121
    if-nez p1, :cond_5

    .line 122
    .line 123
    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v0, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :catchall_1
    move-exception p1

    .line 131
    goto :goto_4

    .line 132
    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :goto_5
    if-eqz p1, :cond_6

    .line 145
    .line 146
    move-object v1, p1

    .line 147
    goto :goto_6

    .line 148
    :cond_6
    :try_start_2
    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    :goto_6
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    if-eqz v5, :cond_9

    .line 157
    .line 158
    if-eqz v1, :cond_7

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    if-ne v5, v6, :cond_8

    .line 165
    .line 166
    :cond_7
    if-eqz p1, :cond_9

    .line 167
    .line 168
    :cond_8
    aget-object p1, v2, v4

    .line 169
    .line 170
    if-nez p1, :cond_9

    .line 171
    .line 172
    invoke-virtual {v5, v0, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 176
    .line 177
    .line 178
    goto :goto_7

    .line 179
    :catchall_2
    move-exception p1

    .line 180
    goto :goto_8

    .line 181
    :cond_9
    :goto_7
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 184
    .line 185
    .line 186
    throw p2

    .line 187
    :goto_8
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 190
    .line 191
    .line 192
    throw p1
.end method

.method public final positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 8
    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_13

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    sub-int/2addr v0, v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-lt p1, v0, :cond_1

    .line 30
    .line 31
    move v0, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_0
    if-gtz p1, :cond_2

    .line 35
    .line 36
    move v3, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v3, v2

    .line 39
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 40
    .line 41
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_4

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 58
    .line 59
    invoke-static {v5, v6}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_3

    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p3, "Ignoring move of always-on-top root task="

    .line 68
    .line 69
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p3, " to bottom"

    .line 76
    .line 77
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p3, "WindowManager"

    .line 85
    .line 86
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-super {p0, v4, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_3
    invoke-virtual {p2, v2}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 98
    .line 99
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 100
    .line 101
    invoke-virtual {v5}, Landroid/view/Display;->isTrusted()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_5

    .line 106
    .line 107
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 108
    .line 109
    iget-boolean v5, v5, Lcom/android/server/wm/DisplayContent;->mDontMoveToTop:Z

    .line 110
    .line 111
    if-eqz v5, :cond_6

    .line 112
    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_6

    .line 122
    .line 123
    move p3, v2

    .line 124
    :cond_6
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForRootTask(ILcom/android/server/wm/Task;Z)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-super {p0, v5, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 129
    .line 130
    .line 131
    const/high16 v6, -0x80000000

    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    if-eqz p3, :cond_b

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    if-eqz p3, :cond_b

    .line 141
    .line 142
    if-nez v0, :cond_7

    .line 143
    .line 144
    if-eqz v3, :cond_b

    .line 145
    .line 146
    :cond_7
    if-eqz v0, :cond_8

    .line 147
    .line 148
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    .line 149
    .line 150
    .line 151
    move-result p3

    .line 152
    if-eqz p3, :cond_8

    .line 153
    .line 154
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_8
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 158
    .line 159
    if-ne p3, p2, :cond_9

    .line 160
    .line 161
    iput-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 162
    .line 163
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    if-eqz v0, :cond_a

    .line 168
    .line 169
    const v8, 0x7fffffff

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_a
    move v8, v6

    .line 174
    :goto_3
    invoke-virtual {p3, v8, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 175
    .line 176
    .line 177
    :cond_b
    invoke-virtual {p2, v5, v0, v3}, Lcom/android/server/wm/Task;->updateTaskMovement(IZZ)V

    .line 178
    .line 179
    .line 180
    if-eqz v0, :cond_d

    .line 181
    .line 182
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 183
    .line 184
    if-eq p2, p3, :cond_d

    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    if-eqz p3, :cond_d

    .line 191
    .line 192
    invoke-virtual {p2, v7}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 193
    .line 194
    .line 195
    move-result p3

    .line 196
    if-eqz p3, :cond_c

    .line 197
    .line 198
    move-object v7, p2

    .line 199
    :cond_c
    iput-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_d
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 203
    .line 204
    if-ne p3, p2, :cond_e

    .line 205
    .line 206
    iput-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 207
    .line 208
    :cond_e
    :goto_4
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 209
    .line 210
    if-nez p3, :cond_f

    .line 211
    .line 212
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 213
    .line 214
    .line 215
    move-result p3

    .line 216
    if-eqz p3, :cond_f

    .line 217
    .line 218
    if-eqz v3, :cond_f

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz p3, :cond_f

    .line 229
    .line 230
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_f

    .line 235
    .line 236
    if-eqz v0, :cond_f

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    if-nez p3, :cond_f

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    .line 245
    .line 246
    .line 247
    move-result p3

    .line 248
    if-eqz p3, :cond_f

    .line 249
    .line 250
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 251
    .line 252
    :cond_f
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 253
    .line 254
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 255
    .line 256
    const-string/jumbo v0, "positionChildTaskAt"

    .line 257
    .line 258
    .line 259
    invoke-virtual {p3, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    if-nez p3, :cond_10

    .line 267
    .line 268
    if-ne p1, v6, :cond_10

    .line 269
    .line 270
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 271
    .line 272
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 273
    .line 274
    invoke-virtual {p3}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 275
    .line 276
    .line 277
    move-result-object p3

    .line 278
    if-eqz p1, :cond_10

    .line 279
    .line 280
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-eqz p1, :cond_10

    .line 285
    .line 286
    if-eqz p3, :cond_10

    .line 287
    .line 288
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 289
    .line 290
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 291
    .line 292
    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-nez p1, :cond_10

    .line 297
    .line 298
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 299
    .line 300
    const-string/jumbo v0, "positionChildAt(stageRoot)"

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, p3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_10
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_11

    .line 311
    .line 312
    invoke-virtual {p2, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    if-eqz p1, :cond_11

    .line 317
    .line 318
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 319
    .line 320
    if-eqz p3, :cond_11

    .line 321
    .line 322
    invoke-virtual {p3, p1}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    .line 323
    .line 324
    .line 325
    :cond_11
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 326
    .line 327
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    if-eq p1, v4, :cond_12

    .line 332
    .line 333
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    .line 334
    .line 335
    .line 336
    :cond_12
    :goto_5
    return-void

    .line 337
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 338
    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string p3, "TaskDisplayArea can only position Task and TaskDisplayArea, but found "

    .line 342
    .line 343
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw p0
.end method

.method public final positionTaskBehindHome(Lcom/android/server/wm/Task;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    move-object v3, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    if-nez v3, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne v1, p0, :cond_1

    .line 27
    .line 28
    const/high16 v1, -0x80000000

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-ne v3, p0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-nez p0, :cond_3

    .line 58
    .line 59
    move v0, v2

    .line 60
    :cond_3
    invoke-virtual {v3, p1, v0}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    const/4 v5, 0x2

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    const-string/jumbo v8, "positionTaskBehindHome"

    .line 69
    .line 70
    .line 71
    move-object v2, p1

    .line 72
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    return-void
.end method

.method public final reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p1, p0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-interface {p1, p0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final remove()Lcom/android/server/wm/Task;
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->shouldDestroyContentOnRemove()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v10, 0x0

    .line 25
    move v11, v3

    .line 26
    move v12, v10

    .line 27
    move-object v3, v0

    .line 28
    :goto_0
    const/4 v13, 0x1

    .line 29
    if-ge v12, v11, :cond_5

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 32
    .line 33
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    goto :goto_5

    .line 54
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 55
    .line 56
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    iget-boolean v4, v14, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 75
    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_1
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const/4 v9, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v8, 0x0

    .line 91
    move-object v3, v2

    .line 92
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-nez v3, :cond_2

    .line 97
    .line 98
    move-object v4, v2

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move-object v4, v3

    .line 101
    :goto_1
    const v5, 0x7fffffff

    .line 102
    .line 103
    .line 104
    invoke-virtual {v14, v4, v5}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 105
    .line 106
    .line 107
    if-nez v3, :cond_3

    .line 108
    .line 109
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-ne v3, v13, :cond_3

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eq v3, v13, :cond_3

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {v14, v10}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 123
    .line 124
    .line 125
    :goto_2
    move-object v3, v14

    .line 126
    goto :goto_4

    .line 127
    :cond_4
    :goto_3
    const-string/jumbo v4, "removeTaskDisplayArea"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v14, v4, v10}, Lcom/android/server/wm/TaskFragment;->remove(Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    :goto_4
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    sub-int/2addr v11, v4

    .line 140
    sub-int/2addr v12, v11

    .line 141
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    move v11, v4

    .line 148
    :goto_5
    add-int/2addr v12, v13

    .line 149
    goto :goto_0

    .line 150
    :cond_5
    if-eqz v3, :cond_6

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_6

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const-string v2, "display-removed"

    .line 163
    .line 164
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 165
    .line 166
    .line 167
    :cond_6
    iput-boolean v13, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    .line 168
    .line 169
    return-object v3
.end method

.method public final removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-ne v0, p1, :cond_1

    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 32
    .line 33
    if-ne v0, p1, :cond_2

    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 60
    .line 61
    iget-object v0, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    const/4 v2, -0x1

    .line 67
    invoke-virtual {v0, v2, v2, p1, v1}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(IILcom/android/server/wm/Task;Z)V

    .line 68
    .line 69
    .line 70
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    iput v2, p1, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    .line 81
    .line 82
    iput v2, p1, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    .line 83
    .line 84
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 85
    .line 86
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 87
    .line 88
    if-nez p1, :cond_5

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 93
    .line 94
    const-string/jumbo p1, "removeChildTask"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_1
    return-void

    .line 101
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v1, "TaskDisplayArea can only remove Task and TaskDisplayArea, but found "

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0
.end method

.method public final removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 17
    .line 18
    if-nez v0, :cond_4

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 21
    .line 22
    if-ne p1, v0, :cond_2

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 28
    .line 29
    if-ne p1, v0, :cond_3

    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    .line 39
    .line 40
    if-ne p1, v0, :cond_4

    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    .line 43
    .line 44
    :cond_4
    :goto_0
    return-void
.end method

.method public final setBackgroundColor(IZ)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBackgroundColor:I

    .line 3
    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    .line 11
    .line 12
    add-int/2addr p2, v0

    .line 13
    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    .line 14
    .line 15
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Color;->red()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Color;->green()F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Color;->blue()F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 v4, 0x3

    .line 38
    new-array v4, v4, [F

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    aput v2, v4, v5

    .line 42
    .line 43
    aput v3, v4, v0

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    aput p1, v4, v0

    .line 47
    .line 48
    invoke-virtual {p2, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public final setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setWindowingMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 11
    .line 12
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final stopFreeformTaskPinning(Lcom/android/server/wm/Task;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformTaskPinningController:Lcom/android/server/wm/FreeformTaskPinningController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_PINNING:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p0, "FreeformTaskPinningController"

    .line 20
    .line 21
    const-string p1, "Failed to stop freeform task pinning, task requested isn\'t in pinning mode."

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_PINNING:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskPinning(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskPinning(I)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public final topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v3, v2

    .line 15
    :goto_0
    if-nez v3, :cond_4

    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    add-int/lit8 v4, v4, -0x1

    .line 24
    .line 25
    :goto_1
    if-ltz v4, :cond_4

    .line 26
    .line 27
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 28
    .line 29
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 53
    .line 54
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eq v5, v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v5, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 84
    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_5

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_5

    .line 108
    .line 109
    return-object v2

    .line 110
    :cond_5
    return-object v3
.end method

.method public final updateLastFocusedRootTask(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-ne v0, p2, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 20
    .line 21
    .line 22
    :cond_2
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 25
    .line 26
    iget p2, p2, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 29
    .line 30
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    move v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 42
    .line 43
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    .line 44
    .line 45
    if-nez p0, :cond_4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 53
    .line 54
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    filled-new-array {p0, p2, v0, v1, p1}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/16 p1, 0x755c

    .line 75
    .line 76
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    return-void
.end method
