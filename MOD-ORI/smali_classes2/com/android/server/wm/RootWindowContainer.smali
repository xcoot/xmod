.class public final Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mCloseSystemDialogsConsumer:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;

.field public mCloseSystemDialogsReason:Ljava/lang/String;

.field public mCurrentUser:I

.field public mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

.field public mDestroyAllActivitiesReason:Ljava/lang/String;

.field public final mDestroyAllActivitiesRunnable:Lcom/android/server/wm/RootWindowContainer$1;

.field public final mDestroyTargetAllActivitiesRunnable:Lcom/android/server/wm/RootWindowContainer$2;

.field public final mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

.field public final mDisplayAccessUIDs:Landroid/util/SparseArray;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

.field public final mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

.field public final mDisplayTransactions:Landroid/util/SparseArray;

.field public final mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

.field public final mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

.field public mLastWindowFreezeSource:Lcom/android/server/wm/WindowState;

.field public mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

.field public mObscureApplicationContentOnSecondaryDisplays:Z

.field public mOrientationChangeComplete:Z

.field public final mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$1;

.field public mScreenBrightnessOverride:F

.field public mScreenBrightnessOverridePackage:Ljava/lang/String;

.field public mScreenDimDuration:J

.field public mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSleepTokens:Landroid/util/SparseArray;

.field public mSustainedPerformanceModeCurrent:Z

.field public mSustainedPerformanceModeEnabled:Z

.field public mTaskLayersChanged:Z

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

.field public mTmpTaskLayerRank:I

.field public final mTopFocusedAppByProcess:Landroid/util/ArrayMap;

.field public mTopFocusedDisplayId:I

.field public mUpdateRotation:Z

.field public mUserActivityTimeout:J

.field public final mUserRootTaskInFront:Landroid/util/SparseIntArray;

.field public mWallpaperActionPending:Z

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 8
    .line 9
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverridePackage:Ljava/lang/String;

    .line 14
    .line 15
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 18
    .line 19
    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 37
    .line 38
    new-instance v1, Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    .line 44
    .line 45
    new-instance v1, Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 51
    .line 52
    new-instance v1, Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransactions:Landroid/util/SparseArray;

    .line 58
    .line 59
    new-instance v1, Landroid/util/SparseIntArray;

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-direct {v1, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 66
    .line 67
    new-instance v1, Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 73
    .line 74
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 75
    .line 76
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$1;

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/RootWindowContainer$1;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$1;

    .line 83
    .line 84
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$1;

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/RootWindowContainer$1;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Lcom/android/server/wm/RootWindowContainer$1;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 93
    .line 94
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$2;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$2;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyTargetAllActivitiesRunnable:Lcom/android/server/wm/RootWindowContainer$2;

    .line 100
    .line 101
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-boolean v2, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIncludeLaunchedFromBubble:Z

    .line 107
    .line 108
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 109
    .line 110
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;

    .line 111
    .line 112
    const/4 v1, 0x1

    .line 113
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;

    .line 117
    .line 118
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    .line 124
    .line 125
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    .line 126
    .line 127
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    .line 134
    .line 135
    .line 136
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

    .line 137
    .line 138
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 141
    .line 142
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 143
    .line 144
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 145
    .line 146
    iput-object p0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 147
    .line 148
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 149
    .line 150
    const-string v2, "Display-off"

    .line 151
    .line 152
    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 156
    .line 157
    new-instance v0, Lcom/android/server/wm/DeviceStateController;

    .line 158
    .line 159
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 162
    .line 163
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/DeviceStateController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerGlobalLock;)V

    .line 164
    .line 165
    .line 166
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 167
    .line 168
    new-instance p1, Lcom/android/server/wm/DisplayRotationCoordinator;

    .line 169
    .line 170
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    .line 174
    .line 175
    return-void
.end method

