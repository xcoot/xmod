.class public final Lcom/android/server/wm/Transition;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# instance fields
.field public mAdditionalFlags:I

.field public mAnimationTrack:I

.field public mCanPipOnFinish:Z

.field public final mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

.field public final mChanges:Landroid/util/ArrayMap;

.field public mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

.field public mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

.field public mConfigAtEndActivities:Ljava/util/ArrayList;

.field public mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

.field public final mController:Lcom/android/server/wm/TransitionController;

.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mFlags:I

.field public mForcePlaying:Z

.field public mIsPlayerEnabled:Z

.field public mIsSeamlessRotation:Z

.field public final mLogger:Lcom/android/server/wm/TransitionController$Logger;

.field public final mOnTopTasksAtReady:Ljava/util/ArrayList;

.field public final mOnTopTasksStart:Ljava/util/ArrayList;

.field public mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field public mParallelCollectType:I

.field public final mParticipants:Landroid/util/ArraySet;

.field public mPipActivity:Lcom/android/server/wm/ActivityRecord;

.field public mPriorVisibilityMightBeDirty:Z

.field public final mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

.field public final mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

.field public mRecentsDisplayId:I

.field public mRemoteTransition:Landroid/window/RemoteTransition;

.field public mStartTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mState:I

.field public mStatusBarTransitionDelay:J

.field public final mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field public mSyncId:I

.field public final mTargetDisplays:Ljava/util/ArrayList;

.field public mTargets:Ljava/util/ArrayList;

.field public final mToken:Lcom/android/server/wm/Transition$Token;

.field mTransactionCompletedListeners:Ljava/util/ArrayList;

.field public mTransientHideTasks:Ljava/util/ArrayList;

.field public mTransientLaunches:Landroid/util/ArrayMap;

.field public mTransitionEndedListeners:Ljava/util/ArrayList;

.field public final mType:I

.field public final mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 13
    .line 14
    new-instance v2, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 20
    .line 21
    new-instance v2, Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance v2, Landroid/util/ArraySet;

    .line 50
    .line 51
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    .line 65
    .line 66
    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 67
    .line 68
    new-instance v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 69
    .line 70
    invoke-direct {v2}, Lcom/android/server/wm/Transition$ReadyTrackerOld;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 74
    .line 75
    new-instance v2, Lcom/android/server/wm/Transition$ReadyTracker;

    .line 76
    .line 77
    invoke-direct {v2, p0}, Lcom/android/server/wm/Transition$ReadyTracker;-><init>(Lcom/android/server/wm/Transition;)V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 81
    .line 82
    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    .line 89
    .line 90
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 91
    .line 92
    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    .line 93
    .line 94
    new-instance v3, Lcom/android/server/wm/TransitionController$Logger;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v3, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    .line 102
    .line 103
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    .line 104
    .line 105
    iput v2, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 106
    .line 107
    iput v2, p0, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    .line 108
    .line 109
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 110
    .line 111
    iput p1, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 112
    .line 113
    iput p2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 114
    .line 115
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 116
    .line 117
    iput-object p4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 118
    .line 119
    new-instance p1, Lcom/android/server/wm/Transition$Token;

    .line 120
    .line 121
    invoke-direct {p1, p0}, Lcom/android/server/wm/Transition$Token;-><init>(Lcom/android/server/wm/Transition;)V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 125
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide p1

    .line 130
    iput-wide p1, v3, Lcom/android/server/wm/TransitionController$Logger;->mCreateWallTimeMs:J

    .line 131
    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 133
    .line 134
    .line 135
    move-result-wide p1

    .line 136
    iput-wide p1, v3, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 137
    .line 138
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 139
    .line 140
    if-eqz p1, :cond_0

    .line 141
    .line 142
    iget-object p1, p3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 145
    .line 146
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 147
    .line 148
    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 149
    .line 150
    if-eqz p1, :cond_1

    .line 151
    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string p2, "Transition is created, t="

    .line 155
    .line 156
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p0, ", caller="

    .line 163
    .line 164
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const/4 p0, 0x5

    .line 168
    const-string p2, "WindowManager"

    .line 169
    .line 170
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_1
    return-void
.end method

.method public static addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v0

    .line 7
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v1, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public static assignLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 17
    .line 18
    iput-boolean v0, p1, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 19
    .line 20
    throw p0
.end method

.method public static buildCleanupTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    :goto_0
    const/4 v1, 0x0

    .line 12
    if-ltz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p0, v3, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    .line 37
    :cond_0
    const/16 v1, 0x20

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eq v1, v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 80
    .line 81
    .line 82
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_2

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_2

    .line 133
    .line 134
    iget-boolean v3, v1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 135
    .line 136
    if-nez v3, :cond_2

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {p0, v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 155
    .line 156
    .line 157
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_3
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    add-int/lit8 v0, v0, -0x1

    .line 166
    .line 167
    :goto_1
    if-ltz v0, :cond_5

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-nez v2, :cond_4

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    invoke-virtual {p0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 181
    .line 182
    .line 183
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_5
    return-void
.end method

.method public static calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object v1, v3

    .line 56
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v3}, Landroid/window/TransitionInfo$AnimationOptions;->makeCommonAnimOptions(Ljava/lang/String;)Landroid/window/TransitionInfo$AnimationOptions;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget v4, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    .line 77
    .line 78
    iget v5, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    .line 79
    .line 80
    iget v2, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/window/TransitionInfo$AnimationOptions;->addCustomActivityTransition(ZIII)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 87
    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    if-nez v3, :cond_4

    .line 91
    .line 92
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1}, Landroid/window/TransitionInfo$AnimationOptions;->makeCommonAnimOptions(Ljava/lang/String;)Landroid/window/TransitionInfo$AnimationOptions;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :cond_4
    iget v1, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    .line 99
    .line 100
    iget v4, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    .line 101
    .line 102
    iget v2, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    .line 103
    .line 104
    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/window/TransitionInfo$AnimationOptions;->addCustomActivityTransition(ZIII)V

    .line 105
    .line 106
    .line 107
    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    if-eqz p2, :cond_6

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_6
    invoke-static {p1, p0}, Lcom/android/server/wm/Transition;->getLayoutParamsForAnimationsStyle(Ljava/util/ArrayList;I)Landroid/view/WindowManager$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    :goto_3
    if-eqz p2, :cond_8

    .line 119
    .line 120
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 121
    .line 122
    const/4 p1, 0x3

    .line 123
    if-eq p0, p1, :cond_8

    .line 124
    .line 125
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 126
    .line 127
    if-eqz p0, :cond_8

    .line 128
    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    invoke-virtual {v3, p2}, Landroid/window/TransitionInfo$AnimationOptions;->addOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    invoke-static {p2}, Landroid/window/TransitionInfo$AnimationOptions;->makeAnimOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :cond_8
    :goto_4
    return-object v3
.end method

.method public static calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/server/wm/Transition;->calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;I)Ljava/util/ArrayList;
    .locals 25

    move-object/from16 v0, p1

    .line 2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 3
    aget-boolean v1, v2, v4

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, 0x357641f0591731bdL    # 3.718078589772125E-51

    const/4 v8, 0x0

    const-string v9, "Start calculating TransitionInfo based on participants: %s"

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    aget-boolean v1, v3, v4

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, 0xa51bfd09a803dffL

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/wm/Transition$Targets;

    invoke-direct {v1}, Lcom/android/server/wm/Transition$Targets;-><init>()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_1
    const-string v6, "Transition"

    if-ltz v5, :cond_a

    move-object/from16 v7, p0

    .line 7
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 8
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v9

    if-nez v9, :cond_3

    .line 9
    aget-boolean v6, v3, v4

    if-eqz v6, :cond_2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v13

    const-wide v9, -0x64940b6165c5c105L

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    move/from16 v13, p2

    goto/16 :goto_3

    .line 10
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 12
    invoke-virtual {v9}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v10

    if-nez v10, :cond_5

    .line 13
    aget-boolean v6, v3, v4

    if-eqz v6, :cond_2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v12, 0xc

    const/4 v13, 0x0

    const-wide v10, -0x7032121ad5e4ca8aL

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    .line 15
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    .line 16
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v12, :cond_8

    if-eqz v11, :cond_6

    .line 17
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x6

    move/from16 v13, p2

    if-ne v13, v12, :cond_7

    .line 18
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 19
    iget-boolean v11, v11, Lcom/android/server/wm/ActivityRecord;->mHiddenWhileEnteringPinnedMode:Z

    if-eqz v11, :cond_7

    .line 20
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "calculateTargets: Skip to collect entering pip, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move/from16 v13, p2

    :cond_7
    if-eqz v10, :cond_9

    .line 21
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 22
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 23
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v10}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v10

    if-nez v10, :cond_9

    .line 24
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "skip promote to task fragment. parents has no changes. wc="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    move/from16 v13, p2

    .line 25
    :cond_9
    invoke-virtual {v1, v9}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 26
    :cond_a
    aget-boolean v5, v3, v4

    if-eqz v5, :cond_b

    iget-object v5, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, -0x100392630555c6f8L

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_b
    iget-object v5, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v7, 0x0

    :goto_4
    if-ltz v5, :cond_29

    .line 28
    iget-object v9, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 29
    iget-object v10, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 30
    aget-boolean v11, v3, v4

    if-eqz v11, :cond_c

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide v13, -0x7bbc591a68b0c5d1L    # -4.033105707718502E-288

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_c
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    if-ne v11, v7, :cond_e

    .line 32
    aget-boolean v9, v3, v4

    if-eqz v9, :cond_d

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide v11, -0x5e9fc77bb376cc2dL    # -6.342837275253804E-148

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_5
    const/4 v4, -0x1

    goto/16 :goto_10

    .line 33
    :cond_e
    iget-object v12, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v13

    .line 34
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 35
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v15

    if-eqz v15, :cond_27

    if-eqz v14, :cond_27

    .line 36
    invoke-virtual {v14}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v15

    if-nez v15, :cond_f

    goto/16 :goto_e

    .line 37
    :cond_f
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v15

    if-eqz v15, :cond_10

    .line 38
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_28

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const-wide v13, -0x25ad13ad2acccd76L    # -1.280947603135937E127

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 39
    :cond_10
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v15, :cond_11

    .line 40
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v15

    if-eqz v15, :cond_11

    goto/16 :goto_f

    .line 41
    :cond_11
    iget-object v15, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v15, :cond_12

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-eq v8, v15, :cond_12

    .line 42
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v8, :cond_28

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_28

    .line 43
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    move-result v8

    if-eqz v8, :cond_28

    iget-boolean v8, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-nez v8, :cond_28

    .line 44
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    if-eqz v8, :cond_28

    .line 45
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 46
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "canPromote: allow promotion, target="

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", parent="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_12
    invoke-virtual {v9, v12}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v8

    .line 48
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v14

    sub-int/2addr v14, v4

    :goto_6
    if-ltz v14, :cond_1e

    .line 49
    invoke-virtual {v13, v14}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v15

    if-ne v12, v15, :cond_13

    move-object/from16 v16, v7

    move-object/from16 v18, v12

    goto/16 :goto_b

    .line 50
    :cond_13
    aget-boolean v16, v3, v4

    if-eqz v16, :cond_14

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v22

    const/16 v21, 0x0

    const-wide v18, 0x19bfecb549673b62L

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_14
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    move-object/from16 v16, v7

    if-eqz v4, :cond_15

    .line 52
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_16

    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    if-eqz v7, :cond_15

    .line 54
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_7

    :cond_15
    move-object/from16 v18, v12

    goto :goto_a

    .line 55
    :cond_16
    :goto_7
    invoke-virtual {v4, v15}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    const/4 v7, 0x1

    .line 56
    aget-boolean v15, v3, v7

    if-eqz v15, :cond_17

    invoke-static {v4}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v23

    const/16 v22, 0x0

    const-wide v19, 0x35c169e944f53a58L    # 9.30855293649066E-50

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    const/4 v15, 0x4

    const/4 v7, 0x3

    if-eq v8, v7, :cond_19

    if-eq v8, v15, :cond_18

    move-object/from16 v18, v12

    move v12, v8

    goto :goto_8

    :cond_18
    move-object/from16 v18, v12

    const/4 v12, 0x2

    goto :goto_8

    :cond_19
    move-object/from16 v18, v12

    const/4 v12, 0x1

    :goto_8
    if-eq v4, v7, :cond_1b

    if-eq v4, v15, :cond_1a

    goto :goto_9

    :cond_1a
    const/4 v4, 0x2

    goto :goto_9

    :cond_1b
    const/4 v4, 0x1

    :goto_9
    if-eq v12, v4, :cond_1d

    const/4 v4, 0x1

    .line 57
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_28

    invoke-static {v8}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v23

    const/16 v22, 0x0

    const-wide v19, 0x6a61845989c233aaL    # 2.7460382737481744E204

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 58
    :goto_a
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    .line 59
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_28

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const-wide v19, -0x5751d4667473cf6dL    # -9.801023515249834E-113

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1c
    const/4 v4, 0x1

    .line 60
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_1d

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v19, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v24

    const/16 v23, 0x0

    const-wide v20, 0x6d9a1d968ce03c38L    # 9.218844765689588E219

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    :goto_b
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v7, v16

    move-object/from16 v12, v18

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_1e
    move-object/from16 v16, v7

    .line 61
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    .line 62
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_22

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide v19, -0x65adad8a553ec094L    # -6.899189364683506E-182

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_1f
    const/4 v4, 0x1

    .line 63
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_20

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide v19, 0xd199f8fa39d39c7L

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_20
    iget-object v4, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 65
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 66
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    if-nez v7, :cond_21

    .line 67
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    .line 68
    :cond_21
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_22
    :goto_c
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 70
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_24

    const/4 v7, 0x1

    .line 71
    aget-boolean v8, v3, v7

    if-eqz v8, :cond_23

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide v11, 0xbadc3b08a373fbcL

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    add-int/lit8 v5, v5, 0x1

    .line 72
    invoke-virtual {v1, v4}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 73
    :cond_24
    iget v7, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_25

    .line 74
    iget v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    goto :goto_d

    .line 75
    :cond_25
    iget v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 76
    :goto_d
    iget v7, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_26

    .line 77
    iget v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    :cond_26
    move-object/from16 v7, v16

    goto/16 :goto_5

    .line 78
    :cond_27
    :goto_e
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_28

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "parent can\'t be target "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v23

    const/16 v22, 0x0

    const-wide v19, -0xa86bcf20866cc83L    # -7.586175146368892E257

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    :goto_f
    move-object v7, v11

    goto/16 :goto_5

    :goto_10
    add-int/2addr v5, v4

    const/4 v4, 0x1

    goto/16 :goto_4

    .line 79
    :cond_29
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v4, :cond_2a

    iget-object v4, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    if-eqz v4, :cond_2a

    .line 80
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 81
    :cond_2a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_11
    if-ltz v7, :cond_2b

    .line 84
    iget-object v9, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_11

    .line 85
    :cond_2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    :goto_12
    if-ltz v7, :cond_3a

    .line 86
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 87
    iget-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 88
    invoke-static {v9}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_2c

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz v10, :cond_2d

    .line 89
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->needRemoteWallpaperAnim()Z

    move-result v10

    if-eqz v10, :cond_2d

    :cond_2c
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v10, :cond_2e

    .line 90
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v10

    if-eqz v10, :cond_2e

    :cond_2d
    const/4 v10, 0x1

    goto :goto_13

    :cond_2e
    move v10, v11

    .line 91
    :goto_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 92
    invoke-static {v9}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    :goto_14
    if-eqz v9, :cond_39

    .line 93
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez v12, :cond_2f

    goto/16 :goto_19

    .line 94
    :cond_2f
    invoke-virtual {v12}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v13

    if-nez v13, :cond_30

    goto :goto_15

    .line 95
    :cond_30
    iget-object v13, v9, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-nez v13, :cond_31

    goto :goto_15

    .line 96
    :cond_31
    iget-object v13, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v13, :cond_32

    if-nez v10, :cond_32

    .line 97
    iput-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    goto/16 :goto_19

    .line 98
    :cond_32
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_35

    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz v13, :cond_33

    .line 99
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->needRemoteWallpaperAnim()Z

    move-result v13

    if-eqz v13, :cond_33

    goto :goto_16

    .line 100
    :cond_33
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v13

    if-eqz v13, :cond_34

    if-nez v10, :cond_34

    .line 101
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_34
    :goto_15
    invoke-static {v9}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    goto :goto_14

    :cond_35
    :goto_16
    if-eqz v10, :cond_36

    .line 103
    iput-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    goto :goto_17

    .line 104
    :cond_36
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_17
    iget v10, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_37

    .line 106
    iget-object v10, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_37

    .line 107
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    if-ne v10, v9, :cond_37

    .line 108
    iget v9, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v9, v9, 0x40

    iput v9, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 109
    :cond_37
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_38

    goto :goto_19

    .line 110
    :cond_38
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iput-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    .line 111
    :goto_18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v11, v8, :cond_39

    .line 112
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    add-int/lit8 v11, v11, 0x1

    .line 113
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iput-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    .line 114
    invoke-virtual {v1, v8}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    goto :goto_18

    :cond_39
    :goto_19
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_12

    .line 115
    :cond_3a
    new-instance v0, Landroid/util/SparseArray;

    iget-object v4, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 116
    iget-object v4, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1a
    if-ltz v4, :cond_3b

    .line 117
    iget-object v5, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget v7, v1, Lcom/android/server/wm/Transition$Targets;->mDepthFactor:I

    rem-int/2addr v5, v7

    .line 118
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 119
    :cond_3b
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    move v7, v5

    const/4 v5, -0x1

    :goto_1b
    if-ltz v7, :cond_3f

    .line 122
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 123
    iget-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_3e

    .line 124
    iget-boolean v10, v9, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    if-eqz v10, :cond_3d

    const/4 v10, -0x1

    if-ne v5, v10, :cond_3c

    .line 125
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 126
    :cond_3c
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3d
    const/4 v10, -0x1

    if-ne v5, v10, :cond_3e

    .line 127
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v9

    if-nez v9, :cond_3e

    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 129
    :cond_3e
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1c
    add-int/lit8 v7, v7, -0x1

    goto :goto_1b

    :cond_3f
    const/4 v7, -0x1

    if-eq v5, v7, :cond_40

    .line 130
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    :goto_1d
    if-ltz v0, :cond_40

    .line 131
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 132
    invoke-virtual {v1, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getCustomListSortedByZ: boost, index="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 134
    :cond_40
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    .line 135
    aget-boolean v0, v2, v0

    if-eqz v0, :cond_42

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x740cacc3e941c48aL    # -4.217413419510966E-251

    const/4 v5, 0x0

    const-string v6, "  Final targets: %s"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    :cond_41
    const/4 v0, 0x1

    .line 136
    aget-boolean v0, v3, v0

    if-eqz v0, :cond_42

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x7f8e28b736a5c6c8L    # -1.587897648457723E-306

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_42
    :goto_1e
    return-object v1
.end method

.method public static calculateTransitionInfo(IILjava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)Landroid/window/TransitionInfo;
    .locals 28

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Landroid/window/TransitionInfo;

    .line 8
    .line 9
    move/from16 v4, p1

    .line 10
    .line 11
    invoke-direct {v3, v0, v4}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v1, v2}, Lcom/android/server/wm/Transition;->calculateTransitionRoots(Landroid/window/TransitionInfo;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    invoke-static {v1, v0}, Lcom/android/server/wm/Transition;->getLayoutParamsForAnimationsStyle(Ljava/util/ArrayList;I)Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    invoke-static {v0, v1, v4}, Lcom/android/server/wm/Transition;->calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v0, v1, v6}, Lcom/android/server/wm/Transition;->calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    :goto_0
    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_2

    .line 47
    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    invoke-virtual {v3, v5}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    new-instance v7, Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const/4 v10, 0x0

    .line 63
    :goto_1
    if-ge v10, v8, :cond_88

    .line 64
    .line 65
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 70
    .line 71
    iget-object v12, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 72
    .line 73
    new-instance v13, Landroid/window/TransitionInfo$Change;

    .line 74
    .line 75
    iget-object v14, v12, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 76
    .line 77
    if-eqz v14, :cond_3

    .line 78
    .line 79
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move-object v14, v6

    .line 85
    :goto_2
    invoke-static {v2, v12}, Lcom/android/server/wm/Transition;->getLeashSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    invoke-direct {v13, v14, v15}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 90
    .line 91
    .line 92
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 93
    .line 94
    const/4 v15, 0x1

    .line 95
    if-eqz v14, :cond_4

    .line 96
    .line 97
    iget-boolean v14, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 98
    .line 99
    if-eqz v14, :cond_4

    .line 100
    .line 101
    invoke-virtual {v13, v15}, Landroid/window/TransitionInfo$Change;->setResumedAffordance(Z)V

    .line 102
    .line 103
    .line 104
    :cond_4
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 105
    .line 106
    if-eqz v14, :cond_5

    .line 107
    .line 108
    iget-boolean v14, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 109
    .line 110
    if-eqz v14, :cond_5

    .line 111
    .line 112
    iget-boolean v14, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mAffordanceTargetFreeformTask:Z

    .line 113
    .line 114
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setAffordanceTargetFreeformTask(Z)V

    .line 115
    .line 116
    .line 117
    :cond_5
    iget-object v14, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    .line 118
    .line 119
    if-eqz v14, :cond_6

    .line 120
    .line 121
    iget-object v14, v14, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 122
    .line 123
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    iget-object v14, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 131
    .line 132
    if-eqz v14, :cond_7

    .line 133
    .line 134
    iget-object v14, v14, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 135
    .line 136
    if-eqz v14, :cond_7

    .line 137
    .line 138
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    iget-object v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 143
    .line 144
    if-eq v14, v6, :cond_7

    .line 145
    .line 146
    iget-object v6, v6, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 147
    .line 148
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setLastParent(Landroid/window/WindowContainerToken;)V

    .line 153
    .line 154
    .line 155
    :cond_7
    invoke-virtual {v11, v12}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 160
    .line 161
    .line 162
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 163
    .line 164
    const/4 v14, 0x6

    .line 165
    const/4 v9, 0x3

    .line 166
    if-eqz v6, :cond_a

    .line 167
    .line 168
    iget-object v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 169
    .line 170
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 171
    .line 172
    .line 173
    move-result-object v16

    .line 174
    if-eqz v16, :cond_9

    .line 175
    .line 176
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-nez v6, :cond_8

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    iget-boolean v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChangeSplitTask:Z

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_9
    :goto_3
    const/4 v6, 0x0

    .line 187
    :goto_4
    if-eqz v6, :cond_a

    .line 188
    .line 189
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eq v6, v15, :cond_a

    .line 194
    .line 195
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-eq v6, v9, :cond_a

    .line 200
    .line 201
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eq v6, v14, :cond_a

    .line 206
    .line 207
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 208
    .line 209
    .line 210
    :cond_a
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    iput v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyMode:I

    .line 215
    .line 216
    iget-object v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 217
    .line 218
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 219
    .line 220
    .line 221
    iget-boolean v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 222
    .line 223
    if-nez v6, :cond_c

    .line 224
    .line 225
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-eqz v6, :cond_b

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_b
    const/4 v6, 0x0

    .line 233
    goto :goto_6

    .line 234
    :cond_c
    :goto_5
    move v6, v15

    .line 235
    :goto_6
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    if-nez v14, :cond_d

    .line 240
    .line 241
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    .line 242
    .line 243
    .line 244
    move-result v14

    .line 245
    :goto_7
    xor-int/2addr v14, v15

    .line 246
    goto :goto_8

    .line 247
    :cond_d
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    .line 248
    .line 249
    .line 250
    move-result v17

    .line 251
    if-eqz v17, :cond_e

    .line 252
    .line 253
    move v14, v15

    .line 254
    goto :goto_8

    .line 255
    :cond_e
    iget-object v14, v14, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 256
    .line 257
    if-eqz v14, :cond_f

    .line 258
    .line 259
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    .line 260
    .line 261
    .line 262
    move-result v14

    .line 263
    goto :goto_8

    .line 264
    :cond_f
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    goto :goto_7

    .line 269
    :goto_8
    if-eqz v14, :cond_10

    .line 270
    .line 271
    or-int/lit8 v6, v6, 0x4

    .line 272
    .line 273
    :cond_10
    iget-object v14, v12, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 274
    .line 275
    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 276
    .line 277
    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 278
    .line 279
    iget-object v9, v14, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 280
    .line 281
    iget-boolean v15, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 282
    .line 283
    if-eqz v15, :cond_11

    .line 284
    .line 285
    iget-boolean v15, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 286
    .line 287
    if-eqz v15, :cond_11

    .line 288
    .line 289
    const/4 v15, 0x1

    .line 290
    goto :goto_9

    .line 291
    :cond_11
    const/4 v15, 0x0

    .line 292
    :goto_9
    if-eqz v15, :cond_13

    .line 293
    .line 294
    iget-object v14, v14, Lcom/android/server/wm/BackNavigationController;->mWaitTransitionFinish:Lcom/android/server/wm/Transition;

    .line 295
    .line 296
    if-nez v14, :cond_12

    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_12
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 300
    .line 301
    .line 302
    move-result v14

    .line 303
    invoke-virtual {v9, v12, v14}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    .line 304
    .line 305
    .line 306
    move-result v9

    .line 307
    goto :goto_b

    .line 308
    :cond_13
    :goto_a
    const/4 v9, 0x0

    .line 309
    :goto_b
    const/high16 v14, 0x20000

    .line 310
    .line 311
    if-eqz v9, :cond_14

    .line 312
    .line 313
    or-int/2addr v6, v14

    .line 314
    :cond_14
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    if-eqz v9, :cond_1a

    .line 319
    .line 320
    const/4 v15, 0x1

    .line 321
    invoke-virtual {v9, v15, v15}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    if-eqz v14, :cond_19

    .line 326
    .line 327
    iget-object v15, v14, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 328
    .line 329
    if-eqz v15, :cond_15

    .line 330
    .line 331
    invoke-virtual {v15}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    .line 332
    .line 333
    .line 334
    move-result v15

    .line 335
    if-eqz v15, :cond_15

    .line 336
    .line 337
    or-int/lit16 v6, v6, 0x800

    .line 338
    .line 339
    :cond_15
    iget-boolean v15, v14, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 340
    .line 341
    if-eqz v15, :cond_16

    .line 342
    .line 343
    const-string v15, "Transition"

    .line 344
    .line 345
    const-string v1, "Unexpected launch-task-behind operation in shell transition"

    .line 346
    .line 347
    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    const/high16 v1, 0x80000

    .line 351
    .line 352
    or-int/2addr v6, v1

    .line 353
    :cond_16
    iget v1, v14, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    .line 354
    .line 355
    const v15, 0x48000

    .line 356
    .line 357
    .line 358
    and-int/2addr v1, v15

    .line 359
    if-ne v1, v15, :cond_17

    .line 360
    .line 361
    or-int v1, v6, v15

    .line 362
    .line 363
    move v6, v1

    .line 364
    :cond_17
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 365
    .line 366
    if-eqz v1, :cond_19

    .line 367
    .line 368
    and-int/lit8 v1, v6, 0x4

    .line 369
    .line 370
    if-nez v1, :cond_19

    .line 371
    .line 372
    invoke-static {v14}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_19

    .line 377
    .line 378
    invoke-virtual {v11, v12}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    const/4 v14, 0x1

    .line 383
    if-eq v1, v14, :cond_18

    .line 384
    .line 385
    const/4 v14, 0x3

    .line 386
    if-ne v1, v14, :cond_19

    .line 387
    .line 388
    :cond_18
    or-int/lit8 v6, v6, 0x4

    .line 389
    .line 390
    :cond_19
    iget-object v1, v9, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 391
    .line 392
    if-eqz v1, :cond_1a

    .line 393
    .line 394
    or-int/lit8 v6, v6, 0x10

    .line 395
    .line 396
    :cond_1a
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    if-eqz v1, :cond_1d

    .line 401
    .line 402
    iget-object v15, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 403
    .line 404
    iget-boolean v14, v1, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    .line 405
    .line 406
    if-eqz v14, :cond_1b

    .line 407
    .line 408
    or-int/lit8 v6, v6, 0x10

    .line 409
    .line 410
    :cond_1b
    iget v14, v1, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    .line 411
    .line 412
    or-int/2addr v6, v14

    .line 413
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    .line 414
    .line 415
    .line 416
    move-result v14

    .line 417
    if-eqz v14, :cond_1c

    .line 418
    .line 419
    const/high16 v14, 0x400000

    .line 420
    .line 421
    or-int/2addr v6, v14

    .line 422
    :cond_1c
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 423
    .line 424
    if-eqz v14, :cond_1e

    .line 425
    .line 426
    const/high16 v14, 0x1000000

    .line 427
    .line 428
    or-int/2addr v6, v14

    .line 429
    goto :goto_c

    .line 430
    :cond_1d
    const/4 v15, 0x0

    .line 431
    :cond_1e
    :goto_c
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 432
    .line 433
    .line 434
    move-result-object v14

    .line 435
    if-eqz v14, :cond_1f

    .line 436
    .line 437
    if-nez v9, :cond_1f

    .line 438
    .line 439
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 440
    .line 441
    .line 442
    move-result-object v15

    .line 443
    :cond_1f
    if-eqz v15, :cond_2e

    .line 444
    .line 445
    new-instance v14, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;

    .line 446
    .line 447
    const/4 v9, 0x6

    .line 448
    invoke-direct {v14, v9}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;-><init>(I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v15, v14}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    .line 452
    .line 453
    .line 454
    move-result v9

    .line 455
    if-eqz v9, :cond_20

    .line 456
    .line 457
    or-int/lit16 v6, v6, 0x200

    .line 458
    .line 459
    :cond_20
    new-instance v9, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 460
    .line 461
    const/4 v14, 0x7

    .line 462
    invoke-direct {v9, v14}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v15, v9}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 466
    .line 467
    .line 468
    move-result-object v9

    .line 469
    if-eqz v9, :cond_21

    .line 470
    .line 471
    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 472
    .line 473
    goto :goto_d

    .line 474
    :cond_21
    const/4 v9, 0x0

    .line 475
    :goto_d
    if-eqz v9, :cond_27

    .line 476
    .line 477
    if-eq v9, v1, :cond_22

    .line 478
    .line 479
    iget-object v14, v9, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 480
    .line 481
    if-eqz v14, :cond_23

    .line 482
    .line 483
    iget-object v14, v14, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 484
    .line 485
    if-eqz v14, :cond_23

    .line 486
    .line 487
    :cond_22
    move/from16 v21, v8

    .line 488
    .line 489
    goto :goto_e

    .line 490
    :cond_23
    if-eqz v1, :cond_24

    .line 491
    .line 492
    iget-object v14, v15, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 493
    .line 494
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 495
    .line 496
    .line 497
    move-result v14

    .line 498
    move/from16 v21, v8

    .line 499
    .line 500
    iget-object v8, v15, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 501
    .line 502
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 503
    .line 504
    .line 505
    move-result v8

    .line 506
    if-ge v14, v8, :cond_25

    .line 507
    .line 508
    :goto_e
    or-int/lit16 v6, v6, 0x4000

    .line 509
    .line 510
    goto :goto_f

    .line 511
    :cond_24
    move/from16 v21, v8

    .line 512
    .line 513
    :cond_25
    if-eqz v1, :cond_28

    .line 514
    .line 515
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 516
    .line 517
    .line 518
    move-result-object v8

    .line 519
    if-eqz v8, :cond_28

    .line 520
    .line 521
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 522
    .line 523
    .line 524
    move-result-object v8

    .line 525
    if-eqz v8, :cond_28

    .line 526
    .line 527
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 532
    .line 533
    .line 534
    move-result-object v14

    .line 535
    if-ne v8, v14, :cond_26

    .line 536
    .line 537
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 538
    .line 539
    .line 540
    move-result-object v8

    .line 541
    iget-object v8, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 542
    .line 543
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 544
    .line 545
    .line 546
    move-result v8

    .line 547
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 552
    .line 553
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    if-ge v8, v1, :cond_28

    .line 558
    .line 559
    goto :goto_e

    .line 560
    :cond_26
    iget-object v8, v15, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 561
    .line 562
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    iget-object v8, v15, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 571
    .line 572
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 573
    .line 574
    .line 575
    move-result-object v9

    .line 576
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 577
    .line 578
    .line 579
    move-result v8

    .line 580
    if-ge v1, v8, :cond_28

    .line 581
    .line 582
    goto :goto_e

    .line 583
    :cond_27
    move/from16 v21, v8

    .line 584
    .line 585
    :cond_28
    :goto_f
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 590
    .line 591
    .line 592
    move-result v8

    .line 593
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    iget-object v9, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 598
    .line 599
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 600
    .line 601
    .line 602
    move-result-object v14

    .line 603
    iget-boolean v15, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 604
    .line 605
    if-eqz v15, :cond_2a

    .line 606
    .line 607
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 608
    .line 609
    .line 610
    move-result v15

    .line 611
    if-ne v8, v15, :cond_29

    .line 612
    .line 613
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 614
    .line 615
    .line 616
    move-result v9

    .line 617
    if-ne v1, v9, :cond_29

    .line 618
    .line 619
    goto :goto_10

    .line 620
    :cond_29
    const/4 v9, 0x0

    .line 621
    goto :goto_11

    .line 622
    :cond_2a
    :goto_10
    const/4 v9, 0x1

    .line 623
    :goto_11
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 624
    .line 625
    .line 626
    move-result v15

    .line 627
    if-eqz v15, :cond_2c

    .line 628
    .line 629
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 630
    .line 631
    .line 632
    move-result v15

    .line 633
    if-ne v8, v15, :cond_2b

    .line 634
    .line 635
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 636
    .line 637
    .line 638
    move-result v8

    .line 639
    if-ne v1, v8, :cond_2b

    .line 640
    .line 641
    goto :goto_12

    .line 642
    :cond_2b
    const/4 v1, 0x0

    .line 643
    goto :goto_13

    .line 644
    :cond_2c
    :goto_12
    const/4 v1, 0x1

    .line 645
    :goto_13
    if-eqz v9, :cond_2d

    .line 646
    .line 647
    if-eqz v1, :cond_2d

    .line 648
    .line 649
    const/4 v1, 0x1

    .line 650
    goto :goto_14

    .line 651
    :cond_2d
    const/4 v1, 0x0

    .line 652
    :goto_14
    if-eqz v1, :cond_35

    .line 653
    .line 654
    or-int/lit16 v1, v6, 0x400

    .line 655
    .line 656
    move v6, v1

    .line 657
    goto :goto_17

    .line 658
    :cond_2e
    move/from16 v21, v8

    .line 659
    .line 660
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    if-eqz v1, :cond_30

    .line 665
    .line 666
    or-int/lit8 v8, v6, 0x20

    .line 667
    .line 668
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    if-eqz v1, :cond_2f

    .line 673
    .line 674
    or-int/lit16 v6, v6, 0xa0

    .line 675
    .line 676
    goto :goto_17

    .line 677
    :cond_2f
    move v6, v8

    .line 678
    goto :goto_17

    .line 679
    :cond_30
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    if-eqz v1, :cond_31

    .line 684
    .line 685
    const/4 v1, 0x1

    .line 686
    goto :goto_15

    .line 687
    :cond_31
    const/4 v1, 0x0

    .line 688
    :goto_15
    if-eqz v1, :cond_32

    .line 689
    .line 690
    or-int/lit8 v6, v6, 0x2

    .line 691
    .line 692
    goto :goto_17

    .line 693
    :cond_32
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    const/16 v8, 0x7db

    .line 698
    .line 699
    if-ne v1, v8, :cond_33

    .line 700
    .line 701
    const/4 v1, 0x1

    .line 702
    goto :goto_16

    .line 703
    :cond_33
    const/4 v1, 0x0

    .line 704
    :goto_16
    if-eqz v1, :cond_34

    .line 705
    .line 706
    or-int/lit16 v6, v6, 0x100

    .line 707
    .line 708
    goto :goto_17

    .line 709
    :cond_34
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    const/16 v8, 0x7d0

    .line 714
    .line 715
    if-lt v1, v8, :cond_35

    .line 716
    .line 717
    const/16 v8, 0xbb7

    .line 718
    .line 719
    if-gt v1, v8, :cond_35

    .line 720
    .line 721
    const/high16 v1, 0x10000

    .line 722
    .line 723
    or-int/2addr v6, v1

    .line 724
    :cond_35
    :goto_17
    iget v1, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 725
    .line 726
    and-int/lit8 v8, v1, 0x8

    .line 727
    .line 728
    const/high16 v9, 0x40000

    .line 729
    .line 730
    if-eqz v8, :cond_36

    .line 731
    .line 732
    and-int/lit8 v8, v1, 0x10

    .line 733
    .line 734
    if-nez v8, :cond_36

    .line 735
    .line 736
    or-int/2addr v6, v9

    .line 737
    :cond_36
    and-int/lit8 v8, v1, 0x20

    .line 738
    .line 739
    if-eqz v8, :cond_37

    .line 740
    .line 741
    const/high16 v8, 0x100000

    .line 742
    .line 743
    or-int/2addr v6, v8

    .line 744
    :cond_37
    and-int/lit8 v1, v1, 0x40

    .line 745
    .line 746
    if-eqz v1, :cond_38

    .line 747
    .line 748
    const/high16 v1, 0x400000

    .line 749
    .line 750
    or-int/2addr v6, v1

    .line 751
    :cond_38
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 752
    .line 753
    if-eqz v1, :cond_39

    .line 754
    .line 755
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    if-eqz v1, :cond_39

    .line 760
    .line 761
    const/high16 v1, 0x2000000

    .line 762
    .line 763
    or-int/2addr v6, v1

    .line 764
    :cond_39
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->allowEdgeExtension()Z

    .line 765
    .line 766
    .line 767
    move-result v1

    .line 768
    if-nez v1, :cond_3a

    .line 769
    .line 770
    const/high16 v1, 0x4000000

    .line 771
    .line 772
    or-int/2addr v6, v1

    .line 773
    :cond_3a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 774
    .line 775
    if-eqz v1, :cond_3c

    .line 776
    .line 777
    iget v1, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 778
    .line 779
    const/high16 v8, 0x10000

    .line 780
    .line 781
    and-int/2addr v8, v1

    .line 782
    if-eqz v8, :cond_3b

    .line 783
    .line 784
    const/high16 v8, 0x10000000

    .line 785
    .line 786
    or-int/2addr v6, v8

    .line 787
    :cond_3b
    const/high16 v8, 0x20000

    .line 788
    .line 789
    and-int/2addr v1, v8

    .line 790
    if-eqz v1, :cond_3c

    .line 791
    .line 792
    const/high16 v1, 0x20000000

    .line 793
    .line 794
    or-int/2addr v6, v1

    .line 795
    :cond_3c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 796
    .line 797
    if-eqz v1, :cond_3e

    .line 798
    .line 799
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    if-eqz v1, :cond_3d

    .line 804
    .line 805
    const/4 v1, 0x1

    .line 806
    goto :goto_18

    .line 807
    :cond_3d
    const/4 v1, 0x0

    .line 808
    :goto_18
    if-eqz v1, :cond_3e

    .line 809
    .line 810
    const/high16 v1, 0x8000000

    .line 811
    .line 812
    or-int/2addr v6, v1

    .line 813
    :cond_3e
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    if-eqz v1, :cond_3f

    .line 818
    .line 819
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 824
    .line 825
    if-eqz v1, :cond_3f

    .line 826
    .line 827
    const/high16 v1, 0x40000000    # 2.0f

    .line 828
    .line 829
    or-int/2addr v6, v1

    .line 830
    :cond_3f
    iget v1, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 831
    .line 832
    and-int/2addr v1, v9

    .line 833
    if-eqz v1, :cond_40

    .line 834
    .line 835
    const/high16 v1, -0x80000000

    .line 836
    .line 837
    or-int/2addr v6, v1

    .line 838
    :cond_40
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 842
    .line 843
    .line 844
    move-result v1

    .line 845
    iput v1, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyFlags:I

    .line 846
    .line 847
    iget v1, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    .line 848
    .line 849
    invoke-static {v12}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    .line 850
    .line 851
    .line 852
    move-result v6

    .line 853
    invoke-virtual {v13, v1, v6}, Landroid/window/TransitionInfo$Change;->setDisplayId(II)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    const/4 v6, 0x3

    .line 861
    if-eq v1, v6, :cond_41

    .line 862
    .line 863
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    const/4 v6, 0x1

    .line 868
    if-ne v1, v6, :cond_43

    .line 869
    .line 870
    goto :goto_19

    .line 871
    :cond_41
    const/4 v6, 0x1

    .line 872
    :goto_19
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    sub-int/2addr v1, v6

    .line 877
    :goto_1a
    if-ltz v1, :cond_43

    .line 878
    .line 879
    invoke-virtual {v7, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v6

    .line 883
    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 884
    .line 885
    invoke-virtual {v12, v6}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 886
    .line 887
    .line 888
    move-result v6

    .line 889
    if-eqz v6, :cond_42

    .line 890
    .line 891
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 892
    .line 893
    .line 894
    move-result v1

    .line 895
    const v6, 0x8000

    .line 896
    .line 897
    .line 898
    or-int/2addr v1, v6

    .line 899
    invoke-virtual {v13, v1}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 900
    .line 901
    .line 902
    goto :goto_1b

    .line 903
    :cond_42
    add-int/lit8 v1, v1, -0x1

    .line 904
    .line 905
    goto :goto_1a

    .line 906
    :cond_43
    :goto_1b
    const/4 v1, 0x4

    .line 907
    invoke-virtual {v13, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 908
    .line 909
    .line 910
    move-result v1

    .line 911
    if-nez v1, :cond_45

    .line 912
    .line 913
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 914
    .line 915
    .line 916
    move-result v1

    .line 917
    const/4 v6, 0x1

    .line 918
    if-eq v1, v6, :cond_44

    .line 919
    .line 920
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 921
    .line 922
    .line 923
    move-result v1

    .line 924
    const/4 v6, 0x3

    .line 925
    if-eq v1, v6, :cond_44

    .line 926
    .line 927
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 928
    .line 929
    .line 930
    move-result v1

    .line 931
    const/4 v6, 0x6

    .line 932
    if-ne v1, v6, :cond_45

    .line 933
    .line 934
    :cond_44
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 935
    .line 936
    .line 937
    move-result-object v1

    .line 938
    invoke-virtual {v7, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 939
    .line 940
    .line 941
    :cond_45
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 946
    .line 947
    .line 948
    move-result-object v6

    .line 949
    if-eqz v6, :cond_46

    .line 950
    .line 951
    iget-boolean v8, v6, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 952
    .line 953
    if-eqz v8, :cond_46

    .line 954
    .line 955
    const/4 v8, 0x1

    .line 956
    goto :goto_1c

    .line 957
    :cond_46
    const/4 v8, 0x0

    .line 958
    :goto_1c
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 959
    .line 960
    .line 961
    move-result-object v9

    .line 962
    if-eqz v1, :cond_5a

    .line 963
    .line 964
    new-instance v15, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 965
    .line 966
    invoke-direct {v15}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 967
    .line 968
    .line 969
    const/4 v14, 0x1

    .line 970
    invoke-virtual {v1, v15, v14}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v13, v15}, Landroid/window/TransitionInfo$Change;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 974
    .line 975
    .line 976
    move-object/from16 v19, v7

    .line 977
    .line 978
    const/4 v15, 0x0

    .line 979
    invoke-virtual {v1, v14, v15}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 980
    .line 981
    .line 982
    move-result-object v7

    .line 983
    if-nez v7, :cond_48

    .line 984
    .line 985
    :goto_1d
    move/from16 v20, v10

    .line 986
    .line 987
    :cond_47
    :goto_1e
    const/4 v15, -0x1

    .line 988
    goto :goto_21

    .line 989
    :cond_48
    invoke-virtual {v7, v15}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 990
    .line 991
    .line 992
    move-result-object v14

    .line 993
    if-nez v14, :cond_49

    .line 994
    .line 995
    goto :goto_1d

    .line 996
    :cond_49
    iget-object v15, v14, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 997
    .line 998
    if-eqz v15, :cond_4a

    .line 999
    .line 1000
    iget v15, v15, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 1001
    .line 1002
    goto :goto_1f

    .line 1003
    :cond_4a
    const/4 v15, -0x1

    .line 1004
    :goto_1f
    if-ltz v15, :cond_4b

    .line 1005
    .line 1006
    move/from16 v20, v10

    .line 1007
    .line 1008
    goto :goto_21

    .line 1009
    :cond_4b
    iget-object v15, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1010
    .line 1011
    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1012
    .line 1013
    move/from16 v20, v10

    .line 1014
    .line 1015
    const/4 v10, 0x3

    .line 1016
    if-eq v15, v10, :cond_4c

    .line 1017
    .line 1018
    goto :goto_21

    .line 1019
    :cond_4c
    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1020
    .line 1021
    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1022
    .line 1023
    iget-object v10, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1024
    .line 1025
    if-ne v14, v10, :cond_47

    .line 1026
    .line 1027
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    .line 1028
    .line 1029
    .line 1030
    move-result v7

    .line 1031
    if-nez v7, :cond_4d

    .line 1032
    .line 1033
    goto :goto_1e

    .line 1034
    :cond_4d
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    .line 1035
    .line 1036
    if-eqz v7, :cond_4e

    .line 1037
    .line 1038
    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1039
    .line 1040
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1041
    .line 1042
    iget-boolean v7, v7, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 1043
    .line 1044
    if-nez v7, :cond_4e

    .line 1045
    .line 1046
    :goto_20
    goto :goto_1e

    .line 1047
    :cond_4e
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 1048
    .line 1049
    if-eqz v7, :cond_4f

    .line 1050
    .line 1051
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1052
    .line 1053
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 1054
    .line 1055
    invoke-virtual {v7, v1}, Lcom/android/server/wm/ChangeTransitionController;->isInChangeTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v7

    .line 1059
    if-eqz v7, :cond_4f

    .line 1060
    .line 1061
    goto :goto_20

    .line 1062
    :cond_4f
    iget-object v7, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1063
    .line 1064
    iget v15, v7, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1065
    .line 1066
    :goto_21
    invoke-virtual {v13, v15}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 1067
    .line 1068
    .line 1069
    const/4 v7, 0x0

    .line 1070
    invoke-virtual {v1, v7}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v10

    .line 1074
    if-eqz v10, :cond_56

    .line 1075
    .line 1076
    iget-object v7, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1077
    .line 1078
    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    .line 1079
    .line 1080
    .line 1081
    move-result v7

    .line 1082
    if-eqz v7, :cond_50

    .line 1083
    .line 1084
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    .line 1085
    .line 1086
    .line 1087
    move-result v7

    .line 1088
    invoke-virtual {v13, v7}, Landroid/window/TransitionInfo$Change;->setAllowEnterPip(Z)V

    .line 1089
    .line 1090
    .line 1091
    :cond_50
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1092
    .line 1093
    .line 1094
    move-result v7

    .line 1095
    if-nez v7, :cond_51

    .line 1096
    .line 1097
    goto :goto_22

    .line 1098
    :cond_51
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 1099
    .line 1100
    .line 1101
    move-result v7

    .line 1102
    if-eqz v7, :cond_52

    .line 1103
    .line 1104
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 1105
    .line 1106
    .line 1107
    move-result v7

    .line 1108
    if-eqz v7, :cond_52

    .line 1109
    .line 1110
    goto :goto_22

    .line 1111
    :cond_52
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v7

    .line 1115
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 1116
    .line 1117
    .line 1118
    move-result v7

    .line 1119
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v14

    .line 1123
    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 1124
    .line 1125
    .line 1126
    move-result v14

    .line 1127
    if-eq v7, v14, :cond_53

    .line 1128
    .line 1129
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    .line 1130
    .line 1131
    .line 1132
    goto :goto_22

    .line 1133
    :cond_53
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 1134
    .line 1135
    .line 1136
    move-result v14

    .line 1137
    if-eqz v14, :cond_56

    .line 1138
    .line 1139
    iget-object v14, v10, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1140
    .line 1141
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    .line 1142
    .line 1143
    .line 1144
    move-result v14

    .line 1145
    if-eqz v14, :cond_54

    .line 1146
    .line 1147
    goto :goto_22

    .line 1148
    :cond_54
    iget-object v10, v10, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1149
    .line 1150
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v10

    .line 1154
    if-nez v10, :cond_55

    .line 1155
    .line 1156
    goto :goto_22

    .line 1157
    :cond_55
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v10

    .line 1161
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 1162
    .line 1163
    .line 1164
    move-result v10

    .line 1165
    if-eq v7, v10, :cond_56

    .line 1166
    .line 1167
    invoke-virtual {v13, v10}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    .line 1168
    .line 1169
    .line 1170
    :cond_56
    :goto_22
    new-instance v7, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 1171
    .line 1172
    const/4 v10, 0x2

    .line 1173
    invoke-direct {v7, v10}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v7

    .line 1180
    if-nez v7, :cond_57

    .line 1181
    .line 1182
    const/4 v10, 0x0

    .line 1183
    invoke-virtual {v1, v10, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v7

    .line 1187
    :cond_57
    if-eqz v7, :cond_58

    .line 1188
    .line 1189
    const/4 v10, 0x1

    .line 1190
    invoke-virtual {v7, v10}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v7

    .line 1194
    goto :goto_23

    .line 1195
    :cond_58
    const/4 v7, 0x0

    .line 1196
    :goto_23
    if-nez v7, :cond_59

    .line 1197
    .line 1198
    const/4 v10, 0x0

    .line 1199
    goto :goto_24

    .line 1200
    :cond_59
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v10

    .line 1204
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v14

    .line 1208
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBarsWithoutCaptionBar()I

    .line 1209
    .line 1210
    .line 1211
    move-result v15

    .line 1212
    const/4 v2, 0x0

    .line 1213
    invoke-virtual {v10, v14, v15, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v10

    .line 1217
    invoke-virtual {v10}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v10

    .line 1221
    iget-object v14, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1222
    .line 1223
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v14

    .line 1227
    invoke-static {v10, v14}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v7

    .line 1234
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v14

    .line 1238
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 1239
    .line 1240
    .line 1241
    move-result v15

    .line 1242
    invoke-virtual {v7, v14, v15, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v7

    .line 1246
    invoke-static {v10}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v2

    .line 1250
    invoke-static {v2, v7}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v2

    .line 1254
    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v2

    .line 1258
    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1259
    .line 1260
    .line 1261
    :goto_24
    if-eqz v10, :cond_5b

    .line 1262
    .line 1263
    invoke-virtual {v13, v10}, Landroid/window/TransitionInfo$Change;->setInsetsForRecentsTransition(Landroid/graphics/Rect;)V

    .line 1264
    .line 1265
    .line 1266
    goto :goto_25

    .line 1267
    :cond_5a
    move-object/from16 v19, v7

    .line 1268
    .line 1269
    move/from16 v20, v10

    .line 1270
    .line 1271
    iget v2, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 1272
    .line 1273
    const/4 v7, 0x1

    .line 1274
    and-int/2addr v2, v7

    .line 1275
    if-eqz v2, :cond_5b

    .line 1276
    .line 1277
    const/4 v2, 0x3

    .line 1278
    invoke-virtual {v13, v2}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 1279
    .line 1280
    .line 1281
    :cond_5b
    :goto_25
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v2

    .line 1285
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v7

    .line 1289
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v10

    .line 1293
    iget v14, v7, Landroid/graphics/Rect;->left:I

    .line 1294
    .line 1295
    iget v15, v10, Landroid/graphics/Rect;->left:I

    .line 1296
    .line 1297
    sub-int/2addr v14, v15

    .line 1298
    iget v15, v7, Landroid/graphics/Rect;->top:I

    .line 1299
    .line 1300
    move-object/from16 v17, v4

    .line 1301
    .line 1302
    iget v4, v10, Landroid/graphics/Rect;->top:I

    .line 1303
    .line 1304
    sub-int/2addr v15, v4

    .line 1305
    invoke-virtual {v13, v14, v15}, Landroid/window/TransitionInfo$Change;->setEndRelOffset(II)V

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v4

    .line 1312
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 1313
    .line 1314
    .line 1315
    move-result v4

    .line 1316
    if-eqz v9, :cond_5f

    .line 1317
    .line 1318
    iget-object v14, v9, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1319
    .line 1320
    iget-boolean v14, v14, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 1321
    .line 1322
    if-nez v14, :cond_5f

    .line 1323
    .line 1324
    invoke-virtual {v13, v10}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    .line 1328
    .line 1329
    .line 1330
    move-result v14

    .line 1331
    if-eqz v14, :cond_5c

    .line 1332
    .line 1333
    iget-object v14, v9, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1334
    .line 1335
    invoke-virtual {v14}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    .line 1336
    .line 1337
    .line 1338
    move-result v14

    .line 1339
    if-nez v14, :cond_5c

    .line 1340
    .line 1341
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v2

    .line 1345
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 1346
    .line 1347
    .line 1348
    move-result v4

    .line 1349
    :cond_5c
    iget-boolean v2, v9, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1350
    .line 1351
    if-eqz v2, :cond_63

    .line 1352
    .line 1353
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    .line 1354
    .line 1355
    .line 1356
    move-result v2

    .line 1357
    if-nez v2, :cond_63

    .line 1358
    .line 1359
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v2

    .line 1363
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 1364
    .line 1365
    .line 1366
    move-result v14

    .line 1367
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 1368
    .line 1369
    .line 1370
    move-result v15

    .line 1371
    if-ne v14, v15, :cond_5d

    .line 1372
    .line 1373
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 1374
    .line 1375
    .line 1376
    move-result v2

    .line 1377
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 1378
    .line 1379
    .line 1380
    move-result v10

    .line 1381
    if-eq v2, v10, :cond_63

    .line 1382
    .line 1383
    :cond_5d
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v2

    .line 1387
    iget v10, v2, Landroid/graphics/Rect;->left:I

    .line 1388
    .line 1389
    if-nez v10, :cond_5e

    .line 1390
    .line 1391
    iget v10, v2, Landroid/graphics/Rect;->top:I

    .line 1392
    .line 1393
    if-nez v10, :cond_5e

    .line 1394
    .line 1395
    iget v10, v2, Landroid/graphics/Rect;->right:I

    .line 1396
    .line 1397
    if-nez v10, :cond_5e

    .line 1398
    .line 1399
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 1400
    .line 1401
    if-eqz v2, :cond_63

    .line 1402
    .line 1403
    :cond_5e
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v2

    .line 1407
    invoke-virtual {v13, v2}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1408
    .line 1409
    .line 1410
    goto :goto_27

    .line 1411
    :cond_5f
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v14

    .line 1415
    if-eqz v14, :cond_60

    .line 1416
    .line 1417
    const/4 v14, 0x1

    .line 1418
    goto :goto_26

    .line 1419
    :cond_60
    const/4 v14, 0x0

    .line 1420
    :goto_26
    if-eqz v14, :cond_61

    .line 1421
    .line 1422
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 1423
    .line 1424
    .line 1425
    move-result v14

    .line 1426
    if-eqz v14, :cond_61

    .line 1427
    .line 1428
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    .line 1429
    .line 1430
    .line 1431
    move-result v14

    .line 1432
    if-eqz v14, :cond_61

    .line 1433
    .line 1434
    iget-object v14, v12, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1435
    .line 1436
    invoke-virtual {v14}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    .line 1437
    .line 1438
    .line 1439
    move-result v14

    .line 1440
    if-nez v14, :cond_61

    .line 1441
    .line 1442
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v4

    .line 1446
    invoke-virtual {v13, v4}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v2

    .line 1453
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 1454
    .line 1455
    .line 1456
    move-result v4

    .line 1457
    goto :goto_27

    .line 1458
    :cond_61
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1459
    .line 1460
    if-eqz v2, :cond_62

    .line 1461
    .line 1462
    if-eqz v1, :cond_62

    .line 1463
    .line 1464
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isSplitAdjustedMinimalBounds()Z

    .line 1465
    .line 1466
    .line 1467
    move-result v2

    .line 1468
    if-eqz v2, :cond_62

    .line 1469
    .line 1470
    invoke-virtual {v13, v10}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1471
    .line 1472
    .line 1473
    goto :goto_27

    .line 1474
    :cond_62
    invoke-virtual {v13, v7}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1475
    .line 1476
    .line 1477
    :cond_63
    :goto_27
    const/4 v2, 0x2

    .line 1478
    if-eqz v9, :cond_68

    .line 1479
    .line 1480
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1481
    .line 1482
    iget-boolean v10, v10, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 1483
    .line 1484
    if-eqz v10, :cond_68

    .line 1485
    .line 1486
    const/4 v10, 0x1

    .line 1487
    if-ne v0, v10, :cond_64

    .line 1488
    .line 1489
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1490
    .line 1491
    .line 1492
    move-result v10

    .line 1493
    if-ne v10, v2, :cond_64

    .line 1494
    .line 1495
    const/4 v10, 0x1

    .line 1496
    goto :goto_28

    .line 1497
    :cond_64
    const/4 v10, 0x0

    .line 1498
    :goto_28
    iget-object v14, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1499
    .line 1500
    if-eqz v14, :cond_65

    .line 1501
    .line 1502
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v14

    .line 1506
    goto :goto_29

    .line 1507
    :cond_65
    const/4 v14, 0x0

    .line 1508
    :goto_29
    if-eqz v14, :cond_66

    .line 1509
    .line 1510
    iget-object v14, v14, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1511
    .line 1512
    iget-boolean v15, v14, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 1513
    .line 1514
    goto :goto_2a

    .line 1515
    :cond_66
    const/4 v15, 0x0

    .line 1516
    :goto_2a
    if-nez v10, :cond_67

    .line 1517
    .line 1518
    if-nez v15, :cond_67

    .line 1519
    .line 1520
    const/4 v10, 0x1

    .line 1521
    const/16 v18, 0x1

    .line 1522
    .line 1523
    goto :goto_2b

    .line 1524
    :cond_67
    const/4 v10, 0x1

    .line 1525
    const/16 v18, 0x0

    .line 1526
    .line 1527
    :goto_2b
    xor-int/lit8 v14, v18, 0x1

    .line 1528
    .line 1529
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setPopOverAnimationNeeded(Z)V

    .line 1530
    .line 1531
    .line 1532
    :cond_68
    iget v10, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1533
    .line 1534
    const/4 v14, 0x5

    .line 1535
    if-ne v10, v14, :cond_69

    .line 1536
    .line 1537
    if-nez v1, :cond_69

    .line 1538
    .line 1539
    if-eqz v9, :cond_69

    .line 1540
    .line 1541
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1542
    .line 1543
    if-eqz v10, :cond_69

    .line 1544
    .line 1545
    invoke-virtual {v13, v7}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1546
    .line 1547
    .line 1548
    :cond_69
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    .line 1549
    .line 1550
    if-eqz v7, :cond_6b

    .line 1551
    .line 1552
    if-eqz v9, :cond_6b

    .line 1553
    .line 1554
    iget-object v7, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1555
    .line 1556
    if-eqz v7, :cond_6a

    .line 1557
    .line 1558
    iget v14, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1559
    .line 1560
    goto :goto_2c

    .line 1561
    :cond_6a
    const/4 v14, -0x1

    .line 1562
    :goto_2c
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setTaskIdForActivity(I)V

    .line 1563
    .line 1564
    .line 1565
    :cond_6b
    if-nez v9, :cond_6c

    .line 1566
    .line 1567
    if-eqz v8, :cond_70

    .line 1568
    .line 1569
    :cond_6c
    if-eqz v9, :cond_6d

    .line 1570
    .line 1571
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v7

    .line 1575
    goto :goto_2d

    .line 1576
    :cond_6d
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v7

    .line 1580
    :goto_2d
    if-eqz v7, :cond_6e

    .line 1581
    .line 1582
    iget-object v10, v7, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 1583
    .line 1584
    invoke-virtual {v10}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    .line 1585
    .line 1586
    .line 1587
    move-result v10

    .line 1588
    if-eqz v10, :cond_6e

    .line 1589
    .line 1590
    iget-object v7, v7, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 1591
    .line 1592
    invoke-virtual {v7}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    .line 1593
    .line 1594
    .line 1595
    move-result v7

    .line 1596
    goto :goto_2f

    .line 1597
    :cond_6e
    if-eqz v9, :cond_6f

    .line 1598
    .line 1599
    iget-object v7, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1600
    .line 1601
    goto :goto_2e

    .line 1602
    :cond_6f
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v7

    .line 1606
    :goto_2e
    iget-object v7, v7, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1607
    .line 1608
    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 1609
    .line 1610
    .line 1611
    move-result v7

    .line 1612
    :goto_2f
    const/16 v10, 0xff

    .line 1613
    .line 1614
    invoke-static {v7, v10}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 1615
    .line 1616
    .line 1617
    move-result v7

    .line 1618
    invoke-virtual {v13, v7}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    .line 1619
    .line 1620
    .line 1621
    :cond_70
    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    .line 1622
    .line 1623
    .line 1624
    move-result v7

    .line 1625
    if-eqz v7, :cond_73

    .line 1626
    .line 1627
    if-eqz v9, :cond_71

    .line 1628
    .line 1629
    if-eqz v5, :cond_71

    .line 1630
    .line 1631
    move-object v6, v5

    .line 1632
    goto :goto_30

    .line 1633
    :cond_71
    invoke-static {}, Lcom/android/window/flags/Flags;->activityEmbeddingOverlayPresentationFlag()Z

    .line 1634
    .line 1635
    .line 1636
    move-result v7

    .line 1637
    if-eqz v7, :cond_72

    .line 1638
    .line 1639
    if-eqz v8, :cond_72

    .line 1640
    .line 1641
    iget-object v7, v6, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 1642
    .line 1643
    invoke-virtual {v7}, Landroid/window/TaskFragmentAnimationParams;->hasOverrideAnimation()Z

    .line 1644
    .line 1645
    .line 1646
    move-result v8

    .line 1647
    if-eqz v8, :cond_72

    .line 1648
    .line 1649
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v6

    .line 1653
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v22

    .line 1657
    invoke-virtual {v7}, Landroid/window/TaskFragmentAnimationParams;->getOpenAnimationResId()I

    .line 1658
    .line 1659
    .line 1660
    move-result v23

    .line 1661
    invoke-virtual {v7}, Landroid/window/TaskFragmentAnimationParams;->getChangeAnimationResId()I

    .line 1662
    .line 1663
    .line 1664
    move-result v24

    .line 1665
    invoke-virtual {v7}, Landroid/window/TaskFragmentAnimationParams;->getCloseAnimationResId()I

    .line 1666
    .line 1667
    .line 1668
    move-result v25

    .line 1669
    const/16 v26, 0x0

    .line 1670
    .line 1671
    const/16 v27, 0x0

    .line 1672
    .line 1673
    invoke-static/range {v22 .. v27}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v6

    .line 1677
    goto :goto_30

    .line 1678
    :cond_72
    const/4 v6, 0x0

    .line 1679
    :goto_30
    if-eqz v6, :cond_73

    .line 1680
    .line 1681
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 1682
    .line 1683
    .line 1684
    :cond_73
    if-eqz v9, :cond_74

    .line 1685
    .line 1686
    iget-object v6, v9, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1687
    .line 1688
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 1689
    .line 1690
    .line 1691
    :cond_74
    iget v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1692
    .line 1693
    invoke-virtual {v13, v6, v4}, Landroid/window/TransitionInfo$Change;->setRotation(II)V

    .line 1694
    .line 1695
    .line 1696
    iget-object v4, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 1697
    .line 1698
    if-eqz v4, :cond_75

    .line 1699
    .line 1700
    iget v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshotLuma:F

    .line 1701
    .line 1702
    invoke-virtual {v13, v4, v6}, Landroid/window/TransitionInfo$Change;->setSnapshot(Landroid/view/SurfaceControl;F)V

    .line 1703
    .line 1704
    .line 1705
    :cond_75
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v4

    .line 1709
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 1710
    .line 1711
    if-eqz v6, :cond_76

    .line 1712
    .line 1713
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v6

    .line 1717
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 1718
    .line 1719
    .line 1720
    :cond_76
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    .line 1721
    .line 1722
    if-eqz v6, :cond_77

    .line 1723
    .line 1724
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v6

    .line 1728
    if-eqz v6, :cond_77

    .line 1729
    .line 1730
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getFlags()I

    .line 1731
    .line 1732
    .line 1733
    move-result v6

    .line 1734
    and-int/lit16 v6, v6, 0x400

    .line 1735
    .line 1736
    if-eqz v6, :cond_77

    .line 1737
    .line 1738
    if-eqz v4, :cond_77

    .line 1739
    .line 1740
    iget-boolean v6, v4, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1741
    .line 1742
    if-eqz v6, :cond_77

    .line 1743
    .line 1744
    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1745
    .line 1746
    iget-boolean v6, v6, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1747
    .line 1748
    if-eqz v6, :cond_77

    .line 1749
    .line 1750
    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 1751
    .line 1752
    iget v6, v6, Landroid/view/DisplayInfo;->state:I

    .line 1753
    .line 1754
    if-ne v6, v2, :cond_77

    .line 1755
    .line 1756
    const/4 v2, 0x1

    .line 1757
    invoke-virtual {v3, v2}, Landroid/window/TransitionInfo;->setShouldAnimateDefaultDisplay(Z)V

    .line 1758
    .line 1759
    .line 1760
    :cond_77
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 1761
    .line 1762
    if-eqz v2, :cond_7e

    .line 1763
    .line 1764
    iget-object v2, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 1765
    .line 1766
    invoke-virtual {v13, v2}, Landroid/window/TransitionInfo$Change;->setChangeLeash(Landroid/view/SurfaceControl;)V

    .line 1767
    .line 1768
    .line 1769
    iget v2, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1770
    .line 1771
    invoke-virtual {v13, v2}, Landroid/window/TransitionInfo$Change;->setChangeTransitMode(I)V

    .line 1772
    .line 1773
    .line 1774
    iget-object v2, v12, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1775
    .line 1776
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1777
    .line 1778
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 1779
    .line 1780
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1781
    .line 1782
    .line 1783
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v2

    .line 1787
    if-nez v2, :cond_78

    .line 1788
    .line 1789
    goto :goto_33

    .line 1790
    :cond_78
    iget-object v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    .line 1791
    .line 1792
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 1793
    .line 1794
    if-gtz v7, :cond_7a

    .line 1795
    .line 1796
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 1797
    .line 1798
    if-gtz v7, :cond_7a

    .line 1799
    .line 1800
    iget v7, v6, Landroid/graphics/Rect;->right:I

    .line 1801
    .line 1802
    if-gtz v7, :cond_7a

    .line 1803
    .line 1804
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1805
    .line 1806
    if-lez v7, :cond_79

    .line 1807
    .line 1808
    goto :goto_31

    .line 1809
    :cond_79
    const/4 v7, 0x0

    .line 1810
    goto :goto_32

    .line 1811
    :cond_7a
    :goto_31
    const/4 v7, 0x1

    .line 1812
    :goto_32
    if-eqz v7, :cond_7b

    .line 1813
    .line 1814
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setChangeStartOutsets(Landroid/graphics/Rect;)V

    .line 1815
    .line 1816
    .line 1817
    :cond_7b
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    .line 1818
    .line 1819
    if-eqz v6, :cond_7c

    .line 1820
    .line 1821
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 1822
    .line 1823
    .line 1824
    move-result v2

    .line 1825
    if-eqz v2, :cond_7c

    .line 1826
    .line 1827
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getFreeformThickness()I

    .line 1828
    .line 1829
    .line 1830
    move-result v2

    .line 1831
    new-instance v6, Landroid/graphics/Rect;

    .line 1832
    .line 1833
    invoke-direct {v6, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1834
    .line 1835
    .line 1836
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setChangeEndOutsets(Landroid/graphics/Rect;)V

    .line 1837
    .line 1838
    .line 1839
    :cond_7c
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->hasChangeStartOutsets()Z

    .line 1840
    .line 1841
    .line 1842
    move-result v2

    .line 1843
    if-nez v2, :cond_7d

    .line 1844
    .line 1845
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->hasChangeEndOutsets()Z

    .line 1846
    .line 1847
    .line 1848
    move-result v2

    .line 1849
    if-eqz v2, :cond_7e

    .line 1850
    .line 1851
    :cond_7d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1852
    .line 1853
    const-string/jumbo v6, "updateChangeOutsetsIfNeeded: s="

    .line 1854
    .line 1855
    .line 1856
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1857
    .line 1858
    .line 1859
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeStartOutsets()Landroid/graphics/Rect;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v6

    .line 1863
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1864
    .line 1865
    .line 1866
    const-string v6, ", e="

    .line 1867
    .line 1868
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    .line 1870
    .line 1871
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeEndOutsets()Landroid/graphics/Rect;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v6

    .line 1875
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1876
    .line 1877
    .line 1878
    const-string v6, ", wc="

    .line 1879
    .line 1880
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    .line 1882
    .line 1883
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1884
    .line 1885
    .line 1886
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v2

    .line 1890
    const-string v6, "ChangeTransitionController"

    .line 1891
    .line 1892
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    .line 1894
    .line 1895
    :cond_7e
    :goto_33
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 1896
    .line 1897
    if-eqz v2, :cond_7f

    .line 1898
    .line 1899
    if-eqz v1, :cond_7f

    .line 1900
    .line 1901
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 1902
    .line 1903
    .line 1904
    move-result v2

    .line 1905
    if-eqz v2, :cond_7f

    .line 1906
    .line 1907
    new-instance v2, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    .line 1908
    .line 1909
    const/4 v6, 0x0

    .line 1910
    invoke-direct {v2, v6}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v2

    .line 1917
    if-eqz v2, :cond_7f

    .line 1918
    .line 1919
    const/4 v2, 0x1

    .line 1920
    invoke-virtual {v13, v2}, Landroid/window/TransitionInfo$Change;->setEnteringPinnedMode(Z)V

    .line 1921
    .line 1922
    .line 1923
    :cond_7f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    .line 1924
    .line 1925
    if-eqz v2, :cond_81

    .line 1926
    .line 1927
    iget-object v2, v12, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 1928
    .line 1929
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1930
    .line 1931
    .line 1932
    move-result v6

    .line 1933
    move-object/from16 v7, v17

    .line 1934
    .line 1935
    invoke-virtual {v2, v0, v6, v7, v13}, Lcom/android/server/wm/DimAnimator;->canCreateDimAnimationLayer(IZLandroid/view/WindowManager$LayoutParams;Landroid/window/TransitionInfo$Change;)Z

    .line 1936
    .line 1937
    .line 1938
    move-result v2

    .line 1939
    if-eqz v2, :cond_80

    .line 1940
    .line 1941
    const/4 v2, 0x1

    .line 1942
    invoke-virtual {v13, v2}, Landroid/window/TransitionInfo$Change;->setTransitionWithDim(Z)V

    .line 1943
    .line 1944
    .line 1945
    goto :goto_35

    .line 1946
    :cond_80
    :goto_34
    const/4 v2, 0x1

    .line 1947
    goto :goto_35

    .line 1948
    :cond_81
    move-object/from16 v7, v17

    .line 1949
    .line 1950
    goto :goto_34

    .line 1951
    :goto_35
    iget v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    .line 1952
    .line 1953
    if-eqz v6, :cond_82

    .line 1954
    .line 1955
    move v15, v2

    .line 1956
    goto :goto_36

    .line 1957
    :cond_82
    const/4 v15, 0x0

    .line 1958
    :goto_36
    if-eqz v15, :cond_83

    .line 1959
    .line 1960
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v2

    .line 1964
    iget v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    .line 1965
    .line 1966
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setForceHidingTransit(I)V

    .line 1967
    .line 1968
    .line 1969
    if-eqz v2, :cond_83

    .line 1970
    .line 1971
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 1972
    .line 1973
    .line 1974
    move-result v6

    .line 1975
    if-nez v6, :cond_83

    .line 1976
    .line 1977
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v6

    .line 1981
    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea;->mFloatingLeashAnchor:Landroid/view/SurfaceControl;

    .line 1982
    .line 1983
    move-object/from16 v8, p3

    .line 1984
    .line 1985
    invoke-virtual {v8, v6, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1986
    .line 1987
    .line 1988
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v2

    .line 1992
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 1993
    .line 1994
    .line 1995
    move-result v6

    .line 1996
    invoke-virtual {v8, v2, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1997
    .line 1998
    .line 1999
    goto :goto_37

    .line 2000
    :cond_83
    move-object/from16 v8, p3

    .line 2001
    .line 2002
    :goto_37
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    .line 2003
    .line 2004
    if-eqz v2, :cond_84

    .line 2005
    .line 2006
    iget v2, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    .line 2007
    .line 2008
    invoke-virtual {v13, v2}, Landroid/window/TransitionInfo$Change;->setMinimizeAnimState(I)V

    .line 2009
    .line 2010
    .line 2011
    iget-object v2, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizePoint:Landroid/graphics/PointF;

    .line 2012
    .line 2013
    invoke-virtual {v13, v2}, Landroid/window/TransitionInfo$Change;->setMinimizePoint(Landroid/graphics/PointF;)V

    .line 2014
    .line 2015
    .line 2016
    :cond_84
    if-eqz v4, :cond_85

    .line 2017
    .line 2018
    iget-boolean v2, v4, Lcom/android/server/wm/DisplayContent;->mFadeInOutAnimationNeeded:Z

    .line 2019
    .line 2020
    if-eqz v2, :cond_85

    .line 2021
    .line 2022
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->setFadeInOutRotationNeeded()V

    .line 2023
    .line 2024
    .line 2025
    const-string/jumbo v2, "transition_info_created"

    .line 2026
    .line 2027
    .line 2028
    const/4 v6, 0x0

    .line 2029
    invoke-virtual {v4, v2, v6}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    .line 2030
    .line 2031
    .line 2032
    goto :goto_38

    .line 2033
    :cond_85
    const/4 v6, 0x0

    .line 2034
    :goto_38
    if-eqz v1, :cond_86

    .line 2035
    .line 2036
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 2037
    .line 2038
    .line 2039
    move-result v2

    .line 2040
    if-eqz v2, :cond_86

    .line 2041
    .line 2042
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 2043
    .line 2044
    .line 2045
    move-result v2

    .line 2046
    if-eqz v2, :cond_86

    .line 2047
    .line 2048
    iget v1, v1, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 2049
    .line 2050
    invoke-virtual {v13, v1}, Landroid/window/TransitionInfo$Change;->setFreeformStashScale(F)V

    .line 2051
    .line 2052
    .line 2053
    :cond_86
    iget-object v1, v12, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2054
    .line 2055
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 2056
    .line 2057
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 2058
    .line 2059
    iget-object v2, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2060
    .line 2061
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2062
    .line 2063
    invoke-interface {v1, v2}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldSkipAppTransition(I)Z

    .line 2064
    .line 2065
    .line 2066
    move-result v1

    .line 2067
    if-eqz v1, :cond_87

    .line 2068
    .line 2069
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getFlags()I

    .line 2070
    .line 2071
    .line 2072
    move-result v1

    .line 2073
    or-int/lit16 v1, v1, 0x400

    .line 2074
    .line 2075
    invoke-virtual {v3, v1}, Landroid/window/TransitionInfo;->setFlags(I)V

    .line 2076
    .line 2077
    .line 2078
    :cond_87
    invoke-virtual {v3, v13}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 2079
    .line 2080
    .line 2081
    add-int/lit8 v10, v20, 0x1

    .line 2082
    .line 2083
    move-object/from16 v1, p2

    .line 2084
    .line 2085
    move-object v4, v7

    .line 2086
    move-object v2, v8

    .line 2087
    move-object/from16 v7, v19

    .line 2088
    .line 2089
    move/from16 v8, v21

    .line 2090
    .line 2091
    const/4 v6, 0x0

    .line 2092
    goto/16 :goto_1

    .line 2093
    .line 2094
    :cond_88
    return-object v3
.end method

.method public static calculateTransitionRoots(Landroid/window/TransitionInfo;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    const/4 v11, 0x0

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge v11, v0, :cond_15

    .line 13
    .line 14
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_d

    .line 29
    .line 30
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    goto/16 :goto_d

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    goto/16 :goto_d

    .line 49
    .line 50
    :cond_2
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 51
    .line 52
    invoke-virtual {v7, v2}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ltz v3, :cond_3

    .line 57
    .line 58
    goto/16 :goto_d

    .line 59
    .line 60
    :cond_3
    invoke-static {v0}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_SHELL_TRANSITION:Z

    .line 69
    .line 70
    const-string v6, "Transition"

    .line 71
    .line 72
    const/4 v12, 0x1

    .line 73
    if-eqz v5, :cond_8

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_8

    .line 80
    .line 81
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 82
    .line 83
    if-nez v5, :cond_5

    .line 84
    .line 85
    :cond_4
    const/4 v13, 0x0

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    sub-int/2addr v5, v12

    .line 92
    const/4 v13, 0x0

    .line 93
    :goto_1
    if-ltz v5, :cond_7

    .line 94
    .line 95
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    check-cast v14, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 100
    .line 101
    iget-object v15, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 102
    .line 103
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    iget-object v10, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 108
    .line 109
    if-eqz v15, :cond_6

    .line 110
    .line 111
    iget-boolean v14, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 112
    .line 113
    if-eqz v14, :cond_6

    .line 114
    .line 115
    if-ne v10, v0, :cond_6

    .line 116
    .line 117
    move v13, v12

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    if-eqz v10, :cond_4

    .line 124
    .line 125
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_7
    :goto_3
    if-eqz v13, :cond_8

    .line 129
    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string/jumbo v5, "useCommonAncestorFromAffordanceTask: "

    .line 133
    .line 134
    .line 135
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    goto/16 :goto_9

    .line 149
    .line 150
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    sub-int/2addr v5, v12

    .line 155
    :goto_4
    if-ltz v5, :cond_10

    .line 156
    .line 157
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    check-cast v10, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 162
    .line 163
    iget-object v13, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 164
    .line 165
    invoke-static {v13}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    .line 166
    .line 167
    .line 168
    move-result v14

    .line 169
    if-nez v14, :cond_f

    .line 170
    .line 171
    invoke-static {v13}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    if-ne v14, v3, :cond_f

    .line 176
    .line 177
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 178
    .line 179
    if-eqz v14, :cond_a

    .line 180
    .line 181
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    if-eqz v14, :cond_9

    .line 186
    .line 187
    move v14, v12

    .line 188
    goto :goto_5

    .line 189
    :cond_9
    const/4 v14, 0x0

    .line 190
    :goto_5
    if-eqz v14, :cond_a

    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_a
    iget-object v14, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 194
    .line 195
    if-eqz v14, :cond_c

    .line 196
    .line 197
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    if-eqz v15, :cond_c

    .line 202
    .line 203
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    if-eqz v15, :cond_c

    .line 208
    .line 209
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    if-eq v15, v14, :cond_c

    .line 214
    .line 215
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    sub-int/2addr v15, v12

    .line 220
    if-ne v5, v15, :cond_c

    .line 221
    .line 222
    invoke-virtual {v10, v13}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 223
    .line 224
    .line 225
    move-result v15

    .line 226
    const/4 v12, 0x2

    .line 227
    if-eq v15, v12, :cond_b

    .line 228
    .line 229
    const/4 v12, 0x4

    .line 230
    if-ne v15, v12, :cond_c

    .line 231
    .line 232
    :cond_b
    move-object v4, v14

    .line 233
    goto :goto_8

    .line 234
    :cond_c
    :goto_6
    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 235
    .line 236
    .line 237
    move-result v12

    .line 238
    if-nez v12, :cond_d

    .line 239
    .line 240
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    goto :goto_6

    .line 245
    :cond_d
    iget-object v10, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    .line 246
    .line 247
    if-eqz v10, :cond_f

    .line 248
    .line 249
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    if-nez v12, :cond_e

    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_e
    :goto_7
    if-eq v10, v4, :cond_f

    .line 257
    .line 258
    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    if-nez v12, :cond_f

    .line 263
    .line 264
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    goto :goto_7

    .line 269
    :cond_f
    :goto_8
    add-int/lit8 v5, v5, -0x1

    .line 270
    .line 271
    const/4 v12, 0x1

    .line 272
    goto :goto_4

    .line 273
    :cond_10
    :goto_9
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    const/4 v5, 0x1

    .line 278
    xor-int/2addr v3, v5

    .line 279
    if-eqz v3, :cond_11

    .line 280
    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v10, "Did not find common ancestor! Ancestor= "

    .line 284
    .line 285
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v10, " target= "

    .line 292
    .line 293
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    goto :goto_b

    .line 307
    :cond_11
    :goto_a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    if-eq v3, v4, :cond_12

    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    goto :goto_a

    .line 318
    :cond_12
    :goto_b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v10, "Transition Root: "

    .line 325
    .line 326
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    const-string v6, "Transition.calculateTransitionRoots"

    .line 345
    .line 346
    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v9, v1}, Lcom/android/server/wm/Transition;->assignLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    invoke-virtual {v9, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 365
    .line 366
    .line 367
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 368
    .line 369
    if-eqz v1, :cond_14

    .line 370
    .line 371
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 376
    .line 377
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 384
    .line 385
    .line 386
    move-result-object v10

    .line 387
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-eqz v0, :cond_13

    .line 392
    .line 393
    move v12, v5

    .line 394
    goto :goto_c

    .line 395
    :cond_13
    const/4 v12, 0x0

    .line 396
    :goto_c
    move-object/from16 v0, p0

    .line 397
    .line 398
    move v1, v2

    .line 399
    move-object v2, v3

    .line 400
    move v3, v6

    .line 401
    move-object v5, v10

    .line 402
    move v6, v12

    .line 403
    invoke-virtual/range {v0 .. v6}, Landroid/window/TransitionInfo;->addRootLeash(ILandroid/view/SurfaceControl;IILandroid/content/res/Configuration;Z)V

    .line 404
    .line 405
    .line 406
    goto :goto_d

    .line 407
    :cond_14
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 412
    .line 413
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 418
    .line 419
    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/window/TransitionInfo;->addRootLeash(ILandroid/view/SurfaceControl;II)V

    .line 420
    .line 421
    .line 422
    :goto_d
    add-int/lit8 v11, v11, 0x1

    .line 423
    .line 424
    goto/16 :goto_0

    .line 425
    .line 426
    :cond_15
    return-void
.end method

.method public static containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

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
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 16
    .line 17
    if-ne v2, p0, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    move-object v1, p0

    .line 6
    check-cast v1, Lcom/android/server/wm/Transition$Token;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/Transition$Token;->mTransition:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/wm/Transition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :catch_0
    move-exception v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "Invalid transition token: "

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v2, "Transition"

    .line 33
    .line 34
    invoke-static {v2, p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object p0
.end method

.method public static getDisplayId(Lcom/android/server/wm/WindowContainer;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    :goto_0
    return p0
.end method

.method public static getLayoutParamsForAnimationsStyle(Ljava/util/ArrayList;I)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    const/4 v3, 0x0

    .line 12
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    return-object v3

    .line 63
    :cond_3
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;

    .line 64
    .line 65
    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;-><init>(ILandroid/util/ArraySet;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    new-instance p1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-direct {p1, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    new-instance p1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    .line 89
    .line 90
    const/4 v0, 0x2

    .line 91
    invoke-direct {p1, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_2
    if-eqz p1, :cond_6

    .line 99
    .line 100
    const/4 p0, 0x1

    .line 101
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    goto :goto_3

    .line 106
    :cond_6
    move-object p0, v3

    .line 107
    :goto_3
    if-eqz p0, :cond_7

    .line 108
    .line 109
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 110
    .line 111
    :cond_7
    return-object v3
.end method

.method public static getLeashSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowToken;->getOrCreateFixedRotationLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p0, v0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 34
    .line 35
    :goto_0
    if-eqz p0, :cond_2

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static isWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_1
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 7
    .line 8
    .line 9
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    invoke-virtual {p0, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 42
    .line 43
    .line 44
    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/high16 v7, 0x3f800000    # 1.0f

    .line 49
    .line 50
    move-object v2, p0

    .line 51
    move-object v3, p2

    .line 52
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    const/4 p1, -0x1

    .line 68
    invoke-virtual {p0, p2, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    if-ne v1, v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v3, -0x1

    .line 9
    const-string v4, "Aborting Transition: "

    .line 10
    .line 11
    const-string v5, "WindowManager"

    .line 12
    .line 13
    if-ne v1, v3, :cond_2

    .line 14
    .line 15
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " in STATE_PENDING called from"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    iput v2, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    if-eqz v1, :cond_4

    .line 52
    .line 53
    if-ne v1, v0, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "Too late to abort. state="

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_4
    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v4, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v4, " in state "

    .line 93
    .line 94
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v4, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 98
    .line 99
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v4, " called from "

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 123
    .line 124
    aget-boolean v1, v1, v0

    .line 125
    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 129
    .line 130
    int-to-long v4, v1

    .line 131
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 132
    .line 133
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    const/4 v9, 0x1

    .line 142
    const/4 v10, 0x0

    .line 143
    const-wide v7, 0x1114a0668f863630L

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    :goto_1
    iput v2, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 152
    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 158
    .line 159
    iput-wide v1, v4, Lcom/android/server/wm/TransitionController$Logger;->mAbortTimeNs:J

    .line 160
    .line 161
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 162
    .line 163
    iget-object v2, v1, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 164
    .line 165
    invoke-interface {v2, p0}, Lcom/android/server/wm/TransitionTracer;->logAbortedTransition(Lcom/android/server/wm/Transition;)V

    .line 166
    .line 167
    .line 168
    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 169
    .line 170
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 171
    .line 172
    invoke-virtual {v5, v2}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    sget-object v6, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->NO_DEPENDENCIES:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v2}, Lcom/android/server/wm/BLASTSyncEngine;->removeFromDependencies(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 182
    .line 183
    .line 184
    const/4 v2, 0x0

    .line 185
    move v5, v2

    .line 186
    :goto_2
    iget-object v6, v1, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-ge v5, v6, :cond_7

    .line 193
    .line 194
    iget-object v6, v1, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    check-cast v6, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 201
    .line 202
    invoke-virtual {v6, v2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(Z)V

    .line 203
    .line 204
    .line 205
    add-int/2addr v5, v0

    .line 206
    goto :goto_2

    .line 207
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->invokeTransitionEndedListeners()V

    .line 208
    .line 209
    .line 210
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 211
    .line 212
    if-eqz v0, :cond_b

    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 220
    .line 221
    const-string v6, "ChangeTransitionController"

    .line 222
    .line 223
    if-eqz v5, :cond_9

    .line 224
    .line 225
    iget-object v5, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 226
    .line 227
    invoke-virtual {v5, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_8

    .line 232
    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string/jumbo v7, "onTransitionAborted: "

    .line 236
    .line 237
    .line 238
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v7, ", changingPipTasks="

    .line 245
    .line 246
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-object v7, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 250
    .line 251
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    iget-object v5, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 262
    .line 263
    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    check-cast v5, Lcom/android/server/wm/Task;

    .line 268
    .line 269
    iput-boolean v2, v5, Lcom/android/server/wm/Task;->mIsChangingPipToSplit:Z

    .line 270
    .line 271
    :cond_8
    iget-object v5, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 272
    .line 273
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 274
    .line 275
    .line 276
    :cond_9
    iget v5, v0, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    .line 277
    .line 278
    if-eq v5, v3, :cond_b

    .line 279
    .line 280
    iget v7, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 281
    .line 282
    if-ne v7, v5, :cond_b

    .line 283
    .line 284
    const-string/jumbo v5, "resumeRotation by ai key"

    .line 285
    .line 286
    .line 287
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    iget-object v5, v0, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 291
    .line 292
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 293
    .line 294
    invoke-virtual {v5, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    if-eqz v2, :cond_a

    .line 299
    .line 300
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 301
    .line 302
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->resume()V

    .line 303
    .line 304
    .line 305
    :cond_a
    iput v3, v0, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    .line 306
    .line 307
    :cond_b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 308
    .line 309
    if-eqz v0, :cond_d

    .line 310
    .line 311
    iget-object v0, v4, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    .line 312
    .line 313
    if-nez v0, :cond_c

    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    if-eqz v0, :cond_d

    .line 321
    .line 322
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 323
    .line 324
    invoke-interface {v0, p0}, Landroid/window/ITransitionPlayer;->transitionAborted(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .line 326
    .line 327
    goto :goto_3

    .line 328
    :catch_0
    move-exception p0

    .line 329
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 330
    .line 331
    .line 332
    :cond_d
    :goto_3
    return-void
.end method

.method public final addFlag(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 5
    .line 6
    return-void
.end method

.method public allReady()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

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
    if-ltz v0, :cond_4

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 45
    .line 46
    iget-boolean v4, v4, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 47
    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    if-nez v3, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 61
    .line 62
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-direct {v3, v4, p1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    return-void
.end method

.method public final applyReady()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 8
    .line 9
    iget-boolean v2, v0, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 15
    .line 16
    iget-object v4, v2, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    move v2, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v2, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :goto_0
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 43
    .line 44
    aget-boolean v1, v4, v1

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 49
    .line 50
    int-to-long v4, v1

    .line 51
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-wide v7, -0x36b50dd81b48ce0fL    # -1.2018282467695568E45

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const/4 v9, 0x7

    .line 71
    const/4 v10, 0x0

    .line 72
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 76
    .line 77
    iget v4, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 78
    .line 79
    invoke-virtual {v1, v4, v2}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    iput-wide v4, v1, Lcom/android/server/wm/TransitionController$Logger;->mReadyTimeNs:J

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 98
    .line 99
    .line 100
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-ge v3, v1, :cond_4

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-static {v1, v2}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->tryStartCollectFromQueue()V

    .line 125
    .line 126
    .line 127
    :cond_5
    return-void
.end method

.method public final buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V
    .locals 11

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    sub-int/2addr v1, v2

    .line 14
    :goto_0
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    if-ltz v1, :cond_d

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 25
    .line 26
    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 27
    .line 28
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :cond_0
    invoke-static {v3, v5}, Lcom/android/server/wm/Transition;->getLeashSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    :goto_1
    invoke-virtual {p1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-virtual {p1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_2

    .line 80
    .line 81
    move v8, v2

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move v8, v4

    .line 84
    :goto_2
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 85
    .line 86
    if-eqz v9, :cond_3

    .line 87
    .line 88
    if-eqz v8, :cond_3

    .line 89
    .line 90
    invoke-virtual {p1, v6, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 91
    .line 92
    .line 93
    :cond_3
    if-eqz v7, :cond_4

    .line 94
    .line 95
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    move v3, v2

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    move v3, v4

    .line 104
    :goto_3
    if-eqz v7, :cond_5

    .line 105
    .line 106
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_5

    .line 111
    .line 112
    move v4, v2

    .line 113
    :cond_5
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 114
    .line 115
    const/4 v10, 0x0

    .line 116
    if-eqz v9, :cond_6

    .line 117
    .line 118
    if-nez v3, :cond_8

    .line 119
    .line 120
    :cond_6
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    .line 121
    .line 122
    if-eqz v3, :cond_7

    .line 123
    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_7
    invoke-virtual {p1, v6, v10}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v6, v10}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 131
    .line 132
    .line 133
    :cond_8
    :goto_4
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 134
    .line 135
    if-eqz v3, :cond_9

    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-eqz v3, :cond_9

    .line 142
    .line 143
    invoke-virtual {p1, v6}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 144
    .line 145
    .line 146
    :cond_9
    if-eqz v8, :cond_a

    .line 147
    .line 148
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_a

    .line 153
    .line 154
    invoke-virtual {p1, v6, v10}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_a
    const/high16 v3, 0x3f800000    # 1.0f

    .line 159
    .line 160
    invoke-virtual {p1, v6, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 161
    .line 162
    .line 163
    :goto_5
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 177
    .line 178
    iget v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 179
    .line 180
    and-int/lit8 v3, v3, 0x40

    .line 181
    .line 182
    if-nez v3, :cond_c

    .line 183
    .line 184
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    if-eqz v3, :cond_b

    .line 189
    .line 190
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    iget-boolean v3, v3, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 195
    .line 196
    if-eqz v3, :cond_b

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_b
    invoke-static {p1, v5, v6}, Lcom/android/server/wm/Transition;->resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V

    .line 200
    .line 201
    .line 202
    :cond_c
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 207
    .line 208
    if-eqz p0, :cond_f

    .line 209
    .line 210
    check-cast p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    .line 211
    .line 212
    move v1, v4

    .line 213
    :goto_7
    iget-object v5, p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 214
    .line 215
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-ge v1, v5, :cond_f

    .line 220
    .line 221
    iget-object v5, p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->this$0:Lcom/android/server/wm/Transition;

    .line 222
    .line 223
    iget-object v5, v5, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 224
    .line 225
    iget-object v6, p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 226
    .line 227
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 236
    .line 237
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 241
    .line 242
    if-nez v5, :cond_e

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_e
    invoke-virtual {p1, v5, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 246
    .line 247
    .line 248
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_f
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    sub-int/2addr p0, v2

    .line 256
    :goto_9
    if-ltz p0, :cond_11

    .line 257
    .line 258
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    if-nez v1, :cond_10

    .line 263
    .line 264
    goto :goto_a

    .line 265
    :cond_10
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 270
    .line 271
    invoke-static {p1, v1}, Lcom/android/server/wm/Transition;->assignLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 272
    .line 273
    .line 274
    :goto_a
    add-int/lit8 p0, p0, -0x1

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_11
    :goto_b
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    if-ge v4, p0, :cond_12

    .line 282
    .line 283
    invoke-virtual {p2, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-virtual {p1, p0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 292
    .line 293
    .line 294
    add-int/lit8 v4, v4, 0x1

    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_12
    return-void
.end method

.method public final calcParallelCollectType(Landroid/window/WindowContainerTransaction;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_5

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x7

    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string v2, "android.activity.transientLaunch"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 57
    .line 58
    aget-boolean v1, v1, v2

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 63
    .line 64
    const-wide v3, 0x3c17b5315c113ee3L    # 3.213003921393264E-19

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    const-string v6, "Starting a Recents transition which can be parallel."

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 78
    .line 79
    aget-boolean v1, v1, v2

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 84
    .line 85
    const-wide v3, -0x257a196ac496c4d7L    # -1.1860048369741397E128

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v7, 0x0

    .line 93
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_1
    const/4 v1, 0x2

    .line 97
    iput v1, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 98
    .line 99
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    return-void
.end method

.method public final cleanUpInternal()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ge v1, v2, :cond_4

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 19
    .line 20
    iget-object v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    iget-object v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    .line 36
    .line 37
    .line 38
    iput-object v3, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 39
    .line 40
    :cond_1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iput v0, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    .line 45
    .line 46
    iget-object v3, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizePoint:Landroid/graphics/PointF;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {v3, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2, v0, v0}, Lcom/android/server/wm/Task;->setBoostTaskLayerForFreeform(ZZ)V

    .line 61
    .line 62
    .line 63
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 71
    .line 72
    .line 73
    iput-object v3, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 74
    .line 75
    :cond_5
    return-void
.end method

.method public final collect(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 2
    .line 3
    if-ltz v0, :cond_f

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, "don\'t collect wallpaper of other display. caller="

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 p1, 0xa

    .line 44
    .line 45
    const-string p2, "Transition"

    .line 46
    .line 47
    invoke-static {p1, p0, p2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 57
    .line 58
    aget-boolean v0, v0, v1

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 63
    .line 64
    int-to-long v2, v0

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v4, 0x5

    .line 70
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 79
    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    const/4 v8, 0x1

    .line 89
    const-string v9, "Collecting in transition %d: %s, caller=%s"

    .line 90
    .line 91
    const-wide v6, 0x3fd3e6b4fe643fefL    # 0.31095623820237867

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 101
    .line 102
    aget-boolean v0, v0, v1

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 107
    .line 108
    int-to-long v2, v0

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 114
    .line 115
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    const/4 v7, 0x1

    .line 124
    const/4 v8, 0x0

    .line 125
    const-wide v5, -0x40d82296fef9ccbfL    # -1.8207461154098363E-4

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->snapshotStartState(Lcom/android/server/wm/WindowContainer;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    if-nez p2, :cond_4

    .line 149
    .line 150
    return-void

    .line 151
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-nez p2, :cond_5

    .line 156
    .line 157
    iget-object p2, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 158
    .line 159
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 160
    .line 161
    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    if-eqz p2, :cond_6

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iget-boolean p2, p2, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 175
    .line 176
    if-eqz p2, :cond_6

    .line 177
    .line 178
    return-void

    .line 179
    :cond_6
    iget-object p2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 180
    .line 181
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    check-cast p2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 186
    .line 187
    if-nez p2, :cond_9

    .line 188
    .line 189
    new-instance p2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 190
    .line 191
    invoke-direct {p2, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-nez v2, :cond_7

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    iget v0, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 221
    .line 222
    const/high16 v2, 0x40000

    .line 223
    .line 224
    or-int/2addr v0, v2

    .line 225
    iput v0, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 226
    .line 227
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 228
    .line 229
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 233
    .line 234
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->recordDisplay(Lcom/android/server/wm/DisplayContent;)V

    .line 242
    .line 243
    .line 244
    iget-boolean p2, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 245
    .line 246
    if-eqz p2, :cond_e

    .line 247
    .line 248
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 249
    .line 250
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 251
    .line 252
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 253
    .line 254
    iget-object p2, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 255
    .line 256
    iget-object v0, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 257
    .line 258
    const/4 v2, 0x0

    .line 259
    if-eqz v0, :cond_a

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_a
    move v1, v2

    .line 263
    :goto_2
    if-eqz v1, :cond_c

    .line 264
    .line 265
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_b

    .line 270
    .line 271
    iget-object v0, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 272
    .line 273
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 274
    .line 275
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_b
    iget-object v0, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 280
    .line 281
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 282
    .line 283
    .line 284
    :cond_c
    :goto_3
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 285
    .line 286
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 287
    .line 288
    if-eqz p1, :cond_e

    .line 289
    .line 290
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_d

    .line 295
    .line 296
    iget-object p1, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 297
    .line 298
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 299
    .line 300
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_d
    iget-object p1, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 305
    .line 306
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 307
    .line 308
    .line 309
    :cond_e
    :goto_4
    return-void

    .line 310
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 311
    .line 312
    const-string p1, "Transition hasn\'t started collecting."

    .line 313
    .line 314
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw p0
.end method

.method public final collectClose(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aget-boolean v0, v0, v1

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 15
    .line 16
    int-to-long v2, v0

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    const-wide v5, 0xf484ddf43bd3ccbL    # 4.777431964610698E-235

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    const/4 v8, 0x0

    .line 38
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 54
    .line 55
    return-void
.end method

.method public collectOrderChanges(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/server/wm/Task;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-nez p1, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ge v0, v1, :cond_b

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 62
    .line 63
    invoke-static {v1, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 73
    .line 74
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 77
    .line 78
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    add-int/lit8 v4, v4, -0x1

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    :goto_2
    if-ltz v4, :cond_9

    .line 94
    .line 95
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Lcom/android/server/wm/Task;

    .line 100
    .line 101
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eq v7, v1, :cond_3

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    if-nez v3, :cond_5

    .line 109
    .line 110
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 120
    .line 121
    if-eqz v7, :cond_6

    .line 122
    .line 123
    if-eqz v5, :cond_6

    .line 124
    .line 125
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    if-ne v7, v6, :cond_6

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_6

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 140
    .line 141
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 145
    .line 146
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-gez v7, :cond_7

    .line 151
    .line 152
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 153
    .line 154
    new-instance v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 155
    .line 156
    invoke-direct {v8, v6}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 163
    .line 164
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    :cond_7
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 169
    .line 170
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 175
    .line 176
    iget v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 177
    .line 178
    or-int/lit8 v9, v9, 0x20

    .line 179
    .line 180
    iput v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 181
    .line 182
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 183
    .line 184
    if-eqz v8, :cond_8

    .line 185
    .line 186
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    if-eqz v8, :cond_8

    .line 191
    .line 192
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 193
    .line 194
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 199
    .line 200
    iget-boolean v7, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 201
    .line 202
    if-eqz v7, :cond_8

    .line 203
    .line 204
    move-object v5, v6

    .line 205
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, -0x1

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_9
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    .line 209
    .line 210
    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    if-eqz v3, :cond_a

    .line 214
    .line 215
    move-object p1, v3

    .line 216
    goto :goto_4

    .line 217
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .line 221
    .line 222
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 223
    .line 224
    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_b
    return-void
.end method

.method public final collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 7
    .line 8
    iget v4, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 9
    .line 10
    invoke-virtual {v3, v4}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget v3, v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    if-eqz v3, :cond_42

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto/16 :goto_24

    .line 31
    .line 32
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 35
    .line 36
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 37
    .line 38
    if-eqz v3, :cond_41

    .line 39
    .line 40
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 43
    .line 44
    iget v3, v3, Landroid/view/DisplayInfo;->state:I

    .line 45
    .line 46
    if-ne v3, v4, :cond_2

    .line 47
    .line 48
    goto/16 :goto_23

    .line 49
    .line 50
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    iget-object v3, v3, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 70
    .line 71
    if-nez v3, :cond_4

    .line 72
    .line 73
    new-instance v3, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    .line 74
    .line 75
    invoke-direct {v3, v0}, Lcom/android/server/wm/Transition$ScreenshotFreezer;-><init>(Lcom/android/server/wm/Transition;)V

    .line 76
    .line 77
    .line 78
    iput-object v3, v0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 79
    .line 80
    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 87
    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    iget-boolean v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 91
    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_6

    .line 99
    .line 100
    :cond_5
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 101
    .line 102
    if-eqz v5, :cond_40

    .line 103
    .line 104
    if-eqz v3, :cond_40

    .line 105
    .line 106
    iget-boolean v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 107
    .line 108
    if-eqz v5, :cond_40

    .line 109
    .line 110
    iget v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 111
    .line 112
    if-eqz v5, :cond_40

    .line 113
    .line 114
    :cond_6
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 115
    .line 116
    const/4 v6, 0x5

    .line 117
    if-eqz v5, :cond_7

    .line 118
    .line 119
    iget v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 120
    .line 121
    if-ne v5, v6, :cond_7

    .line 122
    .line 123
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 124
    .line 125
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 126
    .line 127
    sget-boolean v7, Lcom/android/server/wm/ChangeTransitionController;->DISABLE_LEGACY_RESIZE_TRANSITION:Z

    .line 128
    .line 129
    const/16 v7, 0xe

    .line 130
    .line 131
    invoke-static {v7, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 132
    .line 133
    .line 134
    :cond_7
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 135
    .line 136
    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 137
    .line 138
    check-cast v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    iget-object v7, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->this$0:Lcom/android/server/wm/Transition;

    .line 148
    .line 149
    if-nez v5, :cond_8

    .line 150
    .line 151
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 152
    .line 153
    if-eqz v5, :cond_40

    .line 154
    .line 155
    iget-object v5, v7, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 156
    .line 157
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 162
    .line 163
    iget-boolean v8, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 164
    .line 165
    if-eqz v8, :cond_40

    .line 166
    .line 167
    iget v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 168
    .line 169
    if-eqz v5, :cond_40

    .line 170
    .line 171
    :cond_8
    move-object v5, v1

    .line 172
    :goto_0
    if-eqz v5, :cond_b

    .line 173
    .line 174
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 175
    .line 176
    if-eqz v8, :cond_9

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    if-eqz v8, :cond_9

    .line 183
    .line 184
    iget-object v8, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 185
    .line 186
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    if-eqz v8, :cond_9

    .line 191
    .line 192
    iget-object v8, v7, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 193
    .line 194
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 199
    .line 200
    iget v8, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 201
    .line 202
    if-eqz v8, :cond_9

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_9
    iget-object v8, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 206
    .line 207
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_a

    .line 212
    .line 213
    goto/16 :goto_22

    .line 214
    .line 215
    :cond_a
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    goto :goto_0

    .line 220
    :cond_b
    iget-boolean v5, v7, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    .line 221
    .line 222
    if-eqz v5, :cond_e

    .line 223
    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    if-nez v5, :cond_c

    .line 229
    .line 230
    const/4 v5, 0x0

    .line 231
    goto :goto_2

    .line 232
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 237
    .line 238
    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 239
    .line 240
    :goto_2
    if-eqz v5, :cond_e

    .line 241
    .line 242
    if-eq v5, v1, :cond_d

    .line 243
    .line 244
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_e

    .line 249
    .line 250
    :cond_d
    iget-object v0, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto/16 :goto_22

    .line 256
    .line 257
    :cond_e
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 258
    .line 259
    if-eqz v5, :cond_f

    .line 260
    .line 261
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 262
    .line 263
    aget-boolean v9, v9, v4

    .line 264
    .line 265
    if-eqz v9, :cond_10

    .line 266
    .line 267
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 292
    .line 293
    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v17

    .line 297
    const/4 v15, 0x0

    .line 298
    const-string v16, "Screenshotting %s [%s], caller=%s"

    .line 299
    .line 300
    const-wide v13, 0x5454134e615f3202L    # 1.7152330249604954E98

    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_f
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 310
    .line 311
    aget-boolean v9, v9, v4

    .line 312
    .line 313
    if-eqz v9, :cond_10

    .line 314
    .line 315
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v10

    .line 327
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 332
    .line 333
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v16

    .line 337
    const/4 v14, 0x0

    .line 338
    const/4 v15, 0x0

    .line 339
    const-wide v12, 0x2577fbd80a463065L    # 3.4600248722999966E-128

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    :cond_10
    :goto_3
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BLACK_SNAPSHOT:Z

    .line 348
    .line 349
    const/16 v10, 0x1e

    .line 350
    .line 351
    const-string v11, "Transition.ScreenshotSync"

    .line 352
    .line 353
    const v12, 0x7fffffff

    .line 354
    .line 355
    .line 356
    if-eqz v9, :cond_11

    .line 357
    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    if-eqz v9, :cond_11

    .line 363
    .line 364
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isSizeRatioChanging()Z

    .line 369
    .line 370
    .line 371
    move-result v9

    .line 372
    if-eqz v9, :cond_11

    .line 373
    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    const-string v3, "BlackSnapshotLayer_WmCore"

    .line 379
    .line 380
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v2, v11}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    iget-object v0, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    iget-object v0, v7, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 420
    .line 421
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    iput-object v2, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 425
    .line 426
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 427
    .line 428
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 429
    .line 430
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 435
    .line 436
    invoke-virtual {v0, v2, v10, v4}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v2, v12}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_20

    .line 452
    .line 453
    :cond_11
    new-instance v9, Landroid/graphics/Rect;

    .line 454
    .line 455
    invoke-direct {v9, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v9, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 459
    .line 460
    .line 461
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 462
    .line 463
    .line 464
    move-result-object v13

    .line 465
    if-eqz v13, :cond_12

    .line 466
    .line 467
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 468
    .line 469
    .line 470
    move-result-object v13

    .line 471
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    .line 472
    .line 473
    .line 474
    move-result v13

    .line 475
    if-eqz v13, :cond_12

    .line 476
    .line 477
    move v13, v4

    .line 478
    goto :goto_4

    .line 479
    :cond_12
    move v13, v2

    .line 480
    :goto_4
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    .line 481
    .line 482
    const-string v15, ", freezeBounds="

    .line 483
    .line 484
    const-string v8, "ChangeTransitionController"

    .line 485
    .line 486
    if-eqz v14, :cond_1f

    .line 487
    .line 488
    new-instance v12, Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .line 492
    .line 493
    new-instance v10, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;

    .line 494
    .line 495
    invoke-direct {v10, v2}, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    check-cast v10, [Landroid/view/SurfaceControl;

    .line 503
    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 505
    .line 506
    .line 507
    move-result-object v12

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 509
    .line 510
    .line 511
    move-result-object v18

    .line 512
    if-eqz v18, :cond_14

    .line 513
    .line 514
    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 515
    .line 516
    if-eqz v6, :cond_14

    .line 517
    .line 518
    new-instance v10, Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .line 522
    .line 523
    new-instance v12, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;

    .line 524
    .line 525
    invoke-direct {v12, v6, v10, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v6, v12, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    if-nez v6, :cond_13

    .line 536
    .line 537
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 538
    .line 539
    .line 540
    move-result v6

    .line 541
    new-array v6, v6, [Landroid/view/SurfaceControl;

    .line 542
    .line 543
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-object v10, v6

    .line 547
    goto :goto_5

    .line 548
    :cond_13
    const/4 v10, 0x0

    .line 549
    :goto_5
    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 550
    .line 551
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 552
    .line 553
    .line 554
    move-result-object v12

    .line 555
    move-object/from16 v21, v3

    .line 556
    .line 557
    goto/16 :goto_a

    .line 558
    .line 559
    :cond_14
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 560
    .line 561
    if-eqz v6, :cond_1e

    .line 562
    .line 563
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 564
    .line 565
    if-eqz v6, :cond_15

    .line 566
    .line 567
    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 568
    .line 569
    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowManagerService;->getExcludeLayers(Lcom/android/server/wm/WindowContainer;)Ljava/util/ArrayList;

    .line 570
    .line 571
    .line 572
    move-result-object v6

    .line 573
    goto :goto_6

    .line 574
    :cond_15
    new-instance v6, Ljava/util/ArrayList;

    .line 575
    .line 576
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .line 578
    .line 579
    :goto_6
    iget-object v10, v7, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 580
    .line 581
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 585
    .line 586
    .line 587
    move-result-object v10

    .line 588
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    if-nez v10, :cond_16

    .line 593
    .line 594
    move-object/from16 v21, v3

    .line 595
    .line 596
    move-object/from16 v20, v12

    .line 597
    .line 598
    goto/16 :goto_8

    .line 599
    .line 600
    :cond_16
    if-eqz v2, :cond_18

    .line 601
    .line 602
    new-instance v4, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;

    .line 603
    .line 604
    move-object/from16 v20, v12

    .line 605
    .line 606
    const/4 v12, 0x3

    .line 607
    invoke-direct {v4, v12}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    if-eqz v4, :cond_17

    .line 615
    .line 616
    iget-object v12, v4, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 617
    .line 618
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v12

    .line 622
    if-nez v12, :cond_17

    .line 623
    .line 624
    iget-object v12, v4, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 625
    .line 626
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    new-instance v12, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    move-object/from16 v21, v3

    .line 632
    .line 633
    const-string v3, "collectExcludeAppWindowFromSnapshot: #"

    .line 634
    .line 635
    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 639
    .line 640
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    const-string v2, ", exclude="

    .line 644
    .line 645
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .line 657
    .line 658
    goto :goto_7

    .line 659
    :cond_17
    move-object/from16 v21, v3

    .line 660
    .line 661
    goto :goto_7

    .line 662
    :cond_18
    move-object/from16 v21, v3

    .line 663
    .line 664
    move-object/from16 v20, v12

    .line 665
    .line 666
    :goto_7
    iget-boolean v2, v10, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 667
    .line 668
    if-eqz v2, :cond_1a

    .line 669
    .line 670
    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 671
    .line 672
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 673
    .line 674
    iget-boolean v2, v2, Lcom/android/server/wm/MultiTaskingController;->mIsTaskbarAutoHideStyle:Z

    .line 675
    .line 676
    if-eqz v2, :cond_1a

    .line 677
    .line 678
    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 679
    .line 680
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 681
    .line 682
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 683
    .line 684
    iget-object v2, v2, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 685
    .line 686
    if-eqz v2, :cond_1a

    .line 687
    .line 688
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 689
    .line 690
    .line 691
    move-result v3

    .line 692
    if-nez v3, :cond_19

    .line 693
    .line 694
    goto :goto_8

    .line 695
    :cond_19
    new-instance v3, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;

    .line 696
    .line 697
    invoke-direct {v3, v2}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowState;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v10, v3}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    if-eqz v3, :cond_1a

    .line 705
    .line 706
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 707
    .line 708
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    if-nez v3, :cond_1a

    .line 713
    .line 714
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 715
    .line 716
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    .line 720
    .line 721
    const-string v4, "collectExcludeSystemWindowFromSnapshot: "

    .line 722
    .line 723
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v2

    .line 733
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .line 735
    .line 736
    :cond_1a
    :goto_8
    new-instance v2, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;

    .line 737
    .line 738
    const/4 v3, 0x1

    .line 739
    invoke-direct {v2, v3}, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    move-object v10, v2

    .line 747
    check-cast v10, [Landroid/view/SurfaceControl;

    .line 748
    .line 749
    iget-object v2, v7, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 750
    .line 751
    iget-object v2, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 752
    .line 753
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    if-nez v2, :cond_1b

    .line 758
    .line 759
    goto :goto_9

    .line 760
    :cond_1b
    iget-object v2, v2, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 761
    .line 762
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 767
    .line 768
    if-eqz v2, :cond_1d

    .line 769
    .line 770
    iget-object v3, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    .line 771
    .line 772
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 773
    .line 774
    if-gtz v4, :cond_1c

    .line 775
    .line 776
    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 777
    .line 778
    if-gtz v6, :cond_1c

    .line 779
    .line 780
    iget v6, v3, Landroid/graphics/Rect;->right:I

    .line 781
    .line 782
    if-gtz v6, :cond_1c

    .line 783
    .line 784
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 785
    .line 786
    if-lez v6, :cond_1d

    .line 787
    .line 788
    :cond_1c
    iget v6, v9, Landroid/graphics/Rect;->left:I

    .line 789
    .line 790
    sub-int/2addr v6, v4

    .line 791
    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 792
    .line 793
    iget v4, v9, Landroid/graphics/Rect;->top:I

    .line 794
    .line 795
    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 796
    .line 797
    sub-int/2addr v4, v6

    .line 798
    iput v4, v9, Landroid/graphics/Rect;->top:I

    .line 799
    .line 800
    iget v4, v9, Landroid/graphics/Rect;->right:I

    .line 801
    .line 802
    iget v6, v3, Landroid/graphics/Rect;->right:I

    .line 803
    .line 804
    add-int/2addr v4, v6

    .line 805
    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 806
    .line 807
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 808
    .line 809
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 810
    .line 811
    add-int/2addr v4, v3

    .line 812
    iput v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 813
    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    .line 815
    .line 816
    const-string v4, "adjustFreezeBoundsIfNeeded: wc="

    .line 817
    .line 818
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    const-string v4, ", outset="

    .line 831
    .line 832
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    .line 836
    .line 837
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .line 846
    .line 847
    :cond_1d
    :goto_9
    move-object/from16 v12, v20

    .line 848
    .line 849
    goto :goto_a

    .line 850
    :cond_1e
    move-object/from16 v21, v3

    .line 851
    .line 852
    move-object/from16 v20, v12

    .line 853
    .line 854
    :goto_a
    new-instance v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 855
    .line 856
    invoke-direct {v2, v12}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v2, v9}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 864
    .line 865
    const/4 v3, 0x1

    .line 866
    invoke-virtual {v2, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 871
    .line 872
    invoke-virtual {v2, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 873
    .line 874
    .line 875
    move-result-object v2

    .line 876
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 877
    .line 878
    invoke-virtual {v2, v10}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 879
    .line 880
    .line 881
    move-result-object v2

    .line 882
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 883
    .line 884
    invoke-virtual {v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 885
    .line 886
    .line 887
    move-result-object v2

    .line 888
    const/4 v3, 0x1

    .line 889
    goto :goto_b

    .line 890
    :cond_1f
    move-object/from16 v21, v3

    .line 891
    .line 892
    new-instance v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 893
    .line 894
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    invoke-direct {v2, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v2, v9}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 906
    .line 907
    const/4 v3, 0x1

    .line 908
    invoke-virtual {v2, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 913
    .line 914
    invoke-virtual {v2, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 915
    .line 916
    .line 917
    move-result-object v2

    .line 918
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 919
    .line 920
    invoke-virtual {v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    :goto_b
    invoke-static {v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 925
    .line 926
    .line 927
    move-result-object v2

    .line 928
    if-nez v2, :cond_20

    .line 929
    .line 930
    const/4 v4, 0x0

    .line 931
    goto :goto_c

    .line 932
    :cond_20
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 933
    .line 934
    .line 935
    move-result-object v4

    .line 936
    :goto_c
    if-eqz v4, :cond_3f

    .line 937
    .line 938
    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 939
    .line 940
    .line 941
    move-result v6

    .line 942
    if-le v6, v3, :cond_3f

    .line 943
    .line 944
    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->getHeight()I

    .line 945
    .line 946
    .line 947
    move-result v6

    .line 948
    if-gt v6, v3, :cond_21

    .line 949
    .line 950
    goto/16 :goto_21

    .line 951
    .line 952
    :cond_21
    const-string v3, ""

    .line 953
    .line 954
    if-eqz v13, :cond_23

    .line 955
    .line 956
    if-eqz v5, :cond_22

    .line 957
    .line 958
    const-string v5, "_WmCore"

    .line 959
    .line 960
    goto :goto_d

    .line 961
    :cond_22
    move-object v5, v3

    .line 962
    :goto_d
    const-string v6, "RotationLayer"

    .line 963
    .line 964
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v5

    .line 968
    goto :goto_e

    .line 969
    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    .line 970
    .line 971
    const-string/jumbo v6, "transition snapshot: "

    .line 972
    .line 973
    .line 974
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v5

    .line 984
    :goto_e
    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 985
    .line 986
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 987
    .line 988
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    .line 989
    .line 990
    iget-object v10, v6, Lcom/android/server/wm/WmScreenshotController;->mShellCommand:Lcom/android/server/wm/WmScreenshotShellCommand;

    .line 991
    .line 992
    iget-boolean v10, v10, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    .line 993
    .line 994
    if-eqz v10, :cond_24

    .line 995
    .line 996
    iget-object v6, v6, Lcom/android/server/wm/WmScreenshotController;->mFileController:Lcom/android/server/wm/WmScreenshotFileController;

    .line 997
    .line 998
    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 999
    .line 1000
    iget v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1001
    .line 1002
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1003
    .line 1004
    .line 1005
    new-instance v12, Ljava/lang/Thread;

    .line 1006
    .line 1007
    new-instance v13, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;

    .line 1008
    .line 1009
    invoke-direct {v13, v6, v2, v10}, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WmScreenshotFileController;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V

    .line 1010
    .line 1011
    .line 1012
    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 1016
    .line 1017
    .line 1018
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v6

    .line 1022
    invoke-virtual {v6, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v5

    .line 1026
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v6

    .line 1030
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v5

    .line 1034
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v6

    .line 1038
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v5

    .line 1042
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 1043
    .line 1044
    .line 1045
    move-result v6

    .line 1046
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v5

    .line 1050
    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v5

    .line 1054
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v5

    .line 1058
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v5

    .line 1062
    iget-object v0, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 1063
    .line 1064
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1065
    .line 1066
    .line 1067
    iget-object v0, v7, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 1068
    .line 1069
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1074
    .line 1075
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    iput-object v5, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 1079
    .line 1080
    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1081
    .line 1082
    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1083
    .line 1084
    iget v6, v6, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 1085
    .line 1086
    iget v10, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1087
    .line 1088
    if-eq v10, v6, :cond_25

    .line 1089
    .line 1090
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v6

    .line 1094
    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1095
    .line 1096
    invoke-static {v4, v6, v10}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;Landroid/view/SurfaceControl;)F

    .line 1097
    .line 1098
    .line 1099
    move-result v6

    .line 1100
    iput v6, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshotLuma:F

    .line 1101
    .line 1102
    :cond_25
    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1103
    .line 1104
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 1105
    .line 1106
    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v6

    .line 1110
    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    .line 1111
    .line 1112
    invoke-static {v6, v5, v2}, Lcom/android/internal/policy/TransitionAnimation;->configureScreenshotLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v6, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1116
    .line 1117
    .line 1118
    if-eqz v14, :cond_2c

    .line 1119
    .line 1120
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 1121
    .line 1122
    if-eqz v2, :cond_28

    .line 1123
    .line 1124
    iget-object v2, v7, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 1125
    .line 1126
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v2

    .line 1130
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1131
    .line 1132
    sget-boolean v10, Lcom/android/server/wm/ChangeTransitionController;->DISABLE_LEGACY_RESIZE_TRANSITION:Z

    .line 1133
    .line 1134
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 1135
    .line 1136
    if-eqz v10, :cond_26

    .line 1137
    .line 1138
    iget v10, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1139
    .line 1140
    if-eqz v10, :cond_26

    .line 1141
    .line 1142
    iget v10, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 1143
    .line 1144
    const/4 v11, 0x5

    .line 1145
    if-ne v10, v11, :cond_26

    .line 1146
    .line 1147
    goto :goto_f

    .line 1148
    :cond_26
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1149
    .line 1150
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v10

    .line 1154
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v11

    .line 1158
    if-eqz v11, :cond_28

    .line 1159
    .line 1160
    if-nez v10, :cond_27

    .line 1161
    .line 1162
    goto :goto_10

    .line 1163
    :cond_27
    iget-object v12, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 1164
    .line 1165
    invoke-virtual {v12}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    .line 1166
    .line 1167
    .line 1168
    move-result v12

    .line 1169
    if-eqz v12, :cond_28

    .line 1170
    .line 1171
    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 1172
    .line 1173
    iget-object v10, v10, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1174
    .line 1175
    if-eqz v10, :cond_28

    .line 1176
    .line 1177
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v10

    .line 1181
    if-ne v10, v11, :cond_28

    .line 1182
    .line 1183
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1184
    .line 1185
    .line 1186
    move-result v2

    .line 1187
    if-eqz v2, :cond_28

    .line 1188
    .line 1189
    :goto_f
    const/4 v2, 0x0

    .line 1190
    goto :goto_12

    .line 1191
    :cond_28
    :goto_10
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 1192
    .line 1193
    if-eqz v2, :cond_2a

    .line 1194
    .line 1195
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    if-eqz v2, :cond_29

    .line 1200
    .line 1201
    const/4 v10, 0x1

    .line 1202
    invoke-virtual {v2, v10, v10}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v2

    .line 1206
    goto :goto_11

    .line 1207
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v2

    .line 1211
    :goto_11
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v2

    .line 1215
    if-eqz v2, :cond_2a

    .line 1216
    .line 1217
    goto :goto_f

    .line 1218
    :cond_2a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 1219
    .line 1220
    if-eqz v2, :cond_2b

    .line 1221
    .line 1222
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v2

    .line 1226
    if-eqz v2, :cond_2b

    .line 1227
    .line 1228
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v2

    .line 1232
    if-eqz v2, :cond_2b

    .line 1233
    .line 1234
    goto :goto_f

    .line 1235
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    .line 1236
    .line 1237
    .line 1238
    move-result v2

    .line 1239
    :goto_12
    invoke-virtual {v6, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1240
    .line 1241
    .line 1242
    :cond_2c
    const/4 v2, 0x1

    .line 1243
    const/16 v10, 0x1e

    .line 1244
    .line 1245
    invoke-virtual {v6, v5, v10, v2}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1246
    .line 1247
    .line 1248
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 1249
    .line 1250
    if-eqz v2, :cond_3d

    .line 1251
    .line 1252
    move-object/from16 v10, v21

    .line 1253
    .line 1254
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 1255
    .line 1256
    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 1257
    .line 1258
    invoke-virtual {v9, v11, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 1259
    .line 1260
    .line 1261
    iget-object v10, v7, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 1262
    .line 1263
    invoke-virtual {v10, v1}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v10

    .line 1267
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v11

    .line 1271
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v12

    .line 1275
    if-eqz v11, :cond_3d

    .line 1276
    .line 1277
    if-eqz v12, :cond_3d

    .line 1278
    .line 1279
    if-eqz v10, :cond_3d

    .line 1280
    .line 1281
    iget v11, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1282
    .line 1283
    if-nez v11, :cond_2d

    .line 1284
    .line 1285
    goto/16 :goto_1e

    .line 1286
    .line 1287
    :cond_2d
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 1288
    .line 1289
    iget-object v13, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1290
    .line 1291
    if-eqz v11, :cond_2f

    .line 1292
    .line 1293
    iget v11, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 1294
    .line 1295
    const/4 v14, 0x5

    .line 1296
    if-eq v11, v14, :cond_2e

    .line 1297
    .line 1298
    iget v11, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitFlags:I

    .line 1299
    .line 1300
    const/4 v14, 0x1

    .line 1301
    and-int/2addr v11, v14

    .line 1302
    if-eqz v11, :cond_30

    .line 1303
    .line 1304
    goto :goto_13

    .line 1305
    :cond_2e
    const/4 v14, 0x1

    .line 1306
    :goto_13
    iget-object v11, v12, Lcom/android/server/wm/TaskDisplayArea;->mFloatingLeashAnchor:Landroid/view/SurfaceControl;

    .line 1307
    .line 1308
    :goto_14
    move-object/from16 v17, v3

    .line 1309
    .line 1310
    goto :goto_15

    .line 1311
    :cond_2f
    const/4 v14, 0x1

    .line 1312
    :cond_30
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1313
    .line 1314
    if-eqz v11, :cond_31

    .line 1315
    .line 1316
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v11

    .line 1320
    if-eqz v11, :cond_31

    .line 1321
    .line 1322
    iget v11, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1323
    .line 1324
    const/4 v14, 0x6

    .line 1325
    if-ne v11, v14, :cond_31

    .line 1326
    .line 1327
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v11

    .line 1331
    goto :goto_14

    .line 1332
    :cond_31
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v11

    .line 1336
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 1337
    .line 1338
    if-eqz v14, :cond_32

    .line 1339
    .line 1340
    if-eqz v11, :cond_32

    .line 1341
    .line 1342
    iget-object v14, v11, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1343
    .line 1344
    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 1345
    .line 1346
    move-object/from16 v17, v3

    .line 1347
    .line 1348
    iget-object v3, v14, Lcom/android/server/wm/NaturalSwitchingController;->mDragTargetArea:Lcom/android/server/wm/DisplayArea;

    .line 1349
    .line 1350
    if-eqz v3, :cond_33

    .line 1351
    .line 1352
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v20

    .line 1356
    if-eqz v20, :cond_33

    .line 1357
    .line 1358
    iget-object v14, v14, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    .line 1359
    .line 1360
    if-ne v14, v11, :cond_33

    .line 1361
    .line 1362
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v11

    .line 1366
    goto :goto_15

    .line 1367
    :cond_32
    move-object/from16 v17, v3

    .line 1368
    .line 1369
    :cond_33
    iget-object v11, v12, Lcom/android/server/wm/TaskDisplayArea;->mChangeLeashAnchor:Landroid/view/SurfaceControl;

    .line 1370
    .line 1371
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v3

    .line 1375
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    const-string v14, "Change Leash: "

    .line 1378
    .line 1379
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v14

    .line 1386
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v12

    .line 1393
    invoke-virtual {v3, v12}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v3

    .line 1397
    invoke-virtual {v3, v11}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v3

    .line 1401
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v3

    .line 1405
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v12

    .line 1409
    if-ne v11, v12, :cond_34

    .line 1410
    .line 1411
    const/4 v12, 0x1

    .line 1412
    goto :goto_16

    .line 1413
    :cond_34
    const/4 v12, 0x0

    .line 1414
    :goto_16
    if-eqz v12, :cond_35

    .line 1415
    .line 1416
    const/4 v14, 0x0

    .line 1417
    goto :goto_17

    .line 1418
    :cond_35
    iget v14, v9, Landroid/graphics/Rect;->left:I

    .line 1419
    .line 1420
    :goto_17
    if-eqz v12, :cond_36

    .line 1421
    .line 1422
    const/4 v12, 0x0

    .line 1423
    goto :goto_18

    .line 1424
    :cond_36
    iget v12, v9, Landroid/graphics/Rect;->top:I

    .line 1425
    .line 1426
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v20

    .line 1430
    move-object/from16 v21, v0

    .line 1431
    .line 1432
    if-eqz v20, :cond_37

    .line 1433
    .line 1434
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v0

    .line 1438
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1439
    .line 1440
    iget-boolean v0, v0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 1441
    .line 1442
    if-eqz v0, :cond_37

    .line 1443
    .line 1444
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v0

    .line 1448
    if-eqz v0, :cond_37

    .line 1449
    .line 1450
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1451
    .line 1452
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1453
    .line 1454
    move-object/from16 v22, v7

    .line 1455
    .line 1456
    const/16 v7, 0x1a

    .line 1457
    .line 1458
    invoke-static {v7, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 1459
    .line 1460
    .line 1461
    move-result v0

    .line 1462
    :goto_19
    int-to-float v0, v0

    .line 1463
    goto :goto_1a

    .line 1464
    :cond_37
    move-object/from16 v22, v7

    .line 1465
    .line 1466
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 1467
    .line 1468
    .line 1469
    move-result v0

    .line 1470
    if-eqz v0, :cond_38

    .line 1471
    .line 1472
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    if-eqz v0, :cond_38

    .line 1477
    .line 1478
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1479
    .line 1480
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1481
    .line 1482
    const/16 v7, 0xc

    .line 1483
    .line 1484
    invoke-static {v7, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 1485
    .line 1486
    .line 1487
    move-result v0

    .line 1488
    goto :goto_19

    .line 1489
    :cond_38
    const/4 v0, 0x0

    .line 1490
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 1491
    .line 1492
    .line 1493
    move-result v7

    .line 1494
    invoke-virtual {v6, v3, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1495
    .line 1496
    .line 1497
    int-to-float v7, v14

    .line 1498
    int-to-float v12, v12

    .line 1499
    invoke-virtual {v6, v3, v7, v12}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1500
    .line 1501
    .line 1502
    new-instance v7, Landroid/graphics/Rect;

    .line 1503
    .line 1504
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 1505
    .line 1506
    .line 1507
    move-result v12

    .line 1508
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 1509
    .line 1510
    .line 1511
    move-result v14

    .line 1512
    move/from16 v23, v2

    .line 1513
    .line 1514
    const/4 v2, 0x0

    .line 1515
    invoke-direct {v7, v2, v2, v12, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v6, v3, v7}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1519
    .line 1520
    .line 1521
    const/4 v2, 0x0

    .line 1522
    cmpl-float v7, v0, v2

    .line 1523
    .line 1524
    if-lez v7, :cond_39

    .line 1525
    .line 1526
    invoke-virtual {v6, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1527
    .line 1528
    .line 1529
    :cond_39
    invoke-virtual {v6, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1530
    .line 1531
    .line 1532
    iget-object v0, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 1533
    .line 1534
    if-eqz v0, :cond_3a

    .line 1535
    .line 1536
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v0

    .line 1540
    if-eqz v0, :cond_3a

    .line 1541
    .line 1542
    iget v0, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 1543
    .line 1544
    const/4 v2, 0x5

    .line 1545
    if-ne v0, v2, :cond_3a

    .line 1546
    .line 1547
    const/16 v19, 0x1

    .line 1548
    .line 1549
    goto :goto_1b

    .line 1550
    :cond_3a
    const/16 v19, 0x0

    .line 1551
    .line 1552
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v0

    .line 1556
    invoke-virtual {v6, v0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1557
    .line 1558
    .line 1559
    const/4 v2, 0x0

    .line 1560
    invoke-virtual {v6, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1561
    .line 1562
    .line 1563
    const/4 v2, 0x0

    .line 1564
    invoke-virtual {v6, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v6, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1568
    .line 1569
    .line 1570
    if-eqz v19, :cond_3b

    .line 1571
    .line 1572
    const v2, 0x3a83126f    # 0.001f

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v6, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1576
    .line 1577
    .line 1578
    :cond_3b
    iget-object v0, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 1579
    .line 1580
    invoke-virtual {v6, v0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1581
    .line 1582
    .line 1583
    const v2, 0x7fffffff

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v6, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1587
    .line 1588
    .line 1589
    iput-object v3, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 1590
    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1592
    .line 1593
    const-string v2, "createChangeTransitionLeashIfNeeded: "

    .line 1594
    .line 1595
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1599
    .line 1600
    .line 1601
    const-string v2, ", wc="

    .line 1602
    .line 1603
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1607
    .line 1608
    .line 1609
    const-string v2, ", Z="

    .line 1610
    .line 1611
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 1615
    .line 1616
    .line 1617
    move-result v2

    .line 1618
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1619
    .line 1620
    .line 1621
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1625
    .line 1626
    .line 1627
    const-string v2, ", anchorLayer="

    .line 1628
    .line 1629
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    .line 1631
    .line 1632
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1633
    .line 1634
    .line 1635
    if-eqz v19, :cond_3c

    .line 1636
    .line 1637
    const-string v2, ", c=hidden"

    .line 1638
    .line 1639
    goto :goto_1c

    .line 1640
    :cond_3c
    move-object/from16 v2, v17

    .line 1641
    .line 1642
    :goto_1c
    invoke-static {v0, v2, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    .line 1644
    .line 1645
    :goto_1d
    const v0, 0x7fffffff

    .line 1646
    .line 1647
    .line 1648
    goto :goto_1f

    .line 1649
    :cond_3d
    :goto_1e
    move-object/from16 v21, v0

    .line 1650
    .line 1651
    move/from16 v23, v2

    .line 1652
    .line 1653
    move-object/from16 v17, v3

    .line 1654
    .line 1655
    move-object/from16 v22, v7

    .line 1656
    .line 1657
    goto :goto_1d

    .line 1658
    :goto_1f
    invoke-virtual {v6, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 1665
    .line 1666
    .line 1667
    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1668
    .line 1669
    .line 1670
    if-eqz v23, :cond_3e

    .line 1671
    .line 1672
    move-object/from16 v0, v22

    .line 1673
    .line 1674
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 1675
    .line 1676
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1677
    .line 1678
    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1680
    .line 1681
    const-string/jumbo v2, "onSnapshotSurfaceCreated: wc="

    .line 1682
    .line 1683
    .line 1684
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1688
    .line 1689
    .line 1690
    const-string v2, ", cropBounds="

    .line 1691
    .line 1692
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1696
    .line 1697
    .line 1698
    const-string v2, ", changeInfo="

    .line 1699
    .line 1700
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    .line 1702
    .line 1703
    move-object/from16 v2, v21

    .line 1704
    .line 1705
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1706
    .line 1707
    .line 1708
    move-object/from16 v2, v17

    .line 1709
    .line 1710
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v0

    .line 1717
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    .line 1719
    .line 1720
    :cond_3e
    move-object v2, v5

    .line 1721
    :goto_20
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v0

    .line 1725
    const/4 v1, 0x0

    .line 1726
    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1727
    .line 1728
    .line 1729
    goto :goto_22

    .line 1730
    :cond_3f
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1731
    .line 1732
    const-string v2, "Failed to capture screenshot for "

    .line 1733
    .line 1734
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1738
    .line 1739
    .line 1740
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v0

    .line 1744
    const-string v1, "Transition"

    .line 1745
    .line 1746
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    .line 1748
    .line 1749
    :cond_40
    :goto_22
    return-void

    .line 1750
    :cond_41
    :goto_23
    iget v1, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1751
    .line 1752
    or-int/lit16 v1, v1, 0x400

    .line 1753
    .line 1754
    iput v1, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1755
    .line 1756
    :cond_42
    :goto_24
    return-void
.end method

.method public final didCommitTransientLaunch()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    move v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return v1
.end method

.method public getFinishTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStartTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 9
    .line 10
    const-string/jumbo v1, "recents_animation_input_consumer"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    move-object v6, v3

    .line 22
    if-eqz v0, :cond_8

    .line 23
    .line 24
    move-object v7, v6

    .line 25
    move v5, v4

    .line 26
    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-ge v5, v8, :cond_7

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 45
    .line 46
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    if-nez v8, :cond_1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_1
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 54
    .line 55
    invoke-static {v9}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    if-nez v9, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 63
    .line 64
    if-eq v8, v2, :cond_4

    .line 65
    .line 66
    const/4 v10, 0x3

    .line 67
    if-ne v8, v10, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v8, v4

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    :goto_1
    move v8, v1

    .line 73
    :goto_2
    if-eqz v8, :cond_5

    .line 74
    .line 75
    if-nez v6, :cond_5

    .line 76
    .line 77
    invoke-virtual {v9, v1, v4}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    if-nez v8, :cond_6

    .line 83
    .line 84
    if-nez v7, :cond_6

    .line 85
    .line 86
    move-object v7, v9

    .line 87
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_7
    if-eqz v6, :cond_8

    .line 91
    .line 92
    if-eqz v7, :cond_8

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 95
    .line 96
    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 97
    .line 98
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v0, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 103
    .line 104
    .line 105
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 106
    .line 107
    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 108
    .line 109
    .line 110
    :cond_8
    if-nez v6, :cond_9

    .line 111
    .line 112
    return-void

    .line 113
    :cond_9
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 114
    .line 115
    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 116
    .line 117
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_11

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_a

    .line 130
    .line 131
    goto/16 :goto_8

    .line 132
    .line 133
    :cond_a
    move v0, v4

    .line 134
    :goto_4
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-ge v0, v5, :cond_d

    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 153
    .line 154
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    if-eqz v6, :cond_c

    .line 159
    .line 160
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 165
    .line 166
    iget v7, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 167
    .line 168
    if-ne v6, v7, :cond_c

    .line 169
    .line 170
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-ne v6, v1, :cond_c

    .line 179
    .line 180
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eq v6, v2, :cond_b

    .line 185
    .line 186
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    const/4 v7, 0x4

    .line 191
    if-eq v6, v7, :cond_b

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_b
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-static {p2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    goto :goto_6

    .line 207
    :cond_c
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_d
    :goto_6
    if-eqz v3, :cond_11

    .line 211
    .line 212
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-eqz p2, :cond_e

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_e
    iget-object p2, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 220
    .line 221
    iget-object p2, p2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 222
    .line 223
    if-eqz p2, :cond_11

    .line 224
    .line 225
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 226
    .line 227
    if-nez v0, :cond_f

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 231
    .line 232
    iput-boolean v1, v2, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 235
    .line 236
    .line 237
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 244
    .line 245
    iget-object p2, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v0, p2, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 255
    .line 256
    .line 257
    iget-object v2, p1, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 258
    .line 259
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_10

    .line 264
    .line 265
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v0, p2, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_10
    const v1, 0x7fffffff

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 277
    .line 278
    .line 279
    :goto_7
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 280
    .line 281
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    if-eqz p1, :cond_11

    .line 286
    .line 287
    iget p0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 288
    .line 289
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 290
    .line 291
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 292
    .line 293
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 294
    .line 295
    if-eqz p1, :cond_11

    .line 296
    .line 297
    :try_start_0
    invoke-interface {p1, p0, v4}, Lcom/android/internal/statusbar/IStatusBar;->setNavigationBarLumaSamplingEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .line 299
    .line 300
    :catch_0
    :cond_11
    :goto_8
    return-void
.end method

.method public final hasTransientLaunch()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

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

.method public final invokeTransitionEndedListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Runnable;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 31
    .line 32
    return-void
.end method

.method public final isCollecting()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :cond_1
    :goto_0
    return v0
.end method

.method public final isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
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
    :goto_0
    if-ltz v0, :cond_3

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/wm/Task;

    .line 22
    .line 23
    if-eq p1, v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_1
    return v2

    .line 36
    :cond_3
    return v1
.end method

.method public final isInTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    .line 1
    :goto_0
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

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

.method public final isTransientVisible(Lcom/android/server/wm/Task;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v2, v0, -0x1

    .line 12
    .line 13
    move v3, v1

    .line 14
    :goto_0
    const/4 v4, 0x1

    .line 15
    if-ltz v2, :cond_5

    .line 16
    .line 17
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    if-eqz v6, :cond_4

    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    if-ne v7, v5, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 46
    .line 47
    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 48
    .line 49
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 50
    .line 51
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mOpaqueActivityHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;

    .line 52
    .line 53
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    .line 54
    .line 55
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIgnoringKeyguard:Z

    .line 56
    .line 57
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIgnoreFloatingWindow:Z

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    invoke-virtual {v6, v7, v4, v8}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-gez v7, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    iget-boolean v8, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 79
    .line 80
    if-eqz v8, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_3

    .line 87
    .line 88
    if-eqz v7, :cond_3

    .line 89
    .line 90
    const-string/jumbo v8, "startActivityUnchecked"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v8, v1, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_3

    .line 98
    .line 99
    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 100
    .line 101
    if-eqz v7, :cond_3

    .line 102
    .line 103
    invoke-virtual {v7}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_3

    .line 108
    .line 109
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_3

    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_3

    .line 120
    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v0, "PipTask isTransientVisible: Allow for auto-pip: "

    .line 124
    .line 125
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    const-string p1, "Transition"

    .line 136
    .line 137
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    return v4

    .line 141
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_5
    if-ne v3, v0, :cond_8

    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    sub-int/2addr v0, v4

    .line 156
    :goto_2
    if-ltz v0, :cond_7

    .line 157
    .line 158
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 159
    .line 160
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 165
    .line 166
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    return v4

    .line 173
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_7
    return v1

    .line 177
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    return p0
.end method

.method public final legacyRestoreNavigationBarFromApp()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    const-string v2, "Transition"

    .line 17
    .line 18
    const-string v3, "Restore parent surface of navigation bar by another transition"

    .line 19
    .line 20
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move v2, v1

    .line 24
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    :try_start_0
    invoke-interface {v3, v2, v4}, Lcom/android/internal/statusbar/IStatusBar;->setNavigationBarLumaSamplingEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    iput v1, v2, Lcom/android/server/wm/WindowState;->mSurfaceTranslationY:I

    .line 60
    .line 61
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 62
    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-object v6, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {v3, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 81
    .line 82
    .line 83
    move v6, v1

    .line 84
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-ge v6, v7, :cond_7

    .line 91
    .line 92
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 99
    .line 100
    iget-object v7, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 101
    .line 102
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    if-eqz v7, :cond_6

    .line 107
    .line 108
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-nez v8, :cond_5

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 124
    .line 125
    new-instance p0, Lcom/android/server/wm/NavBarFadeAnimationController;

    .line 126
    .line 127
    invoke-direct {p0, v0}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v4}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_8
    iget-object p0, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 135
    .line 136
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v3, p0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 141
    .line 142
    .line 143
    :goto_3
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final onReadyTimeout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 4
    .line 5
    const-string v1, "#"

    .line 6
    .line 7
    const-string v2, "Transition"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " readiness timeout, used="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " deferReadyDepth="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " group="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, " met conditions: "

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 77
    .line 78
    iget-object v4, v3, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 96
    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p0, " unmet conditions: "

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object p0, v3, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final onSeamlessRotating(Lcom/android/server/wm/DisplayContent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/android/server/wm/Transition$ScreenshotFreezer;-><init>(Lcom/android/server/wm/Transition;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 25
    .line 26
    :cond_1
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    .line 33
    .line 34
    iput v1, p1, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 35
    .line 36
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 41
    .line 42
    aget-boolean p0, p0, v1

    .line 43
    .line 44
    if-eqz p0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/4 p1, 0x5

    .line 55
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 64
    .line 65
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-wide v1, -0x7de1074a75c8c19bL

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    const-string v4, "Override sync-method for %s because seamless rotating, caller=%s"

    .line 76
    .line 77
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 82
    .line 83
    aget-boolean p0, p0, v1

    .line 84
    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 96
    .line 97
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    const-wide v1, 0x25f1edc4196f3fa3L    # 6.621439290562198E-126

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    const/4 v4, 0x0

    .line 108
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_0
    return-void
.end method

.method public final onTransactionCommitTimeout()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    if-ltz v0, :cond_4

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-static {v2, v4}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 39
    .line 40
    iget-boolean v4, v3, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    sub-int/2addr v4, v1

    .line 52
    move v10, v4

    .line 53
    :goto_1
    if-ltz v10, :cond_3

    .line 54
    .line 55
    iget-object v4, v3, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 62
    .line 63
    iput-boolean v1, v4, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/android/server/wm/AsyncRotationController$Operation;->isValidSeamless()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v6, "Transaction timeout. Clear transform for "

    .line 74
    .line 75
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v6, v3, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 85
    .line 86
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const-string v6, "AsyncRotation_WindowManager"

    .line 98
    .line 99
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iget-object v11, v4, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 103
    .line 104
    const/high16 v6, 0x3f800000    # 1.0f

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    const/high16 v9, 0x3f800000    # 1.0f

    .line 109
    .line 110
    move-object v4, v2

    .line 111
    move-object v5, v11

    .line 112
    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 113
    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    invoke-virtual {v2, v11, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 117
    .line 118
    .line 119
    :cond_2
    add-int/lit8 v10, v10, -0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    return-void
.end method

.method public final onTransactionReady(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 8
    .line 9
    const-string v4, "Transition"

    .line 10
    .line 11
    if-eq v2, v3, :cond_0

    .line 12
    .line 13
    const-string v1, "Unexpected Sync ID "

    .line 14
    .line 15
    const-string v3, ". Expected "

    .line 16
    .line 17
    invoke-static {v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 22
    .line 23
    invoke-static {v1, v0, v4}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 28
    .line 29
    iget-boolean v2, v2, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 30
    .line 31
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    move v2, v5

    .line 38
    :goto_0
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 39
    .line 40
    iget-object v7, v7, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-ge v2, v7, :cond_2

    .line 47
    .line 48
    aget-boolean v7, v3, v6

    .line 49
    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    iget v7, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 53
    .line 54
    int-to-long v7, v7

    .line 55
    iget-object v9, v0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 56
    .line 57
    iget-object v9, v9, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 68
    .line 69
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    filled-new-array {v7, v9}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v15

    .line 77
    const/4 v13, 0x1

    .line 78
    const/4 v14, 0x0

    .line 79
    const-wide v11, -0x12cc95eb18b3c9c2L    # -1.0708297704870128E218

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    sub-int/2addr v2, v6

    .line 97
    :goto_1
    if-ltz v2, :cond_7

    .line 98
    .line 99
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 100
    .line 101
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 106
    .line 107
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    if-eqz v7, :cond_6

    .line 112
    .line 113
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 114
    .line 115
    if-nez v8, :cond_3

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_5

    .line 123
    .line 124
    invoke-virtual {v7, v6, v5, v6}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 125
    .line 126
    .line 127
    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    sub-int/2addr v8, v6

    .line 134
    move v9, v5

    .line 135
    :goto_2
    if-ltz v8, :cond_4

    .line 136
    .line 137
    iget-object v10, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 138
    .line 139
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 144
    .line 145
    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowState;->commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)Z

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    or-int/2addr v9, v10

    .line 150
    add-int/lit8 v8, v8, -0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    if-eqz v9, :cond_5

    .line 154
    .line 155
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    .line 156
    .line 157
    .line 158
    :cond_5
    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 159
    .line 160
    invoke-virtual {v7, v5}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 161
    .line 162
    .line 163
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_7
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 167
    .line 168
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    sub-int/2addr v2, v6

    .line 173
    :goto_4
    if-ltz v2, :cond_a

    .line 174
    .line 175
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 176
    .line 177
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 182
    .line 183
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-nez v8, :cond_9

    .line 188
    .line 189
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    if-eqz v8, :cond_8

    .line 194
    .line 195
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-virtual {v7, v6, v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-eqz v7, :cond_8

    .line 208
    .line 209
    if-eqz v8, :cond_8

    .line 210
    .line 211
    iget-object v7, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 212
    .line 213
    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-eqz v7, :cond_8

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_9
    :goto_5
    move v2, v6

    .line 228
    goto :goto_6

    .line 229
    :cond_a
    move v2, v5

    .line 230
    :goto_6
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 231
    .line 232
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    sub-int/2addr v7, v6

    .line 237
    :goto_7
    if-ltz v7, :cond_10

    .line 238
    .line 239
    iget-object v8, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 240
    .line 241
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 246
    .line 247
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    if-eqz v8, :cond_f

    .line 252
    .line 253
    iget-boolean v9, v8, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 254
    .line 255
    if-nez v9, :cond_b

    .line 256
    .line 257
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-eqz v9, :cond_b

    .line 262
    .line 263
    invoke-virtual {v8, v2}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    .line 264
    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_b
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    if-eqz v9, :cond_e

    .line 272
    .line 273
    iget-boolean v9, v8, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 274
    .line 275
    if-eqz v9, :cond_e

    .line 276
    .line 277
    if-nez v2, :cond_e

    .line 278
    .line 279
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 284
    .line 285
    .line 286
    move-result v9

    .line 287
    if-nez v9, :cond_e

    .line 288
    .line 289
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    if-nez v9, :cond_e

    .line 298
    .line 299
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 300
    .line 301
    if-eqz v9, :cond_c

    .line 302
    .line 303
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 308
    .line 309
    iget-object v9, v9, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 310
    .line 311
    if-eqz v9, :cond_e

    .line 312
    .line 313
    invoke-virtual {v0, v9}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    if-eqz v9, :cond_e

    .line 318
    .line 319
    :cond_c
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 324
    .line 325
    iget-object v9, v9, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 326
    .line 327
    if-eqz v9, :cond_d

    .line 328
    .line 329
    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 330
    .line 331
    .line 332
    move-result v9

    .line 333
    if-eqz v9, :cond_d

    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_d
    invoke-virtual {v8, v5}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibleRequested(Z)Z

    .line 337
    .line 338
    .line 339
    :cond_e
    :goto_8
    if-eqz v2, :cond_f

    .line 340
    .line 341
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    if-eqz v9, :cond_f

    .line 346
    .line 347
    iget-object v9, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 348
    .line 349
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    sub-int/2addr v9, v6

    .line 354
    :goto_9
    if-ltz v9, :cond_f

    .line 355
    .line 356
    iget-object v10, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 357
    .line 358
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v10

    .line 362
    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 363
    .line 364
    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 365
    .line 366
    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 367
    .line 368
    .line 369
    add-int/lit8 v9, v9, -0x1

    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_f
    add-int/lit8 v7, v7, -0x1

    .line 373
    .line 374
    goto/16 :goto_7

    .line 375
    .line 376
    :cond_10
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 377
    .line 378
    if-eqz v2, :cond_11

    .line 379
    .line 380
    move v2, v5

    .line 381
    :goto_a
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 382
    .line 383
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    if-ge v2, v7, :cond_11

    .line 388
    .line 389
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    check-cast v7, Ljava/lang/Runnable;

    .line 396
    .line 397
    new-instance v8, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 398
    .line 399
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 400
    .line 401
    .line 402
    new-instance v9, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;

    .line 403
    .line 404
    const/4 v10, 0x2

    .line 405
    invoke-direct {v9, v10, v7}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v8, v9}, Landroid/view/SurfaceControl$Transaction;->addTransactionCompletedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;

    .line 409
    .line 410
    .line 411
    add-int/lit8 v2, v2, 0x1

    .line 412
    .line 413
    goto :goto_a

    .line 414
    :cond_11
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-nez v2, :cond_12

    .line 421
    .line 422
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 429
    .line 430
    goto :goto_b

    .line 431
    :cond_12
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 432
    .line 433
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 434
    .line 435
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 436
    .line 437
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 438
    .line 439
    :goto_b
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_NOTIFY_TASKBAR_VISIBLE:Z

    .line 440
    .line 441
    const/4 v8, 0x0

    .line 442
    if-eqz v7, :cond_14

    .line 443
    .line 444
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 445
    .line 446
    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 447
    .line 448
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 449
    .line 450
    iget-object v7, v7, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 451
    .line 452
    iget-object v9, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 453
    .line 454
    invoke-virtual {v9, v7}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 455
    .line 456
    .line 457
    move-result v9

    .line 458
    if-eqz v9, :cond_13

    .line 459
    .line 460
    const-string/jumbo v7, "updateTaskbarTargetIfNeeded: defer to send callbackwhile on transient launch"

    .line 461
    .line 462
    .line 463
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    goto :goto_c

    .line 467
    :cond_13
    iget-object v9, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 468
    .line 469
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 470
    .line 471
    invoke-virtual {v9, v8, v7}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTaskbarTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V

    .line 472
    .line 473
    .line 474
    :cond_14
    :goto_c
    iget v7, v0, Lcom/android/server/wm/Transition;->mState:I

    .line 475
    .line 476
    const/4 v9, -0x1

    .line 477
    const/4 v10, 0x3

    .line 478
    const-string v11, ">"

    .line 479
    .line 480
    if-ne v7, v10, :cond_1c

    .line 481
    .line 482
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 483
    .line 484
    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 485
    .line 486
    if-eq v0, v4, :cond_16

    .line 487
    .line 488
    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    if-ltz v4, :cond_15

    .line 495
    .line 496
    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    goto :goto_d

    .line 502
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 503
    .line 504
    const-string v1, "Too late for abort."

    .line 505
    .line 506
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw v0

    .line 510
    :cond_16
    iput-object v8, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 511
    .line 512
    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 513
    .line 514
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    if-nez v4, :cond_17

    .line 519
    .line 520
    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    check-cast v4, Lcom/android/server/wm/Transition;

    .line 527
    .line 528
    iput-object v4, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 529
    .line 530
    :cond_17
    iget-object v4, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 531
    .line 532
    if-nez v4, :cond_18

    .line 533
    .line 534
    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    .line 535
    .line 536
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 537
    .line 538
    .line 539
    :cond_18
    :goto_d
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    .line 540
    .line 541
    if-eqz v3, :cond_19

    .line 542
    .line 543
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    .line 544
    .line 545
    if-eqz v3, :cond_19

    .line 546
    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    const-string v4, "AbortTransition_SyncId<"

    .line 550
    .line 551
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    iget v4, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 555
    .line 556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    :cond_19
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 570
    .line 571
    if-eqz v3, :cond_1b

    .line 572
    .line 573
    :goto_e
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    if-ge v5, v3, :cond_1a

    .line 580
    .line 581
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 582
    .line 583
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 588
    .line 589
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    .line 590
    .line 591
    .line 592
    add-int/lit8 v5, v5, 0x1

    .line 593
    .line 594
    goto :goto_e

    .line 595
    :cond_1a
    iput-object v8, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 596
    .line 597
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 602
    .line 603
    .line 604
    iput v9, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 605
    .line 606
    iput-object v8, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 607
    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Transition;->cleanUpInternal()V

    .line 609
    .line 610
    .line 611
    return-void

    .line 612
    :cond_1c
    if-eq v7, v6, :cond_1d

    .line 613
    .line 614
    new-instance v7, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    const-string v10, "Playing a Transition which hasn\'t started! #"

    .line 617
    .line 618
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    iget v10, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 622
    .line 623
    const-string v12, " This will likely cause an exception in Shell"

    .line 624
    .line 625
    invoke-static {v7, v10, v12, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    :cond_1d
    const/4 v7, 0x2

    .line 629
    iput v7, v0, Lcom/android/server/wm/Transition;->mState:I

    .line 630
    .line 631
    iput-object v1, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 632
    .line 633
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 634
    .line 635
    iget-object v10, v10, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 636
    .line 637
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 638
    .line 639
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 640
    .line 641
    invoke-interface {v10}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v10

    .line 645
    check-cast v10, Landroid/view/SurfaceControl$Transaction;

    .line 646
    .line 647
    iput-object v10, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 648
    .line 649
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    .line 650
    .line 651
    if-eqz v10, :cond_1e

    .line 652
    .line 653
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    .line 654
    .line 655
    if-eqz v10, :cond_1e

    .line 656
    .line 657
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 658
    .line 659
    new-instance v12, Ljava/lang/StringBuilder;

    .line 660
    .line 661
    const-string v13, "StartTransaction_SyncId<"

    .line 662
    .line 663
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    iget v13, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 667
    .line 668
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v12

    .line 678
    invoke-virtual {v10, v12}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 682
    .line 683
    new-instance v12, Ljava/lang/StringBuilder;

    .line 684
    .line 685
    const-string v13, "FinishTransaction_SyncId<"

    .line 686
    .line 687
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    iget v13, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 691
    .line 692
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v11

    .line 702
    invoke-virtual {v10, v11}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    :cond_1e
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 706
    .line 707
    if-eqz v10, :cond_29

    .line 708
    .line 709
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 710
    .line 711
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    .line 713
    .line 714
    new-instance v10, Ljava/lang/StringBuilder;

    .line 715
    .line 716
    const-string/jumbo v11, "onTransactionReady: "

    .line 717
    .line 718
    .line 719
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v10

    .line 729
    const-string v11, "ChangeTransitionController"

    .line 730
    .line 731
    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .line 733
    .line 734
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 735
    .line 736
    if-eqz v10, :cond_20

    .line 737
    .line 738
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 739
    .line 740
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 741
    .line 742
    .line 743
    move-result v12

    .line 744
    sub-int/2addr v12, v6

    .line 745
    :goto_f
    if-ltz v12, :cond_20

    .line 746
    .line 747
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v13

    .line 751
    check-cast v13, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 752
    .line 753
    iget-object v14, v13, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 754
    .line 755
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 756
    .line 757
    .line 758
    move-result-object v15

    .line 759
    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v15

    .line 763
    check-cast v15, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 764
    .line 765
    if-eqz v15, :cond_1f

    .line 766
    .line 767
    iget v15, v15, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 768
    .line 769
    const/high16 v16, 0x10000

    .line 770
    .line 771
    and-int v15, v15, v16

    .line 772
    .line 773
    if-eqz v15, :cond_1f

    .line 774
    .line 775
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 776
    .line 777
    .line 778
    move-result-object v14

    .line 779
    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v14

    .line 783
    if-eqz v14, :cond_1f

    .line 784
    .line 785
    iput-boolean v6, v13, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChanged:Z

    .line 786
    .line 787
    new-instance v14, Ljava/lang/StringBuilder;

    .line 788
    .line 789
    const-string v15, "applyForceChangeIfNeeded: "

    .line 790
    .line 791
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v13

    .line 801
    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    .line 803
    .line 804
    :cond_1f
    add-int/lit8 v12, v12, -0x1

    .line 805
    .line 806
    goto :goto_f

    .line 807
    :cond_20
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 808
    .line 809
    if-eqz v10, :cond_29

    .line 810
    .line 811
    new-instance v10, Ljava/util/ArrayList;

    .line 812
    .line 813
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .line 815
    .line 816
    iget-object v12, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 817
    .line 818
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    .line 819
    .line 820
    .line 821
    move-result v13

    .line 822
    sub-int/2addr v13, v6

    .line 823
    move v14, v5

    .line 824
    move-object v15, v8

    .line 825
    :goto_10
    if-ltz v13, :cond_27

    .line 826
    .line 827
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v16

    .line 831
    move-object/from16 v9, v16

    .line 832
    .line 833
    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 834
    .line 835
    iget-object v8, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 836
    .line 837
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 838
    .line 839
    .line 840
    move-result-object v8

    .line 841
    iget-object v5, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 842
    .line 843
    if-eqz v8, :cond_22

    .line 844
    .line 845
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 846
    .line 847
    .line 848
    move-result v8

    .line 849
    if-eqz v8, :cond_21

    .line 850
    .line 851
    move-object v15, v5

    .line 852
    :cond_21
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 853
    .line 854
    .line 855
    move-result v8

    .line 856
    if-eqz v8, :cond_22

    .line 857
    .line 858
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 859
    .line 860
    .line 861
    move-result-object v8

    .line 862
    new-instance v7, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;

    .line 863
    .line 864
    const/4 v6, 0x0

    .line 865
    invoke-direct {v7, v6}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 869
    .line 870
    .line 871
    move-result v6

    .line 872
    if-eqz v6, :cond_22

    .line 873
    .line 874
    const/4 v14, 0x1

    .line 875
    :cond_22
    iget v6, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 876
    .line 877
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 878
    .line 879
    .line 880
    move-result v7

    .line 881
    const/4 v8, 0x5

    .line 882
    if-eq v6, v8, :cond_24

    .line 883
    .line 884
    if-ne v7, v8, :cond_23

    .line 885
    .line 886
    goto :goto_12

    .line 887
    :cond_23
    :goto_11
    move-object/from16 v17, v12

    .line 888
    .line 889
    goto :goto_13

    .line 890
    :cond_24
    :goto_12
    if-eq v6, v7, :cond_23

    .line 891
    .line 892
    iget-object v8, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 893
    .line 894
    if-eqz v8, :cond_23

    .line 895
    .line 896
    iget v8, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 897
    .line 898
    if-eqz v8, :cond_23

    .line 899
    .line 900
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 901
    .line 902
    .line 903
    move-result-object v8

    .line 904
    if-eqz v8, :cond_23

    .line 905
    .line 906
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 907
    .line 908
    .line 909
    move-result-object v8

    .line 910
    if-nez v8, :cond_25

    .line 911
    .line 912
    goto :goto_11

    .line 913
    :cond_25
    new-instance v8, Ljava/lang/StringBuilder;

    .line 914
    .line 915
    move-object/from16 v17, v12

    .line 916
    .line 917
    const-string v12, "isFreeformChangeTransition: "

    .line 918
    .line 919
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    const-string v12, " ("

    .line 926
    .line 927
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    const-string v6, "->"

    .line 934
    .line 935
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    const-string v6, "), "

    .line 942
    .line 943
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    iget v6, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 947
    .line 948
    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeTransitModeToString(I)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v6

    .line 952
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    .line 954
    .line 955
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v6

    .line 959
    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    .line 961
    .line 962
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 963
    .line 964
    .line 965
    move-result-object v5

    .line 966
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 967
    .line 968
    .line 969
    move-result v6

    .line 970
    if-nez v6, :cond_26

    .line 971
    .line 972
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    .line 974
    .line 975
    :cond_26
    :goto_13
    add-int/lit8 v13, v13, -0x1

    .line 976
    .line 977
    move-object/from16 v12, v17

    .line 978
    .line 979
    const/4 v5, 0x0

    .line 980
    const/4 v6, 0x1

    .line 981
    const/4 v7, 0x2

    .line 982
    const/4 v8, 0x0

    .line 983
    const/4 v9, -0x1

    .line 984
    goto/16 :goto_10

    .line 985
    .line 986
    :cond_27
    if-eqz v14, :cond_28

    .line 987
    .line 988
    if-eqz v15, :cond_28

    .line 989
    .line 990
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 991
    .line 992
    .line 993
    move-result-object v5

    .line 994
    if-eqz v5, :cond_28

    .line 995
    .line 996
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 997
    .line 998
    .line 999
    move-result-object v5

    .line 1000
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v6

    .line 1004
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v5

    .line 1008
    if-eqz v5, :cond_28

    .line 1009
    .line 1010
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 1011
    .line 1012
    .line 1013
    move-result v6

    .line 1014
    if-eqz v6, :cond_28

    .line 1015
    .line 1016
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v5

    .line 1020
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v6

    .line 1024
    if-nez v6, :cond_28

    .line 1025
    .line 1026
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    .line 1028
    .line 1029
    :cond_28
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v5

    .line 1033
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1034
    .line 1035
    .line 1036
    move-result v6

    .line 1037
    if-eqz v6, :cond_29

    .line 1038
    .line 1039
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v6

    .line 1043
    check-cast v6, Lcom/android/server/wm/TaskDisplayArea;

    .line 1044
    .line 1045
    new-instance v7, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda6;

    .line 1046
    .line 1047
    invoke-direct {v7, v0}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/Transition;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 1051
    .line 1052
    .line 1053
    goto :goto_14

    .line 1054
    :cond_29
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 1055
    .line 1056
    .line 1057
    move-result v2

    .line 1058
    if-eqz v2, :cond_2a

    .line 1059
    .line 1060
    iget v2, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1061
    .line 1062
    or-int/lit8 v2, v2, 0x40

    .line 1063
    .line 1064
    iput v2, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1065
    .line 1066
    :cond_2a
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 1067
    .line 1068
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 1069
    .line 1070
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1071
    .line 1072
    .line 1073
    move-result v2

    .line 1074
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Transition;->collectOrderChanges(Z)V

    .line 1075
    .line 1076
    .line 1077
    iget-boolean v2, v0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    .line 1078
    .line 1079
    if-eqz v2, :cond_2d

    .line 1080
    .line 1081
    const/4 v2, 0x0

    .line 1082
    :goto_15
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 1083
    .line 1084
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 1085
    .line 1086
    .line 1087
    move-result v5

    .line 1088
    if-ge v2, v5, :cond_2d

    .line 1089
    .line 1090
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 1091
    .line 1092
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v5

    .line 1096
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1097
    .line 1098
    iget-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1099
    .line 1100
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v6

    .line 1104
    iget-object v7, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1105
    .line 1106
    if-nez v6, :cond_2b

    .line 1107
    .line 1108
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v6

    .line 1112
    if-nez v6, :cond_2b

    .line 1113
    .line 1114
    goto :goto_16

    .line 1115
    :cond_2b
    iget-boolean v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 1116
    .line 1117
    if-nez v6, :cond_2c

    .line 1118
    .line 1119
    goto :goto_16

    .line 1120
    :cond_2c
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v6

    .line 1124
    iput-boolean v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 1125
    .line 1126
    :goto_16
    add-int/lit8 v2, v2, 0x1

    .line 1127
    .line 1128
    goto :goto_15

    .line 1129
    :cond_2d
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 1130
    .line 1131
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 1132
    .line 1133
    iget v6, v0, Lcom/android/server/wm/Transition;->mType:I

    .line 1134
    .line 1135
    invoke-static {v2, v5, v6}, Lcom/android/server/wm/Transition;->calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;I)Ljava/util/ArrayList;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v2

    .line 1139
    iput-object v2, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1140
    .line 1141
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 1142
    .line 1143
    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1144
    .line 1145
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 1146
    .line 1147
    invoke-virtual {v5}, Lcom/android/server/wm/BackNavigationController;->isMonitoringTransition()Z

    .line 1148
    .line 1149
    .line 1150
    move-result v6

    .line 1151
    if-eqz v6, :cond_3d

    .line 1152
    .line 1153
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1154
    .line 1155
    .line 1156
    move-result v6

    .line 1157
    if-eqz v6, :cond_2e

    .line 1158
    .line 1159
    goto/16 :goto_1d

    .line 1160
    .line 1161
    :cond_2e
    iget-object v6, v5, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1162
    .line 1163
    invoke-virtual {v6}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->hasTargetDetached()Z

    .line 1164
    .line 1165
    .line 1166
    move-result v6

    .line 1167
    iget-object v7, v5, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 1168
    .line 1169
    if-eqz v6, :cond_2f

    .line 1170
    .line 1171
    const-string/jumbo v2, "targetDetached"

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v7, v2}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->cancelBackNavigating(Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    goto/16 :goto_1d

    .line 1178
    .line 1179
    :cond_2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1180
    .line 1181
    .line 1182
    move-result v6

    .line 1183
    const/4 v8, 0x1

    .line 1184
    sub-int/2addr v6, v8

    .line 1185
    :goto_17
    if-ltz v6, :cond_33

    .line 1186
    .line 1187
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v8

    .line 1191
    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1192
    .line 1193
    iget-object v8, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1194
    .line 1195
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v9

    .line 1199
    if-nez v9, :cond_30

    .line 1200
    .line 1201
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v9

    .line 1205
    if-nez v9, :cond_30

    .line 1206
    .line 1207
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v9

    .line 1211
    if-nez v9, :cond_30

    .line 1212
    .line 1213
    goto :goto_18

    .line 1214
    :cond_30
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v9

    .line 1218
    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1219
    .line 1220
    invoke-virtual {v9, v8}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 1221
    .line 1222
    .line 1223
    move-result v9

    .line 1224
    const/4 v10, 0x6

    .line 1225
    if-ne v9, v10, :cond_31

    .line 1226
    .line 1227
    goto :goto_18

    .line 1228
    :cond_31
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v9

    .line 1232
    if-eqz v9, :cond_32

    .line 1233
    .line 1234
    iget-object v9, v5, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1235
    .line 1236
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    .line 1238
    .line 1239
    goto :goto_18

    .line 1240
    :cond_32
    iget-object v9, v5, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 1241
    .line 1242
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    .line 1244
    .line 1245
    :goto_18
    add-int/lit8 v6, v6, -0x1

    .line 1246
    .line 1247
    goto :goto_17

    .line 1248
    :cond_33
    iget-object v2, v5, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1249
    .line 1250
    iget-boolean v6, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 1251
    .line 1252
    if-eqz v6, :cond_36

    .line 1253
    .line 1254
    iget-boolean v6, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 1255
    .line 1256
    if-eqz v6, :cond_36

    .line 1257
    .line 1258
    iget v6, v0, Lcom/android/server/wm/Transition;->mType:I

    .line 1259
    .line 1260
    const/4 v8, 0x2

    .line 1261
    if-eq v6, v8, :cond_34

    .line 1262
    .line 1263
    const/4 v8, 0x4

    .line 1264
    if-ne v6, v8, :cond_36

    .line 1265
    .line 1266
    :cond_34
    iget-object v6, v5, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1267
    .line 1268
    iget-object v8, v5, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 1269
    .line 1270
    const/4 v9, 0x0

    .line 1271
    invoke-virtual {v2, v8, v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    .line 1272
    .line 1273
    .line 1274
    move-result v8

    .line 1275
    if-eqz v8, :cond_36

    .line 1276
    .line 1277
    const/4 v8, 0x1

    .line 1278
    invoke-virtual {v2, v6, v8}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    .line 1279
    .line 1280
    .line 1281
    move-result v10

    .line 1282
    if-nez v10, :cond_35

    .line 1283
    .line 1284
    invoke-virtual {v2, v6, v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v2

    .line 1288
    if-eqz v2, :cond_36

    .line 1289
    .line 1290
    :cond_35
    const/4 v2, 0x1

    .line 1291
    goto :goto_19

    .line 1292
    :cond_36
    const/4 v2, 0x0

    .line 1293
    :goto_19
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 1294
    .line 1295
    const/4 v8, 0x0

    .line 1296
    aget-boolean v6, v6, v8

    .line 1297
    .line 1298
    if-eqz v6, :cond_37

    .line 1299
    .line 1300
    iget-object v6, v5, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1301
    .line 1302
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v6

    .line 1306
    iget-object v8, v5, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 1307
    .line 1308
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v8

    .line 1312
    iget-object v9, v5, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1313
    .line 1314
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v9

    .line 1318
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1319
    .line 1320
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v11

    .line 1324
    filled-new-array {v6, v8, v9, v11}, [Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v15

    .line 1328
    const-string/jumbo v14, "onTransactionReady, opening: %s, closing: %s, animating: %s, match: %b"

    .line 1329
    .line 1330
    .line 1331
    const-wide v11, -0x59411bcd8bffc571L

    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    const/16 v13, 0xc0

    .line 1337
    .line 1338
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1339
    .line 1340
    .line 1341
    :cond_37
    if-nez v2, :cond_38

    .line 1342
    .line 1343
    iget-object v2, v5, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1344
    .line 1345
    iget-object v6, v5, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 1346
    .line 1347
    invoke-static {v7, v2, v6}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->-$$Nest$monTransitionReadyWhileNavigate(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1348
    .line 1349
    .line 1350
    goto :goto_1c

    .line 1351
    :cond_38
    iget-object v2, v5, Lcom/android/server/wm/BackNavigationController;->mWaitTransitionFinish:Lcom/android/server/wm/Transition;

    .line 1352
    .line 1353
    if-eqz v2, :cond_39

    .line 1354
    .line 1355
    const-string v2, "CoreBackPreview"

    .line 1356
    .line 1357
    const-string v6, "Gesture animation is applied on another transition?"

    .line 1358
    .line 1359
    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    .line 1361
    .line 1362
    :cond_39
    iput-object v0, v5, Lcom/android/server/wm/BackNavigationController;->mWaitTransitionFinish:Lcom/android/server/wm/Transition;

    .line 1363
    .line 1364
    iget-object v2, v5, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1365
    .line 1366
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1367
    .line 1368
    .line 1369
    move-result v2

    .line 1370
    const/4 v6, 0x1

    .line 1371
    sub-int/2addr v2, v6

    .line 1372
    :goto_1a
    if-ltz v2, :cond_3b

    .line 1373
    .line 1374
    iget-object v7, v5, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1375
    .line 1376
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v7

    .line 1380
    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 1381
    .line 1382
    iget-object v8, v5, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1383
    .line 1384
    invoke-virtual {v8, v7, v6}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    .line 1385
    .line 1386
    .line 1387
    move-result v7

    .line 1388
    if-eqz v7, :cond_3a

    .line 1389
    .line 1390
    iget-object v2, v5, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1391
    .line 1392
    invoke-virtual {v2, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V

    .line 1393
    .line 1394
    .line 1395
    goto :goto_1b

    .line 1396
    :cond_3a
    add-int/lit8 v2, v2, -0x1

    .line 1397
    .line 1398
    const/4 v6, 0x1

    .line 1399
    goto :goto_1a

    .line 1400
    :cond_3b
    :goto_1b
    iget-object v2, v5, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1401
    .line 1402
    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 1403
    .line 1404
    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1405
    .line 1406
    if-eqz v2, :cond_3c

    .line 1407
    .line 1408
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1409
    .line 1410
    .line 1411
    iget-object v2, v5, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1412
    .line 1413
    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 1414
    .line 1415
    const/4 v6, 0x0

    .line 1416
    iput-object v6, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1417
    .line 1418
    :cond_3c
    iget-object v2, v5, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1419
    .line 1420
    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 1421
    .line 1422
    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 1423
    .line 1424
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v2

    .line 1428
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1429
    .line 1430
    .line 1431
    :goto_1c
    iget-object v2, v5, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1432
    .line 1433
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1434
    .line 1435
    .line 1436
    iget-object v2, v5, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 1437
    .line 1438
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1439
    .line 1440
    .line 1441
    :cond_3d
    :goto_1d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 1442
    .line 1443
    if-eqz v2, :cond_41

    .line 1444
    .line 1445
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 1446
    .line 1447
    if-nez v2, :cond_41

    .line 1448
    .line 1449
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 1450
    .line 1451
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 1452
    .line 1453
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1454
    .line 1455
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1456
    .line 1457
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1461
    .line 1462
    .line 1463
    move-result v7

    .line 1464
    const/4 v8, 0x1

    .line 1465
    sub-int/2addr v7, v8

    .line 1466
    :goto_1e
    if-ltz v7, :cond_41

    .line 1467
    .line 1468
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v8

    .line 1472
    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1473
    .line 1474
    iget v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 1475
    .line 1476
    const/4 v10, 0x2

    .line 1477
    if-ne v9, v10, :cond_3e

    .line 1478
    .line 1479
    goto :goto_1f

    .line 1480
    :cond_3e
    iget-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1481
    .line 1482
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 1483
    .line 1484
    .line 1485
    move-result v10

    .line 1486
    if-eqz v10, :cond_3f

    .line 1487
    .line 1488
    goto :goto_1f

    .line 1489
    :cond_3f
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v9

    .line 1493
    if-eqz v9, :cond_40

    .line 1494
    .line 1495
    iget-boolean v10, v9, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 1496
    .line 1497
    if-nez v10, :cond_40

    .line 1498
    .line 1499
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1500
    .line 1501
    .line 1502
    move-result v10

    .line 1503
    if-nez v10, :cond_40

    .line 1504
    .line 1505
    new-instance v10, Landroid/util/ArraySet;

    .line 1506
    .line 1507
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1508
    .line 1509
    .line 1510
    new-instance v11, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;

    .line 1511
    .line 1512
    invoke-direct {v11, v10}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;)V

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 1519
    .line 1520
    .line 1521
    move-result v10

    .line 1522
    const/4 v11, 0x1

    .line 1523
    if-le v10, v11, :cond_40

    .line 1524
    .line 1525
    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 1526
    .line 1527
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 1528
    .line 1529
    .line 1530
    new-instance v11, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;

    .line 1531
    .line 1532
    invoke-direct {v11, v2, v9, v8}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SnapshotController;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v6, v10, v11}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 1536
    .line 1537
    .line 1538
    :cond_40
    :goto_1f
    add-int/lit8 v7, v7, -0x1

    .line 1539
    .line 1540
    goto :goto_1e

    .line 1541
    :cond_41
    iget v2, v0, Lcom/android/server/wm/Transition;->mType:I

    .line 1542
    .line 1543
    iget v5, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1544
    .line 1545
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1546
    .line 1547
    invoke-static {v2, v5, v6, v1}, Lcom/android/server/wm/Transition;->calculateTransitionInfo(IILjava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)Landroid/window/TransitionInfo;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v2

    .line 1551
    iget v5, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1552
    .line 1553
    invoke-virtual {v2, v5}, Landroid/window/TransitionInfo;->setDebugId(I)V

    .line 1554
    .line 1555
    .line 1556
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 1557
    .line 1558
    const/4 v6, 0x0

    .line 1559
    const/4 v7, -0x1

    .line 1560
    :goto_20
    iget-object v8, v5, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 1561
    .line 1562
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1563
    .line 1564
    .line 1565
    move-result v8

    .line 1566
    if-ge v6, v8, :cond_4b

    .line 1567
    .line 1568
    iget-object v8, v5, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 1569
    .line 1570
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v8

    .line 1574
    if-ne v8, v0, :cond_42

    .line 1575
    .line 1576
    goto/16 :goto_24

    .line 1577
    .line 1578
    :cond_42
    iget-object v8, v5, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 1579
    .line 1580
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v8

    .line 1584
    check-cast v8, Lcom/android/server/wm/Transition;

    .line 1585
    .line 1586
    iget v9, v8, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 1587
    .line 1588
    const/4 v10, 0x1

    .line 1589
    if-ne v9, v10, :cond_43

    .line 1590
    .line 1591
    iget v11, v0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 1592
    .line 1593
    if-ne v11, v10, :cond_43

    .line 1594
    .line 1595
    goto :goto_24

    .line 1596
    :cond_43
    const/4 v10, 0x2

    .line 1597
    if-ne v9, v10, :cond_45

    .line 1598
    .line 1599
    invoke-virtual {v8}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    .line 1600
    .line 1601
    .line 1602
    move-result v9

    .line 1603
    if-eqz v9, :cond_45

    .line 1604
    .line 1605
    iget v9, v0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 1606
    .line 1607
    if-ne v9, v10, :cond_44

    .line 1608
    .line 1609
    goto :goto_23

    .line 1610
    :cond_44
    move-object v9, v8

    .line 1611
    move-object v8, v0

    .line 1612
    goto :goto_21

    .line 1613
    :cond_45
    iget v9, v0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 1614
    .line 1615
    if-ne v9, v10, :cond_48

    .line 1616
    .line 1617
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    .line 1618
    .line 1619
    .line 1620
    move-result v9

    .line 1621
    if-eqz v9, :cond_48

    .line 1622
    .line 1623
    move-object v9, v0

    .line 1624
    :goto_21
    const/4 v10, 0x0

    .line 1625
    :goto_22
    iget-object v11, v8, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1626
    .line 1627
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1628
    .line 1629
    .line 1630
    move-result v11

    .line 1631
    if-ge v10, v11, :cond_4a

    .line 1632
    .line 1633
    iget-object v11, v8, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1634
    .line 1635
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v11

    .line 1639
    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1640
    .line 1641
    iget-object v11, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1642
    .line 1643
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v12

    .line 1647
    if-nez v12, :cond_46

    .line 1648
    .line 1649
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v13

    .line 1653
    if-nez v13, :cond_46

    .line 1654
    .line 1655
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v11

    .line 1659
    if-nez v11, :cond_46

    .line 1660
    .line 1661
    goto :goto_23

    .line 1662
    :cond_46
    if-eqz v12, :cond_47

    .line 1663
    .line 1664
    invoke-virtual {v9, v12}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v11

    .line 1668
    if-eqz v11, :cond_47

    .line 1669
    .line 1670
    goto :goto_23

    .line 1671
    :cond_47
    add-int/lit8 v10, v10, 0x1

    .line 1672
    .line 1673
    goto :goto_22

    .line 1674
    :cond_48
    :goto_23
    if-ltz v7, :cond_49

    .line 1675
    .line 1676
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 1677
    .line 1678
    const/4 v6, 0x1

    .line 1679
    goto :goto_25

    .line 1680
    :cond_49
    iget-object v7, v5, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 1681
    .line 1682
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v7

    .line 1686
    check-cast v7, Lcom/android/server/wm/Transition;

    .line 1687
    .line 1688
    iget v7, v7, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    .line 1689
    .line 1690
    :cond_4a
    :goto_24
    add-int/lit8 v6, v6, 0x1

    .line 1691
    .line 1692
    goto/16 :goto_20

    .line 1693
    .line 1694
    :cond_4b
    const/4 v6, 0x0

    .line 1695
    :goto_25
    if-eqz v6, :cond_4c

    .line 1696
    .line 1697
    const/4 v7, 0x0

    .line 1698
    :cond_4c
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 1699
    .line 1700
    if-gez v7, :cond_4e

    .line 1701
    .line 1702
    iget v7, v5, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    .line 1703
    .line 1704
    if-lez v7, :cond_4e

    .line 1705
    .line 1706
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 1707
    .line 1708
    if-eqz v9, :cond_4d

    .line 1709
    .line 1710
    const/4 v9, 0x1

    .line 1711
    aget-boolean v10, v8, v9

    .line 1712
    .line 1713
    if-eqz v10, :cond_4e

    .line 1714
    .line 1715
    iget v9, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1716
    .line 1717
    int-to-long v9, v9

    .line 1718
    int-to-long v11, v7

    .line 1719
    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1720
    .line 1721
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v9

    .line 1725
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v10

    .line 1729
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v22

    .line 1733
    const-string v21, "Playing #%d in parallel on track #%d"

    .line 1734
    .line 1735
    const-wide v18, -0x5ca0447c86b8c654L

    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    const/16 v20, 0x5

    .line 1741
    .line 1742
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1743
    .line 1744
    .line 1745
    goto :goto_26

    .line 1746
    :cond_4d
    const/4 v9, 0x1

    .line 1747
    aget-boolean v10, v3, v9

    .line 1748
    .line 1749
    if-eqz v10, :cond_4e

    .line 1750
    .line 1751
    iget v9, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1752
    .line 1753
    int-to-long v9, v9

    .line 1754
    int-to-long v11, v7

    .line 1755
    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1756
    .line 1757
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v9

    .line 1761
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v10

    .line 1765
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v22

    .line 1769
    const/16 v21, 0x0

    .line 1770
    .line 1771
    const-wide v18, -0x627f3fcbd5f1cfaeL    # -1.420325404709624E-166

    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    const/16 v20, 0x5

    .line 1777
    .line 1778
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1779
    .line 1780
    .line 1781
    :cond_4e
    :goto_26
    iput v7, v0, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    .line 1782
    .line 1783
    invoke-virtual {v2, v7}, Landroid/window/TransitionInfo;->setTrack(I)V

    .line 1784
    .line 1785
    .line 1786
    iget v9, v5, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    .line 1787
    .line 1788
    const/4 v10, 0x1

    .line 1789
    add-int/2addr v7, v10

    .line 1790
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    .line 1791
    .line 1792
    .line 1793
    move-result v7

    .line 1794
    iput v7, v5, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    .line 1795
    .line 1796
    if-eqz v6, :cond_50

    .line 1797
    .line 1798
    if-le v7, v10, :cond_50

    .line 1799
    .line 1800
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 1801
    .line 1802
    .line 1803
    move-result v5

    .line 1804
    const/high16 v6, 0x200000

    .line 1805
    .line 1806
    or-int/2addr v5, v6

    .line 1807
    invoke-virtual {v2, v5}, Landroid/window/TransitionInfo;->setFlags(I)V

    .line 1808
    .line 1809
    .line 1810
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 1811
    .line 1812
    if-eqz v5, :cond_4f

    .line 1813
    .line 1814
    aget-boolean v5, v8, v10

    .line 1815
    .line 1816
    if-eqz v5, :cond_50

    .line 1817
    .line 1818
    iget v5, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1819
    .line 1820
    int-to-long v5, v5

    .line 1821
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1822
    .line 1823
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v5

    .line 1827
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v14

    .line 1831
    const-string v13, "Marking #%d animation as SYNC."

    .line 1832
    .line 1833
    const-wide v10, 0x7ae0338c9b1732cbL    # 7.528657044491364E283

    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    const/4 v12, 0x1

    .line 1839
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1840
    .line 1841
    .line 1842
    goto :goto_27

    .line 1843
    :cond_4f
    move v5, v10

    .line 1844
    aget-boolean v6, v3, v5

    .line 1845
    .line 1846
    if-eqz v6, :cond_50

    .line 1847
    .line 1848
    iget v5, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1849
    .line 1850
    int-to-long v5, v5

    .line 1851
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1852
    .line 1853
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v5

    .line 1857
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v14

    .line 1861
    const/4 v13, 0x0

    .line 1862
    const-wide v10, -0x6633d5a00ae6cf2cL

    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    const/4 v12, 0x1

    .line 1868
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1869
    .line 1870
    .line 1871
    :cond_50
    :goto_27
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 1872
    .line 1873
    iget-object v6, v5, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1874
    .line 1875
    if-ne v0, v6, :cond_52

    .line 1876
    .line 1877
    const/4 v6, 0x0

    .line 1878
    iput-object v6, v5, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1879
    .line 1880
    iget-object v6, v5, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 1881
    .line 1882
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1883
    .line 1884
    .line 1885
    move-result v6

    .line 1886
    if-nez v6, :cond_51

    .line 1887
    .line 1888
    iget-object v6, v5, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 1889
    .line 1890
    const/4 v7, 0x0

    .line 1891
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v6

    .line 1895
    check-cast v6, Lcom/android/server/wm/Transition;

    .line 1896
    .line 1897
    iput-object v6, v5, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1898
    .line 1899
    :cond_51
    iget-object v6, v5, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1900
    .line 1901
    if-nez v6, :cond_53

    .line 1902
    .line 1903
    iget-object v6, v5, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    .line 1904
    .line 1905
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 1906
    .line 1907
    .line 1908
    goto :goto_28

    .line 1909
    :cond_52
    iget-object v6, v5, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 1910
    .line 1911
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1912
    .line 1913
    .line 1914
    move-result v6

    .line 1915
    if-eqz v6, :cond_80

    .line 1916
    .line 1917
    :cond_53
    :goto_28
    iget-object v6, v5, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 1918
    .line 1919
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1920
    .line 1921
    .line 1922
    const/4 v6, 0x1

    .line 1923
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TransitionController;->updateRunningRemoteAnimation(Z)V

    .line 1924
    .line 1925
    .line 1926
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 1927
    .line 1928
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1929
    .line 1930
    .line 1931
    const/4 v9, 0x0

    .line 1932
    :goto_29
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 1933
    .line 1934
    .line 1935
    move-result v5

    .line 1936
    if-ge v9, v5, :cond_54

    .line 1937
    .line 1938
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 1939
    .line 1940
    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1941
    .line 1942
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1943
    .line 1944
    invoke-virtual {v2, v9}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v6

    .line 1948
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    .line 1949
    .line 1950
    .line 1951
    move-result v6

    .line 1952
    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v5

    .line 1956
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 1957
    .line 1958
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    .line 1960
    .line 1961
    add-int/lit8 v9, v9, 0x1

    .line 1962
    .line 1963
    goto :goto_29

    .line 1964
    :cond_54
    const/4 v9, 0x0

    .line 1965
    :goto_2a
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1966
    .line 1967
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1968
    .line 1969
    .line 1970
    move-result v5

    .line 1971
    if-ge v9, v5, :cond_59

    .line 1972
    .line 1973
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1974
    .line 1975
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v5

    .line 1979
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1980
    .line 1981
    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1982
    .line 1983
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v6

    .line 1987
    if-eqz v6, :cond_55

    .line 1988
    .line 1989
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 1990
    .line 1991
    .line 1992
    move-result v5

    .line 1993
    if-eqz v5, :cond_58

    .line 1994
    .line 1995
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1996
    .line 1997
    .line 1998
    move-result v5

    .line 1999
    if-eqz v5, :cond_58

    .line 2000
    .line 2001
    iget-object v5, v6, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 2002
    .line 2003
    if-eqz v5, :cond_58

    .line 2004
    .line 2005
    iget-object v5, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2006
    .line 2007
    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2008
    .line 2009
    .line 2010
    goto :goto_2b

    .line 2011
    :cond_55
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 2012
    .line 2013
    .line 2014
    move-result-object v5

    .line 2015
    if-nez v5, :cond_56

    .line 2016
    .line 2017
    goto :goto_2b

    .line 2018
    :cond_56
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2019
    .line 2020
    .line 2021
    move-result v6

    .line 2022
    if-eqz v6, :cond_57

    .line 2023
    .line 2024
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2025
    .line 2026
    iget-object v6, v6, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    .line 2027
    .line 2028
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2029
    .line 2030
    .line 2031
    goto :goto_2b

    .line 2032
    :cond_57
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2033
    .line 2034
    iget-object v6, v6, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    .line 2035
    .line 2036
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    .line 2038
    .line 2039
    :cond_58
    :goto_2b
    add-int/lit8 v9, v9, 0x1

    .line 2040
    .line 2041
    goto :goto_2a

    .line 2042
    :cond_59
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2043
    .line 2044
    if-nez v5, :cond_5a

    .line 2045
    .line 2046
    goto/16 :goto_31

    .line 2047
    .line 2048
    :cond_5a
    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    .line 2049
    .line 2050
    .line 2051
    move-result v5

    .line 2052
    const/4 v6, 0x1

    .line 2053
    if-nez v5, :cond_5b

    .line 2054
    .line 2055
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2056
    .line 2057
    invoke-virtual {v2, v5}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 2058
    .line 2059
    .line 2060
    goto :goto_2d

    .line 2061
    :cond_5b
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v5

    .line 2065
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 2066
    .line 2067
    .line 2068
    move-result v7

    .line 2069
    sub-int/2addr v7, v6

    .line 2070
    :goto_2c
    if-ltz v7, :cond_5d

    .line 2071
    .line 2072
    iget-object v9, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2073
    .line 2074
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v9

    .line 2078
    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2079
    .line 2080
    iget-object v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2081
    .line 2082
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2083
    .line 2084
    .line 2085
    move-result-object v9

    .line 2086
    if-eqz v9, :cond_5c

    .line 2087
    .line 2088
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2089
    .line 2090
    .line 2091
    move-result-object v9

    .line 2092
    check-cast v9, Landroid/window/TransitionInfo$Change;

    .line 2093
    .line 2094
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2095
    .line 2096
    invoke-virtual {v9, v10}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 2097
    .line 2098
    .line 2099
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2100
    .line 2101
    .line 2102
    move-result-object v9

    .line 2103
    check-cast v9, Landroid/window/TransitionInfo$Change;

    .line 2104
    .line 2105
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2106
    .line 2107
    invoke-virtual {v10}, Landroid/window/TransitionInfo$AnimationOptions;->getBackgroundColor()I

    .line 2108
    .line 2109
    .line 2110
    move-result v10

    .line 2111
    invoke-virtual {v9, v10}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    .line 2112
    .line 2113
    .line 2114
    :cond_5c
    add-int/lit8 v7, v7, -0x1

    .line 2115
    .line 2116
    goto :goto_2c

    .line 2117
    :cond_5d
    :goto_2d
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2118
    .line 2119
    invoke-virtual {v5}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 2120
    .line 2121
    .line 2122
    move-result v5

    .line 2123
    const/16 v7, 0xc

    .line 2124
    .line 2125
    if-eq v5, v7, :cond_5e

    .line 2126
    .line 2127
    goto :goto_31

    .line 2128
    :cond_5e
    const/4 v5, 0x0

    .line 2129
    :goto_2e
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2130
    .line 2131
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 2132
    .line 2133
    .line 2134
    move-result v7

    .line 2135
    if-ge v5, v7, :cond_62

    .line 2136
    .line 2137
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2138
    .line 2139
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v7

    .line 2143
    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2144
    .line 2145
    iget-object v7, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2146
    .line 2147
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v7

    .line 2151
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v9

    .line 2155
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v9

    .line 2159
    check-cast v9, Landroid/window/TransitionInfo$Change;

    .line 2160
    .line 2161
    if-eqz v7, :cond_61

    .line 2162
    .line 2163
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 2164
    .line 2165
    .line 2166
    move-result v10

    .line 2167
    if-eq v10, v6, :cond_5f

    .line 2168
    .line 2169
    goto :goto_30

    .line 2170
    :cond_5f
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 2171
    .line 2172
    .line 2173
    move-result v5

    .line 2174
    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2175
    .line 2176
    iget-object v7, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2177
    .line 2178
    iget v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 2179
    .line 2180
    if-ne v6, v7, :cond_60

    .line 2181
    .line 2182
    const/16 v6, 0x1000

    .line 2183
    .line 2184
    goto :goto_2f

    .line 2185
    :cond_60
    const/16 v6, 0x2000

    .line 2186
    .line 2187
    :goto_2f
    or-int/2addr v5, v6

    .line 2188
    invoke-virtual {v9, v5}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 2189
    .line 2190
    .line 2191
    goto :goto_31

    .line 2192
    :cond_61
    :goto_30
    add-int/lit8 v5, v5, 0x1

    .line 2193
    .line 2194
    goto :goto_2e

    .line 2195
    :cond_62
    :goto_31
    const/4 v9, 0x0

    .line 2196
    :goto_32
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2197
    .line 2198
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2199
    .line 2200
    .line 2201
    move-result v5

    .line 2202
    if-ge v9, v5, :cond_64

    .line 2203
    .line 2204
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2205
    .line 2206
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2207
    .line 2208
    .line 2209
    move-result-object v5

    .line 2210
    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 2211
    .line 2212
    invoke-virtual {v0, v5, v2}, Lcom/android/server/wm/Transition;->handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V

    .line 2213
    .line 2214
    .line 2215
    iget v5, v0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 2216
    .line 2217
    const/4 v6, -0x1

    .line 2218
    if-eq v5, v6, :cond_63

    .line 2219
    .line 2220
    goto :goto_33

    .line 2221
    :cond_63
    add-int/lit8 v9, v9, 0x1

    .line 2222
    .line 2223
    goto :goto_32

    .line 2224
    :cond_64
    :goto_33
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 2225
    .line 2226
    invoke-virtual {v0, v5}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 2227
    .line 2228
    .line 2229
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    .line 2230
    .line 2231
    if-eqz v5, :cond_65

    .line 2232
    .line 2233
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 2234
    .line 2235
    if-eqz v5, :cond_65

    .line 2236
    .line 2237
    invoke-virtual {v2, v5}, Landroid/window/TransitionInfo;->setRemoteTransition(Landroid/window/RemoteTransition;)V

    .line 2238
    .line 2239
    .line 2240
    :cond_65
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2241
    .line 2242
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 2243
    .line 2244
    .line 2245
    move-result v5

    .line 2246
    const/4 v6, 0x1

    .line 2247
    sub-int/2addr v5, v6

    .line 2248
    :goto_34
    if-ltz v5, :cond_69

    .line 2249
    .line 2250
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2251
    .line 2252
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v6

    .line 2256
    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 2257
    .line 2258
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2259
    .line 2260
    .line 2261
    move-result-object v6

    .line 2262
    if-eqz v6, :cond_68

    .line 2263
    .line 2264
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2265
    .line 2266
    .line 2267
    move-result v7

    .line 2268
    if-nez v7, :cond_66

    .line 2269
    .line 2270
    goto :goto_36

    .line 2271
    :cond_66
    iget-object v7, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2272
    .line 2273
    invoke-virtual {v1, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2274
    .line 2275
    .line 2276
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2277
    .line 2278
    .line 2279
    move-result-object v6

    .line 2280
    :goto_35
    if-eqz v6, :cond_68

    .line 2281
    .line 2282
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2283
    .line 2284
    invoke-static {v6, v7}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    .line 2285
    .line 2286
    .line 2287
    move-result v7

    .line 2288
    if-nez v7, :cond_68

    .line 2289
    .line 2290
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v7

    .line 2294
    if-eqz v7, :cond_67

    .line 2295
    .line 2296
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 2297
    .line 2298
    .line 2299
    move-result-object v7

    .line 2300
    invoke-virtual {v1, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2301
    .line 2302
    .line 2303
    :cond_67
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v6

    .line 2307
    goto :goto_35

    .line 2308
    :cond_68
    :goto_36
    add-int/lit8 v5, v5, -0x1

    .line 2309
    .line 2310
    goto :goto_34

    .line 2311
    :cond_69
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 2312
    .line 2313
    if-nez v5, :cond_6c

    .line 2314
    .line 2315
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2316
    .line 2317
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 2318
    .line 2319
    .line 2320
    move-result v5

    .line 2321
    const/4 v6, 0x1

    .line 2322
    sub-int/2addr v5, v6

    .line 2323
    :goto_37
    if-ltz v5, :cond_6c

    .line 2324
    .line 2325
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2326
    .line 2327
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v6

    .line 2331
    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 2332
    .line 2333
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 2334
    .line 2335
    .line 2336
    move-result-object v7

    .line 2337
    if-eqz v7, :cond_6b

    .line 2338
    .line 2339
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2340
    .line 2341
    .line 2342
    move-result v7

    .line 2343
    if-nez v7, :cond_6a

    .line 2344
    .line 2345
    goto :goto_38

    .line 2346
    :cond_6a
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    .line 2347
    .line 2348
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 2349
    .line 2350
    .line 2351
    move-result-object v6

    .line 2352
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2353
    .line 2354
    .line 2355
    :cond_6b
    :goto_38
    add-int/lit8 v5, v5, -0x1

    .line 2356
    .line 2357
    goto :goto_37

    .line 2358
    :cond_6c
    const/4 v9, 0x0

    .line 2359
    :goto_39
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2360
    .line 2361
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2362
    .line 2363
    .line 2364
    move-result v5

    .line 2365
    if-ge v9, v5, :cond_6e

    .line 2366
    .line 2367
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2368
    .line 2369
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2370
    .line 2371
    .line 2372
    move-result-object v5

    .line 2373
    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 2374
    .line 2375
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 2376
    .line 2377
    .line 2378
    move-result-object v6

    .line 2379
    if-eqz v6, :cond_6d

    .line 2380
    .line 2381
    iget-object v7, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2382
    .line 2383
    invoke-static {v5, v7}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    .line 2384
    .line 2385
    .line 2386
    move-result v5

    .line 2387
    if-eqz v5, :cond_6d

    .line 2388
    .line 2389
    invoke-virtual {v6, v1}, Lcom/android/server/wm/AsyncRotationController;->setupStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 2390
    .line 2391
    .line 2392
    :cond_6d
    add-int/lit8 v9, v9, 0x1

    .line 2393
    .line 2394
    goto :goto_39

    .line 2395
    :cond_6e
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2396
    .line 2397
    invoke-virtual {v0, v5, v2}, Lcom/android/server/wm/Transition;->buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V

    .line 2398
    .line 2399
    .line 2400
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2401
    .line 2402
    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2403
    .line 2404
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2405
    .line 2406
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 2407
    .line 2408
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 2409
    .line 2410
    .line 2411
    move-result-object v5

    .line 2412
    check-cast v5, Landroid/view/SurfaceControl$Transaction;

    .line 2413
    .line 2414
    iput-object v5, v0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2415
    .line 2416
    invoke-static {v5, v2}, Lcom/android/server/wm/Transition;->buildCleanupTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V

    .line 2417
    .line 2418
    .line 2419
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2420
    .line 2421
    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    .line 2422
    .line 2423
    .line 2424
    move-result-object v5

    .line 2425
    if-eqz v5, :cond_76

    .line 2426
    .line 2427
    iget-boolean v5, v0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    .line 2428
    .line 2429
    if-eqz v5, :cond_76

    .line 2430
    .line 2431
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2432
    .line 2433
    iget-wide v6, v0, Lcom/android/server/wm/Transition;->mStatusBarTransitionDelay:J

    .line 2434
    .line 2435
    const/4 v9, 0x0

    .line 2436
    :goto_3a
    iget-object v10, v5, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 2437
    .line 2438
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 2439
    .line 2440
    .line 2441
    move-result v10

    .line 2442
    if-ge v9, v10, :cond_6f

    .line 2443
    .line 2444
    iget-object v10, v5, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 2445
    .line 2446
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2447
    .line 2448
    .line 2449
    move-result-object v10

    .line 2450
    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 2451
    .line 2452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2453
    .line 2454
    .line 2455
    move-result-wide v11

    .line 2456
    add-long/2addr v11, v6

    .line 2457
    invoke-virtual {v10, v11, v12}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(J)I

    .line 2458
    .line 2459
    .line 2460
    add-int/lit8 v9, v9, 0x1

    .line 2461
    .line 2462
    goto :goto_3a

    .line 2463
    :cond_6f
    :try_start_0
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 2464
    .line 2465
    if-eqz v5, :cond_70

    .line 2466
    .line 2467
    const/4 v5, 0x1

    .line 2468
    aget-boolean v3, v8, v5

    .line 2469
    .line 2470
    if-eqz v3, :cond_71

    .line 2471
    .line 2472
    const-string v3, "    "

    .line 2473
    .line 2474
    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 2475
    .line 2476
    .line 2477
    move-result-object v3

    .line 2478
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2479
    .line 2480
    .line 2481
    move-result-object v3

    .line 2482
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2483
    .line 2484
    const-string v9, "Calling onTransitionReady: %s"

    .line 2485
    .line 2486
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 2487
    .line 2488
    .line 2489
    move-result-object v10

    .line 2490
    const-wide v6, 0x64fec2389243d65L

    .line 2491
    .line 2492
    .line 2493
    .line 2494
    .line 2495
    const/4 v8, 0x0

    .line 2496
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2497
    .line 2498
    .line 2499
    goto :goto_3b

    .line 2500
    :catch_0
    const/4 v3, 0x0

    .line 2501
    goto :goto_3d

    .line 2502
    :cond_70
    const/4 v5, 0x1

    .line 2503
    aget-boolean v3, v3, v5

    .line 2504
    .line 2505
    if-eqz v3, :cond_71

    .line 2506
    .line 2507
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2508
    .line 2509
    .line 2510
    move-result-object v3

    .line 2511
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2512
    .line 2513
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 2514
    .line 2515
    .line 2516
    move-result-object v10

    .line 2517
    const/4 v8, 0x0

    .line 2518
    const/4 v9, 0x0

    .line 2519
    const-wide v6, -0x4a41677db194c275L    # -8.177520965211613E-50

    .line 2520
    .line 2521
    .line 2522
    .line 2523
    .line 2524
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2525
    .line 2526
    .line 2527
    :cond_71
    :goto_3b
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 2528
    .line 2529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2530
    .line 2531
    .line 2532
    move-result-wide v5

    .line 2533
    iput-wide v5, v3, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 2534
    .line 2535
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 2536
    .line 2537
    iput-object v2, v3, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    .line 2538
    .line 2539
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2540
    .line 2541
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    .line 2542
    .line 2543
    .line 2544
    move-result-object v3

    .line 2545
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 2546
    .line 2547
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2548
    .line 2549
    invoke-interface {v3, v5, v2, v1, v6}, Landroid/window/ITransitionPlayer;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 2550
    .line 2551
    .line 2552
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 2553
    .line 2554
    if-eqz v1, :cond_72

    .line 2555
    .line 2556
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2557
    .line 2558
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2559
    .line 2560
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2561
    .line 2562
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2563
    .line 2564
    if-eqz v1, :cond_72

    .line 2565
    .line 2566
    const/4 v3, 0x0

    .line 2567
    :try_start_1
    invoke-virtual {v1, v3, v3}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 2568
    .line 2569
    .line 2570
    goto :goto_3c

    .line 2571
    :cond_72
    const/4 v3, 0x0

    .line 2572
    :goto_3c
    const-wide/16 v5, 0x20

    .line 2573
    .line 2574
    invoke-static {v5, v6}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 2575
    .line 2576
    .line 2577
    move-result v1

    .line 2578
    if-eqz v1, :cond_73

    .line 2579
    .line 2580
    const-string/jumbo v1, "playing"

    .line 2581
    .line 2582
    .line 2583
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2584
    .line 2585
    .line 2586
    move-result v7

    .line 2587
    invoke-static {v5, v6, v4, v1, v7}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2588
    .line 2589
    .line 2590
    goto :goto_3e

    .line 2591
    :catch_1
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Transition;->postCleanupOnFailure()V

    .line 2592
    .line 2593
    .line 2594
    :cond_73
    :goto_3e
    move v5, v3

    .line 2595
    :goto_3f
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2596
    .line 2597
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2598
    .line 2599
    .line 2600
    move-result v1

    .line 2601
    if-ge v5, v1, :cond_75

    .line 2602
    .line 2603
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2604
    .line 2605
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2606
    .line 2607
    .line 2608
    move-result-object v1

    .line 2609
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2610
    .line 2611
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2612
    .line 2613
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 2614
    .line 2615
    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 2616
    .line 2617
    .line 2618
    move-result v4

    .line 2619
    if-eqz v4, :cond_74

    .line 2620
    .line 2621
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2622
    .line 2623
    iget v4, v0, Lcom/android/server/wm/Transition;->mType:I

    .line 2624
    .line 2625
    iget v6, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 2626
    .line 2627
    invoke-virtual {v3, v1, v4, v6}, Lcom/android/server/wm/AccessibilityController;->onWMTransition(III)V

    .line 2628
    .line 2629
    .line 2630
    :cond_74
    add-int/lit8 v5, v5, 0x1

    .line 2631
    .line 2632
    goto :goto_3f

    .line 2633
    :cond_75
    :goto_40
    const/4 v1, 0x0

    .line 2634
    goto :goto_41

    .line 2635
    :cond_76
    iget-boolean v1, v0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    .line 2636
    .line 2637
    if-nez v1, :cond_77

    .line 2638
    .line 2639
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 2640
    .line 2641
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    .line 2642
    .line 2643
    .line 2644
    move-result-wide v4

    .line 2645
    iput-wide v4, v1, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 2646
    .line 2647
    const/4 v1, 0x1

    .line 2648
    aget-boolean v1, v3, v1

    .line 2649
    .line 2650
    if-eqz v1, :cond_77

    .line 2651
    .line 2652
    iget v1, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 2653
    .line 2654
    int-to-long v3, v1

    .line 2655
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2656
    .line 2657
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2658
    .line 2659
    .line 2660
    move-result-object v1

    .line 2661
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 2662
    .line 2663
    .line 2664
    move-result-object v10

    .line 2665
    const/4 v8, 0x1

    .line 2666
    const/4 v9, 0x0

    .line 2667
    const-wide v6, 0x1966d582a0723dcfL

    .line 2668
    .line 2669
    .line 2670
    .line 2671
    .line 2672
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2673
    .line 2674
    .line 2675
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Transition;->postCleanupOnFailure()V

    .line 2676
    .line 2677
    .line 2678
    goto :goto_40

    .line 2679
    :goto_41
    iput-object v1, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2680
    .line 2681
    new-instance v1, Landroid/util/ArrayMap;

    .line 2682
    .line 2683
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 2684
    .line 2685
    .line 2686
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2687
    .line 2688
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 2689
    .line 2690
    .line 2691
    move-result v3

    .line 2692
    const/4 v4, 0x1

    .line 2693
    sub-int/2addr v3, v4

    .line 2694
    :goto_42
    if-ltz v3, :cond_7c

    .line 2695
    .line 2696
    iget-object v5, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2697
    .line 2698
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2699
    .line 2700
    .line 2701
    move-result-object v5

    .line 2702
    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 2703
    .line 2704
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2705
    .line 2706
    .line 2707
    move-result-object v5

    .line 2708
    if-eqz v5, :cond_7b

    .line 2709
    .line 2710
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2711
    .line 2712
    .line 2713
    move-result v6

    .line 2714
    if-nez v6, :cond_78

    .line 2715
    .line 2716
    goto :goto_44

    .line 2717
    :cond_78
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2718
    .line 2719
    instance-of v6, v6, Lcom/android/server/wm/SplashScreenStartingData;

    .line 2720
    .line 2721
    if-eqz v6, :cond_79

    .line 2722
    .line 2723
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    .line 2724
    .line 2725
    if-nez v6, :cond_79

    .line 2726
    .line 2727
    move v6, v4

    .line 2728
    goto :goto_43

    .line 2729
    :cond_79
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 2730
    .line 2731
    .line 2732
    move-result v6

    .line 2733
    if-eqz v6, :cond_7a

    .line 2734
    .line 2735
    invoke-virtual {v0, v5}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2736
    .line 2737
    .line 2738
    move-result v6

    .line 2739
    if-eqz v6, :cond_7a

    .line 2740
    .line 2741
    const/4 v6, 0x5

    .line 2742
    goto :goto_43

    .line 2743
    :cond_7a
    const/4 v6, 0x2

    .line 2744
    :goto_43
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2745
    .line 2746
    .line 2747
    move-result-object v6

    .line 2748
    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2749
    .line 2750
    .line 2751
    :cond_7b
    :goto_44
    add-int/lit8 v3, v3, -0x1

    .line 2752
    .line 2753
    goto :goto_42

    .line 2754
    :cond_7c
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2755
    .line 2756
    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2757
    .line 2758
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2759
    .line 2760
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 2761
    .line 2762
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    .line 2763
    .line 2764
    .line 2765
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 2766
    .line 2767
    if-nez v1, :cond_7d

    .line 2768
    .line 2769
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2770
    .line 2771
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 2772
    .line 2773
    iget v3, v0, Lcom/android/server/wm/Transition;->mType:I

    .line 2774
    .line 2775
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2776
    .line 2777
    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/SnapshotController;->onTransactionReady(Ljava/util/ArrayList;I)V

    .line 2778
    .line 2779
    .line 2780
    goto :goto_45

    .line 2781
    :cond_7d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    .line 2782
    .line 2783
    if-eqz v1, :cond_7e

    .line 2784
    .line 2785
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2786
    .line 2787
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2788
    .line 2789
    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 2790
    .line 2791
    const/4 v4, 0x2

    .line 2792
    or-int/2addr v3, v4

    .line 2793
    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 2794
    .line 2795
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2796
    .line 2797
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2798
    .line 2799
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 2800
    .line 2801
    if-eqz v1, :cond_7e

    .line 2802
    .line 2803
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2804
    .line 2805
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2806
    .line 2807
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 2808
    .line 2809
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->scheduleUpdateOomAdj()V

    .line 2810
    .line 2811
    .line 2812
    :cond_7e
    :goto_45
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 2813
    .line 2814
    .line 2815
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 2816
    .line 2817
    iget-object v2, v1, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    .line 2818
    .line 2819
    if-eqz v2, :cond_7f

    .line 2820
    .line 2821
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2822
    .line 2823
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    .line 2824
    .line 2825
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2826
    .line 2827
    .line 2828
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2829
    .line 2830
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 2831
    .line 2832
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2833
    .line 2834
    invoke-interface {v1, v0, v2}, Lcom/android/server/wm/TransitionTracer;->logSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V

    .line 2835
    .line 2836
    .line 2837
    :cond_7f
    return-void

    .line 2838
    :cond_80
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2839
    .line 2840
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2841
    .line 2842
    const-string v3, "Trying to move non-collecting transition toplaying "

    .line 2843
    .line 2844
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2845
    .line 2846
    .line 2847
    iget v0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 2848
    .line 2849
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2850
    .line 2851
    .line 2852
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2853
    .line 2854
    .line 2855
    move-result-object v0

    .line 2856
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2857
    .line 2858
    .line 2859
    throw v1
.end method

.method public final postCleanupOnFailure()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "postCleanupOnFailure, transit="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", caller="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    const-string v2, "Transition"

    .line 23
    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 32
    .line 33
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final recordDisplay(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 23
    .line 24
    iget-boolean p0, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendRemoteCallback(Landroid/os/IRemoteCallback;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setAllReady()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    aget-boolean v0, v0, v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 25
    .line 26
    const-wide v4, 0x53cf4ee4ec6733bfL    # 5.2245209272189455E95

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-boolean v1, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 38
    .line 39
    iput-boolean v1, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public final setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

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
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    .line 18
    .line 19
    return-void
.end method

.method public final setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 16
    .line 17
    move-object v2, p1

    .line 18
    :goto_0
    if-eqz v2, :cond_2

    .line 19
    .line 20
    instance-of v3, v2, Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 34
    .line 35
    aget-boolean v0, v0, v1

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    filled-new-array {p2, v0, p1}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    const/4 v5, 0x0

    .line 58
    const-wide v2, -0x4233d85c7c10c150L    # -5.121335342942837E-11

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const/4 v4, 0x3

    .line 64
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_2
    return-void
.end method

.method public final shouldApplyOnDisplayThread()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

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
    if-ltz v0, :cond_3

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 38
    .line 39
    iget v3, v3, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 40
    .line 41
    iget v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 42
    .line 43
    if-eq v4, v3, :cond_2

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-eq v0, p0, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v1, v2

    .line 65
    :goto_1
    return v1

    .line 66
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    return v2
.end method

.method public final shouldUsePerfHint(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final snapshotStartState(Lcom/android/server/wm/WindowContainer;)V
    .locals 9

    .line 1
    :goto_0
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    instance-of v0, p1, Lcom/android/server/wm/DisplayContent;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 40
    .line 41
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :goto_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    aget-boolean v0, v0, v1

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 54
    .line 55
    int-to-long v0, v0

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    const-wide v4, 0xea0e7710d73332L

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    return-void
.end method

.method public final start()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 2
    .line 3
    if-ltz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Transition already started id="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " state="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 26
    .line 27
    const-string v1, "Transition"

    .line 28
    .line 29
    invoke-static {v0, p0, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 34
    .line 35
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 40
    .line 41
    aget-boolean v0, v0, v1

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 46
    .line 47
    int-to-long v0, v0

    .line 48
    const/4 v2, 0x3

    .line 49
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 58
    .line 59
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const-wide v4, 0x592f159642a63392L    # 4.0133745982594973E121

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const/4 v6, 0x1

    .line 73
    const-string v7, "Starting Transition %d, caller=%s"

    .line 74
    .line 75
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 80
    .line 81
    aget-boolean v0, v0, v1

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 86
    .line 87
    int-to-long v0, v0

    .line 88
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 89
    .line 90
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    const-wide v3, 0x26f8cb1209403231L    # 6.000882256300104E-121

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    const/4 v5, 0x1

    .line 104
    const/4 v6, 0x0

    .line 105
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 112
    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    iput-wide v1, v0, Lcom/android/server/wm/TransitionController$Logger;->mStartTimeNs:J

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->updateAnimatingState()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string v0, "Can\'t start Transition which isn\'t collecting."

    .line 128
    .line 129
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    const-string v1, "TransitionRecord{"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, " id="

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, " type="

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 47
    .line 48
    invoke-static {v2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, " flags=0x"

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget p0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 70
    .line 71
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 p0, 0x7d

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method public final updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget p0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 24
    .line 25
    or-int/lit8 p0, p0, 0x4

    .line 26
    .line 27
    iput p0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 28
    .line 29
    return-void
.end method