.method public static canLaunchOnDisplay(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 9
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    move v3, p0

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not allow to launch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on display "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static canLaunchOnDisplay(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    const-string v1, "WindowManager"

    if-nez p0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "canLaunchOnDisplay(), invalid task: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "canLaunchOnDisplay(), Task is not attached: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    .line 6
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 8
    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(ILcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 7

    .line 1
    new-instance v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/ActivityTaskManager$RootTaskInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iput v3, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-array v5, v1, [I

    .line 22
    .line 23
    new-array v1, v1, [Z

    .line 24
    .line 25
    new-instance v6, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;

    .line 26
    .line 27
    invoke-direct {v6, p0, v1, v5}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/Task;[Z[I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v6, v4}, Lcom/android/server/wm/DisplayArea;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    .line 31
    .line 32
    .line 33
    aget-boolean v1, v1, v4

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    aget v3, v5, v4

    .line 38
    .line 39
    :cond_1
    iput v3, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    .line 40
    .line 41
    :goto_0
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iput-boolean v2, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    .line 47
    .line 48
    iget-object v2, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->bounds:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    filled-new-array {v4}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-direct {v3, v5, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 64
    .line 65
    .line 66
    aget v2, v2, v4

    .line 67
    .line 68
    new-array v3, v2, [I

    .line 69
    .line 70
    iput-object v3, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    .line 71
    .line 72
    new-array v3, v2, [Ljava/lang/String;

    .line 73
    .line 74
    iput-object v3, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    .line 75
    .line 76
    new-array v3, v2, [Landroid/graphics/Rect;

    .line 77
    .line 78
    iput-object v3, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    .line 79
    .line 80
    new-array v2, v2, [I

    .line 81
    .line 82
    iput-object v2, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    .line 83
    .line 84
    filled-new-array {v4}, [I

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;

    .line 89
    .line 90
    const/4 v5, 0x1

    .line 91
    invoke-direct {v3, v5, v2, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-eqz p0, :cond_2

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :cond_2
    iput-object v1, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 110
    .line 111
    return-object v0
.end method

.method public static resolveActivityType(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :cond_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    return p1

    .line 20
    :cond_2
    if-eqz p0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    :cond_3
    if-eqz p1, :cond_4

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_4
    const/4 p1, 0x1

    .line 30
    :goto_1
    return p1
.end method


# virtual methods
.method public final allPausedActivitiesComplete()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Z

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-boolean v0, v1, v2

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    aget-boolean p0, v1, v2

    .line 20
    .line 21
    return p0
.end method

.method public final allResumedActivitiesIdle()Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    iget-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 41
    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_5

    .line 52
    .line 53
    return v4

    .line 54
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 55
    .line 56
    aget-boolean p0, p0, v4

    .line 57
    .line 58
    if-eqz p0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 65
    .line 66
    int-to-long v0, p0

    .line 67
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 72
    .line 73
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    const/4 v8, 0x1

    .line 82
    const/4 v9, 0x0

    .line 83
    const-wide v6, 0x16f3399edc91354fL    # 4.01856524517077E-198

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    return v4

    .line 92
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 96
    .line 97
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->endPowerMode(I)V

    .line 98
    .line 99
    .line 100
    return v1
.end method

.method public final anyTaskForId(I)Lcom/android/server/wm/Task;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;
    .locals 10

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Should not specify activity options for non-restore lookup"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-class v2, Lcom/android/server/wm/Task;

    .line 4
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v9

    .line 7
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz v9, :cond_4

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {p0, p3, v9, p4}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eq p0, v3, :cond_3

    .line 10
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eq p0, v3, :cond_3

    if-eqz p4, :cond_2

    const/4 v0, 0x0

    :cond_2
    move v5, v0

    .line 11
    const-string v8, "anyTaskForId"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, v9

    move v4, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V

    :cond_3
    return-object v9

    :cond_4
    const/4 v0, 0x0

    if-nez p2, :cond_5

    return-object v0

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    return-object p1

    .line 13
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p3, p1, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)V

    return-object p1
.end method

.method public final applySleepTokens(Z)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    const/4 v4, 0x3

    .line 10
    if-ltz v0, :cond_a

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    iget-boolean v7, v5, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 23
    .line 24
    if-ne v6, v7, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    iput-boolean v6, v5, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 29
    .line 30
    iget-object v8, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 31
    .line 32
    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-eqz v8, :cond_3

    .line 37
    .line 38
    if-nez v3, :cond_3

    .line 39
    .line 40
    if-eqz v6, :cond_3

    .line 41
    .line 42
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-nez v8, :cond_3

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

    .line 59
    .line 60
    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-wide/16 v8, 0x3e8

    .line 65
    .line 66
    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    iget-object v3, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    iget-object v3, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget v3, v3, Lcom/android/server/wm/Transition;->mFlags:I

    .line 88
    .line 89
    const v4, 0x43900

    .line 90
    .line 91
    .line 92
    and-int/2addr v3, v4

    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    iget-object v3, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3, v5, v1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 102
    .line 103
    .line 104
    :cond_2
    move v3, v1

    .line 105
    :cond_3
    if-nez p1, :cond_4

    .line 106
    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_4
    if-nez v6, :cond_9

    .line 110
    .line 111
    iget-object v4, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_9

    .line 118
    .line 119
    iget-object v4, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-nez v4, :cond_9

    .line 126
    .line 127
    iget-object v4, v5, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 128
    .line 129
    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 130
    .line 131
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 132
    .line 133
    iget v8, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 134
    .line 135
    invoke-virtual {v4, v8}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    const/4 v8, 0x0

    .line 140
    if-eqz v4, :cond_7

    .line 141
    .line 142
    iget-object v4, v5, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 143
    .line 144
    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 145
    .line 146
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 147
    .line 148
    iget v9, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 149
    .line 150
    invoke-virtual {v4, v9}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    iget-object v9, v9, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 155
    .line 156
    if-eqz v9, :cond_5

    .line 157
    .line 158
    iget v9, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 159
    .line 160
    invoke-virtual {v4, v9}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    iget-object v4, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    goto :goto_1

    .line 171
    :cond_5
    iget v9, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 172
    .line 173
    invoke-virtual {v4, v9}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    iget-object v9, v9, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 178
    .line 179
    if-eqz v9, :cond_6

    .line 180
    .line 181
    iget v9, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 182
    .line 183
    invoke-virtual {v4, v9}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    iget-object v4, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    goto :goto_1

    .line 194
    :cond_6
    move-object v4, v8

    .line 195
    :goto_1
    const/16 v9, 0x1000

    .line 196
    .line 197
    const/16 v10, 0x8

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_7
    move v9, v2

    .line 201
    move v10, v9

    .line 202
    move-object v4, v8

    .line 203
    :goto_2
    if-eqz v7, :cond_8

    .line 204
    .line 205
    const/16 v10, 0xb

    .line 206
    .line 207
    :cond_8
    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 208
    .line 209
    invoke-virtual {v7, v10, v9}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    invoke-virtual {v7, v9, v4, v8, v8}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 214
    .line 215
    .line 216
    :cond_9
    new-instance v4, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;

    .line 217
    .line 218
    invoke-direct {v4, p0, v6, v5}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/RootWindowContainer;ZLcom/android/server/wm/DisplayContent;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 222
    .line 223
    .line 224
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_a
    if-nez v3, :cond_b

    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

    .line 231
    .line 232
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    .line 234
    .line 235
    :cond_b
    return-void
.end method

.method public final applySurfaceChangesTransaction$1()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 8
    .line 9
    iget v5, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 10
    .line 11
    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    iget-object v7, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 18
    .line 19
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    .line 20
    .line 21
    if-eqz v7, :cond_1

    .line 22
    .line 23
    iget v8, v7, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 24
    .line 25
    if-ne v8, v5, :cond_0

    .line 26
    .line 27
    iget v8, v7, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 28
    .line 29
    if-eq v8, v4, :cond_1

    .line 30
    .line 31
    :cond_0
    iput v5, v7, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 32
    .line 33
    iput v4, v7, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 34
    .line 35
    iget-object v8, v7, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 36
    .line 37
    invoke-virtual {v6, v8, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    .line 40
    iput-boolean v2, v7, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 41
    .line 42
    :cond_1
    iget-object v7, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 43
    .line 44
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    .line 45
    .line 46
    if-eqz v7, :cond_3

    .line 47
    .line 48
    iget v8, v7, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 49
    .line 50
    if-ne v8, v5, :cond_2

    .line 51
    .line 52
    iget v8, v7, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 53
    .line 54
    if-ne v8, v4, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iput v5, v7, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 58
    .line 59
    iput v4, v7, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 60
    .line 61
    iget-object v8, v7, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 62
    .line 63
    invoke-virtual {v6, v8, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 64
    .line 65
    .line 66
    iput-boolean v2, v7, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 67
    .line 68
    :cond_3
    :goto_0
    iget-object v7, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 69
    .line 70
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    .line 71
    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 75
    .line 76
    iget v3, v3, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 77
    .line 78
    iget v8, v7, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    .line 79
    .line 80
    if-ne v8, v5, :cond_4

    .line 81
    .line 82
    iget v8, v7, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    .line 83
    .line 84
    if-ne v8, v4, :cond_4

    .line 85
    .line 86
    iget v8, v7, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    .line 87
    .line 88
    if-ne v8, v3, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    iput v5, v7, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    .line 92
    .line 93
    iput v4, v7, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    .line 94
    .line 95
    iput-boolean v2, v7, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 96
    .line 97
    iput v3, v7, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    .line 98
    .line 99
    invoke-virtual {v7, v6}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_1
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    move v4, v1

    .line 109
    :goto_2
    if-ge v4, v3, :cond_1e

    .line 110
    .line 111
    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 112
    .line 113
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 118
    .line 119
    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 120
    .line 121
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 122
    .line 123
    const/4 v7, 0x0

    .line 124
    iput-object v7, v5, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 125
    .line 126
    iput-object v7, v5, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 127
    .line 128
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    .line 131
    .line 132
    .line 133
    iget v8, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 134
    .line 135
    and-int/lit8 v8, v8, 0x4

    .line 136
    .line 137
    if-eqz v8, :cond_6

    .line 138
    .line 139
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 140
    .line 141
    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 142
    .line 143
    .line 144
    :cond_6
    iget v8, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 145
    .line 146
    and-int/lit8 v8, v8, 0x2

    .line 147
    .line 148
    if-eqz v8, :cond_7

    .line 149
    .line 150
    invoke-virtual {v5, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-eqz v8, :cond_7

    .line 155
    .line 156
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 160
    .line 161
    .line 162
    :cond_7
    iget v8, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 163
    .line 164
    and-int/2addr v8, v2

    .line 165
    if-eqz v8, :cond_8

    .line 166
    .line 167
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 168
    .line 169
    .line 170
    :cond_8
    invoke-virtual {v5, v1}, Lcom/android/server/wm/DisplayContent;->performLayout(Z)V

    .line 171
    .line 172
    .line 173
    iput v1, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 174
    .line 175
    const-string v8, "applyPostLayoutPolicy"

    .line 176
    .line 177
    const-wide/16 v9, 0x20

    .line 178
    .line 179
    invoke-static {v9, v10, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :try_start_0
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 183
    .line 184
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->beginPostLayoutPolicyLw()V

    .line 185
    .line 186
    .line 187
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    .line 188
    .line 189
    invoke-virtual {v5, v8, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 190
    .line 191
    .line 192
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 193
    .line 194
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->finishPostLayoutPolicyLw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    .line 196
    .line 197
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 198
    .line 199
    .line 200
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 201
    .line 202
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    const-string v11, "ISC.onPostLayout"

    .line 206
    .line 207
    invoke-static {v9, v10, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v11, v8, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 211
    .line 212
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    sub-int/2addr v11, v2

    .line 217
    :goto_3
    if-ltz v11, :cond_9

    .line 218
    .line 219
    iget-object v12, v8, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 220
    .line 221
    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    check-cast v12, Lcom/android/server/wm/InsetsSourceProvider;

    .line 226
    .line 227
    invoke-virtual {v12}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()V

    .line 228
    .line 229
    .line 230
    add-int/lit8 v11, v11, -0x1

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_9
    iget-object v11, v8, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    .line 234
    .line 235
    iget-object v12, v8, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 236
    .line 237
    invoke-virtual {v11, v12}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    if-nez v11, :cond_a

    .line 242
    .line 243
    iget-object v11, v8, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    .line 244
    .line 245
    iget-object v12, v8, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 246
    .line 247
    invoke-virtual {v11, v12, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 251
    .line 252
    .line 253
    :cond_a
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 254
    .line 255
    .line 256
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 257
    .line 258
    iput-boolean v1, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 259
    .line 260
    iput-boolean v1, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 261
    .line 262
    iput-boolean v1, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 263
    .line 264
    iput-boolean v1, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    .line 265
    .line 266
    const/4 v11, 0x0

    .line 267
    iput v11, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 268
    .line 269
    iput v1, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 270
    .line 271
    iput v11, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    .line 272
    .line 273
    iput v11, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    .line 274
    .line 275
    iput-boolean v1, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->disableHdrConversion:Z

    .line 276
    .line 277
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    .line 278
    .line 279
    if-eqz v8, :cond_b

    .line 280
    .line 281
    iget-object v11, v5, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 282
    .line 283
    iget-object v11, v11, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 284
    .line 285
    iput-boolean v1, v11, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    .line 286
    .line 287
    :cond_b
    const-string v11, "applyWindowSurfaceChanges"

    .line 288
    .line 289
    invoke-static {v9, v10, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :try_start_1
    iget-object v11, v5, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    .line 293
    .line 294
    invoke-virtual {v5, v11, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    .line 296
    .line 297
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 298
    .line 299
    .line 300
    invoke-static {}, Lcom/android/window/flags/Flags;->removePrepareSurfaceInPlacement()Z

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    if-nez v9, :cond_c

    .line 305
    .line 306
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    .line 307
    .line 308
    .line 309
    :cond_c
    iget-object v9, v5, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 310
    .line 311
    invoke-virtual {v9}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    invoke-virtual {v9}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkAndStartShowImePostLayout()V

    .line 316
    .line 317
    .line 318
    if-eqz v8, :cond_d

    .line 319
    .line 320
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 321
    .line 322
    iget-object v8, v8, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 323
    .line 324
    iget-object v9, v8, Lcom/android/server/wm/RefreshRatePolicy;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 325
    .line 326
    iget v9, v9, Landroid/view/DisplayInfo;->state:I

    .line 327
    .line 328
    if-eq v9, v2, :cond_d

    .line 329
    .line 330
    iget-object v9, v8, Lcom/android/server/wm/RefreshRatePolicy;->mReportedRestrictHighRefreshRate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 331
    .line 332
    iget-boolean v10, v8, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    .line 333
    .line 334
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 335
    .line 336
    .line 337
    move-result v9

    .line 338
    iget-boolean v10, v8, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    .line 339
    .line 340
    if-eq v9, v10, :cond_d

    .line 341
    .line 342
    iget-object v8, v8, Lcom/android/server/wm/RefreshRatePolicy;->mReportedRestrictHighRefreshRate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 343
    .line 344
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    invoke-static {v8}, Landroid/view/SurfaceControl;->restrictHighRefreshRate(Z)V

    .line 349
    .line 350
    .line 351
    :cond_d
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 352
    .line 353
    iget-boolean v8, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 354
    .line 355
    iput-boolean v8, v5, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 356
    .line 357
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    if-nez v8, :cond_e

    .line 362
    .line 363
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 364
    .line 365
    iget-boolean v8, v8, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 366
    .line 367
    if-nez v8, :cond_e

    .line 368
    .line 369
    iget-object v8, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 370
    .line 371
    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 372
    .line 373
    iget v10, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 374
    .line 375
    iget-boolean v11, v5, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 376
    .line 377
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 378
    .line 379
    iget v12, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 380
    .line 381
    iget v13, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 382
    .line 383
    iget v14, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    .line 384
    .line 385
    iget v15, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    .line 386
    .line 387
    iget-boolean v7, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    .line 388
    .line 389
    iget-boolean v8, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->disableHdrConversion:Z

    .line 390
    .line 391
    const/16 v18, 0x1

    .line 392
    .line 393
    move/from16 v16, v7

    .line 394
    .line 395
    move/from16 v17, v8

    .line 396
    .line 397
    invoke-virtual/range {v9 .. v18}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIFFZZZ)V

    .line 398
    .line 399
    .line 400
    :cond_e
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    .line 401
    .line 402
    .line 403
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 404
    .line 405
    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    iget-boolean v8, v5, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 410
    .line 411
    if-eq v7, v8, :cond_12

    .line 412
    .line 413
    iput-boolean v7, v5, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 414
    .line 415
    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 416
    .line 417
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    .line 418
    .line 419
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    iget v8, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 423
    .line 424
    iget-object v9, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 425
    .line 426
    invoke-virtual {v9}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    .line 427
    .line 428
    .line 429
    move-result v9

    .line 430
    iget-object v7, v7, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    .line 431
    .line 432
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    check-cast v7, Landroid/os/RemoteCallbackList;

    .line 437
    .line 438
    if-nez v7, :cond_f

    .line 439
    .line 440
    goto :goto_5

    .line 441
    :cond_f
    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 442
    .line 443
    .line 444
    move-result v10

    .line 445
    :catch_0
    :goto_4
    if-lez v10, :cond_10

    .line 446
    .line 447
    add-int/lit8 v10, v10, -0x1

    .line 448
    .line 449
    invoke-virtual {v7, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 450
    .line 451
    .line 452
    move-result-object v11

    .line 453
    check-cast v11, Landroid/view/IWallpaperVisibilityListener;

    .line 454
    .line 455
    :try_start_2
    invoke-interface {v11, v9, v8}, Landroid/view/IWallpaperVisibilityListener;->onWallpaperVisibilityChanged(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 456
    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_10
    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 460
    .line 461
    .line 462
    :goto_5
    iget-boolean v7, v5, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 463
    .line 464
    if-eqz v7, :cond_12

    .line 465
    .line 466
    iget-object v7, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 467
    .line 468
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 469
    .line 470
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 471
    .line 472
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 476
    .line 477
    .line 478
    move-result-object v8

    .line 479
    if-nez v8, :cond_11

    .line 480
    .line 481
    goto :goto_6

    .line 482
    :cond_11
    iget-object v8, v7, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 483
    .line 484
    const/4 v9, 0x6

    .line 485
    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    .line 487
    .line 488
    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 489
    .line 490
    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    .line 491
    .line 492
    .line 493
    move-result v8

    .line 494
    new-array v10, v2, [Z

    .line 495
    .line 496
    aput-boolean v1, v10, v1

    .line 497
    .line 498
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 499
    .line 500
    .line 501
    move-result-object v11

    .line 502
    new-instance v12, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda18;

    .line 503
    .line 504
    invoke-direct {v12, v10}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda18;-><init>([Z)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    .line 508
    .line 509
    .line 510
    iget-object v7, v7, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 511
    .line 512
    aget-boolean v10, v10, v1

    .line 513
    .line 514
    invoke-virtual {v7, v9, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 515
    .line 516
    .line 517
    move-result-object v7

    .line 518
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 519
    .line 520
    .line 521
    :cond_12
    :goto_6
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 522
    .line 523
    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    .line 524
    .line 525
    .line 526
    move-result v7

    .line 527
    if-nez v7, :cond_17

    .line 528
    .line 529
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 530
    .line 531
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v7

    .line 535
    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 536
    .line 537
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 538
    .line 539
    if-nez v8, :cond_12

    .line 540
    .line 541
    iget v8, v7, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 542
    .line 543
    if-lez v8, :cond_12

    .line 544
    .line 545
    iget-object v9, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 546
    .line 547
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 548
    .line 549
    .line 550
    move-result v9

    .line 551
    sub-int/2addr v9, v2

    .line 552
    :goto_7
    if-ltz v9, :cond_14

    .line 553
    .line 554
    iget-object v10, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 555
    .line 556
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v10

    .line 560
    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 561
    .line 562
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    .line 563
    .line 564
    .line 565
    move-result v11

    .line 566
    if-eqz v11, :cond_13

    .line 567
    .line 568
    iget-boolean v10, v10, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    .line 569
    .line 570
    if-nez v10, :cond_13

    .line 571
    .line 572
    goto :goto_6

    .line 573
    :cond_13
    add-int/lit8 v9, v9, -0x1

    .line 574
    .line 575
    goto :goto_7

    .line 576
    :cond_14
    iget v9, v7, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 577
    .line 578
    if-lt v9, v8, :cond_12

    .line 579
    .line 580
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    .line 581
    .line 582
    .line 583
    move-result v8

    .line 584
    if-nez v8, :cond_12

    .line 585
    .line 586
    iput-boolean v2, v7, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 587
    .line 588
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 589
    .line 590
    if-eqz v8, :cond_15

    .line 591
    .line 592
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 593
    .line 594
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 595
    .line 596
    const-string v9, "all_drawn"

    .line 597
    .line 598
    invoke-virtual {v8, v7, v9}, Lcom/android/server/wm/ChangeTransitionController;->removeFromSyncDeferredForAllDrawn(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    :cond_15
    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 602
    .line 603
    if-eqz v8, :cond_16

    .line 604
    .line 605
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 606
    .line 607
    .line 608
    :cond_16
    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 609
    .line 610
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 611
    .line 612
    const/16 v9, 0x20

    .line 613
    .line 614
    invoke-virtual {v8, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 615
    .line 616
    .line 617
    move-result-object v7

    .line 618
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 619
    .line 620
    .line 621
    goto :goto_6

    .line 622
    :cond_17
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 623
    .line 624
    if-eqz v7, :cond_18

    .line 625
    .line 626
    move v8, v2

    .line 627
    goto :goto_8

    .line 628
    :cond_18
    move v8, v1

    .line 629
    :goto_8
    if-eqz v8, :cond_19

    .line 630
    .line 631
    iget-object v9, v5, Lcom/android/server/wm/DisplayContent;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 632
    .line 633
    if-eq v7, v9, :cond_19

    .line 634
    .line 635
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 636
    .line 637
    new-instance v9, Landroid/os/WorkSource;

    .line 638
    .line 639
    iget-object v10, v5, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 640
    .line 641
    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 642
    .line 643
    iget v11, v10, Lcom/android/server/wm/Session;->mUid:I

    .line 644
    .line 645
    iget-object v10, v10, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 646
    .line 647
    invoke-direct {v9, v11, v10}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v7, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 651
    .line 652
    .line 653
    :cond_19
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 654
    .line 655
    iput-object v7, v5, Lcom/android/server/wm/DisplayContent;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 656
    .line 657
    const/4 v7, 0x0

    .line 658
    iput-object v7, v5, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 659
    .line 660
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 661
    .line 662
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 663
    .line 664
    .line 665
    move-result v7

    .line 666
    if-eq v8, v7, :cond_1d

    .line 667
    .line 668
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    .line 669
    .line 670
    if-eqz v8, :cond_1b

    .line 671
    .line 672
    aget-boolean v7, v7, v1

    .line 673
    .line 674
    if-eqz v7, :cond_1a

    .line 675
    .line 676
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 677
    .line 678
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v7

    .line 682
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 683
    .line 684
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v13

    .line 688
    const/4 v12, 0x0

    .line 689
    const-wide v9, 0x1b3082ae327a34b2L

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    const/4 v11, 0x0

    .line 695
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    :cond_1a
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 699
    .line 700
    iput-object v7, v5, Lcom/android/server/wm/DisplayContent;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 701
    .line 702
    const/4 v7, 0x0

    .line 703
    iput-object v7, v5, Lcom/android/server/wm/DisplayContent;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 704
    .line 705
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 706
    .line 707
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 708
    .line 709
    .line 710
    goto :goto_9

    .line 711
    :cond_1b
    aget-boolean v7, v7, v1

    .line 712
    .line 713
    if-eqz v7, :cond_1c

    .line 714
    .line 715
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 716
    .line 717
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v7

    .line 721
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 722
    .line 723
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v13

    .line 727
    const/4 v12, 0x0

    .line 728
    const-wide v9, 0x4e5e286c1b9323dL

    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    const/4 v11, 0x0

    .line 734
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    :cond_1c
    const/4 v7, 0x0

    .line 738
    iput-object v7, v5, Lcom/android/server/wm/DisplayContent;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 739
    .line 740
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 741
    .line 742
    iput-object v7, v5, Lcom/android/server/wm/DisplayContent;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 743
    .line 744
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 745
    .line 746
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 747
    .line 748
    .line 749
    :cond_1d
    :goto_9
    iget-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransactions:Landroid/util/SparseArray;

    .line 750
    .line 751
    iget v8, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 752
    .line 753
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 754
    .line 755
    .line 756
    move-result-object v5

    .line 757
    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 758
    .line 759
    .line 760
    add-int/2addr v4, v2

    .line 761
    goto/16 :goto_2

    .line 762
    .line 763
    :catchall_0
    move-exception v0

    .line 764
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 765
    .line 766
    .line 767
    throw v0

    .line 768
    :catchall_1
    move-exception v0

    .line 769
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 770
    .line 771
    .line 772
    throw v0

    .line 773
    :cond_1e
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 774
    .line 775
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 776
    .line 777
    iget-object v2, v0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransactions:Landroid/util/SparseArray;

    .line 778
    .line 779
    invoke-virtual {v1, v6, v2}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;Landroid/util/SparseArray;)V

    .line 780
    .line 781
    .line 782
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransactions:Landroid/util/SparseArray;

    .line 783
    .line 784
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 785
    .line 786
    .line 787
    return-void
.end method

.method public final attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    move v5, v4

    .line 14
    :goto_0
    if-ltz v1, :cond_4

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    iget v7, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 23
    .line 24
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 25
    .line 26
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 29
    .line 30
    if-ne v7, v8, :cond_3

    .line 31
    .line 32
    iget-object v7, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-nez v7, :cond_0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    iget-boolean v8, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 53
    .line 54
    if-nez v8, :cond_3

    .line 55
    .line 56
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 57
    .line 58
    if-nez v8, :cond_3

    .line 59
    .line 60
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_3

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-nez v8, :cond_1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_2

    .line 78
    .line 79
    invoke-virtual {v7, v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    if-ne v6, v7, :cond_2

    .line 84
    .line 85
    move v7, v2

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move v7, v4

    .line 88
    :goto_1
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 89
    .line 90
    invoke-virtual {v8, v6, p1, v7, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z

    .line 91
    .line 92
    .line 93
    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    if-eqz v6, :cond_3

    .line 95
    .line 96
    move v5, v2

    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception v3

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v8, "Exception in new process when starting "

    .line 102
    .line 103
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const-string v7, "WindowManager"

    .line 114
    .line 115
    invoke-static {v7, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    if-nez v3, :cond_5

    .line 122
    .line 123
    return v5

    .line 124
    :cond_5
    throw v3
.end method

.method public final canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v1, v3, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 19
    .line 20
    invoke-virtual {v0, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez p3, :cond_1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-boolean p3, v0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    .line 29
    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    return v2

    .line 33
    :cond_1
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->canHostHomeTask()Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-nez p3, :cond_2

    .line 40
    .line 41
    return v2

    .line 42
    :cond_2
    if-eqz p2, :cond_3

    .line 43
    .line 44
    iget-object p3, p2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 45
    .line 46
    iget p3, p3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/4 p3, -0x1

    .line 50
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->shouldPlacePrimaryHomeOnDisplay(I)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_4

    .line 55
    .line 56
    return v3

    .line 57
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_5

    .line 62
    .line 63
    return v2

    .line 64
    :cond_5
    iget p0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 65
    .line 66
    const/4 p1, 0x2

    .line 67
    if-eq p0, p1, :cond_6

    .line 68
    .line 69
    const/4 p1, 0x3

    .line 70
    if-eq p0, p1, :cond_6

    .line 71
    .line 72
    return v3

    .line 73
    :cond_6
    return v2
.end method

.method public final checkAppTransitionReady()V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    :goto_0
    if-ltz v1, :cond_9c

    .line 12
    .line 13
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isReady()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x2

    .line 28
    const/4 v6, 0x0

    .line 29
    if-eqz v4, :cond_99

    .line 30
    .line 31
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 32
    .line 33
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 36
    .line 37
    .line 38
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 39
    .line 40
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 41
    .line 42
    iget-object v8, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v4, v7, v8}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_99

    .line 49
    .line 50
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 51
    .line 52
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 53
    .line 54
    iget-object v8, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v4, v7, v8}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_99

    .line 61
    .line 62
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 63
    .line 64
    iget-object v8, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 65
    .line 66
    iget v8, v8, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 67
    .line 68
    const/4 v13, 0x3

    .line 69
    if-ne v8, v13, :cond_0

    .line 70
    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_0
    new-instance v8, Landroid/util/ArraySet;

    .line 74
    .line 75
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v9, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 79
    .line 80
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    sub-int/2addr v9, v2

    .line 85
    :goto_1
    if-ltz v9, :cond_1

    .line 86
    .line 87
    iget-object v10, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 88
    .line 89
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 94
    .line 95
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    add-int/lit8 v9, v9, -0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    iget-object v9, v7, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 106
    .line 107
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    sub-int/2addr v9, v2

    .line 112
    :goto_2
    if-ltz v9, :cond_2

    .line 113
    .line 114
    iget-object v10, v7, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 115
    .line 116
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 121
    .line 122
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    add-int/lit8 v9, v9, -0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    iget-object v9, v7, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 133
    .line 134
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    sub-int/2addr v9, v2

    .line 139
    :goto_3
    if-ltz v9, :cond_4

    .line 140
    .line 141
    iget-object v10, v7, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 142
    .line 143
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    check-cast v10, Lcom/android/server/wm/WindowContainer;

    .line 148
    .line 149
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    if-eqz v11, :cond_3

    .line 154
    .line 155
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    goto :goto_4

    .line 164
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    :goto_4
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    add-int/lit8 v9, v9, -0x1

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    sub-int/2addr v7, v2

    .line 183
    :goto_5
    if-ltz v7, :cond_7

    .line 184
    .line 185
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    check-cast v9, Lcom/android/server/wm/Task;

    .line 190
    .line 191
    if-nez v9, :cond_5

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_5
    new-instance v10, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;

    .line 195
    .line 196
    const/4 v11, 0x3

    .line 197
    invoke-direct {v10, v11}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9, v10}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-eqz v9, :cond_6

    .line 205
    .line 206
    goto/16 :goto_59

    .line 207
    .line 208
    :cond_6
    :goto_6
    add-int/lit8 v7, v7, -0x1

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_7
    :goto_7
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 212
    .line 213
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 214
    .line 215
    invoke-virtual {v7}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    new-instance v8, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;

    .line 220
    .line 221
    const/4 v9, 0x0

    .line 222
    invoke-direct {v8, v9}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    const/16 v8, 0x8

    .line 230
    .line 231
    if-nez v7, :cond_b

    .line 232
    .line 233
    new-instance v7, Landroid/util/ArraySet;

    .line 234
    .line 235
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 236
    .line 237
    .line 238
    iget-object v9, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 239
    .line 240
    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 241
    .line 242
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 243
    .line 244
    .line 245
    iget-object v9, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 246
    .line 247
    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 248
    .line 249
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 250
    .line 251
    .line 252
    move v9, v6

    .line 253
    move v10, v9

    .line 254
    :goto_8
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 255
    .line 256
    .line 257
    move-result v11

    .line 258
    if-ge v9, v11, :cond_a

    .line 259
    .line 260
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    check-cast v11, Lcom/android/server/wm/WindowContainer;

    .line 265
    .line 266
    invoke-static {v11}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    if-nez v11, :cond_8

    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_8
    invoke-virtual {v11, v5, v8}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    if-nez v10, :cond_9

    .line 278
    .line 279
    move v10, v6

    .line 280
    goto :goto_a

    .line 281
    :cond_9
    move v10, v2

    .line 282
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_a
    :goto_a
    if-eqz v10, :cond_b

    .line 286
    .line 287
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 288
    .line 289
    aget-boolean v4, v4, v2

    .line 290
    .line 291
    if-eqz v4, :cond_99

    .line 292
    .line 293
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 294
    .line 295
    const/4 v11, 0x0

    .line 296
    const/4 v12, 0x0

    .line 297
    const-wide v8, -0x4f76e70a1dc2ceecL    # -6.935880211790273E-75

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    const/4 v10, 0x0

    .line 303
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_59

    .line 307
    .line 308
    :cond_b
    const-string v7, "AppTransitionReady"

    .line 309
    .line 310
    const-wide/16 v14, 0x20

    .line 311
    .line 312
    invoke-static {v14, v15, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 316
    .line 317
    aget-boolean v7, v7, v2

    .line 318
    .line 319
    if-eqz v7, :cond_c

    .line 320
    .line 321
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 322
    .line 323
    const/16 v20, 0x0

    .line 324
    .line 325
    const/16 v21, 0x0

    .line 326
    .line 327
    const-wide v17, 0x5a685a3257ae3b23L    # 3.2969223250870777E127

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    const/16 v19, 0x0

    .line 333
    .line 334
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :cond_c
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 338
    .line 339
    new-instance v9, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda1;

    .line 340
    .line 341
    const/4 v10, 0x0

    .line 342
    invoke-direct {v9, v10}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v7, v9, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 346
    .line 347
    .line 348
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 349
    .line 350
    iget-object v12, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 351
    .line 352
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    .line 353
    .line 354
    check-cast v7, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 357
    .line 358
    .line 359
    iget-object v7, v12, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 360
    .line 361
    iget-object v9, v12, Lcom/android/server/wm/AppTransition;->mHandleAppTransitionTimeoutRunnable:Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;

    .line 362
    .line 363
    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 364
    .line 365
    .line 366
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 367
    .line 368
    iput-boolean v6, v7, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 369
    .line 370
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 371
    .line 372
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    move v9, v6

    .line 377
    :goto_b
    if-ge v9, v7, :cond_d

    .line 378
    .line 379
    iget-object v10, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 380
    .line 381
    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 382
    .line 383
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v10

    .line 387
    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 388
    .line 389
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    .line 390
    .line 391
    .line 392
    add-int/lit8 v9, v9, 0x1

    .line 393
    .line 394
    goto :goto_b

    .line 395
    :cond_d
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 396
    .line 397
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 398
    .line 399
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    move v9, v6

    .line 404
    :goto_c
    if-ge v9, v7, :cond_f

    .line 405
    .line 406
    iget-object v10, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 407
    .line 408
    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 409
    .line 410
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v10

    .line 414
    check-cast v10, Lcom/android/server/wm/WindowContainer;

    .line 415
    .line 416
    invoke-static {v10}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    if-eqz v10, :cond_e

    .line 421
    .line 422
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    .line 423
    .line 424
    .line 425
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 426
    .line 427
    goto :goto_c

    .line 428
    :cond_f
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 429
    .line 430
    iget-object v9, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 431
    .line 432
    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 433
    .line 434
    iget-object v10, v7, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 435
    .line 436
    iget v10, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 437
    .line 438
    const/4 v11, 0x4

    .line 439
    and-int/2addr v10, v11

    .line 440
    if-eqz v10, :cond_10

    .line 441
    .line 442
    goto :goto_e

    .line 443
    :cond_10
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 444
    .line 445
    .line 446
    move-result v10

    .line 447
    sub-int/2addr v10, v2

    .line 448
    :goto_d
    if-ltz v10, :cond_12

    .line 449
    .line 450
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v16

    .line 454
    check-cast v16, Lcom/android/server/wm/ActivityRecord;

    .line 455
    .line 456
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    .line 457
    .line 458
    .line 459
    move-result v16

    .line 460
    if-eqz v16, :cond_11

    .line 461
    .line 462
    :goto_e
    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 463
    .line 464
    .line 465
    goto :goto_f

    .line 466
    :cond_11
    add-int/lit8 v10, v10, -0x1

    .line 467
    .line 468
    goto :goto_d

    .line 469
    :cond_12
    :goto_f
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 470
    .line 471
    iget-object v9, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 472
    .line 473
    iget-object v10, v7, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 474
    .line 475
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 476
    .line 477
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 478
    .line 479
    invoke-virtual {v7}, Lcom/android/server/wm/BackNavigationController;->isMonitoringTransition()Z

    .line 480
    .line 481
    .line 482
    move-result v7

    .line 483
    const/4 v14, 0x0

    .line 484
    if-eqz v7, :cond_1f

    .line 485
    .line 486
    new-instance v7, Landroid/util/ArraySet;

    .line 487
    .line 488
    iget-object v9, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 489
    .line 490
    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 491
    .line 492
    invoke-direct {v7, v9}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 493
    .line 494
    .line 495
    new-instance v9, Landroid/util/ArraySet;

    .line 496
    .line 497
    iget-object v10, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 498
    .line 499
    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 500
    .line 501
    invoke-direct {v9, v10}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 502
    .line 503
    .line 504
    iget-object v10, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 505
    .line 506
    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 507
    .line 508
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 509
    .line 510
    invoke-virtual {v10}, Lcom/android/server/wm/BackNavigationController;->isMonitoringTransition()Z

    .line 511
    .line 512
    .line 513
    move-result v15

    .line 514
    if-nez v15, :cond_13

    .line 515
    .line 516
    move v5, v6

    .line 517
    goto/16 :goto_15

    .line 518
    .line 519
    :cond_13
    iget-object v15, v10, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 520
    .line 521
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 522
    .line 523
    .line 524
    iget-object v15, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 525
    .line 526
    iget-boolean v11, v15, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 527
    .line 528
    if-eqz v11, :cond_14

    .line 529
    .line 530
    iget-boolean v11, v15, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 531
    .line 532
    if-eqz v11, :cond_14

    .line 533
    .line 534
    move v11, v2

    .line 535
    goto :goto_10

    .line 536
    :cond_14
    move v11, v6

    .line 537
    :goto_10
    if-nez v11, :cond_16

    .line 538
    .line 539
    :cond_15
    move v5, v6

    .line 540
    goto :goto_14

    .line 541
    :cond_16
    iget-object v11, v10, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 542
    .line 543
    iget-object v5, v10, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 544
    .line 545
    invoke-virtual {v15, v5, v6}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    if-eqz v5, :cond_18

    .line 550
    .line 551
    invoke-virtual {v15, v11, v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    .line 552
    .line 553
    .line 554
    move-result v5

    .line 555
    if-nez v5, :cond_17

    .line 556
    .line 557
    invoke-virtual {v15, v11, v6}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    if-eqz v5, :cond_18

    .line 562
    .line 563
    :cond_17
    move v5, v2

    .line 564
    goto :goto_11

    .line 565
    :cond_18
    move v5, v6

    .line 566
    :goto_11
    if-eqz v5, :cond_15

    .line 567
    .line 568
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    sub-int/2addr v5, v2

    .line 573
    :goto_12
    if-ltz v5, :cond_1a

    .line 574
    .line 575
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v11

    .line 579
    check-cast v11, Lcom/android/server/wm/ActivityRecord;

    .line 580
    .line 581
    iget-object v15, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 582
    .line 583
    invoke-virtual {v15, v11, v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    .line 584
    .line 585
    .line 586
    move-result v11

    .line 587
    if-eqz v11, :cond_19

    .line 588
    .line 589
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    iget-object v11, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 593
    .line 594
    invoke-virtual {v11, v14}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V

    .line 595
    .line 596
    .line 597
    :cond_19
    add-int/lit8 v5, v5, -0x1

    .line 598
    .line 599
    goto :goto_12

    .line 600
    :cond_1a
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    sub-int/2addr v5, v2

    .line 605
    :goto_13
    if-ltz v5, :cond_1c

    .line 606
    .line 607
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v11

    .line 611
    check-cast v11, Lcom/android/server/wm/ActivityRecord;

    .line 612
    .line 613
    iget-object v15, v10, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 614
    .line 615
    invoke-virtual {v15, v11, v6}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    .line 616
    .line 617
    .line 618
    move-result v11

    .line 619
    if-eqz v11, :cond_1b

    .line 620
    .line 621
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    :cond_1b
    add-int/lit8 v5, v5, -0x1

    .line 625
    .line 626
    goto :goto_13

    .line 627
    :cond_1c
    move v5, v2

    .line 628
    :goto_14
    if-nez v5, :cond_1d

    .line 629
    .line 630
    iget-object v11, v10, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 631
    .line 632
    iget-object v15, v10, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 633
    .line 634
    iget-object v14, v10, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 635
    .line 636
    invoke-static {v14, v11, v15}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->-$$Nest$monTransitionReadyWhileNavigate(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 637
    .line 638
    .line 639
    :cond_1d
    iget-object v10, v10, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 640
    .line 641
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 642
    .line 643
    .line 644
    :goto_15
    if-eqz v5, :cond_1e

    .line 645
    .line 646
    iget-object v5, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 647
    .line 648
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 649
    .line 650
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 651
    .line 652
    invoke-virtual {v5, v6}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 653
    .line 654
    .line 655
    :cond_1e
    move-object v10, v9

    .line 656
    move-object v9, v7

    .line 657
    :cond_1f
    iget-object v5, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 658
    .line 659
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 660
    .line 661
    iget-object v11, v5, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 662
    .line 663
    iget-object v14, v4, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 664
    .line 665
    iget-object v15, v14, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 666
    .line 667
    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->getFirstAppTransition()I

    .line 668
    .line 669
    .line 670
    move-result v8

    .line 671
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 672
    .line 673
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 674
    .line 675
    invoke-static {v6, v5, v2}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    if-eqz v15, :cond_22

    .line 680
    .line 681
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 682
    .line 683
    .line 684
    move-result v6

    .line 685
    if-nez v6, :cond_21

    .line 686
    .line 687
    if-eq v8, v2, :cond_20

    .line 688
    .line 689
    if-ne v8, v13, :cond_22

    .line 690
    .line 691
    :cond_20
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 692
    .line 693
    .line 694
    move-result v6

    .line 695
    if-nez v6, :cond_22

    .line 696
    .line 697
    const/4 v6, 0x0

    .line 698
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 703
    .line 704
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 705
    .line 706
    .line 707
    move-result-object v5

    .line 708
    if-eqz v5, :cond_22

    .line 709
    .line 710
    invoke-virtual {v14}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    .line 711
    .line 712
    .line 713
    move-result v5

    .line 714
    if-eqz v5, :cond_22

    .line 715
    .line 716
    :cond_21
    move v5, v2

    .line 717
    goto :goto_16

    .line 718
    :cond_22
    const/4 v5, 0x0

    .line 719
    :goto_16
    iget-object v6, v14, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 720
    .line 721
    if-eqz v6, :cond_23

    .line 722
    .line 723
    invoke-virtual {v6, v13}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 724
    .line 725
    .line 726
    move-result v6

    .line 727
    if-eqz v6, :cond_23

    .line 728
    .line 729
    iget-object v6, v14, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 730
    .line 731
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 732
    .line 733
    if-eqz v6, :cond_24

    .line 734
    .line 735
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isWaitingForTransitionStart()Z

    .line 736
    .line 737
    .line 738
    move-result v6

    .line 739
    if-nez v6, :cond_23

    .line 740
    .line 741
    goto :goto_17

    .line 742
    :cond_23
    if-nez v5, :cond_25

    .line 743
    .line 744
    :cond_24
    :goto_17
    const/4 v5, 0x0

    .line 745
    goto :goto_18

    .line 746
    :cond_25
    move-object v5, v15

    .line 747
    :goto_18
    iget-object v6, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 748
    .line 749
    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 750
    .line 751
    const/4 v8, 0x0

    .line 752
    invoke-static {v9, v8}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    .line 753
    .line 754
    .line 755
    move-result-object v14

    .line 756
    invoke-static {v10, v2}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    .line 757
    .line 758
    .line 759
    move-result-object v8

    .line 760
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 761
    .line 762
    .line 763
    move-result v22

    .line 764
    add-int/lit8 v22, v22, -0x1

    .line 765
    .line 766
    move/from16 v13, v22

    .line 767
    .line 768
    :goto_19
    if-ltz v13, :cond_27

    .line 769
    .line 770
    invoke-virtual {v9, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v22

    .line 774
    check-cast v22, Lcom/android/server/wm/ActivityRecord;

    .line 775
    .line 776
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    .line 777
    .line 778
    .line 779
    move-result v22

    .line 780
    if-eqz v22, :cond_26

    .line 781
    .line 782
    move v13, v2

    .line 783
    goto :goto_1a

    .line 784
    :cond_26
    add-int/lit8 v13, v13, -0x1

    .line 785
    .line 786
    goto :goto_19

    .line 787
    :cond_27
    const/4 v13, 0x0

    .line 788
    :goto_1a
    if-eqz v13, :cond_28

    .line 789
    .line 790
    if-eqz v15, :cond_28

    .line 791
    .line 792
    move v13, v2

    .line 793
    goto :goto_1b

    .line 794
    :cond_28
    const/4 v13, 0x0

    .line 795
    :goto_1b
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 796
    .line 797
    .line 798
    move-result v22

    .line 799
    add-int/lit8 v22, v22, -0x1

    .line 800
    .line 801
    move/from16 v2, v22

    .line 802
    .line 803
    :goto_1c
    if-ltz v2, :cond_2a

    .line 804
    .line 805
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v22

    .line 809
    check-cast v22, Lcom/android/server/wm/ActivityRecord;

    .line 810
    .line 811
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    .line 812
    .line 813
    .line 814
    move-result v22

    .line 815
    if-eqz v22, :cond_29

    .line 816
    .line 817
    const/4 v2, 0x1

    .line 818
    goto :goto_1d

    .line 819
    :cond_29
    add-int/lit8 v2, v2, -0x1

    .line 820
    .line 821
    goto :goto_1c

    .line 822
    :cond_2a
    const/4 v2, 0x0

    .line 823
    :goto_1d
    if-eqz v2, :cond_2b

    .line 824
    .line 825
    if-eqz v15, :cond_2b

    .line 826
    .line 827
    const/4 v2, 0x1

    .line 828
    goto :goto_1e

    .line 829
    :cond_2b
    const/4 v2, 0x0

    .line 830
    :goto_1e
    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->getKeyguardTransition()I

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    move/from16 v22, v1

    .line 835
    .line 836
    const/4 v1, 0x7

    .line 837
    if-eq v0, v1, :cond_58

    .line 838
    .line 839
    const/16 v1, 0x8

    .line 840
    .line 841
    if-eq v0, v1, :cond_55

    .line 842
    .line 843
    const/16 v1, 0x9

    .line 844
    .line 845
    if-eq v0, v1, :cond_54

    .line 846
    .line 847
    if-eqz v14, :cond_2c

    .line 848
    .line 849
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 850
    .line 851
    .line 852
    move-result v0

    .line 853
    const/4 v1, 0x5

    .line 854
    if-ne v0, v1, :cond_2d

    .line 855
    .line 856
    const/16 v0, 0x1f

    .line 857
    .line 858
    :goto_1f
    move v6, v0

    .line 859
    move-object/from16 v32, v3

    .line 860
    .line 861
    goto/16 :goto_2d

    .line 862
    .line 863
    :cond_2c
    const/4 v1, 0x5

    .line 864
    :cond_2d
    if-eqz v8, :cond_2e

    .line 865
    .line 866
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 867
    .line 868
    .line 869
    move-result v0

    .line 870
    if-ne v0, v1, :cond_2e

    .line 871
    .line 872
    move-object/from16 v32, v3

    .line 873
    .line 874
    const/16 v6, 0x20

    .line 875
    .line 876
    goto/16 :goto_2d

    .line 877
    .line 878
    :cond_2e
    if-eqz v6, :cond_30

    .line 879
    .line 880
    move-object/from16 v32, v3

    .line 881
    .line 882
    :cond_2f
    const/4 v6, -0x1

    .line 883
    goto/16 :goto_2d

    .line 884
    .line 885
    :cond_30
    iget v1, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 886
    .line 887
    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->getFirstAppTransition()I

    .line 888
    .line 889
    .line 890
    move-result v6

    .line 891
    const/4 v0, 0x6

    .line 892
    invoke-virtual {v7, v0}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    .line 893
    .line 894
    .line 895
    move-result v25

    .line 896
    if-eqz v25, :cond_33

    .line 897
    .line 898
    invoke-virtual {v11}, Landroid/util/ArraySet;->isEmpty()Z

    .line 899
    .line 900
    .line 901
    move-result v25

    .line 902
    if-nez v25, :cond_33

    .line 903
    .line 904
    const/4 v0, 0x0

    .line 905
    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 910
    .line 911
    invoke-static {v1}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    .line 912
    .line 913
    .line 914
    move-result v0

    .line 915
    const/4 v1, 0x2

    .line 916
    if-eq v0, v1, :cond_32

    .line 917
    .line 918
    const/4 v1, 0x3

    .line 919
    if-ne v0, v1, :cond_31

    .line 920
    .line 921
    const/16 v0, 0x1b

    .line 922
    .line 923
    goto :goto_1f

    .line 924
    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 925
    .line 926
    const-string v2, "TRANSIT_CHANGE with unrecognized changing type="

    .line 927
    .line 928
    invoke-static {v0, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    throw v1

    .line 936
    :cond_32
    const/16 v0, 0x1e

    .line 937
    .line 938
    goto :goto_1f

    .line 939
    :cond_33
    const/16 v0, 0x10

    .line 940
    .line 941
    and-int/2addr v1, v0

    .line 942
    if-eqz v1, :cond_34

    .line 943
    .line 944
    move-object/from16 v32, v3

    .line 945
    .line 946
    const/16 v6, 0x1a

    .line 947
    .line 948
    goto/16 :goto_2d

    .line 949
    .line 950
    :cond_34
    if-nez v6, :cond_36

    .line 951
    .line 952
    move-object/from16 v32, v3

    .line 953
    .line 954
    :cond_35
    const/4 v6, 0x0

    .line 955
    goto/16 :goto_2d

    .line 956
    .line 957
    :cond_36
    const/4 v1, 0x1

    .line 958
    if-eq v6, v1, :cond_38

    .line 959
    .line 960
    const/4 v11, 0x2

    .line 961
    if-eq v6, v11, :cond_38

    .line 962
    .line 963
    const/4 v11, 0x3

    .line 964
    if-eq v6, v11, :cond_38

    .line 965
    .line 966
    const/4 v11, 0x4

    .line 967
    if-ne v6, v11, :cond_37

    .line 968
    .line 969
    goto :goto_20

    .line 970
    :cond_37
    move-object/from16 v32, v3

    .line 971
    .line 972
    goto/16 :goto_26

    .line 973
    .line 974
    :cond_38
    :goto_20
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    .line 975
    .line 976
    .line 977
    move-result v11

    .line 978
    xor-int/2addr v11, v1

    .line 979
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 980
    .line 981
    .line 982
    move-result v23

    .line 983
    add-int/lit8 v23, v23, -0x1

    .line 984
    .line 985
    move/from16 v30, v11

    .line 986
    .line 987
    move/from16 v0, v23

    .line 988
    .line 989
    move v11, v1

    .line 990
    :goto_21
    if-ltz v0, :cond_3b

    .line 991
    .line 992
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v23

    .line 996
    move-object/from16 v1, v23

    .line 997
    .line 998
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 999
    .line 1000
    move-object/from16 v32, v3

    .line 1001
    .line 1002
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 1003
    .line 1004
    if-nez v3, :cond_39

    .line 1005
    .line 1006
    const/4 v3, 0x1

    .line 1007
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v1

    .line 1011
    const/4 v11, 0x0

    .line 1012
    if-eqz v1, :cond_3a

    .line 1013
    .line 1014
    const/16 v30, 0x0

    .line 1015
    .line 1016
    goto :goto_22

    .line 1017
    :cond_39
    const/4 v3, 0x1

    .line 1018
    :cond_3a
    :goto_22
    add-int/lit8 v0, v0, -0x1

    .line 1019
    .line 1020
    move v1, v3

    .line 1021
    move-object/from16 v3, v32

    .line 1022
    .line 1023
    goto :goto_21

    .line 1024
    :cond_3b
    move-object/from16 v32, v3

    .line 1025
    .line 1026
    move v3, v1

    .line 1027
    invoke-virtual {v10}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1028
    .line 1029
    .line 1030
    move-result v0

    .line 1031
    xor-int/2addr v0, v3

    .line 1032
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 1033
    .line 1034
    .line 1035
    move-result v1

    .line 1036
    sub-int/2addr v1, v3

    .line 1037
    :goto_23
    if-ltz v1, :cond_3d

    .line 1038
    .line 1039
    invoke-virtual {v10, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v23

    .line 1043
    move/from16 v31, v0

    .line 1044
    .line 1045
    move-object/from16 v0, v23

    .line 1046
    .line 1047
    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 1048
    .line 1049
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 1050
    .line 1051
    .line 1052
    move-result v0

    .line 1053
    if-eqz v0, :cond_3c

    .line 1054
    .line 1055
    const/16 v31, 0x0

    .line 1056
    .line 1057
    goto :goto_24

    .line 1058
    :cond_3c
    add-int/lit8 v1, v1, -0x1

    .line 1059
    .line 1060
    move/from16 v0, v31

    .line 1061
    .line 1062
    const/4 v3, 0x1

    .line 1063
    goto :goto_23

    .line 1064
    :cond_3d
    move/from16 v31, v0

    .line 1065
    .line 1066
    :goto_24
    if-eqz v31, :cond_3e

    .line 1067
    .line 1068
    if-eqz v11, :cond_3e

    .line 1069
    .line 1070
    const/16 v0, 0x19

    .line 1071
    .line 1072
    :goto_25
    move v6, v0

    .line 1073
    goto/16 :goto_2d

    .line 1074
    .line 1075
    :cond_3e
    if-eqz v30, :cond_3f

    .line 1076
    .line 1077
    invoke-virtual {v10}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1078
    .line 1079
    .line 1080
    move-result v0

    .line 1081
    if-eqz v0, :cond_3f

    .line 1082
    .line 1083
    const/16 v0, 0x18

    .line 1084
    .line 1085
    goto :goto_25

    .line 1086
    :cond_3f
    :goto_26
    if-eqz v2, :cond_44

    .line 1087
    .line 1088
    if-eqz v13, :cond_44

    .line 1089
    .line 1090
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 1091
    .line 1092
    const/4 v1, 0x1

    .line 1093
    aget-boolean v0, v0, v1

    .line 1094
    .line 1095
    if-eqz v0, :cond_40

    .line 1096
    .line 1097
    sget-object v33, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1098
    .line 1099
    const-wide v34, -0x22bce25e7e71c117L    # -1.8211227792665218E141

    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    const/16 v36, 0x0

    .line 1105
    .line 1106
    const/16 v37, 0x0

    .line 1107
    .line 1108
    const/16 v38, 0x0

    .line 1109
    .line 1110
    invoke-static/range {v33 .. v38}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    .line 1112
    .line 1113
    :cond_40
    const/4 v1, 0x1

    .line 1114
    if-eq v6, v1, :cond_43

    .line 1115
    .line 1116
    const/4 v0, 0x2

    .line 1117
    if-eq v6, v0, :cond_42

    .line 1118
    .line 1119
    const/4 v0, 0x3

    .line 1120
    if-eq v6, v0, :cond_43

    .line 1121
    .line 1122
    const/4 v0, 0x4

    .line 1123
    if-eq v6, v0, :cond_42

    .line 1124
    .line 1125
    :cond_41
    const/4 v1, 0x1

    .line 1126
    goto :goto_27

    .line 1127
    :cond_42
    const/16 v0, 0xf

    .line 1128
    .line 1129
    goto :goto_25

    .line 1130
    :cond_43
    const/16 v0, 0xe

    .line 1131
    .line 1132
    goto :goto_25

    .line 1133
    :cond_44
    if-eqz v5, :cond_45

    .line 1134
    .line 1135
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1136
    .line 1137
    .line 1138
    move-result v0

    .line 1139
    if-nez v0, :cond_45

    .line 1140
    .line 1141
    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1142
    .line 1143
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v0

    .line 1147
    if-nez v0, :cond_45

    .line 1148
    .line 1149
    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1150
    .line 1151
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v0

    .line 1155
    if-eqz v0, :cond_45

    .line 1156
    .line 1157
    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1158
    .line 1159
    if-ne v8, v0, :cond_45

    .line 1160
    .line 1161
    const/16 v0, 0xc

    .line 1162
    .line 1163
    goto :goto_25

    .line 1164
    :cond_45
    if-eqz v15, :cond_41

    .line 1165
    .line 1166
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v0

    .line 1170
    if-eqz v0, :cond_41

    .line 1171
    .line 1172
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1173
    .line 1174
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v0

    .line 1178
    if-eqz v0, :cond_41

    .line 1179
    .line 1180
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1181
    .line 1182
    if-ne v14, v0, :cond_41

    .line 1183
    .line 1184
    const/16 v0, 0xd

    .line 1185
    .line 1186
    goto :goto_25

    .line 1187
    :goto_27
    invoke-static {v9, v10, v1}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    const/4 v1, 0x0

    .line 1192
    invoke-static {v9, v10, v1}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v2

    .line 1196
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1197
    .line 1198
    .line 1199
    move-result v3

    .line 1200
    if-nez v3, :cond_46

    .line 1201
    .line 1202
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v3

    .line 1206
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1207
    .line 1208
    goto :goto_28

    .line 1209
    :cond_46
    const/4 v3, 0x0

    .line 1210
    :goto_28
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1211
    .line 1212
    .line 1213
    move-result v5

    .line 1214
    if-nez v5, :cond_47

    .line 1215
    .line 1216
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v2

    .line 1220
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1221
    .line 1222
    goto :goto_29

    .line 1223
    :cond_47
    const/4 v2, 0x0

    .line 1224
    :goto_29
    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    .line 1225
    .line 1226
    .line 1227
    move-result v1

    .line 1228
    invoke-static {v2}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    .line 1229
    .line 1230
    .line 1231
    move-result v2

    .line 1232
    const/4 v3, 0x3

    .line 1233
    invoke-virtual {v7, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v5

    .line 1237
    const/16 v6, 0xb

    .line 1238
    .line 1239
    if-eqz v5, :cond_49

    .line 1240
    .line 1241
    if-ne v1, v3, :cond_49

    .line 1242
    .line 1243
    if-eqz v14, :cond_48

    .line 1244
    .line 1245
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 1246
    .line 1247
    .line 1248
    move-result v0

    .line 1249
    if-eqz v0, :cond_48

    .line 1250
    .line 1251
    goto/16 :goto_2d

    .line 1252
    .line 1253
    :cond_48
    const/16 v0, 0xa

    .line 1254
    .line 1255
    goto/16 :goto_25

    .line 1256
    .line 1257
    :cond_49
    const/4 v3, 0x4

    .line 1258
    invoke-virtual {v7, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v5

    .line 1262
    const/4 v3, 0x3

    .line 1263
    if-eqz v5, :cond_4a

    .line 1264
    .line 1265
    if-ne v2, v3, :cond_4a

    .line 1266
    .line 1267
    goto/16 :goto_2d

    .line 1268
    .line 1269
    :cond_4a
    const/4 v5, 0x1

    .line 1270
    invoke-virtual {v7, v5}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    .line 1271
    .line 1272
    .line 1273
    move-result v6

    .line 1274
    if-eqz v6, :cond_4e

    .line 1275
    .line 1276
    if-ne v1, v3, :cond_4c

    .line 1277
    .line 1278
    iget v0, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 1279
    .line 1280
    const/16 v1, 0x20

    .line 1281
    .line 1282
    and-int/2addr v0, v1

    .line 1283
    if-eqz v0, :cond_4b

    .line 1284
    .line 1285
    const/16 v8, 0x10

    .line 1286
    .line 1287
    goto :goto_2a

    .line 1288
    :cond_4b
    const/16 v8, 0x8

    .line 1289
    .line 1290
    :goto_2a
    move v6, v8

    .line 1291
    goto/16 :goto_2d

    .line 1292
    .line 1293
    :cond_4c
    if-ne v1, v5, :cond_4d

    .line 1294
    .line 1295
    :goto_2b
    const/4 v6, 0x6

    .line 1296
    goto/16 :goto_2d

    .line 1297
    .line 1298
    :cond_4d
    const/4 v3, 0x2

    .line 1299
    if-ne v1, v3, :cond_4f

    .line 1300
    .line 1301
    const/16 v0, 0x1c

    .line 1302
    .line 1303
    goto/16 :goto_25

    .line 1304
    .line 1305
    :cond_4e
    const/4 v3, 0x2

    .line 1306
    :cond_4f
    invoke-virtual {v7, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    .line 1307
    .line 1308
    .line 1309
    move-result v1

    .line 1310
    if-eqz v1, :cond_53

    .line 1311
    .line 1312
    const/4 v1, 0x3

    .line 1313
    if-ne v2, v1, :cond_50

    .line 1314
    .line 1315
    const/16 v6, 0x9

    .line 1316
    .line 1317
    goto/16 :goto_2d

    .line 1318
    .line 1319
    :cond_50
    if-ne v2, v3, :cond_51

    .line 1320
    .line 1321
    const/16 v0, 0x1d

    .line 1322
    .line 1323
    goto/16 :goto_25

    .line 1324
    .line 1325
    :cond_51
    const/4 v1, 0x1

    .line 1326
    if-ne v2, v1, :cond_53

    .line 1327
    .line 1328
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 1329
    .line 1330
    .line 1331
    move-result v0

    .line 1332
    sub-int/2addr v0, v1

    .line 1333
    :goto_2c
    if-ltz v0, :cond_2f

    .line 1334
    .line 1335
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v1

    .line 1339
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1340
    .line 1341
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 1342
    .line 1343
    if-eqz v1, :cond_52

    .line 1344
    .line 1345
    const/4 v6, 0x7

    .line 1346
    goto :goto_2d

    .line 1347
    :cond_52
    add-int/lit8 v0, v0, -0x1

    .line 1348
    .line 1349
    goto :goto_2c

    .line 1350
    :cond_53
    const/4 v1, 0x5

    .line 1351
    invoke-virtual {v7, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    .line 1352
    .line 1353
    .line 1354
    move-result v1

    .line 1355
    if-eqz v1, :cond_35

    .line 1356
    .line 1357
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1358
    .line 1359
    .line 1360
    move-result v0

    .line 1361
    if-nez v0, :cond_35

    .line 1362
    .line 1363
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1364
    .line 1365
    .line 1366
    move-result v0

    .line 1367
    if-nez v0, :cond_35

    .line 1368
    .line 1369
    const/16 v0, 0x12

    .line 1370
    .line 1371
    goto/16 :goto_25

    .line 1372
    .line 1373
    :cond_54
    move-object/from16 v32, v3

    .line 1374
    .line 1375
    const/16 v0, 0x17

    .line 1376
    .line 1377
    goto/16 :goto_25

    .line 1378
    .line 1379
    :cond_55
    move-object/from16 v32, v3

    .line 1380
    .line 1381
    invoke-virtual {v10}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1382
    .line 1383
    .line 1384
    move-result v0

    .line 1385
    if-nez v0, :cond_56

    .line 1386
    .line 1387
    goto :goto_2b

    .line 1388
    :cond_56
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1389
    .line 1390
    .line 1391
    move-result v0

    .line 1392
    if-nez v0, :cond_57

    .line 1393
    .line 1394
    const/4 v0, 0x0

    .line 1395
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v1

    .line 1399
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1400
    .line 1401
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 1402
    .line 1403
    .line 1404
    move-result v0

    .line 1405
    const/4 v1, 0x5

    .line 1406
    if-ne v0, v1, :cond_57

    .line 1407
    .line 1408
    const/16 v0, 0x21

    .line 1409
    .line 1410
    goto/16 :goto_25

    .line 1411
    .line 1412
    :cond_57
    const/16 v0, 0x16

    .line 1413
    .line 1414
    goto/16 :goto_25

    .line 1415
    .line 1416
    :cond_58
    move-object/from16 v32, v3

    .line 1417
    .line 1418
    if-eqz v13, :cond_59

    .line 1419
    .line 1420
    const/16 v0, 0x15

    .line 1421
    .line 1422
    goto/16 :goto_25

    .line 1423
    .line 1424
    :cond_59
    const/16 v0, 0x14

    .line 1425
    .line 1426
    goto/16 :goto_25

    .line 1427
    .line 1428
    :goto_2d
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1429
    .line 1430
    const/4 v1, 0x0

    .line 1431
    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 1432
    .line 1433
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 1434
    .line 1435
    const/4 v2, 0x1

    .line 1436
    aget-boolean v1, v1, v2

    .line 1437
    .line 1438
    if-eqz v1, :cond_5a

    .line 1439
    .line 1440
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1441
    .line 1442
    int-to-long v0, v0

    .line 1443
    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->toString()Ljava/lang/String;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v2

    .line 1447
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v2

    .line 1451
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v3

    .line 1455
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v5

    .line 1459
    invoke-static {v6}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v7

    .line 1463
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v7

    .line 1467
    sget-object v24, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1468
    .line 1469
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v0

    .line 1473
    filled-new-array {v0, v2, v3, v5, v7}, [Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v29

    .line 1477
    const/16 v28, 0x0

    .line 1478
    .line 1479
    const-wide v25, 0x30d2bd15326d396fL    # 1.6571366255834965E-73

    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    const/16 v27, 0x1

    .line 1485
    .line 1486
    invoke-static/range {v24 .. v29}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1487
    .line 1488
    .line 1489
    :cond_5a
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1490
    .line 1491
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1492
    .line 1493
    new-instance v1, Landroid/util/ArraySet;

    .line 1494
    .line 1495
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1496
    .line 1497
    .line 1498
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 1499
    .line 1500
    .line 1501
    move-result v2

    .line 1502
    const/4 v3, 0x1

    .line 1503
    sub-int/2addr v2, v3

    .line 1504
    :goto_2e
    if-ltz v2, :cond_5b

    .line 1505
    .line 1506
    invoke-virtual {v9, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v3

    .line 1510
    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1511
    .line 1512
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 1513
    .line 1514
    .line 1515
    move-result v3

    .line 1516
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v3

    .line 1520
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1521
    .line 1522
    .line 1523
    add-int/lit8 v2, v2, -0x1

    .line 1524
    .line 1525
    goto :goto_2e

    .line 1526
    :cond_5b
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 1527
    .line 1528
    .line 1529
    move-result v2

    .line 1530
    const/4 v3, 0x1

    .line 1531
    sub-int/2addr v2, v3

    .line 1532
    :goto_2f
    if-ltz v2, :cond_5c

    .line 1533
    .line 1534
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v3

    .line 1538
    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1539
    .line 1540
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 1541
    .line 1542
    .line 1543
    move-result v3

    .line 1544
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v3

    .line 1548
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1549
    .line 1550
    .line 1551
    add-int/lit8 v2, v2, -0x1

    .line 1552
    .line 1553
    goto :goto_2f

    .line 1554
    :cond_5c
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 1555
    .line 1556
    .line 1557
    move-result v2

    .line 1558
    const/4 v3, 0x1

    .line 1559
    sub-int/2addr v2, v3

    .line 1560
    :goto_30
    if-ltz v2, :cond_5d

    .line 1561
    .line 1562
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v3

    .line 1566
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1567
    .line 1568
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 1569
    .line 1570
    .line 1571
    move-result v3

    .line 1572
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v3

    .line 1576
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1577
    .line 1578
    .line 1579
    add-int/lit8 v2, v2, -0x1

    .line 1580
    .line 1581
    goto :goto_30

    .line 1582
    :cond_5d
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1583
    .line 1584
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1585
    .line 1586
    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda3;

    .line 1587
    .line 1588
    invoke-direct {v2, v6, v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda3;-><init>(ILandroid/util/ArraySet;)V

    .line 1589
    .line 1590
    .line 1591
    invoke-static {v10, v9, v0, v2}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v2

    .line 1595
    if-eqz v2, :cond_5e

    .line 1596
    .line 1597
    :goto_31
    const/4 v0, 0x0

    .line 1598
    goto :goto_32

    .line 1599
    :cond_5e
    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;

    .line 1600
    .line 1601
    const/4 v3, 0x1

    .line 1602
    invoke-direct {v2, v3}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1603
    .line 1604
    .line 1605
    invoke-static {v10, v9, v0, v2}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v2

    .line 1609
    if-eqz v2, :cond_5f

    .line 1610
    .line 1611
    goto :goto_31

    .line 1612
    :cond_5f
    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;

    .line 1613
    .line 1614
    const/4 v3, 0x2

    .line 1615
    invoke-direct {v2, v3}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1616
    .line 1617
    .line 1618
    invoke-static {v10, v9, v0, v2}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v2

    .line 1622
    goto :goto_31

    .line 1623
    :goto_32
    invoke-static {v9, v0}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v3

    .line 1627
    invoke-static {v10, v0}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v5

    .line 1631
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1632
    .line 1633
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1634
    .line 1635
    invoke-static {v7, v0}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v13

    .line 1639
    if-eqz v2, :cond_60

    .line 1640
    .line 1641
    const/4 v7, 0x1

    .line 1642
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v0

    .line 1646
    goto :goto_33

    .line 1647
    :cond_60
    const/4 v0, 0x0

    .line 1648
    :goto_33
    if-eqz v0, :cond_61

    .line 1649
    .line 1650
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1651
    .line 1652
    move-object v11, v0

    .line 1653
    const/16 v0, 0x14

    .line 1654
    .line 1655
    goto :goto_34

    .line 1656
    :cond_61
    const/16 v0, 0x14

    .line 1657
    .line 1658
    const/4 v11, 0x0

    .line 1659
    :goto_34
    if-eq v6, v0, :cond_63

    .line 1660
    .line 1661
    const/16 v0, 0x15

    .line 1662
    .line 1663
    if-ne v6, v0, :cond_62

    .line 1664
    .line 1665
    goto :goto_35

    .line 1666
    :cond_62
    const/4 v0, 0x0

    .line 1667
    goto :goto_36

    .line 1668
    :cond_63
    :goto_35
    const/4 v0, 0x1

    .line 1669
    :goto_36
    if-nez v0, :cond_69

    .line 1670
    .line 1671
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1672
    .line 1673
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1674
    .line 1675
    invoke-static {v0, v7, v6}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldAttachNavBarToApp(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Z

    .line 1676
    .line 1677
    .line 1678
    move-result v0

    .line 1679
    if-nez v0, :cond_69

    .line 1680
    .line 1681
    iget-object v0, v7, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 1682
    .line 1683
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    .line 1684
    .line 1685
    .line 1686
    move-result v0

    .line 1687
    if-eqz v0, :cond_64

    .line 1688
    .line 1689
    goto :goto_3b

    .line 1690
    :cond_64
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1691
    .line 1692
    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1693
    .line 1694
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 1695
    .line 1696
    .line 1697
    move-result v7

    .line 1698
    const/4 v8, 0x1

    .line 1699
    sub-int/2addr v7, v8

    .line 1700
    :goto_37
    if-ltz v7, :cond_66

    .line 1701
    .line 1702
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1703
    .line 1704
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v8

    .line 1708
    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 1709
    .line 1710
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    .line 1711
    .line 1712
    .line 1713
    move-result v8

    .line 1714
    if-eqz v8, :cond_65

    .line 1715
    .line 1716
    const/4 v0, 0x1

    .line 1717
    goto :goto_3a

    .line 1718
    :cond_65
    add-int/lit8 v7, v7, -0x1

    .line 1719
    .line 1720
    goto :goto_37

    .line 1721
    :cond_66
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1722
    .line 1723
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1724
    .line 1725
    .line 1726
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1727
    .line 1728
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 1729
    .line 1730
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1731
    .line 1732
    .line 1733
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1734
    .line 1735
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 1736
    .line 1737
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1738
    .line 1739
    .line 1740
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1741
    .line 1742
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1743
    .line 1744
    .line 1745
    move-result v0

    .line 1746
    const/4 v7, 0x1

    .line 1747
    sub-int/2addr v0, v7

    .line 1748
    :goto_38
    if-ltz v0, :cond_68

    .line 1749
    .line 1750
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1751
    .line 1752
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v7

    .line 1756
    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 1757
    .line 1758
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v7

    .line 1762
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v7

    .line 1766
    if-eqz v7, :cond_67

    .line 1767
    .line 1768
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->isEmbeddedWithBoundsOverride()Z

    .line 1769
    .line 1770
    .line 1771
    move-result v7

    .line 1772
    if-eqz v7, :cond_67

    .line 1773
    .line 1774
    const/4 v0, 0x1

    .line 1775
    goto :goto_39

    .line 1776
    :cond_67
    add-int/lit8 v0, v0, -0x1

    .line 1777
    .line 1778
    goto :goto_38

    .line 1779
    :cond_68
    const/4 v0, 0x0

    .line 1780
    :goto_39
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1781
    .line 1782
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1783
    .line 1784
    .line 1785
    :goto_3a
    if-nez v0, :cond_6a

    .line 1786
    .line 1787
    :cond_69
    :goto_3b
    move-object/from16 v18, v12

    .line 1788
    .line 1789
    const/4 v0, 0x0

    .line 1790
    goto/16 :goto_45

    .line 1791
    .line 1792
    :cond_6a
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1793
    .line 1794
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1795
    .line 1796
    .line 1797
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1798
    .line 1799
    iget-object v7, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1800
    .line 1801
    iget-object v8, v7, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 1802
    .line 1803
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1804
    .line 1805
    .line 1806
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1807
    .line 1808
    iget-object v8, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 1809
    .line 1810
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1811
    .line 1812
    .line 1813
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1814
    .line 1815
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1816
    .line 1817
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1818
    .line 1819
    .line 1820
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1821
    .line 1822
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1823
    .line 1824
    .line 1825
    move-result v0

    .line 1826
    const/4 v7, 0x1

    .line 1827
    sub-int/2addr v0, v7

    .line 1828
    const/4 v7, 0x0

    .line 1829
    :goto_3c
    if-ltz v0, :cond_71

    .line 1830
    .line 1831
    iget-object v8, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1832
    .line 1833
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v8

    .line 1837
    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 1838
    .line 1839
    invoke-static {v8}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v8

    .line 1843
    if-nez v8, :cond_6c

    .line 1844
    .line 1845
    :cond_6b
    :goto_3d
    const/4 v7, 0x0

    .line 1846
    goto :goto_3e

    .line 1847
    :cond_6c
    iget-object v14, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1848
    .line 1849
    if-eqz v14, :cond_6b

    .line 1850
    .line 1851
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 1852
    .line 1853
    .line 1854
    move-result v15

    .line 1855
    if-eqz v15, :cond_6d

    .line 1856
    .line 1857
    goto :goto_3d

    .line 1858
    :cond_6d
    if-eqz v7, :cond_6e

    .line 1859
    .line 1860
    if-eq v7, v14, :cond_6e

    .line 1861
    .line 1862
    goto :goto_3d

    .line 1863
    :cond_6e
    const/4 v7, 0x1

    .line 1864
    const/4 v15, 0x0

    .line 1865
    invoke-virtual {v14, v7, v15}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v21

    .line 1869
    if-nez v21, :cond_6f

    .line 1870
    .line 1871
    goto :goto_3d

    .line 1872
    :cond_6f
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 1873
    .line 1874
    .line 1875
    move-result v7

    .line 1876
    iget v15, v14, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 1877
    .line 1878
    if-eq v7, v15, :cond_70

    .line 1879
    .line 1880
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 1881
    .line 1882
    .line 1883
    move-result v7

    .line 1884
    if-nez v7, :cond_70

    .line 1885
    .line 1886
    goto :goto_3d

    .line 1887
    :cond_70
    add-int/lit8 v0, v0, -0x1

    .line 1888
    .line 1889
    move-object v7, v14

    .line 1890
    goto :goto_3c

    .line 1891
    :cond_71
    :goto_3e
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 1892
    .line 1893
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1894
    .line 1895
    .line 1896
    if-nez v7, :cond_73

    .line 1897
    .line 1898
    :cond_72
    :goto_3f
    const/4 v0, 0x0

    .line 1899
    goto :goto_40

    .line 1900
    :cond_73
    const/4 v8, 0x1

    .line 1901
    new-array v0, v8, [Landroid/window/ITaskFragmentOrganizer;

    .line 1902
    .line 1903
    new-instance v8, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;

    .line 1904
    .line 1905
    invoke-direct {v8, v0}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;-><init>([Landroid/window/ITaskFragmentOrganizer;)V

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual {v7, v8}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    .line 1909
    .line 1910
    .line 1911
    move-result v8

    .line 1912
    if-eqz v8, :cond_74

    .line 1913
    .line 1914
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 1915
    .line 1916
    const/4 v8, 0x4

    .line 1917
    aget-boolean v0, v0, v8

    .line 1918
    .line 1919
    if-eqz v0, :cond_72

    .line 1920
    .line 1921
    sget-object v24, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1922
    .line 1923
    const/16 v28, 0x0

    .line 1924
    .line 1925
    const/16 v29, 0x0

    .line 1926
    .line 1927
    const-wide v25, 0xbde17382e0a383bL

    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    const/16 v27, 0x0

    .line 1933
    .line 1934
    invoke-static/range {v24 .. v29}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1935
    .line 1936
    .line 1937
    goto :goto_3f

    .line 1938
    :cond_74
    const/4 v8, 0x0

    .line 1939
    aget-object v0, v0, v8

    .line 1940
    .line 1941
    :goto_40
    if-eqz v0, :cond_76

    .line 1942
    .line 1943
    iget-object v8, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1944
    .line 1945
    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1946
    .line 1947
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1948
    .line 1949
    iget-object v14, v8, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1950
    .line 1951
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1952
    .line 1953
    .line 1954
    monitor-enter v14

    .line 1955
    :try_start_0
    iget-object v8, v8, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 1956
    .line 1957
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v15

    .line 1961
    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    .line 1963
    .line 1964
    move-result-object v8

    .line 1965
    check-cast v8, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 1966
    .line 1967
    if-nez v8, :cond_75

    .line 1968
    .line 1969
    const-string v8, "TaskFragmentOrganizerController"

    .line 1970
    .line 1971
    const-string v15, "TaskFragmentOrganizer has been unregistered or died when trying to play animation on its organized windows."

    .line 1972
    .line 1973
    invoke-static {v8, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    .line 1975
    .line 1976
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1978
    .line 1979
    .line 1980
    goto :goto_42

    .line 1981
    :catchall_0
    move-exception v0

    .line 1982
    goto :goto_41

    .line 1983
    :cond_75
    :try_start_1
    iget-object v8, v8, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 1984
    .line 1985
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1986
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1987
    .line 1988
    .line 1989
    goto :goto_43

    .line 1990
    :goto_41
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1991
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1992
    .line 1993
    .line 1994
    throw v0

    .line 1995
    :cond_76
    :goto_42
    const/4 v8, 0x0

    .line 1996
    :goto_43
    if-eqz v8, :cond_77

    .line 1997
    .line 1998
    invoke-virtual {v8, v6, v1}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v8

    .line 2002
    goto :goto_44

    .line 2003
    :cond_77
    const/4 v8, 0x0

    .line 2004
    :goto_44
    if-nez v8, :cond_78

    .line 2005
    .line 2006
    goto/16 :goto_3b

    .line 2007
    .line 2008
    :cond_78
    iget-object v14, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2009
    .line 2010
    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2011
    .line 2012
    move-object/from16 v18, v12

    .line 2013
    .line 2014
    const/4 v12, 0x0

    .line 2015
    const/4 v15, 0x1

    .line 2016
    invoke-virtual {v14, v8, v12, v15}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;ZZ)V

    .line 2017
    .line 2018
    .line 2019
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 2020
    .line 2021
    aget-boolean v12, v8, v15

    .line 2022
    .line 2023
    if-eqz v12, :cond_79

    .line 2024
    .line 2025
    invoke-static {v6}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v12

    .line 2029
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v12

    .line 2033
    sget-object v24, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2034
    .line 2035
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 2036
    .line 2037
    .line 2038
    move-result-object v29

    .line 2039
    const/16 v28, 0x0

    .line 2040
    .line 2041
    const-wide v25, 0xd304b8ec4131adL

    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    const/16 v27, 0x0

    .line 2047
    .line 2048
    invoke-static/range {v24 .. v29}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2049
    .line 2050
    .line 2051
    :cond_79
    iget-object v12, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2052
    .line 2053
    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2054
    .line 2055
    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 2056
    .line 2057
    invoke-virtual {v12, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v0

    .line 2061
    iget v0, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    .line 2062
    .line 2063
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2064
    .line 2065
    .line 2066
    new-instance v12, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda16;

    .line 2067
    .line 2068
    invoke-direct {v12, v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda16;-><init>(I)V

    .line 2069
    .line 2070
    .line 2071
    invoke-virtual {v7, v12}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 2072
    .line 2073
    .line 2074
    move-result v0

    .line 2075
    iget-object v12, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2076
    .line 2077
    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2078
    .line 2079
    iget-object v12, v12, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 2080
    .line 2081
    if-eqz v0, :cond_7a

    .line 2082
    .line 2083
    if-eqz v12, :cond_7a

    .line 2084
    .line 2085
    new-instance v0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda7;

    .line 2086
    .line 2087
    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/Task;)V

    .line 2088
    .line 2089
    .line 2090
    iput-object v0, v12, Lcom/android/server/wm/RemoteAnimationController;->mOnRemoteAnimationReady:Ljava/lang/Runnable;

    .line 2091
    .line 2092
    const/4 v0, 0x0

    .line 2093
    aget-boolean v8, v8, v0

    .line 2094
    .line 2095
    if-eqz v8, :cond_7a

    .line 2096
    .line 2097
    iget v0, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2098
    .line 2099
    int-to-long v7, v0

    .line 2100
    sget-object v24, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2101
    .line 2102
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v0

    .line 2106
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 2107
    .line 2108
    .line 2109
    move-result-object v29

    .line 2110
    const-wide v25, 0x1fa46262ee1a3a3eL

    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    const/16 v27, 0x1

    .line 2116
    .line 2117
    const/16 v28, 0x0

    .line 2118
    .line 2119
    invoke-static/range {v24 .. v29}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2120
    .line 2121
    .line 2122
    :cond_7a
    const/4 v0, 0x1

    .line 2123
    :goto_45
    if-nez v0, :cond_81

    .line 2124
    .line 2125
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2126
    .line 2127
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 2128
    .line 2129
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 2130
    .line 2131
    .line 2132
    move-result v7

    .line 2133
    const/4 v8, 0x1

    .line 2134
    sub-int/2addr v7, v8

    .line 2135
    :goto_46
    if-ltz v7, :cond_7c

    .line 2136
    .line 2137
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v8

    .line 2141
    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 2142
    .line 2143
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    .line 2144
    .line 2145
    .line 2146
    move-result v12

    .line 2147
    if-eqz v12, :cond_7b

    .line 2148
    .line 2149
    iget-object v12, v8, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 2150
    .line 2151
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v8

    .line 2155
    invoke-virtual {v12, v8}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 2156
    .line 2157
    .line 2158
    :cond_7b
    add-int/lit8 v7, v7, -0x1

    .line 2159
    .line 2160
    goto :goto_46

    .line 2161
    :cond_7c
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2162
    .line 2163
    const/16 v7, 0x1a

    .line 2164
    .line 2165
    if-ne v6, v7, :cond_7d

    .line 2166
    .line 2167
    goto :goto_47

    .line 2168
    :cond_7d
    invoke-static {v6}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    .line 2169
    .line 2170
    .line 2171
    move-result v7

    .line 2172
    if-eqz v7, :cond_7e

    .line 2173
    .line 2174
    iget-object v2, v4, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 2175
    .line 2176
    if-eqz v2, :cond_80

    .line 2177
    .line 2178
    invoke-virtual {v2, v6, v1}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v14

    .line 2182
    goto :goto_48

    .line 2183
    :cond_7e
    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2184
    .line 2185
    iget-object v7, v7, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 2186
    .line 2187
    if-nez v7, :cond_80

    .line 2188
    .line 2189
    if-eqz v2, :cond_7f

    .line 2190
    .line 2191
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v2

    .line 2195
    if-eqz v2, :cond_7f

    .line 2196
    .line 2197
    invoke-virtual {v2, v6, v1}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    .line 2198
    .line 2199
    .line 2200
    move-result-object v2

    .line 2201
    if-eqz v2, :cond_7f

    .line 2202
    .line 2203
    move-object v14, v2

    .line 2204
    goto :goto_48

    .line 2205
    :cond_7f
    iget-object v2, v4, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 2206
    .line 2207
    if-eqz v2, :cond_80

    .line 2208
    .line 2209
    invoke-virtual {v2, v6, v1}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v14

    .line 2213
    goto :goto_48

    .line 2214
    :cond_80
    :goto_47
    const/4 v14, 0x0

    .line 2215
    :goto_48
    if-eqz v14, :cond_81

    .line 2216
    .line 2217
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2218
    .line 2219
    const/4 v1, 0x0

    .line 2220
    invoke-virtual {v0, v14, v1, v1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;ZZ)V

    .line 2221
    .line 2222
    .line 2223
    :cond_81
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2224
    .line 2225
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 2226
    .line 2227
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 2228
    .line 2229
    .line 2230
    move-result v1

    .line 2231
    const/4 v2, 0x1

    .line 2232
    sub-int/2addr v1, v2

    .line 2233
    :goto_49
    if-ltz v1, :cond_83

    .line 2234
    .line 2235
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2236
    .line 2237
    .line 2238
    move-result-object v2

    .line 2239
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 2240
    .line 2241
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    .line 2242
    .line 2243
    if-eqz v2, :cond_82

    .line 2244
    .line 2245
    const/4 v0, 0x1

    .line 2246
    goto :goto_4a

    .line 2247
    :cond_82
    add-int/lit8 v1, v1, -0x1

    .line 2248
    .line 2249
    goto :goto_49

    .line 2250
    :cond_83
    const/4 v0, 0x0

    .line 2251
    :goto_4a
    if-nez v0, :cond_87

    .line 2252
    .line 2253
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2254
    .line 2255
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 2256
    .line 2257
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 2258
    .line 2259
    .line 2260
    move-result v1

    .line 2261
    const/4 v2, 0x1

    .line 2262
    sub-int/2addr v1, v2

    .line 2263
    :goto_4b
    if-ltz v1, :cond_85

    .line 2264
    .line 2265
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v2

    .line 2269
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 2270
    .line 2271
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    .line 2272
    .line 2273
    if-eqz v2, :cond_84

    .line 2274
    .line 2275
    const/4 v0, 0x1

    .line 2276
    goto :goto_4c

    .line 2277
    :cond_84
    add-int/lit8 v1, v1, -0x1

    .line 2278
    .line 2279
    goto :goto_4b

    .line 2280
    :cond_85
    const/4 v0, 0x0

    .line 2281
    :goto_4c
    if-eqz v0, :cond_86

    .line 2282
    .line 2283
    goto :goto_4d

    .line 2284
    :cond_86
    const/4 v12, 0x0

    .line 2285
    goto :goto_4e

    .line 2286
    :cond_87
    :goto_4d
    const/4 v12, 0x1

    .line 2287
    :goto_4e
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2288
    .line 2289
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2290
    .line 2291
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 2292
    .line 2293
    monitor-enter v1

    .line 2294
    const/4 v2, 0x1

    .line 2295
    :try_start_3
    iput-boolean v2, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 2296
    .line 2297
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2298
    :try_start_4
    invoke-static {v6}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    .line 2299
    .line 2300
    .line 2301
    move-result v0

    .line 2302
    if-eqz v0, :cond_8a

    .line 2303
    .line 2304
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2305
    .line 2306
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 2307
    .line 2308
    new-instance v1, Landroid/util/ArraySet;

    .line 2309
    .line 2310
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2311
    .line 2312
    .line 2313
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v2

    .line 2317
    :cond_88
    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2318
    .line 2319
    .line 2320
    move-result v7

    .line 2321
    if-eqz v7, :cond_89

    .line 2322
    .line 2323
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2324
    .line 2325
    .line 2326
    move-result-object v7

    .line 2327
    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 2328
    .line 2329
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 2330
    .line 2331
    iget-boolean v8, v8, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 2332
    .line 2333
    if-eqz v8, :cond_88

    .line 2334
    .line 2335
    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2336
    .line 2337
    if-eqz v7, :cond_88

    .line 2338
    .line 2339
    new-instance v8, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;

    .line 2340
    .line 2341
    invoke-direct {v8, v0, v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 2342
    .line 2343
    .line 2344
    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2345
    .line 2346
    .line 2347
    goto :goto_4f

    .line 2348
    :catchall_1
    move-exception v0

    .line 2349
    move-object/from16 v1, v18

    .line 2350
    .line 2351
    :goto_50
    const/4 v3, 0x1

    .line 2352
    goto/16 :goto_57

    .line 2353
    .line 2354
    :cond_89
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2355
    .line 2356
    .line 2357
    :cond_8a
    move-object v7, v4

    .line 2358
    move-object v8, v9

    .line 2359
    move-object v9, v10

    .line 2360
    move v10, v6

    .line 2361
    move-object/from16 v1, v18

    .line 2362
    .line 2363
    :try_start_5
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 2364
    .line 2365
    .line 2366
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransitionController;->handleClosingApps()V

    .line 2367
    .line 2368
    .line 2369
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransitionController;->handleOpeningApps()V

    .line 2370
    .line 2371
    .line 2372
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2373
    .line 2374
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 2375
    .line 2376
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 2377
    .line 2378
    .line 2379
    move-result v2

    .line 2380
    const/4 v7, 0x0

    .line 2381
    :goto_51
    if-ge v7, v2, :cond_8c

    .line 2382
    .line 2383
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2384
    .line 2385
    .line 2386
    move-result-object v8

    .line 2387
    move-object/from16 v24, v8

    .line 2388
    .line 2389
    check-cast v24, Lcom/android/server/wm/WindowContainer;

    .line 2390
    .line 2391
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 2392
    .line 2393
    const/4 v9, 0x1

    .line 2394
    aget-boolean v8, v8, v9

    .line 2395
    .line 2396
    if-eqz v8, :cond_8b

    .line 2397
    .line 2398
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v8

    .line 2402
    sget-object v25, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2403
    .line 2404
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 2405
    .line 2406
    .line 2407
    move-result-object v30

    .line 2408
    const/16 v29, 0x0

    .line 2409
    .line 2410
    const-wide v26, 0x19bfea631cce3ce9L    # 1.1736141632999038E-184

    .line 2411
    .line 2412
    .line 2413
    .line 2414
    .line 2415
    const/16 v28, 0x0

    .line 2416
    .line 2417
    invoke-static/range {v25 .. v30}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2418
    .line 2419
    .line 2420
    :cond_8b
    const/16 v25, 0x0

    .line 2421
    .line 2422
    const/16 v27, 0x1

    .line 2423
    .line 2424
    const/16 v28, 0x0

    .line 2425
    .line 2426
    const/16 v29, 0x0

    .line 2427
    .line 2428
    move/from16 v26, v6

    .line 2429
    .line 2430
    invoke-virtual/range {v24 .. v29}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    .line 2431
    .line 2432
    .line 2433
    add-int/lit8 v7, v7, 0x1

    .line 2434
    .line 2435
    goto :goto_51

    .line 2436
    :cond_8c
    iget-object v0, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2437
    .line 2438
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingChangingContainers:Landroid/util/ArrayMap;

    .line 2439
    .line 2440
    :cond_8d
    :goto_52
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 2441
    .line 2442
    .line 2443
    move-result v2

    .line 2444
    if-nez v2, :cond_8e

    .line 2445
    .line 2446
    const/4 v2, 0x0

    .line 2447
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 2448
    .line 2449
    .line 2450
    move-result-object v7

    .line 2451
    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 2452
    .line 2453
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
    .line 2455
    .line 2456
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 2457
    .line 2458
    .line 2459
    move-result-object v7

    .line 2460
    if-eqz v7, :cond_8d

    .line 2461
    .line 2462
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurface()V

    .line 2463
    .line 2464
    .line 2465
    goto :goto_52

    .line 2466
    :cond_8e
    const/4 v2, 0x0

    .line 2467
    invoke-virtual {v1, v6, v3, v5, v13}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 2468
    .line 2469
    .line 2470
    invoke-virtual {v1, v6, v3}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/ActivityRecord;)I

    .line 2471
    .line 2472
    .line 2473
    move-result v0

    .line 2474
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2475
    .line 2476
    .line 2477
    const/4 v6, 0x1

    .line 2478
    invoke-virtual {v1, v6}, Lcom/android/server/wm/AppTransition;->clear(Z)V

    .line 2479
    .line 2480
    .line 2481
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2482
    .line 2483
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2484
    .line 2485
    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 2486
    .line 2487
    .line 2488
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2489
    .line 2490
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 2491
    .line 2492
    iget-object v6, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2493
    .line 2494
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2495
    .line 2496
    .line 2497
    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 2498
    .line 2499
    iget-object v1, v1, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 2500
    .line 2501
    invoke-virtual {v1}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 2502
    .line 2503
    .line 2504
    move-result v7

    .line 2505
    if-eqz v7, :cond_8f

    .line 2506
    .line 2507
    goto/16 :goto_56

    .line 2508
    .line 2509
    :cond_8f
    iget-object v7, v1, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 2510
    .line 2511
    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    .line 2512
    .line 2513
    .line 2514
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 2515
    .line 2516
    .line 2517
    move-result v7

    .line 2518
    const/4 v8, 0x1

    .line 2519
    sub-int/2addr v7, v8

    .line 2520
    :goto_53
    if-ltz v7, :cond_96

    .line 2521
    .line 2522
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2523
    .line 2524
    .line 2525
    move-result-object v8

    .line 2526
    check-cast v8, Lcom/android/server/wm/ActivityRecord;

    .line 2527
    .line 2528
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 2529
    .line 2530
    .line 2531
    move-result v9

    .line 2532
    if-eqz v9, :cond_90

    .line 2533
    .line 2534
    goto :goto_55

    .line 2535
    :cond_90
    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2536
    .line 2537
    if-nez v8, :cond_91

    .line 2538
    .line 2539
    goto :goto_55

    .line 2540
    :cond_91
    iget-object v9, v1, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 2541
    .line 2542
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    .line 2543
    .line 2544
    .line 2545
    move-result v10

    .line 2546
    if-eqz v10, :cond_92

    .line 2547
    .line 2548
    iget-object v10, v1, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    .line 2549
    .line 2550
    iget v11, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2551
    .line 2552
    invoke-virtual {v10, v11}, Landroid/util/IntArray;->add(I)V

    .line 2553
    .line 2554
    .line 2555
    :cond_92
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 2556
    .line 2557
    if-eqz v10, :cond_94

    .line 2558
    .line 2559
    iget-object v10, v1, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2560
    .line 2561
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2562
    .line 2563
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    .line 2564
    .line 2565
    iget v10, v10, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    .line 2566
    .line 2567
    const/4 v11, 0x1

    .line 2568
    if-ne v10, v11, :cond_93

    .line 2569
    .line 2570
    const/4 v10, 0x1

    .line 2571
    goto :goto_54

    .line 2572
    :cond_93
    move v10, v2

    .line 2573
    :goto_54
    if-eqz v10, :cond_94

    .line 2574
    .line 2575
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 2576
    .line 2577
    .line 2578
    move-result v10

    .line 2579
    if-eqz v10, :cond_94

    .line 2580
    .line 2581
    iget-object v10, v1, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    .line 2582
    .line 2583
    iget v11, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2584
    .line 2585
    invoke-virtual {v10, v11}, Landroid/util/IntArray;->add(I)V

    .line 2586
    .line 2587
    .line 2588
    :cond_94
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 2589
    .line 2590
    .line 2591
    move-result v10

    .line 2592
    if-nez v10, :cond_95

    .line 2593
    .line 2594
    iget-object v10, v1, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    .line 2595
    .line 2596
    iget v11, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2597
    .line 2598
    invoke-virtual {v10, v11}, Landroid/util/IntArray;->indexOf(I)I

    .line 2599
    .line 2600
    .line 2601
    move-result v10

    .line 2602
    if-gez v10, :cond_95

    .line 2603
    .line 2604
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2605
    .line 2606
    .line 2607
    :cond_95
    :goto_55
    add-int/lit8 v7, v7, -0x1

    .line 2608
    .line 2609
    goto :goto_53

    .line 2610
    :cond_96
    iget-object v6, v1, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 2611
    .line 2612
    invoke-virtual {v1, v6}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 2613
    .line 2614
    .line 2615
    iget-object v6, v1, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 2616
    .line 2617
    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    .line 2618
    .line 2619
    .line 2620
    iget-object v1, v1, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    .line 2621
    .line 2622
    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 2623
    .line 2624
    .line 2625
    :goto_56
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2626
    .line 2627
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 2628
    .line 2629
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2630
    .line 2631
    .line 2632
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2633
    .line 2634
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 2635
    .line 2636
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2637
    .line 2638
    .line 2639
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2640
    .line 2641
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 2642
    .line 2643
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2644
    .line 2645
    .line 2646
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2647
    .line 2648
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 2649
    .line 2650
    iget-object v1, v1, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    .line 2651
    .line 2652
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2653
    .line 2654
    .line 2655
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2656
    .line 2657
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingChangingContainers:Landroid/util/ArrayMap;

    .line 2658
    .line 2659
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2660
    .line 2661
    .line 2662
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    .line 2663
    .line 2664
    if-eqz v1, :cond_98

    .line 2665
    .line 2666
    if-eqz v5, :cond_98

    .line 2667
    .line 2668
    if-eqz v3, :cond_98

    .line 2669
    .line 2670
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    .line 2671
    .line 2672
    .line 2673
    move-result v1

    .line 2674
    if-eqz v1, :cond_97

    .line 2675
    .line 2676
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    .line 2677
    .line 2678
    .line 2679
    move-result v1

    .line 2680
    if-nez v1, :cond_98

    .line 2681
    .line 2682
    :cond_97
    iget-object v1, v3, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 2683
    .line 2684
    const/4 v3, 0x2

    .line 2685
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    .line 2686
    .line 2687
    .line 2688
    iget-object v1, v5, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 2689
    .line 2690
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    .line 2691
    .line 2692
    .line 2693
    :cond_98
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2694
    .line 2695
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2696
    .line 2697
    .line 2698
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2699
    .line 2700
    const/4 v3, 0x1

    .line 2701
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 2702
    .line 2703
    .line 2704
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2705
    .line 2706
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2707
    .line 2708
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2709
    .line 2710
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 2711
    .line 2712
    iget-object v3, v4, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 2713
    .line 2714
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    .line 2715
    .line 2716
    .line 2717
    const-wide/16 v5, 0x20

    .line 2718
    .line 2719
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 2720
    .line 2721
    .line 2722
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2723
    .line 2724
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2725
    .line 2726
    const/4 v4, 0x3

    .line 2727
    or-int/2addr v0, v4

    .line 2728
    or-int/2addr v0, v3

    .line 2729
    iput v0, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2730
    .line 2731
    const/4 v3, 0x1

    .line 2732
    goto :goto_58

    .line 2733
    :catchall_2
    move-exception v0

    .line 2734
    goto/16 :goto_50

    .line 2735
    .line 2736
    :goto_57
    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppTransition;->clear(Z)V

    .line 2737
    .line 2738
    .line 2739
    iget-object v1, v4, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2740
    .line 2741
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2742
    .line 2743
    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 2744
    .line 2745
    .line 2746
    throw v0

    .line 2747
    :catchall_3
    move-exception v0

    .line 2748
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2749
    throw v0

    .line 2750
    :goto_58
    move-object/from16 v0, v32

    .line 2751
    .line 2752
    goto :goto_5a

    .line 2753
    :cond_99
    :goto_59
    move/from16 v22, v1

    .line 2754
    .line 2755
    move-object/from16 v32, v3

    .line 2756
    .line 2757
    move v3, v2

    .line 2758
    move v2, v6

    .line 2759
    goto :goto_58

    .line 2760
    :goto_5a
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2761
    .line 2762
    iget v1, v1, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 2763
    .line 2764
    const/4 v4, 0x2

    .line 2765
    if-ne v1, v4, :cond_9a

    .line 2766
    .line 2767
    move v6, v3

    .line 2768
    goto :goto_5b

    .line 2769
    :cond_9a
    move v6, v2

    .line 2770
    :goto_5b
    if-eqz v6, :cond_9b

    .line 2771
    .line 2772
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    .line 2773
    .line 2774
    .line 2775
    move-result v1

    .line 2776
    if-nez v1, :cond_9b

    .line 2777
    .line 2778
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 2779
    .line 2780
    .line 2781
    :cond_9b
    add-int/lit8 v1, v22, -0x1

    .line 2782
    .line 2783
    move-object/from16 v0, p0

    .line 2784
    .line 2785
    move v2, v3

    .line 2786
    goto/16 :goto_0

    .line 2787
    .line 2788
    :cond_9c
    return-void
.end method

.method public final createSleepToken(ILjava/lang/String;Z)Lcom/android/server/wm/RootWindowContainer$SleepToken;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/android/server/wm/ExtraDisplayPolicy;->isDisplayControlledByPolicy(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    if-eqz v0, :cond_4

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 54
    .line 55
    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer$SleepToken;-><init>(ILjava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    filled-new-array {p0, v3, p2}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const v3, 0xf4309

    .line 82
    .line 83
    .line 84
    invoke-static {v3, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    aget-boolean p0, p0, v3

    .line 91
    .line 92
    if-eqz p0, :cond_1

    .line 93
    .line 94
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    int-to-long p1, p1

    .line 99
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 100
    .line 101
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    const/4 v6, 0x4

    .line 110
    const/4 v7, 0x0

    .line 111
    const-wide v4, -0x3d22f00acde6c4f4L    # -1.2781750166449219E14

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    if-eqz p3, :cond_2

    .line 120
    .line 121
    iget-object p0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WallpaperController;->notifyDisplaySwitch(Z)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController;->mIsWallpaperNotifiedOnDisplaySwitch:Z

    .line 128
    .line 129
    :cond_2
    return-object v2

    .line 130
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 131
    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string p2, "Create the same sleep token twice: "

    .line 135
    .line 136
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string p2, "Invalid display: "

    .line 153
    .line 154
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p0
.end method

.method public final dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-boolean p0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "topDisplayFocusedRootTask="

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    :goto_0
    if-ltz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 38
    .line 39
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-ne v2, v3, :cond_0

    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    const-wide v5, 0x10b00000001L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    invoke-super {v0, v1, v5, v6, v2}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v2, v5}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-wide v7, 0x10b00000005L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    iget-boolean v9, v6, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 48
    .line 49
    const-wide v10, 0x10800000003L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 55
    .line 56
    .line 57
    iget-boolean v9, v6, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 58
    .line 59
    const-wide v12, 0x10800000001L

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 65
    .line 66
    .line 67
    iget-boolean v6, v6, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 68
    .line 69
    const-wide v12, 0x10800000005L

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v12, v13, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget-object v6, v2, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-ge v5, v6, :cond_1

    .line 84
    .line 85
    iget-object v6, v2, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const-wide v14, 0x20b00000004L

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 102
    .line 103
    .line 104
    move-result-wide v14

    .line 105
    const-wide v12, 0x10500000001L

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    iget v9, v6, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 111
    .line 112
    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 113
    .line 114
    .line 115
    const-wide v12, 0x10800000002L

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    iget-boolean v9, v6, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 121
    .line 122
    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 123
    .line 124
    .line 125
    iget-boolean v9, v6, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 126
    .line 127
    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 128
    .line 129
    .line 130
    const-wide v12, 0x10800000004L

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    iget-boolean v9, v6, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 136
    .line 137
    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 138
    .line 139
    .line 140
    iget-boolean v6, v6, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 141
    .line 142
    const-wide v12, 0x10800000005L

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v12, v13, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 151
    .line 152
    .line 153
    add-int/lit8 v5, v5, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 157
    .line 158
    .line 159
    iget-object v2, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 160
    .line 161
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 162
    .line 163
    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 164
    .line 165
    invoke-virtual {v2, v0}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    const-wide v5, 0x10800000006L

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final dumpDisplayConfigs(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "Display override configurations:"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 31
    .line 32
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 33
    .line 34
    .line 35
    const-string v4, ": "

    .line 36
    .line 37
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public final dumpDisplayContents(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    const-string v3, "  "

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p0, "  NO DISPLAY"

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final ensureActivitiesVisible()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 3
    iget v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    if-lez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x20

    .line 5
    const-string v2, "RWC_ensureActivitiesVisible"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 10
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 12
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 13
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 14
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 15
    throw p1
.end method

.method public final ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Lcom/android/server/wm/WindowContainer;Z)Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget v1, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 14
    .line 15
    if-ne v1, p0, :cond_0

    .line 16
    .line 17
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-boolean v1, v1, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p2, v0, p1, p3}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/content/ComponentName;

    .line 10
    .line 11
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    move-object v8, v0

    .line 19
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 22
    .line 23
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    const-class v0, Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    move-object v7, p1

    .line 47
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 56
    .line 57
    .line 58
    return-object p0
.end method

.method public final finishDisabledPackageActivities(ILjava/lang/String;Ljava/util/Set;ZZZ)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mPackageName:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mFilterByClasses:Ljava/util/Set;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mDoit:Z

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mEvenPersistent:Z

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mUserId:I

    .line 12
    .line 13
    iput-boolean p6, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mOnlyRemoveNoProcess:Z

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mLastTask:Lcom/android/server/wm/Task;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mCollectedActivities:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 p2, 0x0

    .line 30
    move p3, p2

    .line 31
    move p4, p3

    .line 32
    :goto_0
    if-ge p3, p1, :cond_2

    .line 33
    .line 34
    iget-object p5, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mCollectedActivities:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p5

    .line 40
    check-cast p5, Lcom/android/server/wm/ActivityRecord;

    .line 41
    .line 42
    iget-boolean p6, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mOnlyRemoveNoProcess:Z

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    const-string v1, "force-stop"

    .line 46
    .line 47
    const-string v2, "WindowManager"

    .line 48
    .line 49
    if-eqz p6, :cond_0

    .line 50
    .line 51
    invoke-virtual {p5}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 52
    .line 53
    .line 54
    move-result p6

    .line 55
    if-nez p6, :cond_1

    .line 56
    .line 57
    new-instance p4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string p6, "  Force removing "

    .line 60
    .line 61
    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    invoke-static {v2, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p5, p2, p2}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p5, v1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    move p4, v0

    .line 81
    goto :goto_2

    .line 82
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string p6, "  Force finishing "

    .line 85
    .line 86
    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    invoke-static {v2, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p5, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mCollectedActivities:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 109
    .line 110
    .line 111
    return p4
.end method

.method public final forAllDisplayPolicies(Ljava/util/function/Consumer;)V
    .locals 2

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
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final forAllDisplays(Ljava/util/function/Consumer;)V
    .locals 2

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
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final getAllRootTaskInfos(I)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;
    .locals 2

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
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-object v1

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
    return-object p0
.end method

.method public final getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 7
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_2
    new-instance v0, Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 24
    .line 25
    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/DeviceStateController;)V

    .line 26
    .line 27
    .line 28
    const/high16 p1, -0x80000000

    .line 29
    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public final getDumpActivities(Ljava/lang/String;ZZI)Ljava/util/ArrayList;
    .locals 7

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p4, p1}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(ILjava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    iget-object p3, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    .line 24
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 25
    .line 26
    if-eqz p3, :cond_2

    .line 27
    .line 28
    iget p3, p3, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 29
    .line 30
    :goto_0
    move v1, p3

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 p3, -0x1

    .line 33
    goto :goto_0

    .line 34
    :goto_1
    new-instance p3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v6, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;

    .line 40
    .line 41
    move-object v0, v6

    .line 42
    move v2, p2

    .line 43
    move-object v3, p3

    .line 44
    move-object v4, p1

    .line 45
    move v5, p4

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;-><init>(IZLjava/util/ArrayList;Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    .line 50
    .line 51
    .line 52
    return-object p3
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ROOT"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOrCreateRootTask(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v4, p1}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v4

    :cond_0
    const/4 v4, -0x1

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    if-eq v6, v4, :cond_1

    .line 5
    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    const/4 v7, 0x2

    move/from16 v8, p5

    .line 6
    invoke-virtual {p0, v6, v7, v2, v8}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v7

    .line 7
    invoke-virtual {v2, v6}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 8
    invoke-static {v7, p1}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    :cond_1
    move/from16 v8, p5

    :cond_2
    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 10
    iget-object v7, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_5

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 12
    invoke-virtual {v7}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_0

    :cond_4
    move-object v7, v6

    :goto_0
    if-nez v7, :cond_6

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v9

    if-eq v9, v4, :cond_6

    .line 14
    invoke-virtual {p0, v9}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 15
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    move-object v7, v4

    goto :goto_1

    :cond_5
    move-object v7, v6

    .line 16
    :cond_6
    :goto_1
    invoke-static {v2, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v9

    const/4 v4, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_16

    .line 17
    iget-object v11, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 18
    iget v11, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 19
    invoke-static {v11, p1}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(ILcom/android/server/wm/ActivityRecord;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 20
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_ENSURE_LAUNCH_SPLIT_ENABLED:Z

    if-eqz v0, :cond_14

    .line 21
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 22
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v11

    if-eqz v11, :cond_14

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    :cond_7
    if-eqz v2, :cond_a

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_14

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    goto/16 :goto_5

    .line 26
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 27
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v0, :cond_9

    goto/16 :goto_5

    .line 28
    :cond_9
    invoke-static {v2, p1, v6}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    if-ne v0, v4, :cond_a

    goto/16 :goto_5

    :cond_a
    if-eqz p4, :cond_b

    .line 29
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_5

    :cond_b
    if-eqz v1, :cond_14

    .line 30
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-nez v0, :cond_14

    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32
    invoke-virtual {p1, v7}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v3, :cond_c

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_5

    :cond_c
    if-eqz v2, :cond_d

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    if-nez v0, :cond_e

    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    goto :goto_2

    :cond_d
    move v0, v10

    :cond_e
    :goto_2
    if-eqz v3, :cond_f

    .line 36
    iget-object v4, v3, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_12

    .line 37
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v4

    if-nez v4, :cond_12

    .line 38
    :cond_f
    invoke-virtual {v7, v0, p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_3

    :cond_10
    move v10, v0

    :goto_3
    if-nez v10, :cond_12

    if-eqz v3, :cond_11

    .line 39
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v0

    if-eqz v0, :cond_11

    .line 40
    invoke-virtual {v7, v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 41
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_4

    .line 43
    :cond_11
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootStageTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 44
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_13

    .line 45
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v2

    .line 46
    iget-object v3, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 47
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_13

    if-eqz v4, :cond_13

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 48
    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 49
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v1

    if-ne v2, v1, :cond_13

    .line 50
    iget-object v1, v0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v1, :cond_13

    .line 51
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_4

    :cond_12
    move-object v0, v7

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move v7, v9

    move/from16 v8, p5

    .line 52
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_13
    :goto_4
    return-object v0

    :cond_14
    :goto_5
    move-object v0, v7

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move v7, v9

    move/from16 v8, p5

    .line 53
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    :cond_15
    move-object v7, v6

    :cond_16
    if-eqz v3, :cond_17

    .line 54
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    goto :goto_6

    :cond_17
    move-object v11, v6

    :goto_6
    if-nez v11, :cond_18

    if-eqz v1, :cond_18

    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    :cond_18
    if-eqz v5, :cond_19

    .line 56
    iget v12, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_7

    :cond_19
    move v12, v10

    :goto_7
    if-eqz v11, :cond_24

    .line 57
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 58
    iget-object v13, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v13, v13, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 59
    invoke-static {v13, p1}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(ILcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 60
    invoke-static {v2, p1, v3}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v6

    if-eqz v6, :cond_1b

    if-eqz v3, :cond_1a

    .line 61
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v13

    if-eq v13, v6, :cond_1b

    :cond_1a
    move v6, v4

    goto :goto_8

    :cond_1b
    move v6, v10

    :goto_8
    if-eqz v6, :cond_1c

    .line 62
    invoke-static {v2, p1, v3}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v12

    :cond_1c
    if-nez v12, :cond_23

    if-eqz v2, :cond_1d

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v6

    goto :goto_9

    :cond_1d
    move v6, v10

    :goto_9
    if-nez v6, :cond_20

    if-eqz v3, :cond_1e

    .line 64
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    :cond_1e
    if-nez v6, :cond_1f

    if-eqz v1, :cond_1f

    .line 65
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    :cond_1f
    if-nez v6, :cond_20

    .line 66
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    .line 67
    :cond_20
    invoke-virtual {v7, v6, p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v12

    if-nez v12, :cond_21

    goto :goto_a

    :cond_21
    move v10, v6

    :goto_a
    if-eqz v10, :cond_22

    move v4, v10

    :cond_22
    move v12, v4

    .line 68
    :cond_23
    invoke-virtual {v11, v12, v9}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result v4

    if-nez v4, :cond_25

    iget-boolean v4, v11, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_24

    const/4 v4, 0x5

    if-eq v12, v4, :cond_24

    goto :goto_b

    :cond_24
    move-object v6, v7

    goto :goto_c

    :cond_25
    :goto_b
    return-object v11

    :cond_26
    :goto_c
    if-nez v6, :cond_27

    .line 69
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    goto :goto_d

    :cond_27
    move-object v0, v6

    :goto_d
    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move v7, v9

    move/from16 v8, p5

    .line 70
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getRootTask(I)Lcom/android/server/wm/Task;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

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
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;-><init>(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public getRunningTasks(ILjava/util/List;IILandroid/util/ArraySet;I)V
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p6, v0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0, p6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    .line 7
    move-result-object p6

    .line 8
    if-nez p6, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    move-object v5, p6

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move-object v5, p0

    .line 14
    :goto_0
    iget-object p6, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 15
    .line 16
    iget-object v0, p6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    move v1, p1

    .line 24
    move-object v2, p2

    .line 25
    move v3, p3

    .line 26
    move v6, p4

    .line 27
    move-object v7, p5

    .line 28
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/RunningTasks;->getTasks(ILjava/util/List;ILcom/android/server/wm/RecentTasks;Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

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
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public final getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    return-object v0
.end method

.method public final getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

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
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda14;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    return-object p0
.end method

.method public final getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 2

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
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final handleResizingWindows()V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    sub-int/2addr v0, v2

    .line 13
    move v3, v0

    .line 14
    :goto_0
    if-ltz v3, :cond_14

    .line 15
    .line 16
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v10, v0

    .line 25
    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 26
    .line 27
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 28
    .line 29
    if-nez v0, :cond_13

    .line 30
    .line 31
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto/16 :goto_f

    .line 40
    .line 41
    :cond_0
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 42
    .line 43
    iget-object v4, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 44
    .line 45
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    if-ne v5, v6, :cond_1

    .line 52
    .line 53
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    if-ne v4, v0, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v10, v0}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    goto/16 :goto_e

    .line 78
    .line 79
    :cond_2
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    goto/16 :goto_e

    .line 94
    .line 95
    :cond_3
    const-wide/16 v11, 0x20

    .line 96
    .line 97
    invoke-static {v11, v12}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string/jumbo v4, "wm.reportResized_"

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    .line 126
    .line 127
    aget-boolean v0, v0, v2

    .line 128
    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v4, v10, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 136
    .line 137
    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 138
    .line 139
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 144
    .line 145
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v18

    .line 149
    const/16 v16, 0x0

    .line 150
    .line 151
    const/16 v17, 0x0

    .line 152
    .line 153
    const-wide v14, -0x6009ddf18f00c049L

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 162
    .line 163
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 164
    .line 165
    const/4 v13, 0x0

    .line 166
    if-ne v0, v2, :cond_6

    .line 167
    .line 168
    move v0, v2

    .line 169
    goto :goto_2

    .line 170
    :cond_6
    move v0, v13

    .line 171
    :goto_2
    if-eqz v0, :cond_7

    .line 172
    .line 173
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 174
    .line 175
    const/4 v5, 0x2

    .line 176
    aget-boolean v4, v4, v5

    .line 177
    .line 178
    if-eqz v4, :cond_7

    .line 179
    .line 180
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 185
    .line 186
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v19

    .line 190
    const/16 v17, 0x0

    .line 191
    .line 192
    const/16 v18, 0x0

    .line 193
    .line 194
    const-wide v15, 0x25ac6127b8a538c0L    # 3.275342883710709E-127

    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    iput-boolean v2, v10, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 203
    .line 204
    iget-object v4, v10, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 205
    .line 206
    iput-boolean v13, v4, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 207
    .line 208
    iput-boolean v13, v4, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 209
    .line 210
    iget-object v4, v10, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 211
    .line 212
    invoke-virtual {v4}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 217
    .line 218
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 219
    .line 220
    .line 221
    move-result v14

    .line 222
    iget-object v5, v10, Lcom/android/server/wm/WindowState;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    .line 223
    .line 224
    iget-object v6, v10, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 225
    .line 226
    iget-object v7, v10, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 227
    .line 228
    const/4 v8, 0x1

    .line 229
    const/4 v9, 0x0

    .line 230
    move-object v4, v10

    .line 231
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowState;->fillClientWindowFramesAndConfiguration(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/window/ActivityWindowInfo;ZZ)V

    .line 232
    .line 233
    .line 234
    iget-object v4, v10, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    .line 235
    .line 236
    invoke-virtual {v10, v4, v13}, Lcom/android/server/wm/WindowState;->fillInsetsState(Landroid/view/InsetsState;Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-eqz v4, :cond_8

    .line 244
    .line 245
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->shouldSyncWithBuffers()Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_8

    .line 250
    .line 251
    move v5, v2

    .line 252
    goto :goto_3

    .line 253
    :cond_8
    move v5, v13

    .line 254
    :goto_3
    if-nez v4, :cond_a

    .line 255
    .line 256
    if-eqz v0, :cond_9

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_9
    move/from16 v17, v13

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_a
    :goto_4
    move/from16 v17, v2

    .line 263
    .line 264
    :goto_5
    iget-boolean v4, v10, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 265
    .line 266
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-eq v4, v6, :cond_b

    .line 271
    .line 272
    move v4, v2

    .line 273
    goto :goto_6

    .line 274
    :cond_b
    move v4, v13

    .line 275
    :goto_6
    if-nez v5, :cond_d

    .line 276
    .line 277
    if-eqz v4, :cond_c

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_c
    move/from16 v20, v13

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_d
    :goto_7
    move/from16 v20, v2

    .line 284
    .line 285
    :goto_8
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 290
    .line 291
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 295
    .line 296
    if-eqz v4, :cond_f

    .line 297
    .line 298
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    iget-boolean v7, v10, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 303
    .line 304
    if-ne v4, v7, :cond_e

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_e
    iput-boolean v4, v10, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 308
    .line 309
    :cond_f
    :goto_9
    iget-boolean v4, v10, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 310
    .line 311
    iput-boolean v2, v10, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 312
    .line 313
    invoke-static {}, Lcom/android/window/flags/Flags;->bundleClientTransactionFlag()Z

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    const/4 v8, -0x1

    .line 318
    const/16 v21, 0x0

    .line 319
    .line 320
    if-eqz v7, :cond_11

    .line 321
    .line 322
    iget-object v7, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 323
    .line 324
    iget-object v7, v7, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 325
    .line 326
    iget-object v15, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 327
    .line 328
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    .line 329
    .line 330
    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 331
    .line 332
    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    .line 333
    .line 334
    if-eqz v5, :cond_10

    .line 335
    .line 336
    iget v5, v10, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 337
    .line 338
    move/from16 v23, v5

    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_10
    move/from16 v23, v8

    .line 342
    .line 343
    :goto_a
    iget-object v5, v10, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 344
    .line 345
    move-object/from16 v16, v9

    .line 346
    .line 347
    move-object/from16 v18, v13

    .line 348
    .line 349
    move-object/from16 v19, v2

    .line 350
    .line 351
    move/from16 v22, v6

    .line 352
    .line 353
    move/from16 v24, v4

    .line 354
    .line 355
    move-object/from16 v25, v5

    .line 356
    .line 357
    invoke-static/range {v15 .. v25}, Landroid/app/servertransaction/WindowStateResizeItem;->obtain(Landroid/view/IWindow;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)Landroid/app/servertransaction/WindowStateResizeItem;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v10, v14, v6, v0}, Lcom/android/server/wm/WindowState;->onResizePostDispatched(IIZ)V

    .line 365
    .line 366
    .line 367
    goto :goto_d

    .line 368
    :cond_11
    :try_start_0
    iget-object v15, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 369
    .line 370
    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    .line 371
    .line 372
    iget-object v7, v10, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 373
    .line 374
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    .line 375
    .line 376
    if-eqz v5, :cond_12

    .line 377
    .line 378
    iget v5, v10, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 379
    .line 380
    move/from16 v23, v5

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :catch_0
    move-exception v0

    .line 384
    goto :goto_c

    .line 385
    :cond_12
    move/from16 v23, v8

    .line 386
    .line 387
    :goto_b
    iget-object v5, v10, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 388
    .line 389
    move-object/from16 v16, v2

    .line 390
    .line 391
    move-object/from16 v18, v7

    .line 392
    .line 393
    move-object/from16 v19, v9

    .line 394
    .line 395
    move/from16 v22, v6

    .line 396
    .line 397
    move/from16 v24, v4

    .line 398
    .line 399
    move-object/from16 v25, v5

    .line 400
    .line 401
    invoke-interface/range {v15 .. v25}, Landroid/view/IWindow;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10, v14, v6, v0}, Lcom/android/server/wm/WindowState;->onResizePostDispatched(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .line 406
    .line 407
    goto :goto_d

    .line 408
    :goto_c
    invoke-virtual {v10, v13}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 409
    .line 410
    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 412
    .line 413
    .line 414
    move-result-wide v4

    .line 415
    iget-object v2, v10, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 416
    .line 417
    iget-wide v6, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 418
    .line 419
    sub-long/2addr v4, v6

    .line 420
    long-to-int v2, v4

    .line 421
    iput v2, v10, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 422
    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    const-string v4, "Failed to report \'resized\' to "

    .line 426
    .line 427
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v4, " due to "

    .line 434
    .line 435
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    const-string v2, "WindowManager"

    .line 446
    .line 447
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    :goto_d
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 451
    .line 452
    .line 453
    :goto_e
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 454
    .line 455
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    :cond_13
    :goto_f
    add-int/lit8 v3, v3, -0x1

    .line 461
    .line 462
    const/4 v2, 0x1

    .line 463
    goto/16 :goto_0

    .line 464
    .line 465
    :cond_14
    return-void
.end method

.method public final isAttached()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isLayoutNeeded()Z
    .locals 4

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
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1
.end method

.method public final isOnTop()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/Transition;Landroid/graphics/Rect;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 14
    .line 15
    iget-object v6, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    if-nez p4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    if-nez v8, :cond_0

    .line 25
    .line 26
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    if-eqz v8, :cond_0

    .line 31
    .line 32
    const/16 v8, 0xa

    .line 33
    .line 34
    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object/from16 v8, p4

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->deferTransitionReady()V

    .line 42
    .line 43
    .line 44
    new-instance v9, Lcom/android/server/wm/Transition$ReadyCondition;

    .line 45
    .line 46
    const-string/jumbo v10, "movedToPip"

    .line 47
    .line 48
    .line 49
    invoke-direct {v9, v10}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v9}, Lcom/android/server/wm/TransitionController;->waitFor(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 53
    .line 54
    .line 55
    iget-object v10, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 56
    .line 57
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 58
    .line 59
    .line 60
    iget-object v10, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 61
    .line 62
    iget-boolean v11, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 63
    .line 64
    const/4 v12, 0x1

    .line 65
    if-nez v11, :cond_1

    .line 66
    .line 67
    iput-boolean v12, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 68
    .line 69
    move v10, v12

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v10, v7

    .line 72
    :goto_1
    :try_start_0
    iget-object v11, v4, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 73
    .line 74
    const/4 v13, 0x2

    .line 75
    if-eqz v11, :cond_2

    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v6, v11}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 78
    .line 79
    .line 80
    filled-new-array {v13}, [I

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    invoke-virtual {v1, v11}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    move v14, v7

    .line 90
    goto/16 :goto_f

    .line 91
    .line 92
    :cond_2
    :goto_2
    :try_start_2
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 93
    .line 94
    if-eqz v11, :cond_3

    .line 95
    .line 96
    :try_start_3
    iget-object v14, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    .line 98
    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 99
    .line 100
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v8}, Lcom/android/server/wm/ChangeTransitionController;->handleEnteringPipIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    if-nez v14, :cond_3

    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 113
    .line 114
    .line 115
    move-result v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    if-eqz v14, :cond_3

    .line 117
    .line 118
    move v14, v12

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move v14, v7

    .line 121
    :goto_3
    :try_start_4
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 122
    .line 123
    if-eqz v15, :cond_4

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    iget-object v15, v15, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    .line 130
    .line 131
    if-eqz v15, :cond_4

    .line 132
    .line 133
    invoke-virtual {v15}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isLetterboxWallpaperBlurSupported()Z

    .line 134
    .line 135
    .line 136
    move-result v16

    .line 137
    if-eqz v16, :cond_4

    .line 138
    .line 139
    invoke-virtual {v15}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->getLetterboxBackgroundType()I

    .line 140
    .line 141
    .line 142
    move-result v13

    .line 143
    const/4 v12, 0x3

    .line 144
    if-ne v13, v12, :cond_4

    .line 145
    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 151
    .line 152
    iget-object v12, v12, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 153
    .line 154
    if-eqz v12, :cond_4

    .line 155
    .line 156
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    if-ne v12, v5, :cond_4

    .line 161
    .line 162
    new-instance v12, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda46;

    .line 163
    .line 164
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v12}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    if-eqz v12, :cond_4

    .line 172
    .line 173
    invoke-virtual {v15, v7}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->onAdjustWallpaperWindows(Z)V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :catchall_1
    move-exception v0

    .line 178
    goto/16 :goto_f

    .line 179
    .line 180
    :cond_4
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-virtual {v12, v7, v7}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v5}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    if-nez v12, :cond_5

    .line 195
    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    invoke-virtual {v2, v12}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 201
    .line 202
    .line 203
    :cond_5
    if-eqz v11, :cond_6

    .line 204
    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    if-eqz v12, :cond_6

    .line 210
    .line 211
    const-string/jumbo v12, "start_pip"

    .line 212
    .line 213
    .line 214
    const/4 v13, 0x1

    .line 215
    invoke-virtual {v2, v12, v13}, Lcom/android/server/wm/ActivityRecord;->setEnteringPipFromSplit(Ljava/lang/String;Z)V

    .line 216
    .line 217
    .line 218
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    const/4 v7, 0x1

    .line 231
    if-ne v15, v7, :cond_a

    .line 232
    .line 233
    if-eqz v11, :cond_7

    .line 234
    .line 235
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    .line 236
    .line 237
    if-nez v0, :cond_7

    .line 238
    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->collectFixedRotationLaunchingAppIfNeeded()V

    .line 244
    .line 245
    .line 246
    :cond_7
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->maybeApplyLastRecentsAnimationTransaction()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    if-eq v0, v4, :cond_8

    .line 254
    .line 255
    const/4 v0, 0x1

    .line 256
    invoke-virtual {v5, v4, v0}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 257
    .line 258
    .line 259
    :cond_8
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;

    .line 260
    .line 261
    const/4 v4, 0x5

    .line 262
    invoke-direct {v0, v4}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;-><init>(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;)V

    .line 266
    .line 267
    .line 268
    move-object v4, v5

    .line 269
    :cond_9
    :goto_5
    const/4 v0, 0x2

    .line 270
    goto/16 :goto_b

    .line 271
    .line 272
    :cond_a
    new-instance v7, Lcom/android/server/wm/Task$Builder;

    .line 273
    .line 274
    iget-object v15, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 275
    .line 276
    invoke-direct {v7, v15}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 280
    .line 281
    .line 282
    move-result v15

    .line 283
    iput v15, v7, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 284
    .line 285
    const/4 v15, 0x1

    .line 286
    iput-boolean v15, v7, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    .line 287
    .line 288
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 289
    .line 290
    iput-object v15, v7, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 291
    .line 292
    iput-object v4, v7, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 293
    .line 294
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 295
    .line 296
    iput-object v4, v7, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    .line 297
    .line 298
    const/4 v4, 0x1

    .line 299
    iput-boolean v4, v7, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    .line 300
    .line 301
    iput-boolean v4, v7, Lcom/android/server/wm/Task$Builder;->mHasBeenVisible:Z

    .line 302
    .line 303
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    iput v4, v7, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 308
    .line 309
    invoke-virtual {v7}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    if-nez v0, :cond_b

    .line 314
    .line 315
    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_b
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 319
    .line 320
    :goto_6
    iput-object v7, v2, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 321
    .line 322
    iput-object v2, v7, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 323
    .line 324
    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

    .line 325
    .line 326
    if-nez v0, :cond_c

    .line 327
    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    goto :goto_7

    .line 333
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    :goto_7
    if-eqz v7, :cond_d

    .line 338
    .line 339
    iget-object v15, v7, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_d
    const/4 v15, 0x0

    .line 343
    :goto_8
    iput-object v15, v2, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    .line 344
    .line 345
    if-eqz v7, :cond_e

    .line 346
    .line 347
    if-nez v0, :cond_e

    .line 348
    .line 349
    iget-object v0, v7, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 350
    .line 351
    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

    .line 352
    .line 353
    :cond_e
    iget-object v0, v5, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 354
    .line 355
    invoke-virtual {v4, v0}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v4, v0}, Lcom/android/server/wm/Task;->setBoundsUnchecked(Landroid/graphics/Rect;)I

    .line 363
    .line 364
    .line 365
    const/4 v0, 0x1

    .line 366
    iput-boolean v0, v4, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 367
    .line 368
    iget-object v0, v5, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 369
    .line 370
    if-eqz v0, :cond_f

    .line 371
    .line 372
    iget-object v7, v5, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 373
    .line 374
    new-instance v13, Landroid/window/PictureInPictureSurfaceTransaction;

    .line 375
    .line 376
    invoke-direct {v13, v0}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(Landroid/window/PictureInPictureSurfaceTransaction;)V

    .line 377
    .line 378
    .line 379
    iput-object v13, v4, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 380
    .line 381
    iput-object v7, v4, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 382
    .line 383
    const/4 v0, 0x0

    .line 384
    iput-object v0, v5, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 385
    .line 386
    iput-object v0, v5, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 387
    .line 388
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->resetSurfaceControlTransforms()V

    .line 389
    .line 390
    .line 391
    goto :goto_9

    .line 392
    :cond_f
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->resetSurfaceControlTransforms()V

    .line 393
    .line 394
    .line 395
    :goto_9
    if-eqz v12, :cond_10

    .line 396
    .line 397
    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    const/4 v7, 0x1

    .line 402
    if-ne v0, v7, :cond_10

    .line 403
    .line 404
    invoke-virtual {v12, v7, v7}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    if-ne v0, v2, :cond_10

    .line 409
    .line 410
    iput-boolean v7, v12, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    .line 411
    .line 412
    :cond_10
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-eqz v0, :cond_12

    .line 417
    .line 418
    iget-object v0, v6, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 419
    .line 420
    if-nez v0, :cond_11

    .line 421
    .line 422
    goto :goto_a

    .line 423
    :cond_11
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 424
    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_12
    invoke-virtual {v6, v4}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 428
    .line 429
    .line 430
    :goto_a
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-eqz v0, :cond_13

    .line 435
    .line 436
    const/4 v0, 0x2

    .line 437
    invoke-virtual {v4, v0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 438
    .line 439
    .line 440
    :cond_13
    const/4 v7, 0x0

    .line 441
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    .line 442
    .line 443
    .line 444
    const v0, 0x7fffffff

    .line 445
    .line 446
    .line 447
    move-object/from16 v7, p3

    .line 448
    .line 449
    invoke-virtual {v2, v4, v0, v7}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 450
    .line 451
    .line 452
    const/4 v0, 0x1

    .line 453
    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    .line 454
    .line 455
    .line 456
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->maybeApplyLastRecentsAnimationTransaction()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    if-eqz v0, :cond_9

    .line 464
    .line 465
    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    .line 466
    .line 467
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 468
    .line 469
    .line 470
    move-result v7

    .line 471
    if-eqz v7, :cond_9

    .line 472
    .line 473
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 478
    .line 479
    const/4 v13, 0x4

    .line 480
    invoke-virtual {v7, v13}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    .line 481
    .line 482
    .line 483
    move-result v7

    .line 484
    if-eqz v7, :cond_9

    .line 485
    .line 486
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 487
    .line 488
    .line 489
    move-result-object v7

    .line 490
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 491
    .line 492
    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    const/4 v7, 0x1

    .line 496
    iput-boolean v7, v0, Lcom/android/server/wm/ActivityRecord;->mRequestForceTransition:Z

    .line 497
    .line 498
    goto/16 :goto_5

    .line 499
    .line 500
    :goto_b
    invoke-virtual {v4, v0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 501
    .line 502
    .line 503
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-eqz v0, :cond_14

    .line 508
    .line 509
    if-eqz v3, :cond_14

    .line 510
    .line 511
    invoke-virtual {v4, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 512
    .line 513
    .line 514
    :cond_14
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 515
    .line 516
    if-eqz v0, :cond_15

    .line 517
    .line 518
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    if-eqz v0, :cond_15

    .line 523
    .line 524
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 525
    .line 526
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 527
    .line 528
    invoke-virtual {v0, v5}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    .line 529
    .line 530
    .line 531
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 532
    .line 533
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v4, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 538
    .line 539
    .line 540
    :cond_15
    const/4 v3, 0x0

    .line 541
    invoke-virtual {v4, v3}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 542
    .line 543
    .line 544
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-nez v0, :cond_16

    .line 549
    .line 550
    const/4 v0, 0x1

    .line 551
    iput-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 552
    .line 553
    :cond_16
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 554
    .line 555
    if-eqz v12, :cond_17

    .line 556
    .line 557
    iget-boolean v0, v12, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    .line 558
    .line 559
    if-eqz v0, :cond_17

    .line 560
    .line 561
    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    if-eqz v0, :cond_17

    .line 566
    .line 567
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    if-eqz v0, :cond_17

    .line 572
    .line 573
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 574
    .line 575
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 576
    .line 577
    invoke-virtual {v0, v12}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 578
    .line 579
    .line 580
    :cond_17
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 581
    .line 582
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 583
    .line 584
    .line 585
    if-eqz v10, :cond_18

    .line 586
    .line 587
    :try_start_5
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 588
    .line 589
    const/4 v3, 0x0

    .line 590
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 591
    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 593
    .line 594
    .line 595
    goto :goto_c

    .line 596
    :catchall_2
    move-exception v0

    .line 597
    goto :goto_d

    .line 598
    :cond_18
    :goto_c
    if-eqz v11, :cond_19

    .line 599
    .line 600
    if-eqz v14, :cond_19

    .line 601
    .line 602
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    if-eqz v0, :cond_19

    .line 607
    .line 608
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 613
    .line 614
    .line 615
    goto :goto_e

    .line 616
    :goto_d
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v9}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 620
    .line 621
    .line 622
    throw v0

    .line 623
    :cond_19
    :goto_e
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v9}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 627
    .line 628
    .line 629
    if-eqz v8, :cond_1a

    .line 630
    .line 631
    const/4 v0, 0x0

    .line 632
    invoke-virtual {v6, v8, v4, v0, v0}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 633
    .line 634
    .line 635
    const/4 v0, 0x1

    .line 636
    invoke-virtual {v8, v4, v0}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 637
    .line 638
    .line 639
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 640
    .line 641
    .line 642
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 643
    .line 644
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 645
    .line 646
    .line 647
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-nez v0, :cond_1c

    .line 652
    .line 653
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 654
    .line 655
    if-eqz v0, :cond_1b

    .line 656
    .line 657
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

    .line 658
    .line 659
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 660
    .line 661
    .line 662
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 663
    .line 664
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 665
    .line 666
    .line 667
    :cond_1b
    new-instance v0, Ljava/lang/Throwable;

    .line 668
    .line 669
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 670
    .line 671
    .line 672
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$2;

    .line 673
    .line 674
    invoke-direct {v2, v1, v4, v0}, Lcom/android/server/wm/RootWindowContainer$2;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Task;Ljava/lang/Throwable;)V

    .line 675
    .line 676
    .line 677
    iput-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 678
    .line 679
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

    .line 680
    .line 681
    const-wide/16 v3, 0x3e8

    .line 682
    .line 683
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    .line 685
    .line 686
    const-string v0, "WindowManager"

    .line 687
    .line 688
    const-string v1, "a delayed check for potentially aborting PiP if in a wrong state is scheduled."

    .line 689
    .line 690
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .line 692
    .line 693
    :cond_1c
    return-void

    .line 694
    :catchall_3
    move-exception v0

    .line 695
    const/4 v14, 0x0

    .line 696
    :goto_f
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 697
    .line 698
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 699
    .line 700
    .line 701
    if-eqz v10, :cond_1d

    .line 702
    .line 703
    :try_start_6
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 704
    .line 705
    const/4 v4, 0x0

    .line 706
    iput-boolean v4, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 707
    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 709
    .line 710
    .line 711
    goto :goto_10

    .line 712
    :catchall_4
    move-exception v0

    .line 713
    goto :goto_11

    .line 714
    :cond_1d
    :goto_10
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 715
    .line 716
    if-eqz v1, :cond_1e

    .line 717
    .line 718
    if-eqz v14, :cond_1e

    .line 719
    .line 720
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    if-eqz v1, :cond_1e

    .line 725
    .line 726
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 731
    .line 732
    .line 733
    :cond_1e
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v9}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 737
    .line 738
    .line 739
    throw v0

    .line 740
    :goto_11
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v9}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 744
    .line 745
    .line 746
    throw v0
.end method

.method public final moveRootTaskToDisplay(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    if-eq p1, p2, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "Trying to move rootTask="

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " to its current taskDisplayArea="

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v0, "moveRootTaskToTaskDisplayArea: Unknown taskDisplayArea="

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string/jumbo v0, "moveRootTaskToTaskDisplayArea: rootTask="

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p0, " is not attached to any task display area."

    .line 98
    .line 99
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    const-string/jumbo p2, "moveRootTaskToTaskDisplayArea: Unknown rootTaskId="

    .line 113
    .line 114
    .line 115
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string/jumbo p1, "moveRootTaskToDisplay: Unknown displayId="

    .line 126
    .line 127
    .line 128
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method public final notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 19
    .line 20
    iget v5, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v4, -0x1

    .line 32
    :goto_1
    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 39
    .line 40
    iput p2, v2, Landroid/os/Message;->sendingUid:I

    .line 41
    .line 42
    iget-object p2, v1, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 54
    .line 55
    iget-object v1, p2, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 56
    .line 57
    const/16 v2, 0x11

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, p2, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-virtual {p2, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 72
    .line 73
    .line 74
    :goto_2
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 75
    .line 76
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 77
    .line 78
    check-cast p2, Lcom/android/server/policy/PhoneWindowManager;

    .line 79
    .line 80
    iput-boolean v0, p2, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    .line 81
    .line 82
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 83
    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 89
    .line 90
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 95
    .line 96
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 97
    .line 98
    invoke-virtual {p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 103
    .line 104
    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    new-instance p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;

    .line 108
    .line 109
    const/4 p2, 0x3

    .line 110
    invoke-direct {p0, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    return-void
.end method

.method public final onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    .line 4
    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 12
    .line 13
    const-string/jumbo p1, "onChildPositionChanged"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "onDisplayAdded, displayId="

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string v1, "WindowManager"

    .line 7
    .line 8
    const-string v2, "Display added displayId="

    .line 9
    .line 10
    invoke-static {p1, v2, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 45
    .line 46
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    :cond_2
    if-eqz p1, :cond_3

    .line 55
    .line 56
    const-string v3, "WindowManager"

    .line 57
    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, " display="

    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 93
    .line 94
    .line 95
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;

    .line 16
    .line 17
    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->requestDisplayUpdate(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateDisplayImePolicyCache()V

    .line 36
    .line 37
    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final onDisplayManagerReceivedDeviceState(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/wm/DeviceStateController;->mCurrentState:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mHalfFoldedDeviceStates:[I

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mFoldedDeviceStates:[I

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object p1, Lcom/android/server/wm/DeviceStateController$DeviceState;->FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mRearDisplayDeviceStates:[I

    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget-object p1, Lcom/android/server/wm/DeviceStateController$DeviceState;->REAR:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mOpenDeviceStates:[I

    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    sget-object p1, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget v0, p0, Lcom/android/server/wm/DeviceStateController;->mConcurrentDisplayDeviceState:I

    .line 50
    .line 51
    if-ne p1, v0, :cond_4

    .line 52
    .line 53
    sget-object p1, Lcom/android/server/wm/DeviceStateController$DeviceState;->CONCURRENT:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    sget-object p1, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 57
    .line 58
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController;->mCurrentDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/DeviceStateController;->mCurrentDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateController;->copyDeviceStateCallbacks()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/4 v0, 0x0

    .line 75
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ge v0, v1, :cond_6

    .line 80
    .line 81
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Landroid/util/Pair;

    .line 86
    .line 87
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 90
    .line 91
    new-instance v3, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;

    .line 92
    .line 93
    invoke-direct {v3, v1, p1}, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;-><init>(Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceState;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "onDisplayRemoved, displayId="

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string v1, "WindowManager"

    .line 7
    .line 8
    const-string v2, "Display removed displayId="

    .line 9
    .line 10
    invoke-static {p1, v2, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :try_start_1
    const-string v3, "WindowManager"

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->remove()V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 63
    .line 64
    .line 65
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string p1, "Can\'t remove the primary display."

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final onSettingsRetrieved()V
    .locals 9

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
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    iget-object v7, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 37
    .line 38
    iget-object v8, v4, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 39
    .line 40
    invoke-virtual {v8, v7}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v4, v7, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eq v6, v7, :cond_0

    .line 49
    .line 50
    iget-object v6, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 51
    .line 52
    invoke-virtual {v8, v6}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v4, v6, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {v5, v4}, Lcom/android/server/wm/TaskDisplayArea;->setWindowingMode(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 64
    .line 65
    .line 66
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 67
    .line 68
    if-eqz v4, :cond_0

    .line 69
    .line 70
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 71
    .line 72
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 73
    .line 74
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 79
    .line 80
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 81
    .line 82
    const/16 v5, -0x2710

    .line 83
    .line 84
    invoke-virtual {v4, v3, v1, v1, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;ZZI)Z

    .line 85
    .line 86
    .line 87
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method

.method public final performSurfacePlacement()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x20

    .line 2
    .line 3
    const-string/jumbo v2, "performSurfacePlacement"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacementNoTrace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public final performSurfacePlacementNoTrace()V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iput-boolean v4, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 12
    .line 13
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 17
    .line 18
    iput v2, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    iput-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverridePackage:Ljava/lang/String;

    .line 23
    .line 24
    const-wide/16 v5, -0x1

    .line 25
    .line 26
    iput-wide v5, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 27
    .line 28
    iput-wide v5, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    .line 29
    .line 30
    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 31
    .line 32
    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 33
    .line 34
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 35
    .line 36
    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    add-int/2addr v5, v6

    .line 40
    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 41
    .line 42
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_PREDICTIVE_BACK_ANIM:Z

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 51
    .line 52
    const-wide/16 v7, 0x20

    .line 53
    .line 54
    const-string v0, "applySurfaceChanges"

    .line 55
    .line 56
    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction$1()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_15

    .line 68
    .line 69
    :catch_0
    move-exception v0

    .line 70
    move-object v9, v0

    .line 71
    :try_start_1
    const-string v0, "WindowManager"

    .line 72
    .line 73
    const-string v10, "Unhandled exception in Window Manager"

    .line 74
    .line 75
    invoke-static {v0, v10, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_1
    invoke-static {}, Lcom/android/window/flags/Flags;->bundleClientTransactionFlag()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()V

    .line 86
    .line 87
    .line 88
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/server/wm/ClientLifecycleManager;->dispatchPendingTransactions()V

    .line 95
    .line 96
    .line 97
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingEvents()V

    .line 104
    .line 105
    .line 106
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 111
    .line 112
    iget-object v7, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 113
    .line 114
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 115
    .line 116
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 117
    .line 118
    iget v7, v7, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 119
    .line 120
    if-lez v7, :cond_2

    .line 121
    .line 122
    move v7, v6

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move v7, v4

    .line 125
    :goto_2
    const/4 v9, 0x2

    .line 126
    if-nez v7, :cond_13

    .line 127
    .line 128
    iget-object v7, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 129
    .line 130
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_3

    .line 135
    .line 136
    goto/16 :goto_d

    .line 137
    .line 138
    :cond_3
    iget-object v7, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 139
    .line 140
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    move v10, v4

    .line 145
    :goto_3
    if-ge v10, v7, :cond_13

    .line 146
    .line 147
    iget-object v11, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 148
    .line 149
    iget-object v12, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 150
    .line 151
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    check-cast v11, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 160
    .line 161
    iget-object v12, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 162
    .line 163
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    check-cast v12, Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    if-eqz v13, :cond_4

    .line 174
    .line 175
    goto/16 :goto_c

    .line 176
    .line 177
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    new-instance v14, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v15

    .line 191
    move v2, v4

    .line 192
    :goto_4
    if-ge v2, v15, :cond_12

    .line 193
    .line 194
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v16

    .line 198
    move-object/from16 v4, v16

    .line 199
    .line 200
    check-cast v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 201
    .line 202
    iget v6, v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    .line 203
    .line 204
    if-eq v6, v3, :cond_5

    .line 205
    .line 206
    if-eq v6, v9, :cond_5

    .line 207
    .line 208
    if-eqz v6, :cond_5

    .line 209
    .line 210
    goto/16 :goto_a

    .line 211
    .line 212
    :cond_5
    iget-object v9, v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 213
    .line 214
    if-ne v6, v3, :cond_6

    .line 215
    .line 216
    iget-object v6, v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTask:Lcom/android/server/wm/Task;

    .line 217
    .line 218
    :goto_5
    move-object/from16 v17, v9

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_6
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    goto :goto_5

    .line 226
    :goto_6
    iget-wide v8, v6, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 227
    .line 228
    move-object/from16 v18, v0

    .line 229
    .line 230
    iget-wide v0, v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mDeferTime:J

    .line 231
    .line 232
    cmp-long v0, v8, v0

    .line 233
    .line 234
    if-lez v0, :cond_b

    .line 235
    .line 236
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_7

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_7
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_8

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_8
    const/4 v0, 0x0

    .line 251
    invoke-virtual {v6, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_a

    .line 256
    .line 257
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    :cond_9
    :goto_7
    move-object/from16 v0, v18

    .line 261
    .line 262
    goto :goto_a

    .line 263
    :cond_a
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    :cond_b
    :goto_8
    iget-object v0, v11, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

    .line 267
    .line 268
    iget v1, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Landroid/window/TaskFragmentParentInfo;

    .line 275
    .line 276
    if-eqz v0, :cond_9

    .line 277
    .line 278
    invoke-virtual {v0}, Landroid/window/TaskFragmentParentInfo;->isVisible()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_c

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_c
    iget v0, v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    .line 286
    .line 287
    const/4 v1, 0x2

    .line 288
    if-ne v0, v1, :cond_e

    .line 289
    .line 290
    iget-object v0, v11, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    .line 291
    .line 292
    check-cast v0, Ljava/util/WeakHashMap;

    .line 293
    .line 294
    move-object/from16 v1, v17

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Landroid/window/TaskFragmentInfo;

    .line 301
    .line 302
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-nez v1, :cond_d

    .line 307
    .line 308
    const/4 v1, 0x1

    .line 309
    goto :goto_9

    .line 310
    :cond_d
    const/4 v1, 0x0

    .line 311
    :goto_9
    if-eqz v0, :cond_9

    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->isEmpty()Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eq v0, v1, :cond_e

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_e
    iget-wide v0, v6, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 321
    .line 322
    iput-wide v0, v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mDeferTime:J

    .line 323
    .line 324
    add-int/lit8 v2, v2, 0x1

    .line 325
    .line 326
    move-object/from16 v0, v18

    .line 327
    .line 328
    const/4 v4, 0x0

    .line 329
    const/4 v6, 0x1

    .line 330
    const/4 v9, 0x2

    .line 331
    move-object/from16 v1, p0

    .line 332
    .line 333
    goto/16 :goto_4

    .line 334
    .line 335
    :goto_a
    iget-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTmpTaskSet:Landroid/util/ArraySet;

    .line 336
    .line 337
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 338
    .line 339
    .line 340
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    new-instance v2, Landroid/window/TaskFragmentTransaction;

    .line 345
    .line 346
    invoke-direct {v2}, Landroid/window/TaskFragmentTransaction;-><init>()V

    .line 347
    .line 348
    .line 349
    const/4 v4, 0x0

    .line 350
    :goto_b
    if-ge v4, v1, :cond_11

    .line 351
    .line 352
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    check-cast v6, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 357
    .line 358
    iget v8, v6, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    .line 359
    .line 360
    if-eqz v8, :cond_f

    .line 361
    .line 362
    const/4 v9, 0x2

    .line 363
    if-ne v8, v9, :cond_10

    .line 364
    .line 365
    :cond_f
    iget-object v8, v6, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 366
    .line 367
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    iget-object v9, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTmpTaskSet:Landroid/util/ArraySet;

    .line 372
    .line 373
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    if-eqz v9, :cond_10

    .line 378
    .line 379
    iget-object v9, v11, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 380
    .line 381
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    new-instance v13, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 388
    .line 389
    const/16 v25, 0x0

    .line 390
    .line 391
    const/16 v27, 0x0

    .line 392
    .line 393
    const/16 v18, 0x3

    .line 394
    .line 395
    const/16 v20, 0x0

    .line 396
    .line 397
    const/16 v21, 0x0

    .line 398
    .line 399
    const/16 v22, 0x0

    .line 400
    .line 401
    const/16 v23, 0x0

    .line 402
    .line 403
    const/16 v24, 0x0

    .line 404
    .line 405
    move-object/from16 v17, v13

    .line 406
    .line 407
    move-object/from16 v19, v9

    .line 408
    .line 409
    move-object/from16 v26, v8

    .line 410
    .line 411
    invoke-direct/range {v17 .. v27}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v13}, Lcom/android/server/wm/TaskFragmentOrganizerController;->prepareChange(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/TaskFragmentTransaction$Change;

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    invoke-virtual {v2, v8}, Landroid/window/TaskFragmentTransaction;->addChange(Landroid/window/TaskFragmentTransaction$Change;)V

    .line 419
    .line 420
    .line 421
    :cond_10
    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->prepareChange(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/TaskFragmentTransaction$Change;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    invoke-virtual {v2, v6}, Landroid/window/TaskFragmentTransaction;->addChange(Landroid/window/TaskFragmentTransaction$Change;)V

    .line 426
    .line 427
    .line 428
    add-int/lit8 v4, v4, 0x1

    .line 429
    .line 430
    goto :goto_b

    .line 431
    :cond_11
    iget-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTmpTaskSet:Landroid/util/ArraySet;

    .line 432
    .line 433
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v11, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->dispatchTransaction(Landroid/window/TaskFragmentTransaction;)V

    .line 437
    .line 438
    .line 439
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 440
    .line 441
    .line 442
    :cond_12
    :goto_c
    add-int/lit8 v10, v10, 0x1

    .line 443
    .line 444
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 445
    .line 446
    const/4 v4, 0x0

    .line 447
    const/4 v6, 0x1

    .line 448
    const/4 v9, 0x2

    .line 449
    move-object/from16 v1, p0

    .line 450
    .line 451
    goto/16 :goto_3

    .line 452
    .line 453
    :cond_13
    :goto_d
    move-object/from16 v1, p0

    .line 454
    .line 455
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 456
    .line 457
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 458
    .line 459
    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->onSurfacePlacement()V

    .line 460
    .line 461
    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->checkAppTransitionReady()V

    .line 463
    .line 464
    .line 465
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 466
    .line 467
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 468
    .line 469
    if-eqz v0, :cond_16

    .line 470
    .line 471
    iget-object v2, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 472
    .line 473
    iget-boolean v3, v0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 474
    .line 475
    if-eqz v3, :cond_16

    .line 476
    .line 477
    iget-object v3, v0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 478
    .line 479
    if-nez v3, :cond_14

    .line 480
    .line 481
    const/4 v3, 0x0

    .line 482
    goto :goto_e

    .line 483
    :cond_14
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    :goto_e
    if-eqz v3, :cond_15

    .line 488
    .line 489
    iget-object v3, v2, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 490
    .line 491
    if-eqz v3, :cond_16

    .line 492
    .line 493
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-eqz v2, :cond_16

    .line 498
    .line 499
    :cond_15
    iget-object v0, v0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 500
    .line 501
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 502
    .line 503
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    .line 504
    .line 505
    .line 506
    :cond_16
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 507
    .line 508
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 509
    .line 510
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 511
    .line 512
    iget-object v2, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 513
    .line 514
    iget-boolean v3, v0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    .line 515
    .line 516
    if-nez v3, :cond_17

    .line 517
    .line 518
    goto :goto_f

    .line 519
    :cond_17
    iget-boolean v3, v0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    .line 520
    .line 521
    if-eqz v3, :cond_18

    .line 522
    .line 523
    iget-object v3, v2, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 524
    .line 525
    if-eqz v3, :cond_19

    .line 526
    .line 527
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    if-eqz v2, :cond_19

    .line 532
    .line 533
    :cond_18
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 534
    .line 535
    if-eqz v2, :cond_19

    .line 536
    .line 537
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 538
    .line 539
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 540
    .line 541
    new-instance v3, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;

    .line 542
    .line 543
    invoke-direct {v3, v0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 547
    .line 548
    .line 549
    :cond_19
    :goto_f
    const/4 v0, 0x0

    .line 550
    :goto_10
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 551
    .line 552
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    if-ge v0, v2, :cond_1c

    .line 557
    .line 558
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 559
    .line 560
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 565
    .line 566
    iget-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 567
    .line 568
    if-eqz v3, :cond_1b

    .line 569
    .line 570
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    .line 571
    .line 572
    const/4 v4, 0x1

    .line 573
    aget-boolean v3, v3, v4

    .line 574
    .line 575
    if-eqz v3, :cond_1a

    .line 576
    .line 577
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 578
    .line 579
    const-wide v7, -0x3999ef6c785fcf27L    # -1.3985197504327315E31

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    const/4 v9, 0x0

    .line 585
    const/4 v10, 0x0

    .line 586
    const/4 v11, 0x0

    .line 587
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    :cond_1a
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 591
    .line 592
    or-int/lit8 v3, v3, 0x4

    .line 593
    .line 594
    iput v3, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 595
    .line 596
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 597
    .line 598
    goto :goto_10

    .line 599
    :cond_1c
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 600
    .line 601
    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 602
    .line 603
    if-eqz v2, :cond_1d

    .line 604
    .line 605
    const/4 v2, 0x0

    .line 606
    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 607
    .line 608
    const/4 v3, 0x2

    .line 609
    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 610
    .line 611
    .line 612
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    if-eqz v0, :cond_1e

    .line 617
    .line 618
    iget v0, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 619
    .line 620
    const/4 v2, 0x1

    .line 621
    or-int/2addr v0, v2

    .line 622
    iput v0, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 623
    .line 624
    :cond_1e
    invoke-static {}, Lcom/android/window/flags/Flags;->bundleClientTransactionFlag()Z

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    if-nez v0, :cond_1f

    .line 629
    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()V

    .line 631
    .line 632
    .line 633
    :cond_1f
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 634
    .line 635
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFrameChangingWindows:Ljava/util/ArrayList;

    .line 636
    .line 637
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    const/4 v3, 0x1

    .line 642
    sub-int/2addr v2, v3

    .line 643
    :goto_11
    if-ltz v2, :cond_20

    .line 644
    .line 645
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 650
    .line 651
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 652
    .line 653
    iget-object v5, v4, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 654
    .line 655
    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 656
    .line 657
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 658
    .line 659
    .line 660
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 661
    .line 662
    iget-object v4, v3, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    .line 663
    .line 664
    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 665
    .line 666
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 667
    .line 668
    .line 669
    add-int/lit8 v2, v2, -0x1

    .line 670
    .line 671
    goto :goto_11

    .line 672
    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 673
    .line 674
    .line 675
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 676
    .line 677
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 678
    .line 679
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 680
    .line 681
    if-eqz v0, :cond_21

    .line 682
    .line 683
    const/4 v3, 0x1

    .line 684
    aget-boolean v0, v2, v3

    .line 685
    .line 686
    if-eqz v0, :cond_21

    .line 687
    .line 688
    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 689
    .line 690
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 691
    .line 692
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v8

    .line 700
    const/4 v6, 0x3

    .line 701
    const/4 v7, 0x0

    .line 702
    const-wide v4, 0x39f8b8272c4d34f3L    # 1.9500127029406543E-29

    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    :cond_21
    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 711
    .line 712
    const/16 v3, 0xb

    .line 713
    .line 714
    if-eqz v0, :cond_23

    .line 715
    .line 716
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 717
    .line 718
    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 719
    .line 720
    if-eqz v4, :cond_22

    .line 721
    .line 722
    const/4 v4, 0x0

    .line 723
    iput v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 724
    .line 725
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Lcom/android/server/wm/WindowState;

    .line 726
    .line 727
    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 728
    .line 729
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 730
    .line 731
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 732
    .line 733
    .line 734
    :cond_22
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 735
    .line 736
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 737
    .line 738
    .line 739
    :cond_23
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 740
    .line 741
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 742
    .line 743
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 744
    .line 745
    .line 746
    move-result v0

    .line 747
    if-lez v0, :cond_27

    .line 748
    .line 749
    :cond_24
    add-int/lit8 v0, v0, -0x1

    .line 750
    .line 751
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 752
    .line 753
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 754
    .line 755
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v4

    .line 759
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 760
    .line 761
    const/4 v5, 0x0

    .line 762
    iput-boolean v5, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 763
    .line 764
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 765
    .line 766
    .line 767
    move-result-object v5

    .line 768
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 769
    .line 770
    if-ne v6, v4, :cond_25

    .line 771
    .line 772
    const/4 v6, 0x0

    .line 773
    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 774
    .line 775
    .line 776
    goto :goto_12

    .line 777
    :cond_25
    const/4 v6, 0x0

    .line 778
    :goto_12
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 779
    .line 780
    invoke-virtual {v7, v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    .line 781
    .line 782
    .line 783
    move-result v7

    .line 784
    if-eqz v7, :cond_26

    .line 785
    .line 786
    iget v7, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 787
    .line 788
    or-int/lit8 v7, v7, 0x4

    .line 789
    .line 790
    iput v7, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 791
    .line 792
    :cond_26
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 793
    .line 794
    .line 795
    if-gtz v0, :cond_24

    .line 796
    .line 797
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 798
    .line 799
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 800
    .line 801
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 802
    .line 803
    .line 804
    :cond_27
    const/4 v0, 0x0

    .line 805
    :goto_13
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 806
    .line 807
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 808
    .line 809
    .line 810
    move-result v4

    .line 811
    if-ge v0, v4, :cond_29

    .line 812
    .line 813
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 814
    .line 815
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v4

    .line 819
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 820
    .line 821
    iget v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 822
    .line 823
    if-eqz v5, :cond_28

    .line 824
    .line 825
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 826
    .line 827
    .line 828
    :cond_28
    add-int/lit8 v0, v0, 0x1

    .line 829
    .line 830
    goto :goto_13

    .line 831
    :cond_29
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 832
    .line 833
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 834
    .line 835
    if-nez v0, :cond_2c

    .line 836
    .line 837
    iget v0, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 838
    .line 839
    const/4 v4, 0x0

    .line 840
    cmpg-float v4, v0, v4

    .line 841
    .line 842
    if-ltz v4, :cond_2a

    .line 843
    .line 844
    const/high16 v4, 0x3f800000    # 1.0f

    .line 845
    .line 846
    cmpl-float v4, v0, v4

    .line 847
    .line 848
    if-lez v4, :cond_2b

    .line 849
    .line 850
    :cond_2a
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 851
    .line 852
    :cond_2b
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 853
    .line 854
    .line 855
    move-result v0

    .line 856
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

    .line 857
    .line 858
    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverridePackage:Ljava/lang/String;

    .line 859
    .line 860
    const/4 v6, 0x0

    .line 861
    const/4 v7, 0x1

    .line 862
    invoke-virtual {v4, v7, v0, v6, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 867
    .line 868
    .line 869
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

    .line 870
    .line 871
    iget-wide v4, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 872
    .line 873
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 874
    .line 875
    .line 876
    move-result-object v4

    .line 877
    const/4 v5, 0x2

    .line 878
    invoke-virtual {v0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 883
    .line 884
    .line 885
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

    .line 886
    .line 887
    iget-wide v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    .line 888
    .line 889
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 890
    .line 891
    .line 892
    move-result-object v4

    .line 893
    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 898
    .line 899
    .line 900
    :cond_2c
    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 901
    .line 902
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 903
    .line 904
    if-eq v0, v3, :cond_2d

    .line 905
    .line 906
    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 907
    .line 908
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 909
    .line 910
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 911
    .line 912
    const/4 v4, 0x2

    .line 913
    invoke-virtual {v3, v4, v0}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 914
    .line 915
    .line 916
    :cond_2d
    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 917
    .line 918
    if-eqz v0, :cond_31

    .line 919
    .line 920
    const/4 v3, 0x0

    .line 921
    aget-boolean v0, v2, v3

    .line 922
    .line 923
    if-eqz v0, :cond_2e

    .line 924
    .line 925
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 926
    .line 927
    const-wide v5, -0x4c844d6266b4c403L    # -1.077270735711633E-60

    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    const/4 v7, 0x0

    .line 933
    const/4 v8, 0x0

    .line 934
    const/4 v9, 0x0

    .line 935
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 936
    .line 937
    .line 938
    :cond_2e
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 939
    .line 940
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 941
    .line 942
    .line 943
    move-result v0

    .line 944
    const/4 v2, 0x1

    .line 945
    sub-int/2addr v0, v2

    .line 946
    move v4, v3

    .line 947
    :goto_14
    if-ltz v0, :cond_30

    .line 948
    .line 949
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 950
    .line 951
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 956
    .line 957
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 958
    .line 959
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    .line 960
    .line 961
    .line 962
    move-result v3

    .line 963
    if-eqz v3, :cond_2f

    .line 964
    .line 965
    move v4, v2

    .line 966
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    .line 967
    .line 968
    goto :goto_14

    .line 969
    :cond_30
    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 970
    .line 971
    :cond_31
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 972
    .line 973
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Landroid/util/ArrayMap;

    .line 974
    .line 975
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 976
    .line 977
    .line 978
    move-result v0

    .line 979
    if-eqz v0, :cond_32

    .line 980
    .line 981
    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 982
    .line 983
    if-eqz v0, :cond_33

    .line 984
    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    .line 986
    .line 987
    .line 988
    move-result v0

    .line 989
    if-nez v0, :cond_33

    .line 990
    .line 991
    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 992
    .line 993
    if-nez v0, :cond_33

    .line 994
    .line 995
    :cond_32
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 996
    .line 997
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 998
    .line 999
    .line 1000
    :cond_33
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;

    .line 1001
    .line 1002
    const/4 v2, 0x1

    .line 1003
    invoke-direct {v0, v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;-><init>(I)V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 1007
    .line 1008
    .line 1009
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1010
    .line 1011
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1012
    .line 1013
    .line 1014
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1015
    .line 1016
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1017
    .line 1018
    .line 1019
    return-void

    .line 1020
    :goto_15
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1021
    .line 1022
    .line 1023
    throw v0
.end method

.method public final positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V
    .locals 3

    .line 2
    iget v0, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    invoke-interface {v1, v0}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldNotTopDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "positionChildAt: can\'t gain focus display="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    invoke-interface {v2, v0}, Lcom/android/server/wm/ExtraDisplayPolicy;->getOtherDisplayId(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-super {p0, v1, v0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    const/4 p1, 0x1

    .line 8
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public final bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method public final rankTaskLayers()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$1;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 30
    .line 31
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 32
    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "WindowManager"

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget-object v6, v1, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 16
    .line 17
    iget v6, v6, Lcom/android/server/wm/Session;->mPid:I

    .line 18
    .line 19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    move-object/from16 v7, p2

    .line 24
    .line 25
    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/16 v6, 0x7918

    .line 30
    .line 31
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    :try_start_0
    const-string v7, "Out of memory for surface!  Looking for leaks..."

    .line 39
    .line 40
    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v7, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 44
    .line 45
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/4 v8, 0x0

    .line 50
    move v9, v8

    .line 51
    move v10, v9

    .line 52
    :goto_0
    if-ge v9, v7, :cond_1

    .line 53
    .line 54
    iget-object v12, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 55
    .line 56
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    check-cast v12, Lcom/android/server/wm/DisplayContent;

    .line 61
    .line 62
    const/4 v13, 0x0

    .line 63
    iput-object v13, v12, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 64
    .line 65
    iget-object v13, v12, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    .line 67
    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 68
    .line 69
    invoke-interface {v13}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    check-cast v13, Landroid/view/SurfaceControl$Transaction;

    .line 74
    .line 75
    new-instance v14, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;

    .line 76
    .line 77
    const/4 v15, 0x1

    .line 78
    invoke-direct {v14, v15, v12, v13}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12, v14, v8}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v13}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 85
    .line 86
    .line 87
    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 88
    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    const/4 v11, 0x1

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    move v11, v8

    .line 94
    :goto_1
    or-int/2addr v10, v11

    .line 95
    add-int/lit8 v9, v9, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto/16 :goto_7

    .line 100
    .line 101
    :cond_1
    if-nez v10, :cond_5

    .line 102
    .line 103
    const-string v9, "No leaked surfaces; killing applications!"

    .line 104
    .line 105
    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    new-instance v9, Landroid/util/SparseIntArray;

    .line 109
    .line 110
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 111
    .line 112
    .line 113
    move v12, v8

    .line 114
    move v13, v12

    .line 115
    :goto_2
    if-ge v12, v7, :cond_6

    .line 116
    .line 117
    iget-object v14, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 118
    .line 119
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    check-cast v14, Lcom/android/server/wm/DisplayContent;

    .line 124
    .line 125
    new-instance v15, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;

    .line 126
    .line 127
    const/4 v11, 0x0

    .line 128
    invoke-direct {v15, v11, v0, v9}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14, v15, v8}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    if-lez v11, :cond_3

    .line 139
    .line 140
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    new-array v14, v11, [I

    .line 145
    .line 146
    move v15, v8

    .line 147
    :goto_3
    if-ge v15, v11, :cond_2

    .line 148
    .line 149
    invoke-virtual {v9, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 150
    .line 151
    .line 152
    move-result v16

    .line 153
    aput v16, v14, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    add-int/lit8 v15, v15, 0x1

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_2
    :try_start_1
    iget-object v11, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 159
    .line 160
    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 161
    .line 162
    const-string v15, "Free memory"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .line 164
    move/from16 v8, p3

    .line 165
    .line 166
    :try_start_2
    invoke-interface {v11, v14, v15, v8}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    .line 167
    .line 168
    .line 169
    move-result v11
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    if-eqz v11, :cond_4

    .line 171
    .line 172
    const/4 v13, 0x1

    .line 173
    goto :goto_4

    .line 174
    :catch_0
    :cond_3
    move/from16 v8, p3

    .line 175
    .line 176
    :catch_1
    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 177
    .line 178
    const/4 v8, 0x0

    .line 179
    goto :goto_2

    .line 180
    :cond_5
    const/4 v13, 0x0

    .line 181
    :cond_6
    if-nez v10, :cond_7

    .line 182
    .line 183
    if-eqz v13, :cond_a

    .line 184
    .line 185
    :cond_7
    :try_start_3
    const-string v7, "Looks like we have reclaimed some memory, clearing surface for retry."

    .line 186
    .line 187
    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    if-eqz v3, :cond_9

    .line 191
    .line 192
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    .line 193
    .line 194
    const/4 v3, 0x2

    .line 195
    aget-boolean v2, v2, v3

    .line 196
    .line 197
    if-eqz v2, :cond_8

    .line 198
    .line 199
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 204
    .line 205
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v22

    .line 209
    const/16 v20, 0x0

    .line 210
    .line 211
    const/16 v21, 0x0

    .line 212
    .line 213
    const-wide v18, 0xc041a026a68384fL

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_8
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 224
    .line 225
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 235
    .line 236
    .line 237
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 238
    .line 239
    if-eqz v0, :cond_9

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    .line 243
    .line 244
    :cond_9
    :try_start_4
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 245
    .line 246
    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 247
    .line 248
    .line 249
    :catch_2
    :cond_a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    .line 251
    .line 252
    if-nez v10, :cond_c

    .line 253
    .line 254
    if-eqz v13, :cond_b

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_b
    const/4 v8, 0x0

    .line 258
    goto :goto_6

    .line 259
    :cond_c
    :goto_5
    const/4 v8, 0x1

    .line 260
    :goto_6
    return v8

    .line 261
    :goto_7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 262
    .line 263
    .line 264
    throw v0
.end method

.method public final refreshSecureSurfaceState()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "refreshSecureSurfaceState, callers="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "WindowManager"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-direct {v0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 7
    .line 8
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final varargs removeRootTasksInWindowingModes([I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    array-length v2, p1

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct {v3, p1, v2, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;-><init>([ILjava/util/ArrayList;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    add-int/lit8 v3, v3, -0x1

    .line 43
    .line 44
    :goto_1
    if-ltz v3, :cond_1

    .line 45
    .line 46
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/android/server/wm/Task;

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, -0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void
.end method

.method public final varargs removeRootTasksWithActivityTypes([I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    array-length v2, p1

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-direct {v3, p1, v2, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;-><init>([ILjava/util/ArrayList;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    add-int/lit8 v3, v3, -0x1

    .line 43
    .line 44
    :goto_1
    if-ltz v3, :cond_1

    .line 45
    .line 46
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/android/server/wm/Task;

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, -0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void
.end method

.method public final removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepToken;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x6

    .line 10
    const-string v3, " from "

    .line 11
    .line 12
    const-string v4, "WindowManager"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v5, "Remove non-exist sleep token: "

    .line 19
    .line 20
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v0, v4}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    .line 36
    .line 37
    iget v0, p1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mDisplayId:I

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-object v7, p1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    .line 49
    .line 50
    filled-new-array {v1, v6, v7}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const v6, 0xf4309

    .line 55
    .line 56
    .line 57
    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, "Remove sleep token for non-existing display: "

    .line 69
    .line 70
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-static {v2, p0, v4}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 84
    .line 85
    aget-boolean v2, v2, v5

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    int-to-long v3, v0

    .line 94
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 95
    .line 96
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    const/4 v11, 0x4

    .line 105
    const/4 v12, 0x0

    .line 106
    const-wide v9, 0x12720631fbe33e39L    # 7.978094503905984E-220

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    iget-object p1, v1, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 130
    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 135
    .line 136
    iget p1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-nez p0, :cond_3

    .line 143
    .line 144
    const-string p0, "keyguard"

    .line 145
    .line 146
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-nez p0, :cond_4

    .line 151
    .line 152
    :cond_3
    const-string p0, "Display-off"

    .line 153
    .line 154
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-nez p0, :cond_4

    .line 159
    .line 160
    const-string p0, "cover-virtual"

    .line 161
    .line 162
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-eqz p0, :cond_5

    .line 167
    .line 168
    :cond_4
    const/4 p0, 0x1

    .line 169
    iput-boolean p0, v1, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 170
    .line 171
    :cond_5
    return-void
.end method

.method public resolveActivities(ILandroid/content/Intent;)Ljava/util/List;
    .locals 6

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-wide/16 v3, 0x400

    .line 18
    .line 19
    move-object v1, p2

    .line 20
    move v5, p1

    .line 21
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object p0
.end method

.method public resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-wide/16 v3, 0x400

    .line 13
    .line 14
    invoke-interface {v2, v0, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/16 v6, 0x400

    .line 42
    .line 43
    move-object v3, p2

    .line 44
    move v5, p1

    .line 45
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    :cond_1
    move-object v0, v1

    .line 55
    :goto_0
    if-nez v0, :cond_2

    .line 56
    .line 57
    new-instance p0, Ljava/lang/Exception;

    .line 58
    .line 59
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "WindowManager"

    .line 71
    .line 72
    const-string v0, "No home screen found for %s and user %d"

    .line 73
    .line 74
    invoke-static {p2, p0, v0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_2
    new-instance p2, Landroid/content/pm/ActivityInfo;

    .line 79
    .line 80
    invoke-direct {p2, v0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 84
    .line 85
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    .line 94
    .line 95
    invoke-direct {v1, v0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 99
    .line 100
    .line 101
    :goto_1
    iput-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 102
    .line 103
    return-object p2
.end method

.method public resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eq p2, v0, :cond_c

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v2

    .line 25
    :goto_0
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmCustomHome()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isHomeSupported()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v4, v4, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 54
    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {v4}, Landroid/window/DisplayWindowPolicyController;->getCustomHomeComponent()Landroid/content/ComponentName;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_1
    move-object v4, v5

    .line 64
    :goto_2
    if-eqz v4, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    move v3, v2

    .line 76
    move-object v1, v4

    .line 77
    :cond_4
    if-eqz v3, :cond_9

    .line 78
    .line 79
    const-class v3, Lcom/android/internal/app/ResolverActivity;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    move-object v1, v5

    .line 94
    goto :goto_6

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 98
    .line 99
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 100
    .line 101
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 102
    .line 103
    iget-object v4, p2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 104
    .line 105
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 106
    .line 107
    invoke-interface {v3, v4}, Lcom/android/server/wm/ExtraDisplayPolicy;->hasCoverHome(I)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_6

    .line 112
    .line 113
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 125
    .line 126
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 127
    .line 128
    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveActivities(ILandroid/content/Intent;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 141
    .line 142
    move v6, v2

    .line 143
    :goto_4
    if-ge v6, v4, :cond_8

    .line 144
    .line 145
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 150
    .line 151
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 152
    .line 153
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_7

    .line 160
    .line 161
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_8
    move-object v1, v5

    .line 168
    :goto_5
    if-nez v1, :cond_9

    .line 169
    .line 170
    if-lez v4, :cond_9

    .line 171
    .line 172
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 177
    .line 178
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 179
    .line 180
    :cond_9
    :goto_6
    if-eqz v1, :cond_a

    .line 181
    .line 182
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-nez p2, :cond_a

    .line 187
    .line 188
    move-object v1, v5

    .line 189
    :cond_a
    if-nez v1, :cond_b

    .line 190
    .line 191
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 192
    .line 193
    invoke-virtual {p2, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    :cond_b
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    return-object p0

    .line 206
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 207
    .line 208
    const-string/jumbo p1, "resolveSecondaryHomeActivity: Should not be default task container"

    .line 209
    .line 210
    .line 211
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p0
.end method

.method public final resumeFocusedTasksTopActivities()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    return-void
.end method

.method public final resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 2
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 3
    iget v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v1, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    if-nez v1, :cond_1

    return v10

    :cond_1
    if-eqz v8, :cond_3

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v1, v8, :cond_3

    .line 6
    :cond_2
    invoke-virtual/range {p1 .. p4}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v10

    .line 7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v11

    move v12, v1

    move v13, v2

    :goto_2
    if-ltz v13, :cond_9

    .line 8
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/wm/DisplayContent;

    .line 9
    new-array v15, v11, [Z

    .line 10
    invoke-virtual {v14, v10}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 11
    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v15

    move v4, v12

    move-object/from16 v6, p3

    move-object v11, v7

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/Task;[ZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v14, v11}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 12
    aget-boolean v1, v15, v10

    or-int v2, v12, v1

    if-nez v1, :cond_4

    .line 13
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {v14, v10}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    move-object/from16 v4, p3

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    move-object/from16 v4, p3

    .line 16
    invoke-virtual {v1, v9, v4, v10}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v5

    or-int/2addr v2, v5

    if-nez v2, :cond_6

    if-eqz v9, :cond_6

    .line 17
    iget-boolean v5, v9, Lcom/android/server/wm/ActivityRecord;->mAliasChild:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    .line 18
    invoke-virtual {v9, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_6

    if-ne v1, v8, :cond_6

    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 20
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    .line 21
    invoke-virtual {v1, v5, v3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v5, 0x1

    :cond_7
    :goto_4
    move v12, v2

    goto :goto_5

    :cond_8
    move-object/from16 v4, p3

    const/4 v5, 0x1

    if-nez v8, :cond_7

    .line 22
    const-string/jumbo v1, "no-focusable-task"

    .line 23
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 24
    invoke-virtual {v0, v3, v1, v6}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    or-int/2addr v1, v2

    move v12, v1

    :goto_5
    add-int/lit8 v13, v13, -0x1

    move v11, v5

    goto/16 :goto_2

    :cond_9
    return v12
.end method

.method public final resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    if-nez p3, :cond_1

    .line 24
    .line 25
    iget-object p3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    :cond_1
    move-object v5, p3

    .line 32
    iget-object p3, v5, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 33
    .line 34
    iget p3, p3, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 35
    .line 36
    iget-object v0, v5, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    move-object v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v3, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    const-class v4, Lcom/android/server/wm/ActivityRecord;

    .line 49
    .line 50
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-static {v3, v4, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {p3}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 67
    .line 68
    .line 69
    :goto_0
    const-string p3, " resumeHomeActivity"

    .line 70
    .line 71
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-boolean p2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 78
    .line 79
    if-nez p2, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p0, p2, p1, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    return p0

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 94
    .line 95
    iget-object p2, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 96
    .line 97
    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 98
    .line 99
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    move-object v2, p0

    .line 108
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    return p0
.end method

.method public final sendSleepTransition(Lcom/android/server/wm/DisplayContent;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 8
    .line 9
    const/16 v3, 0xc

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;

    .line 16
    .line 17
    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    const-string p0, "WindowManager"

    .line 39
    .line 40
    const-string v2, "Ongoing sync outside of a transition."

    .line 41
    .line 42
    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;->onCollectStarted(Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 55
    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public final setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 20
    .line 21
    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 22
    .line 23
    .line 24
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 35
    .line 36
    const-string v0, "android.hardware.display.category.ALL_INCLUDING_BUILT_IN"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x0

    .line 43
    move v1, v0

    .line 44
    :goto_0
    array-length v2, p1

    .line 45
    if-ge v1, v2, :cond_1

    .line 46
    .line 47
    aget-object v2, p1, v1

    .line 48
    .line 49
    new-instance v3, Lcom/android/server/wm/DisplayContent;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 52
    .line 53
    invoke-direct {v3, v2, p0, v4}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/DeviceStateController;)V

    .line 54
    .line 55
    .line 56
    const/high16 v2, -0x80000000

    .line 57
    .line 58
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 59
    .line 60
    .line 61
    iget v2, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 62
    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 66
    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    .line 78
    .line 79
    .line 80
    const v1, 0x7fffffff

    .line 81
    .line 82
    .line 83
    iget-object p1, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 84
    .line 85
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final shouldPlacePrimaryHomeOnDisplay(I)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-ne p0, p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 32
    :goto_1
    return p0
.end method

.method public final shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eq v0, p1, :cond_7

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->canHostHomeTask()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 27
    .line 28
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    return v0

    .line 33
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 38
    .line 39
    invoke-interface {v2, v1}, Lcom/android/server/wm/ExtraDisplayPolicy;->hasCoverHome(I)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "device_provisioned"

    .line 55
    .line 56
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 63
    .line 64
    invoke-static {p0}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_4

    .line 69
    .line 70
    return v0

    .line 71
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isHomeSupported()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_5

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    const/4 p0, 0x1

    .line 89
    return p0

    .line 90
    :cond_6
    :goto_1
    return v0

    .line 91
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    const-string/jumbo p1, "shouldPlaceSecondaryHomeOnDisplay: Should not be on default task container"

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method public final startHomeOnDisplay(Ljava/lang/String;IIZZ)Z
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p3, v0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p3, 0x0

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    new-instance v6, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;

    .line 21
    .line 22
    move-object v0, v6

    .line 23
    move-object v1, p0

    .line 24
    move v2, p2

    .line 25
    move-object v3, p1

    .line 26
    move v4, p4

    .line 27
    move v5, p5

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/wm/RootWindowContainer;ILjava/lang/String;ZZ)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {p3, v6, p0}, Lcom/android/server/wm/WindowContainer;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z
    .locals 6

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eq p3, v0, :cond_4

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 29
    .line 30
    iget-object v1, p3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 31
    .line 32
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 56
    .line 57
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Landroid/content/Intent;

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const/4 v1, 0x0

    .line 63
    move-object v0, v1

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_2
    const/4 v2, 0x0

    .line 76
    if-eqz v1, :cond_e

    .line 77
    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_5
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    if-nez p4, :cond_6

    .line 87
    .line 88
    return v2

    .line 89
    :cond_6
    iget-object p4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 90
    .line 91
    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 92
    .line 93
    invoke-virtual {p4, p1}, Landroid/app/ActivityManagerInternal;->shouldDelayHomeLaunch(I)Z

    .line 94
    .line 95
    .line 96
    move-result p4

    .line 97
    if-eqz p4, :cond_7

    .line 98
    .line 99
    const-string p0, "ThemeHomeDelay: Home launch was deferred with user "

    .line 100
    .line 101
    const-string p2, "WindowManager"

    .line 102
    .line 103
    invoke-static {p1, p0, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return v2

    .line 107
    :cond_7
    new-instance p4, Landroid/content/ComponentName;

    .line 108
    .line 109
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 110
    .line 111
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 114
    .line 115
    invoke-direct {p4, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    const/high16 v3, 0x10000000

    .line 126
    .line 127
    or-int/2addr p4, v3

    .line 128
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    const/4 p4, 0x2

    .line 132
    const/4 v3, 0x1

    .line 133
    if-eqz p5, :cond_b

    .line 134
    .line 135
    const-string p5, "android.intent.extra.FROM_HOME_KEY"

    .line 136
    .line 137
    invoke-virtual {v0, p5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    iget-object p5, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 141
    .line 142
    iget-object p5, p5, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 143
    .line 144
    if-eqz p5, :cond_9

    .line 145
    .line 146
    iget v4, p5, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    .line 147
    .line 148
    if-ne v4, p4, :cond_8

    .line 149
    .line 150
    iget-boolean v4, p5, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    .line 151
    .line 152
    if-eqz v4, :cond_8

    .line 153
    .line 154
    move v4, v3

    .line 155
    goto :goto_3

    .line 156
    :cond_8
    move v4, v2

    .line 157
    :goto_3
    const-string v5, "cancelAnimationForHomeStart"

    .line 158
    .line 159
    invoke-virtual {p5, v4, v5, v3}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    :cond_9
    iget-object p5, p3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 163
    .line 164
    iget p5, p5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 165
    .line 166
    if-nez p5, :cond_a

    .line 167
    .line 168
    iget-object p5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 169
    .line 170
    iget-object p5, p5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 171
    .line 172
    invoke-virtual {p5, v2, v3}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 173
    .line 174
    .line 175
    :cond_a
    sget-boolean p5, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 176
    .line 177
    if-eqz p5, :cond_b

    .line 178
    .line 179
    iget-object p5, p3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 180
    .line 181
    iget p5, p5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 182
    .line 183
    if-nez p5, :cond_b

    .line 184
    .line 185
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 186
    .line 187
    .line 188
    move-result p5

    .line 189
    if-eqz p5, :cond_b

    .line 190
    .line 191
    const-string p5, "1005"

    .line 192
    .line 193
    const-string v4, "Tap \'Home\' button"

    .line 194
    .line 195
    invoke-static {p5, v4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_b
    const-string p5, "android.intent.extra.EXTRA_START_REASON"

    .line 199
    .line 200
    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    new-instance p5, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string p2, ":"

    .line 212
    .line 213
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object p1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 223
    .line 224
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 225
    .line 226
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget-object p1, p3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 237
    .line 238
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 239
    .line 240
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 248
    .line 249
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 250
    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-virtual {p2, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 259
    .line 260
    .line 261
    iget-object p5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 262
    .line 263
    invoke-static {p5}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result p5

    .line 267
    if-nez p5, :cond_c

    .line 268
    .line 269
    invoke-virtual {p2, p4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 270
    .line 271
    .line 272
    :cond_c
    iget-object p4, p3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 273
    .line 274
    iget p4, p4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 275
    .line 276
    invoke-virtual {p2, p4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 277
    .line 278
    .line 279
    iget-object p4, p3, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 280
    .line 281
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 282
    .line 283
    .line 284
    move-result-object p4

    .line 285
    invoke-virtual {p2, p4}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    .line 286
    .line 287
    .line 288
    iget-object p4, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 289
    .line 290
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 291
    .line 292
    .line 293
    :try_start_0
    invoke-virtual {p3, v3}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    .line 294
    .line 295
    .line 296
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 298
    .line 299
    .line 300
    new-instance p5, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string/jumbo v4, "startHomeActivity: "

    .line 303
    .line 304
    .line 305
    invoke-direct {p5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    iget-object p5, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 320
    .line 321
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 322
    .line 323
    iput-object v0, p5, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 324
    .line 325
    iput v2, p5, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 326
    .line 327
    iput-object v1, p5, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 328
    .line 329
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    iget-object p5, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 338
    .line 339
    iput-object p2, p5, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 340
    .line 341
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    iput p1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 346
    .line 347
    aget-object p1, v0, v2

    .line 348
    .line 349
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 350
    .line 351
    iget-boolean p0, p3, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 352
    .line 353
    if-eqz p0, :cond_d

    .line 354
    .line 355
    iget-object p0, p4, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 356
    .line 357
    const/16 p1, 0xca

    .line 358
    .line 359
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    if-nez p2, :cond_d

    .line 364
    .line 365
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    .line 367
    .line 368
    :cond_d
    return v3

    .line 369
    :catchall_0
    move-exception p0

    .line 370
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 371
    .line 372
    .line 373
    throw p0

    .line 374
    :cond_e
    :goto_4
    return v2
.end method

.method public final startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-array p1, v1, [Z

    .line 12
    .line 13
    aput-boolean v1, p1, v0

    .line 14
    .line 15
    new-array v2, v1, [Z

    .line 16
    .line 17
    aput-boolean v1, v2, v0

    .line 18
    .line 19
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v3, p1, v2, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;-><init>([Z[ZLcom/android/server/wm/ActivityRecord;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    aget-boolean p1, p1, v0

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    aget-boolean p1, v2, v0

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    :goto_0
    if-eqz p1, :cond_4

    .line 50
    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    iget p1, p2, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    if-ne p1, v2, :cond_2

    .line 57
    .line 58
    move v0, v1

    .line 59
    :cond_2
    if-nez v0, :cond_4

    .line 60
    .line 61
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget p1, p1, Landroid/app/ActivityOptions$SourceInfo;->type:I

    .line 76
    .line 77
    if-eq p1, v2, :cond_4

    .line 78
    .line 79
    :cond_3
    const/4 v1, 0x5

    .line 80
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->startPowerMode(I)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 6
    .line 7
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/android/server/wm/ExtraDisplayPolicy;->hasCoverHome(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v2, "displayAdded"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v1, p0

    .line 27
    move v3, v7

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(Ljava/lang/String;IIZZ)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v3, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 33
    .line 34
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(Ljava/lang/String;IIZZ)Z

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 45
    .line 46
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v7}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v0, "notifyDisplayReady() >> KnoxZT startEnableTouchEvent called for Display Id : "

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 67
    .line 68
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 69
    .line 70
    const-string v0, "WindowManager"

    .line 71
    .line 72
    invoke-static {p1, p0, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final switchUser(ILcom/android/server/am/UserState;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, -0x1

    .line 15
    :goto_0
    const/4 v2, 0x2

    .line 16
    filled-new-array {v2}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 33
    .line 34
    iget v5, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 35
    .line 36
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    .line 38
    .line 39
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance p2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda9;

    .line 49
    .line 50
    invoke-direct {p2, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda9;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 54
    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget p2, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 59
    .line 60
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 67
    .line 68
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_1

    .line 79
    .line 80
    const-string p2, "WindowManager"

    .line 81
    .line 82
    const-string v0, "Persisting top task because it belongs to an always-visible user"

    .line 83
    .line 84
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 88
    .line 89
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 90
    .line 91
    invoke-virtual {p2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-nez p1, :cond_2

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_3

    .line 125
    .line 126
    move v3, v4

    .line 127
    :cond_3
    const/4 v0, 0x0

    .line 128
    if-eqz v3, :cond_4

    .line 129
    .line 130
    const-string/jumbo p0, "switchUserOnHomeDisplay"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string/jumbo v1, "switchUserOnOtherDisplay"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 147
    .line 148
    .line 149
    :goto_1
    return p2
.end method

.method public final topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

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
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final updateDisplayImePolicyCache()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayImePolicyCache:Ljava/util/Map;

    .line 22
    .line 23
    return-void
.end method

.method public final updateUIDsPresentOnDisplay()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 27
    .line 28
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 29
    .line 30
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/util/IntArray;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 36
    .line 37
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    .line 38
    .line 39
    const/4 v6, 0x7

    .line 40
    invoke-direct {v5, v6, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/DisplayContent;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 47
    .line 48
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
