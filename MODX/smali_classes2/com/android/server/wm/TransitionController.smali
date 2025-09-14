.class public final Lcom/android/server/wm/TransitionController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SHELL_TRANSITIONS_ROTATION:Z

.field public static final SYNC_METHOD:I


# instance fields
.field public final mAnimatingExitWindows:Ljava/util/ArrayList;

.field public mAnimatingState:Z

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBuildingFinishLayers:Z

.field public final mCleanUpRunnableList:Ljava/util/ArrayList;

.field public mCollectingTransition:Lcom/android/server/wm/Transition;

.field public mFinishingTransition:Lcom/android/server/wm/Transition;

.field public mFullReadyTracking:Z

.field public mIsWaitingForDisplayEnabled:Z

.field public final mLatestOnTopTasksReported:Landroid/util/SparseArray;

.field public final mLegacyListeners:Ljava/util/ArrayList;

.field public final mLoggerHandler:Landroid/os/Handler;

.field public mNavigationBarAttachedToApp:Z

.field public final mPlayingTransitions:Ljava/util/ArrayList;

.field public final mQueuedTransitions:Ljava/util/ArrayList;

.field public final mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

.field public final mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

.field public mSnapshotController:Lcom/android/server/wm/SnapshotController;

.field public final mStateValidators:Ljava/util/ArrayList;

.field public mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field public mTrackCount:I

.field public final mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

.field public final mTransitionPlayers:Ljava/util/ArrayList;

.field public mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

.field public mUnregisteredTransitionPlayer:Z

.field public final mValidateActivityCompat:Ljava/util/ArrayList;

.field public final mValidateCommitVis:Ljava/util/ArrayList;

.field public final mValidateDisplayVis:Ljava/util/ArrayList;

.field public final mValidateFocusedAppVis:Ljava/util/ArrayList;

.field public final mWaitingTransitions:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.wm.debug.shell_transit_rotate"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/wm/TransitionController;->SHELL_TRANSITIONS_ROTATION:Z

    .line 10
    .line 11
    const-string/jumbo v0, "persist.wm.debug.shell_transit_blast"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput v0, Lcom/android/server/wm/TransitionController;->SYNC_METHOD:I

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    .line 55
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    .line 62
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 69
    .line 70
    iput v0, p0, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    .line 71
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    .line 78
    .line 79
    new-instance v1, Lcom/android/server/wm/TransitionController$Lock;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/android/server/wm/TransitionController$Lock;-><init>(Lcom/android/server/wm/TransitionController;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    .line 85
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 95
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 102
    .line 103
    new-instance v1, Landroid/util/SparseArray;

    .line 104
    .line 105
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    .line 109
    .line 110
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 111
    .line 112
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 113
    .line 114
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    .line 115
    .line 116
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    .line 121
    .line 122
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mIsWaitingForDisplayEnabled:Z

    .line 123
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    .line 130
    .line 131
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 132
    .line 133
    new-instance v0, Lcom/android/server/wm/TransitionController$RemotePlayer;

    .line 134
    .line 135
    invoke-direct {v0, p1}, Lcom/android/server/wm/TransitionController$RemotePlayer;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    .line 139
    .line 140
    return-void
.end method

.method public static getCanBeIndependent(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget v1, p1, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 5
    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 9
    .line 10
    if-ne v1, v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_5

    .line 16
    .line 17
    iget v3, p1, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 18
    .line 19
    if-ne v3, v1, :cond_5

    .line 20
    .line 21
    iget p1, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 22
    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    move p1, v2

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ge p1, v1, :cond_4

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    return v2

    .line 62
    :cond_2
    if-eqz v3, :cond_3

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    return v2

    .line 71
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    return v0

    .line 75
    :cond_5
    iget p0, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 76
    .line 77
    if-ne p0, v1, :cond_7

    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    iget p0, p1, Lcom/android/server/wm/Transition;->mFlags:I

    .line 82
    .line 83
    const/high16 p1, 0x80000

    .line 84
    .line 85
    and-int/2addr p0, p1

    .line 86
    if-eqz p0, :cond_6

    .line 87
    .line 88
    return v2

    .line 89
    :cond_6
    return v0

    .line 90
    :cond_7
    return v2
.end method


# virtual methods
.method public final canStartCollectingNow(Lcom/android/server/wm/Transition;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v2, v0, Lcom/android/server/wm/Transition;->mState:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-lt v2, v1, :cond_4

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/android/server/wm/TransitionController;->getCanBeIndependent(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v3

    .line 29
    :cond_1
    move v0, v3

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v0, v2, :cond_3

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/android/server/wm/Transition;

    .line 45
    .line 46
    invoke-static {v2, p1}, Lcom/android/server/wm/TransitionController;->getCanBeIndependent(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    return v3

    .line 53
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    return v1

    .line 57
    :cond_4
    return v3
.end method

.method public final collect(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final collectForDisplayAreaChange(Lcom/android/server/wm/DisplayArea;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/Transition;I)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    move v1, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_0
    new-instance v3, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/TransitionController;ZLcom/android/server/wm/Transition;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method

.method public final collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

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
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final continueTransitionReady()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

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
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 13
    .line 14
    iget v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 15
    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    iput v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "No collecting transition to defer readiness for."

    .line 27
    .line 28
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final createTransition(II)Lcom/android/server/wm/Transition;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/wm/Transition;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    aget-boolean p1, p1, p2

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-wide v2, -0x33c205f93dbc2d2L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "Trying to directly start transition collection while  collection is already ongoing. Use {@link #startCollectOrQueue} if possible."

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p1, "Shell Transitions not enabled"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public final deferTransitionReady()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

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
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 13
    .line 14
    iget v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 19
    .line 20
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "No collecting transition to defer readiness for."

    .line 32
    .line 33
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final finishTransition(Lcom/android/server/wm/Transition;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->reportAnimationStart(Landroid/os/IBinder;J)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->endPowerMode(I)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Trying to finish a non-playing transition "

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "TransitionController"

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 49
    .line 50
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 51
    .line 52
    const/4 v5, 0x3

    .line 53
    const/4 v6, 0x1

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 57
    .line 58
    aget-boolean v2, v2, v6

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 75
    .line 76
    const-string v12, "Finish Transition: %s, caller=%s"

    .line 77
    .line 78
    filled-new-array {v2, v7}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    const-wide v9, 0x5106b6fb6c9b33d0L    # 2.154652573572484E82

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    const/4 v11, 0x0

    .line 88
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    aget-boolean v2, v4, v6

    .line 93
    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 101
    .line 102
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    const-wide v8, -0x53aef9017752c0a9L    # -3.188656315350661E-95

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v11, 0x0

    .line 113
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    const/4 v7, 0x0

    .line 126
    if-nez v2, :cond_3

    .line 127
    .line 128
    iput v7, v0, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    .line 129
    .line 130
    :cond_3
    invoke-virtual {v0, v7}, Lcom/android/server/wm/TransitionController;->updateRunningRemoteAnimation(Z)V

    .line 131
    .line 132
    .line 133
    const-wide/16 v8, 0x20

    .line 134
    .line 135
    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    iget-boolean v2, v1, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    .line 142
    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const-string v10, "Transition"

    .line 150
    .line 151
    invoke-static {v8, v9, v10, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 155
    .line 156
    .line 157
    move-result-wide v8

    .line 158
    iget-object v2, v1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 159
    .line 160
    iput-wide v8, v2, Lcom/android/server/wm/TransitionController$Logger;->mFinishTimeNs:J

    .line 161
    .line 162
    iget-object v8, v1, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 163
    .line 164
    iget-object v9, v8, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    .line 165
    .line 166
    new-instance v10, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;

    .line 167
    .line 168
    const/4 v11, 0x0

    .line 169
    invoke-direct {v10, v11, v2}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    .line 174
    .line 175
    iget-object v9, v8, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 176
    .line 177
    invoke-interface {v9, v1}, Lcom/android/server/wm/TransitionTracer;->logFinishedTransition(Lcom/android/server/wm/Transition;)V

    .line 178
    .line 179
    .line 180
    iget-object v9, v1, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 181
    .line 182
    if-eqz v9, :cond_5

    .line 183
    .line 184
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 185
    .line 186
    .line 187
    :cond_5
    iget-object v9, v1, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 188
    .line 189
    if-eqz v9, :cond_6

    .line 190
    .line 191
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 192
    .line 193
    .line 194
    :cond_6
    const/4 v9, 0x0

    .line 195
    iput-object v9, v1, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 196
    .line 197
    iput-object v9, v1, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 198
    .line 199
    iget-object v10, v1, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 200
    .line 201
    if-eqz v10, :cond_7

    .line 202
    .line 203
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 204
    .line 205
    .line 206
    iput-object v9, v1, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 207
    .line 208
    :cond_7
    iget v10, v1, Lcom/android/server/wm/Transition;->mState:I

    .line 209
    .line 210
    if-lt v10, v3, :cond_87

    .line 211
    .line 212
    iput-object v1, v8, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 213
    .line 214
    iget-object v10, v1, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    .line 215
    .line 216
    if-eqz v10, :cond_8

    .line 217
    .line 218
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    if-nez v10, :cond_8

    .line 223
    .line 224
    iget-object v10, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 225
    .line 226
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 227
    .line 228
    invoke-virtual {v10}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 229
    .line 230
    .line 231
    move v10, v7

    .line 232
    :goto_1
    iget-object v11, v1, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    if-ge v10, v11, :cond_8

    .line 239
    .line 240
    iget-object v11, v1, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    check-cast v11, Lcom/android/server/wm/Task;

    .line 247
    .line 248
    new-instance v12, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;

    .line 249
    .line 250
    invoke-direct {v12, v1, v11}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 254
    .line 255
    .line 256
    add-int/lit8 v10, v10, 0x1

    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_8
    move v10, v7

    .line 260
    move v11, v10

    .line 261
    move v12, v11

    .line 262
    move v13, v12

    .line 263
    move v14, v13

    .line 264
    :goto_2
    iget-object v15, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 265
    .line 266
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    .line 267
    .line 268
    .line 269
    move-result v15

    .line 270
    if-ge v10, v15, :cond_2e

    .line 271
    .line 272
    iget-object v15, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 273
    .line 274
    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v15

    .line 278
    check-cast v15, Lcom/android/server/wm/WindowContainer;

    .line 279
    .line 280
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    if-eqz v5, :cond_2a

    .line 285
    .line 286
    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 287
    .line 288
    if-nez v15, :cond_9

    .line 289
    .line 290
    move/from16 v17, v14

    .line 291
    .line 292
    goto/16 :goto_19

    .line 293
    .line 294
    :cond_9
    iget-object v9, v1, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    .line 295
    .line 296
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v9

    .line 300
    invoke-virtual {v1, v5}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 301
    .line 302
    .line 303
    move-result v16

    .line 304
    if-eqz v16, :cond_a

    .line 305
    .line 306
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 307
    .line 308
    .line 309
    move-result v16

    .line 310
    if-nez v16, :cond_a

    .line 311
    .line 312
    invoke-virtual {v8, v5}, Lcom/android/server/wm/TransitionController;->inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 313
    .line 314
    .line 315
    move-result v16

    .line 316
    if-eqz v16, :cond_a

    .line 317
    .line 318
    :goto_3
    move v9, v6

    .line 319
    goto :goto_4

    .line 320
    :cond_a
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 321
    .line 322
    if-eqz v16, :cond_b

    .line 323
    .line 324
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 325
    .line 326
    .line 327
    move-result v16

    .line 328
    if-nez v16, :cond_b

    .line 329
    .line 330
    invoke-virtual {v8, v5}, Lcom/android/server/wm/TransitionController;->inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 331
    .line 332
    .line 333
    move-result v16

    .line 334
    if-eqz v16, :cond_b

    .line 335
    .line 336
    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    iget-object v3, v3, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 341
    .line 342
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 347
    .line 348
    if-eqz v3, :cond_b

    .line 349
    .line 350
    invoke-virtual {v3}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-eqz v3, :cond_b

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_b
    :goto_4
    iget-object v3, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 358
    .line 359
    if-eqz v3, :cond_d

    .line 360
    .line 361
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 362
    .line 363
    iget v3, v3, Landroid/view/DisplayInfo;->state:I

    .line 364
    .line 365
    if-ne v3, v6, :cond_c

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_c
    move v3, v7

    .line 369
    goto :goto_6

    .line 370
    :cond_d
    :goto_5
    move v3, v6

    .line 371
    :goto_6
    if-eqz v9, :cond_f

    .line 372
    .line 373
    if-eqz v3, :cond_e

    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_e
    move/from16 v17, v14

    .line 377
    .line 378
    goto/16 :goto_15

    .line 379
    .line 380
    :cond_f
    :goto_7
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-nez v3, :cond_e

    .line 385
    .line 386
    iget-boolean v3, v1, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 387
    .line 388
    if-eqz v3, :cond_10

    .line 389
    .line 390
    iget-boolean v3, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 391
    .line 392
    if-eqz v3, :cond_10

    .line 393
    .line 394
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 395
    .line 396
    if-eqz v3, :cond_10

    .line 397
    .line 398
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 399
    .line 400
    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-nez v3, :cond_11

    .line 405
    .line 406
    :cond_10
    move/from16 v17, v14

    .line 407
    .line 408
    goto/16 :goto_10

    .line 409
    .line 410
    :cond_11
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 411
    .line 412
    if-eqz v3, :cond_12

    .line 413
    .line 414
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    if-eqz v3, :cond_12

    .line 419
    .line 420
    move v0, v6

    .line 421
    :goto_8
    move/from16 v17, v14

    .line 422
    .line 423
    goto/16 :goto_11

    .line 424
    .line 425
    :cond_12
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    iget-object v7, v1, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 430
    .line 431
    if-nez v7, :cond_14

    .line 432
    .line 433
    :cond_13
    const/4 v6, 0x0

    .line 434
    goto :goto_b

    .line 435
    :cond_14
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 436
    .line 437
    .line 438
    move-result v7

    .line 439
    sub-int/2addr v7, v6

    .line 440
    :goto_9
    if-ltz v7, :cond_13

    .line 441
    .line 442
    iget-object v6, v1, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 443
    .line 444
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 449
    .line 450
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    if-eq v0, v3, :cond_15

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :cond_15
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-nez v0, :cond_16

    .line 462
    .line 463
    :goto_a
    add-int/lit8 v7, v7, -0x1

    .line 464
    .line 465
    move-object/from16 v0, p0

    .line 466
    .line 467
    const/4 v6, 0x1

    .line 468
    goto :goto_9

    .line 469
    :cond_16
    :goto_b
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 470
    .line 471
    if-eqz v0, :cond_1b

    .line 472
    .line 473
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-eqz v0, :cond_1b

    .line 478
    .line 479
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-eqz v0, :cond_17

    .line 486
    .line 487
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Transition;->didCommitTransientLaunch()Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_18

    .line 492
    .line 493
    :cond_17
    const/4 v0, 0x1

    .line 494
    goto :goto_c

    .line 495
    :cond_18
    const/4 v0, 0x1

    .line 496
    goto :goto_d

    .line 497
    :goto_c
    iput-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 498
    .line 499
    :goto_d
    const-string v3, "enterPictureInPictureMode"

    .line 500
    .line 501
    const/4 v6, 0x0

    .line 502
    invoke-virtual {v5, v3, v0, v6}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    if-nez v3, :cond_19

    .line 507
    .line 508
    move v7, v6

    .line 509
    goto :goto_8

    .line 510
    :cond_19
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 511
    .line 512
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    iget-object v7, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 517
    .line 518
    move/from16 v17, v14

    .line 519
    .line 520
    iget-object v14, v5, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 521
    .line 522
    invoke-virtual {v7, v5, v14, v6, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;ZZ)Z

    .line 523
    .line 524
    .line 525
    move-result v7

    .line 526
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 527
    .line 528
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    if-ne v3, v0, :cond_1a

    .line 533
    .line 534
    const/4 v3, 0x2

    .line 535
    if-ne v6, v3, :cond_1a

    .line 536
    .line 537
    iget-object v3, v1, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 538
    .line 539
    if-eqz v3, :cond_1a

    .line 540
    .line 541
    iget-object v3, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 542
    .line 543
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    if-eqz v3, :cond_1a

    .line 548
    .line 549
    iget-object v3, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 550
    .line 551
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 552
    .line 553
    iput-boolean v0, v3, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    .line 554
    .line 555
    const/4 v0, 0x0

    .line 556
    iput-object v0, v3, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 557
    .line 558
    :cond_1a
    const/4 v0, 0x1

    .line 559
    goto :goto_11

    .line 560
    :cond_1b
    move/from16 v17, v14

    .line 561
    .line 562
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 563
    .line 564
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_1d

    .line 569
    .line 570
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Transition;->didCommitTransientLaunch()Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-eqz v0, :cond_1c

    .line 575
    .line 576
    goto :goto_e

    .line 577
    :cond_1c
    const/4 v0, 0x1

    .line 578
    goto :goto_f

    .line 579
    :cond_1d
    :goto_e
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    if-eqz v0, :cond_1c

    .line 584
    .line 585
    const/4 v0, 0x1

    .line 586
    iput-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 587
    .line 588
    :goto_f
    :try_start_0
    iget-object v3, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 589
    .line 590
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 591
    .line 592
    iput-boolean v0, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 593
    .line 594
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    const-string v3, "finishTransition"

    .line 599
    .line 600
    iget-object v7, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 601
    .line 602
    iget-boolean v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 603
    .line 604
    const/4 v14, 0x0

    .line 605
    invoke-virtual {v0, v6, v3, v7, v14}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    .line 607
    .line 608
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 609
    .line 610
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 611
    .line 612
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 613
    .line 614
    :goto_10
    const/4 v0, 0x1

    .line 615
    const/4 v7, 0x0

    .line 616
    goto :goto_11

    .line 617
    :catchall_0
    move-exception v0

    .line 618
    iget-object v1, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 619
    .line 620
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 621
    .line 622
    const/4 v2, 0x0

    .line 623
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 624
    .line 625
    throw v0

    .line 626
    :goto_11
    xor-int/lit8 v3, v7, 0x1

    .line 627
    .line 628
    if-eqz v3, :cond_23

    .line 629
    .line 630
    aget-boolean v3, v4, v0

    .line 631
    .line 632
    if-eqz v3, :cond_1e

    .line 633
    .line 634
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 639
    .line 640
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v23

    .line 644
    const/16 v21, 0x0

    .line 645
    .line 646
    const/16 v22, 0x0

    .line 647
    .line 648
    const-wide v19, -0x4111a0226d5ec4eaL    # -1.4483678189373217E-5

    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    :cond_1e
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 657
    .line 658
    iget-object v3, v1, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 659
    .line 660
    if-eqz v3, :cond_20

    .line 661
    .line 662
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    if-nez v3, :cond_20

    .line 667
    .line 668
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    if-nez v3, :cond_20

    .line 673
    .line 674
    iget-wide v6, v2, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 675
    .line 676
    iget-object v3, v0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 677
    .line 678
    iget v13, v15, Lcom/android/server/wm/Task;->mTaskId:I

    .line 679
    .line 680
    iget-object v3, v3, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 681
    .line 682
    check-cast v3, Lcom/android/server/wm/TaskSnapshotCache;

    .line 683
    .line 684
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 685
    .line 686
    .line 687
    move-result-object v13

    .line 688
    invoke-virtual {v3, v13}, Lcom/android/server/wm/SnapshotCache;->getSnapshot(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    if-eqz v3, :cond_1f

    .line 693
    .line 694
    invoke-virtual {v3}, Landroid/window/TaskSnapshot;->getCaptureTime()J

    .line 695
    .line 696
    .line 697
    move-result-wide v13

    .line 698
    goto :goto_12

    .line 699
    :cond_1f
    const-wide/16 v13, -0x1

    .line 700
    .line 701
    :goto_12
    cmp-long v3, v13, v6

    .line 702
    .line 703
    if-gez v3, :cond_22

    .line 704
    .line 705
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 706
    .line 707
    iget-object v6, v8, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 708
    .line 709
    iget-object v6, v6, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 710
    .line 711
    invoke-virtual {v6, v3}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    if-eqz v3, :cond_21

    .line 716
    .line 717
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 718
    .line 719
    iget-object v3, v8, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 720
    .line 721
    iget-object v3, v3, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 722
    .line 723
    invoke-virtual {v3, v0}, Lcom/android/server/wm/TaskSnapshotController;->removeSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)V

    .line 724
    .line 725
    .line 726
    :cond_20
    :goto_13
    const/4 v0, 0x1

    .line 727
    const/4 v3, 0x0

    .line 728
    goto :goto_14

    .line 729
    :cond_21
    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 730
    .line 731
    invoke-virtual {v0, v15}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    .line 732
    .line 733
    .line 734
    goto :goto_13

    .line 735
    :cond_22
    const/4 v0, 0x1

    .line 736
    aget-boolean v3, v4, v0

    .line 737
    .line 738
    if-eqz v3, :cond_20

    .line 739
    .line 740
    iget v0, v15, Lcom/android/server/wm/Task;->mTaskId:I

    .line 741
    .line 742
    int-to-long v6, v0

    .line 743
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 744
    .line 745
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v23

    .line 753
    const/16 v22, 0x0

    .line 754
    .line 755
    const-wide v19, 0x1938043d5ead3377L

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    const/16 v21, 0x1

    .line 761
    .line 762
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    goto :goto_13

    .line 766
    :goto_14
    invoke-virtual {v5, v3, v3, v0}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 767
    .line 768
    .line 769
    const/4 v13, 0x1

    .line 770
    goto :goto_15

    .line 771
    :cond_23
    const/4 v12, 0x1

    .line 772
    :goto_15
    iget-object v0, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 773
    .line 774
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 779
    .line 780
    if-eqz v0, :cond_24

    .line 781
    .line 782
    iget-boolean v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 783
    .line 784
    if-eq v0, v9, :cond_24

    .line 785
    .line 786
    iput-boolean v9, v5, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 787
    .line 788
    goto :goto_18

    .line 789
    :cond_24
    iget-object v0, v1, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 790
    .line 791
    if-eqz v0, :cond_28

    .line 792
    .line 793
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    if-eqz v0, :cond_28

    .line 798
    .line 799
    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 800
    .line 801
    if-eqz v0, :cond_28

    .line 802
    .line 803
    const/4 v0, 0x1

    .line 804
    iput-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 805
    .line 806
    iget-object v0, v15, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 807
    .line 808
    if-eqz v0, :cond_26

    .line 809
    .line 810
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 811
    .line 812
    if-nez v0, :cond_25

    .line 813
    .line 814
    goto :goto_16

    .line 815
    :cond_25
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 816
    .line 817
    if-eq v0, v15, :cond_27

    .line 818
    .line 819
    if-eqz v0, :cond_26

    .line 820
    .line 821
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    if-ne v0, v15, :cond_26

    .line 826
    .line 827
    goto :goto_17

    .line 828
    :cond_26
    :goto_16
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    .line 829
    .line 830
    .line 831
    move-result v0

    .line 832
    if-eqz v0, :cond_27

    .line 833
    .line 834
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 835
    .line 836
    const-string/jumbo v3, "transitionFinished"

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    :cond_27
    :goto_17
    const/4 v11, 0x1

    .line 843
    :cond_28
    :goto_18
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 844
    .line 845
    if-eqz v0, :cond_29

    .line 846
    .line 847
    iget-boolean v0, v15, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    .line 848
    .line 849
    if-eqz v0, :cond_29

    .line 850
    .line 851
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    .line 852
    .line 853
    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda5;

    .line 854
    .line 855
    const/4 v5, 0x0

    .line 856
    invoke-direct {v3, v5, v15}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda5;-><init>(ILcom/android/server/wm/Task;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 860
    .line 861
    .line 862
    :cond_29
    :goto_19
    move/from16 v14, v17

    .line 863
    .line 864
    goto :goto_1a

    .line 865
    :cond_2a
    move/from16 v17, v14

    .line 866
    .line 867
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    if-eqz v0, :cond_2b

    .line 872
    .line 873
    const/4 v14, 0x1

    .line 874
    goto :goto_1a

    .line 875
    :cond_2b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 876
    .line 877
    if-eqz v0, :cond_2c

    .line 878
    .line 879
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    if-eqz v0, :cond_2c

    .line 884
    .line 885
    const/4 v3, 0x0

    .line 886
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TransientLaunchOverlayToken;->setVisibility(Z)V

    .line 887
    .line 888
    .line 889
    :cond_2c
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    if-eqz v0, :cond_2d

    .line 894
    .line 895
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 896
    .line 897
    .line 898
    move-result v3

    .line 899
    if-eqz v3, :cond_2d

    .line 900
    .line 901
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 902
    .line 903
    .line 904
    move-result v3

    .line 905
    if-eqz v3, :cond_2d

    .line 906
    .line 907
    const/4 v3, 0x1

    .line 908
    invoke-virtual {v0, v3, v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 909
    .line 910
    .line 911
    move-result-object v5

    .line 912
    if-eqz v5, :cond_2d

    .line 913
    .line 914
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 915
    .line 916
    .line 917
    move-result v3

    .line 918
    if-nez v3, :cond_2d

    .line 919
    .line 920
    iget-object v3, v8, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    .line 921
    .line 922
    new-instance v5, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda5;

    .line 923
    .line 924
    const/4 v6, 0x1

    .line 925
    invoke-direct {v5, v6, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda5;-><init>(ILcom/android/server/wm/Task;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    :cond_2d
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 932
    .line 933
    if-eqz v3, :cond_29

    .line 934
    .line 935
    if-eqz v0, :cond_29

    .line 936
    .line 937
    iget-boolean v3, v0, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    .line 938
    .line 939
    if-eqz v3, :cond_29

    .line 940
    .line 941
    iget-object v3, v8, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    .line 942
    .line 943
    new-instance v5, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda5;

    .line 944
    .line 945
    const/4 v6, 0x2

    .line 946
    invoke-direct {v5, v6, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda5;-><init>(ILcom/android/server/wm/Task;)V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 950
    .line 951
    .line 952
    goto :goto_19

    .line 953
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    .line 954
    .line 955
    const/4 v3, 0x2

    .line 956
    const/4 v5, 0x3

    .line 957
    const/4 v6, 0x1

    .line 958
    const/4 v7, 0x0

    .line 959
    const/4 v9, 0x0

    .line 960
    move-object/from16 v0, p0

    .line 961
    .line 962
    goto/16 :goto_2

    .line 963
    .line 964
    :cond_2e
    move/from16 v17, v14

    .line 965
    .line 966
    iget-object v0, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 967
    .line 968
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 969
    .line 970
    .line 971
    move-result v0

    .line 972
    const/4 v2, 0x1

    .line 973
    sub-int/2addr v0, v2

    .line 974
    :goto_1b
    const/4 v2, 0x4

    .line 975
    if-ltz v0, :cond_3d

    .line 976
    .line 977
    iget-object v3, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 978
    .line 979
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v3

    .line 983
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 984
    .line 985
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    if-nez v3, :cond_2f

    .line 990
    .line 991
    goto/16 :goto_24

    .line 992
    .line 993
    :cond_2f
    iget-object v5, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 994
    .line 995
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 996
    .line 997
    iget-object v5, v5, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 998
    .line 999
    if-eqz v5, :cond_31

    .line 1000
    .line 1001
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1002
    .line 1003
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 1004
    .line 1005
    .line 1006
    move-result v6

    .line 1007
    if-nez v6, :cond_30

    .line 1008
    .line 1009
    goto :goto_1c

    .line 1010
    :cond_30
    const/4 v6, 0x0

    .line 1011
    goto :goto_1d

    .line 1012
    :cond_31
    :goto_1c
    const/4 v6, 0x1

    .line 1013
    :goto_1d
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1014
    .line 1015
    .line 1016
    move-result v7

    .line 1017
    if-nez v7, :cond_33

    .line 1018
    .line 1019
    iget-object v7, v1, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    .line 1020
    .line 1021
    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    move-result v7

    .line 1025
    if-eqz v7, :cond_32

    .line 1026
    .line 1027
    goto :goto_1e

    .line 1028
    :cond_32
    const/4 v7, 0x0

    .line 1029
    goto :goto_1f

    .line 1030
    :cond_33
    :goto_1e
    const/4 v7, 0x1

    .line 1031
    :goto_1f
    if-eqz v6, :cond_39

    .line 1032
    .line 1033
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 1034
    .line 1035
    if-eqz v9, :cond_38

    .line 1036
    .line 1037
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    .line 1038
    .line 1039
    if-eqz v9, :cond_34

    .line 1040
    .line 1041
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    .line 1042
    .line 1043
    .line 1044
    move-result v9

    .line 1045
    if-eqz v9, :cond_34

    .line 1046
    .line 1047
    goto/16 :goto_22

    .line 1048
    .line 1049
    :cond_34
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    .line 1050
    .line 1051
    if-eqz v9, :cond_37

    .line 1052
    .line 1053
    if-eqz v5, :cond_37

    .line 1054
    .line 1055
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 1056
    .line 1057
    .line 1058
    move-result v9

    .line 1059
    if-nez v9, :cond_35

    .line 1060
    .line 1061
    goto :goto_20

    .line 1062
    :cond_35
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v9

    .line 1066
    if-eqz v9, :cond_37

    .line 1067
    .line 1068
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 1069
    .line 1070
    .line 1071
    move-result v10

    .line 1072
    if-nez v10, :cond_37

    .line 1073
    .line 1074
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 1075
    .line 1076
    .line 1077
    move-result v10

    .line 1078
    if-nez v10, :cond_36

    .line 1079
    .line 1080
    goto :goto_20

    .line 1081
    :cond_36
    iget-object v10, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 1082
    .line 1083
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v9

    .line 1087
    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1088
    .line 1089
    if-eqz v9, :cond_37

    .line 1090
    .line 1091
    iget-object v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 1092
    .line 1093
    if-eqz v9, :cond_37

    .line 1094
    .line 1095
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v10

    .line 1099
    if-eqz v10, :cond_37

    .line 1100
    .line 1101
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v9

    .line 1105
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    .line 1106
    .line 1107
    .line 1108
    move-result v9

    .line 1109
    if-eqz v9, :cond_37

    .line 1110
    .line 1111
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    const-string v10, "isChangedFromSplitToFullscreen: wallpaperTarget="

    .line 1114
    .line 1115
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v5

    .line 1125
    const-string v9, "Transition"

    .line 1126
    .line 1127
    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    .line 1129
    .line 1130
    goto :goto_22

    .line 1131
    :cond_37
    :goto_20
    if-eqz v5, :cond_38

    .line 1132
    .line 1133
    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1134
    .line 1135
    if-eqz v5, :cond_38

    .line 1136
    .line 1137
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 1138
    .line 1139
    if-eqz v5, :cond_38

    .line 1140
    .line 1141
    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    .line 1142
    .line 1143
    .line 1144
    move-result v5

    .line 1145
    if-eqz v5, :cond_38

    .line 1146
    .line 1147
    goto :goto_22

    .line 1148
    :cond_38
    :goto_21
    const/4 v5, 0x1

    .line 1149
    goto :goto_23

    .line 1150
    :cond_39
    :goto_22
    if-nez v7, :cond_3b

    .line 1151
    .line 1152
    goto :goto_21

    .line 1153
    :goto_23
    aget-boolean v7, v4, v5

    .line 1154
    .line 1155
    if-eqz v7, :cond_3a

    .line 1156
    .line 1157
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v5

    .line 1161
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1162
    .line 1163
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v23

    .line 1167
    const/16 v21, 0x0

    .line 1168
    .line 1169
    const/16 v22, 0x0

    .line 1170
    .line 1171
    const-wide v19, -0x2914a3da1ae6ce20L    # -5.140481217967095E110

    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    .line 1178
    .line 1179
    :cond_3a
    const/4 v5, 0x0

    .line 1180
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    .line 1181
    .line 1182
    .line 1183
    :cond_3b
    if-eqz v6, :cond_3c

    .line 1184
    .line 1185
    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1186
    .line 1187
    iget v5, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1188
    .line 1189
    or-int/2addr v2, v5

    .line 1190
    iput v2, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1191
    .line 1192
    :cond_3c
    :goto_24
    add-int/lit8 v0, v0, -0x1

    .line 1193
    .line 1194
    goto/16 :goto_1b

    .line 1195
    .line 1196
    :cond_3d
    if-eqz v13, :cond_3f

    .line 1197
    .line 1198
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1199
    .line 1200
    const/4 v3, 0x1

    .line 1201
    if-eqz v0, :cond_3e

    .line 1202
    .line 1203
    iput-boolean v3, v0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    .line 1204
    .line 1205
    :cond_3e
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 1206
    .line 1207
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1208
    .line 1209
    .line 1210
    move-result v0

    .line 1211
    sub-int/2addr v0, v3

    .line 1212
    :goto_25
    if-ltz v0, :cond_3f

    .line 1213
    .line 1214
    iget-object v4, v8, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 1215
    .line 1216
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v4

    .line 1220
    check-cast v4, Lcom/android/server/wm/Transition;

    .line 1221
    .line 1222
    iput-boolean v3, v4, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    .line 1223
    .line 1224
    add-int/lit8 v0, v0, -0x1

    .line 1225
    .line 1226
    const/4 v3, 0x1

    .line 1227
    goto :goto_25

    .line 1228
    :cond_3f
    if-eqz v11, :cond_41

    .line 1229
    .line 1230
    if-eqz v12, :cond_40

    .line 1231
    .line 1232
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1233
    .line 1234
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 1235
    .line 1236
    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1237
    .line 1238
    .line 1239
    :cond_40
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1240
    .line 1241
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    .line 1242
    .line 1243
    .line 1244
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1245
    .line 1246
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1247
    .line 1248
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 1249
    .line 1250
    .line 1251
    :cond_41
    iget-object v0, v1, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 1252
    .line 1253
    if-eqz v0, :cond_47

    .line 1254
    .line 1255
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1256
    .line 1257
    .line 1258
    move-result v0

    .line 1259
    if-eqz v0, :cond_42

    .line 1260
    .line 1261
    goto/16 :goto_29

    .line 1262
    .line 1263
    :cond_42
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1264
    .line 1265
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1266
    .line 1267
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 1268
    .line 1269
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 1274
    .line 1275
    const/4 v3, 0x0

    .line 1276
    :goto_26
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1277
    .line 1278
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1279
    .line 1280
    .line 1281
    move-result v4

    .line 1282
    if-ge v3, v4, :cond_45

    .line 1283
    .line 1284
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1285
    .line 1286
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v4

    .line 1290
    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1291
    .line 1292
    iget-object v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1293
    .line 1294
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v5

    .line 1298
    if-eqz v5, :cond_44

    .line 1299
    .line 1300
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1301
    .line 1302
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v5

    .line 1306
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1307
    .line 1308
    iget v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 1309
    .line 1310
    and-int/lit8 v5, v5, 0x40

    .line 1311
    .line 1312
    if-nez v5, :cond_43

    .line 1313
    .line 1314
    goto :goto_27

    .line 1315
    :cond_43
    const/4 v5, 0x0

    .line 1316
    invoke-static {v5, v4}, Lcom/android/server/wm/Transition;->getLeashSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v6

    .line 1320
    invoke-static {v0, v4, v6}, Lcom/android/server/wm/Transition;->resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V

    .line 1321
    .line 1322
    .line 1323
    :cond_44
    :goto_27
    add-int/lit8 v3, v3, 0x1

    .line 1324
    .line 1325
    goto :goto_26

    .line 1326
    :cond_45
    new-instance v3, Lcom/android/server/wm/Transition$1;

    .line 1327
    .line 1328
    invoke-direct {v3, v0}, Lcom/android/server/wm/Transition$1;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    .line 1329
    .line 1330
    .line 1331
    iget-object v0, v1, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 1332
    .line 1333
    const-string v4, "ConfigAtTransitEnd"

    .line 1334
    .line 1335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1336
    .line 1337
    .line 1338
    new-instance v5, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 1339
    .line 1340
    iget v6, v0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 1341
    .line 1342
    add-int/lit8 v7, v6, 0x1

    .line 1343
    .line 1344
    iput v7, v0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 1345
    .line 1346
    invoke-direct {v5, v0, v3, v6, v4}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V

    .line 1347
    .line 1348
    .line 1349
    const-wide/16 v3, 0x1388

    .line 1350
    .line 1351
    const/4 v6, 0x1

    .line 1352
    invoke-virtual {v0, v5, v3, v4, v6}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    .line 1353
    .line 1354
    .line 1355
    iget v3, v5, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 1356
    .line 1357
    invoke-virtual {v0, v3, v6}, Lcom/android/server/wm/BLASTSyncEngine;->setSyncMethod(II)V

    .line 1358
    .line 1359
    .line 1360
    const/4 v4, 0x0

    .line 1361
    :goto_28
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 1362
    .line 1363
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1364
    .line 1365
    .line 1366
    move-result v5

    .line 1367
    if-ge v4, v5, :cond_46

    .line 1368
    .line 1369
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 1370
    .line 1371
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v5

    .line 1375
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1376
    .line 1377
    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    .line 1381
    .line 1382
    .line 1383
    add-int/lit8 v4, v4, 0x1

    .line 1384
    .line 1385
    goto :goto_28

    .line 1386
    :cond_46
    const/4 v4, 0x1

    .line 1387
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    .line 1388
    .line 1389
    .line 1390
    :cond_47
    :goto_29
    const/4 v0, 0x0

    .line 1391
    :goto_2a
    iget-object v3, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 1392
    .line 1393
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 1394
    .line 1395
    .line 1396
    move-result v3

    .line 1397
    if-ge v0, v3, :cond_4d

    .line 1398
    .line 1399
    iget-object v3, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 1400
    .line 1401
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v3

    .line 1405
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1406
    .line 1407
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v3

    .line 1411
    if-nez v3, :cond_48

    .line 1412
    .line 1413
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 1414
    .line 1415
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v4

    .line 1419
    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1420
    .line 1421
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v4

    .line 1425
    if-eqz v4, :cond_48

    .line 1426
    .line 1427
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 1428
    .line 1429
    .line 1430
    move-result v5

    .line 1431
    if-eqz v5, :cond_48

    .line 1432
    .line 1433
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 1434
    .line 1435
    .line 1436
    move-result v5

    .line 1437
    if-eqz v5, :cond_48

    .line 1438
    .line 1439
    invoke-static {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v5

    .line 1443
    if-eqz v5, :cond_48

    .line 1444
    .line 1445
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isTaskViewTask()Z

    .line 1446
    .line 1447
    .line 1448
    move-result v5

    .line 1449
    if-eqz v5, :cond_48

    .line 1450
    .line 1451
    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda8;

    .line 1452
    .line 1453
    invoke-direct {v3, v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/Transition;)V

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v3

    .line 1460
    :cond_48
    if-nez v3, :cond_49

    .line 1461
    .line 1462
    goto :goto_2c

    .line 1463
    :cond_49
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1464
    .line 1465
    .line 1466
    move-result v4

    .line 1467
    if-nez v4, :cond_4a

    .line 1468
    .line 1469
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    .line 1470
    .line 1471
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 1472
    .line 1473
    .line 1474
    move-result v4

    .line 1475
    if-nez v4, :cond_4b

    .line 1476
    .line 1477
    :cond_4a
    const/16 v4, 0x100

    .line 1478
    .line 1479
    const/4 v5, 0x2

    .line 1480
    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 1481
    .line 1482
    .line 1483
    move-result v4

    .line 1484
    if-nez v4, :cond_4b

    .line 1485
    .line 1486
    const/4 v4, 0x0

    .line 1487
    :goto_2b
    iget-object v5, v8, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 1488
    .line 1489
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1490
    .line 1491
    .line 1492
    move-result v5

    .line 1493
    if-ge v4, v5, :cond_4b

    .line 1494
    .line 1495
    iget-object v5, v8, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 1496
    .line 1497
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v5

    .line 1501
    check-cast v5, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 1502
    .line 1503
    iget-object v6, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 1504
    .line 1505
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 1506
    .line 1507
    .line 1508
    add-int/lit8 v4, v4, 0x1

    .line 1509
    .line 1510
    goto :goto_2b

    .line 1511
    :cond_4b
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 1512
    .line 1513
    if-eqz v4, :cond_4c

    .line 1514
    .line 1515
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v4

    .line 1519
    if-eqz v4, :cond_4c

    .line 1520
    .line 1521
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v4

    .line 1525
    const/4 v5, 0x0

    .line 1526
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v4

    .line 1530
    if-eq v4, v3, :cond_4c

    .line 1531
    .line 1532
    iput-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 1533
    .line 1534
    :cond_4c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    .line 1535
    .line 1536
    goto/16 :goto_2a

    .line 1537
    .line 1538
    :cond_4d
    const/4 v0, 0x0

    .line 1539
    const/4 v3, 0x0

    .line 1540
    :goto_2d
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 1541
    .line 1542
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 1543
    .line 1544
    .line 1545
    move-result v4

    .line 1546
    if-ge v0, v4, :cond_50

    .line 1547
    .line 1548
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 1549
    .line 1550
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v4

    .line 1554
    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1555
    .line 1556
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v4

    .line 1560
    if-eqz v4, :cond_4f

    .line 1561
    .line 1562
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 1563
    .line 1564
    if-eqz v5, :cond_4f

    .line 1565
    .line 1566
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v5

    .line 1570
    if-nez v5, :cond_4e

    .line 1571
    .line 1572
    goto :goto_2e

    .line 1573
    :cond_4e
    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

    .line 1574
    .line 1575
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v4

    .line 1579
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecordInputSink;->applyChangesToSurfaceIfChanged(Landroid/view/SurfaceControl$Transaction;)V

    .line 1580
    .line 1581
    .line 1582
    const/4 v3, 0x1

    .line 1583
    :cond_4f
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    .line 1584
    .line 1585
    goto :goto_2d

    .line 1586
    :cond_50
    if-eqz v3, :cond_51

    .line 1587
    .line 1588
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1589
    .line 1590
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1591
    .line 1592
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1593
    .line 1594
    .line 1595
    :cond_51
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1596
    .line 1597
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1598
    .line 1599
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V

    .line 1600
    .line 1601
    .line 1602
    iget-object v0, v1, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    .line 1603
    .line 1604
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 1605
    .line 1606
    .line 1607
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Transition;->legacyRestoreNavigationBarFromApp()V

    .line 1608
    .line 1609
    .line 1610
    iget v0, v1, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 1611
    .line 1612
    const/4 v3, -0x1

    .line 1613
    if-eq v0, v3, :cond_52

    .line 1614
    .line 1615
    iget-object v4, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1616
    .line 1617
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1618
    .line 1619
    invoke-virtual {v4, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v0

    .line 1623
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 1624
    .line 1625
    const/4 v5, 0x0

    .line 1626
    invoke-virtual {v4, v5, v5}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 1627
    .line 1628
    .line 1629
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 1630
    .line 1631
    const/4 v4, 0x0

    .line 1632
    invoke-virtual {v0, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1633
    .line 1634
    .line 1635
    :cond_52
    iget-object v0, v1, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 1636
    .line 1637
    if-eqz v0, :cond_54

    .line 1638
    .line 1639
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 1640
    .line 1641
    .line 1642
    move-result v0

    .line 1643
    const/4 v4, 0x1

    .line 1644
    sub-int/2addr v0, v4

    .line 1645
    :goto_2f
    if-ltz v0, :cond_54

    .line 1646
    .line 1647
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 1648
    .line 1649
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v5

    .line 1653
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1654
    .line 1655
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1656
    .line 1657
    if-eqz v5, :cond_53

    .line 1658
    .line 1659
    iput-boolean v4, v5, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 1660
    .line 1661
    :cond_53
    add-int/lit8 v0, v0, -0x1

    .line 1662
    .line 1663
    const/4 v4, 0x1

    .line 1664
    goto :goto_2f

    .line 1665
    :cond_54
    const/4 v0, 0x0

    .line 1666
    :goto_30
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 1667
    .line 1668
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1669
    .line 1670
    .line 1671
    move-result v4

    .line 1672
    if-ge v0, v4, :cond_64

    .line 1673
    .line 1674
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 1675
    .line 1676
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v4

    .line 1680
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 1681
    .line 1682
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v5

    .line 1686
    if-eqz v5, :cond_56

    .line 1687
    .line 1688
    iget-object v6, v1, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1689
    .line 1690
    invoke-static {v4, v6}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    .line 1691
    .line 1692
    .line 1693
    move-result v6

    .line 1694
    if-eqz v6, :cond_56

    .line 1695
    .line 1696
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    .line 1697
    .line 1698
    if-eqz v6, :cond_55

    .line 1699
    .line 1700
    :try_start_1
    iget v6, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1701
    .line 1702
    iput v6, v5, Lcom/android/server/wm/AsyncRotationController;->mSyncId:I

    .line 1703
    .line 1704
    invoke-virtual {v5}, Lcom/android/server/wm/AsyncRotationController;->onTransitionFinished()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1705
    .line 1706
    .line 1707
    iput v3, v5, Lcom/android/server/wm/AsyncRotationController;->mSyncId:I

    .line 1708
    .line 1709
    goto :goto_31

    .line 1710
    :catchall_1
    move-exception v0

    .line 1711
    iput v3, v5, Lcom/android/server/wm/AsyncRotationController;->mSyncId:I

    .line 1712
    .line 1713
    throw v0

    .line 1714
    :cond_55
    invoke-virtual {v5}, Lcom/android/server/wm/AsyncRotationController;->onTransitionFinished()V

    .line 1715
    .line 1716
    .line 1717
    :cond_56
    :goto_31
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 1718
    .line 1719
    if-eqz v5, :cond_57

    .line 1720
    .line 1721
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1722
    .line 1723
    .line 1724
    move-result v5

    .line 1725
    if-nez v5, :cond_57

    .line 1726
    .line 1727
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 1728
    .line 1729
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 1730
    .line 1731
    if-nez v6, :cond_57

    .line 1732
    .line 1733
    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1734
    .line 1735
    iget-boolean v6, v6, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 1736
    .line 1737
    if-nez v6, :cond_57

    .line 1738
    .line 1739
    const/4 v6, 0x0

    .line 1740
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;)V

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {v4, v3, v6}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(ILcom/android/server/wm/ActivityRecord;)V

    .line 1744
    .line 1745
    .line 1746
    :cond_57
    if-eqz v17, :cond_59

    .line 1747
    .line 1748
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 1749
    .line 1750
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v5

    .line 1754
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1755
    .line 1756
    if-eqz v5, :cond_59

    .line 1757
    .line 1758
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v6

    .line 1762
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 1763
    .line 1764
    .line 1765
    move-result v6

    .line 1766
    iget v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1767
    .line 1768
    if-eq v5, v6, :cond_59

    .line 1769
    .line 1770
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    .line 1771
    .line 1772
    iget-object v5, v5, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 1773
    .line 1774
    if-eqz v5, :cond_59

    .line 1775
    .line 1776
    iget-object v6, v5, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1777
    .line 1778
    const/4 v7, 0x1

    .line 1779
    invoke-virtual {v6, v7}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v6

    .line 1783
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    .line 1784
    .line 1785
    .line 1786
    move-result v9

    .line 1787
    if-eqz v9, :cond_59

    .line 1788
    .line 1789
    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(ZLcom/android/server/wm/ActivityRecord;)Z

    .line 1790
    .line 1791
    .line 1792
    move-result v6

    .line 1793
    if-nez v6, :cond_58

    .line 1794
    .line 1795
    goto :goto_32

    .line 1796
    :cond_58
    const v6, 0x104048b

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->showToast(I)V

    .line 1800
    .line 1801
    .line 1802
    :cond_59
    :goto_32
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 1803
    .line 1804
    if-eqz v5, :cond_63

    .line 1805
    .line 1806
    const/4 v5, 0x0

    .line 1807
    :goto_33
    iget-object v6, v1, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 1808
    .line 1809
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 1810
    .line 1811
    .line 1812
    move-result v6

    .line 1813
    if-ge v5, v6, :cond_5e

    .line 1814
    .line 1815
    iget-object v6, v1, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 1816
    .line 1817
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v6

    .line 1821
    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 1822
    .line 1823
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v6

    .line 1827
    if-ne v6, v4, :cond_5d

    .line 1828
    .line 1829
    if-eqz v11, :cond_5c

    .line 1830
    .line 1831
    const/4 v5, 0x1

    .line 1832
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v6

    .line 1836
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1837
    .line 1838
    if-eqz v5, :cond_5c

    .line 1839
    .line 1840
    if-eqz v6, :cond_5c

    .line 1841
    .line 1842
    iget-object v7, v4, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1843
    .line 1844
    iget v7, v7, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 1845
    .line 1846
    invoke-virtual {v8, v7, v4}, Lcom/android/server/wm/TransitionController;->hasCollectingRotationChange(ILcom/android/server/wm/WindowContainer;)Z

    .line 1847
    .line 1848
    .line 1849
    move-result v7

    .line 1850
    if-nez v7, :cond_5a

    .line 1851
    .line 1852
    goto :goto_34

    .line 1853
    :cond_5a
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v5

    .line 1857
    if-eqz v5, :cond_5c

    .line 1858
    .line 1859
    iget-object v7, v5, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 1860
    .line 1861
    if-eqz v7, :cond_5c

    .line 1862
    .line 1863
    iget-boolean v9, v5, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 1864
    .line 1865
    if-eqz v9, :cond_5c

    .line 1866
    .line 1867
    iget-object v9, v5, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 1868
    .line 1869
    if-ne v6, v9, :cond_5b

    .line 1870
    .line 1871
    goto :goto_34

    .line 1872
    :cond_5b
    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v6

    .line 1876
    iget-object v5, v5, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 1877
    .line 1878
    if-eqz v6, :cond_5c

    .line 1879
    .line 1880
    if-eqz v5, :cond_5c

    .line 1881
    .line 1882
    invoke-interface {v5}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v7

    .line 1886
    if-eqz v7, :cond_5c

    .line 1887
    .line 1888
    invoke-interface {v5}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v5

    .line 1892
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1893
    .line 1894
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 1895
    .line 1896
    .line 1897
    move-result v5

    .line 1898
    if-nez v5, :cond_5c

    .line 1899
    .line 1900
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v5

    .line 1904
    const/4 v7, 0x0

    .line 1905
    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1906
    .line 1907
    .line 1908
    :cond_5c
    :goto_34
    iget-object v5, v1, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 1909
    .line 1910
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v5

    .line 1914
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1915
    .line 1916
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v5

    .line 1920
    goto :goto_35

    .line 1921
    :cond_5d
    add-int/lit8 v5, v5, 0x1

    .line 1922
    .line 1923
    goto :goto_33

    .line 1924
    :cond_5e
    const/4 v5, 0x0

    .line 1925
    :goto_35
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    .line 1926
    .line 1927
    if-eqz v6, :cond_5f

    .line 1928
    .line 1929
    iget-object v7, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 1930
    .line 1931
    if-eqz v7, :cond_5f

    .line 1932
    .line 1933
    iget-boolean v9, v7, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 1934
    .line 1935
    if-eqz v9, :cond_5f

    .line 1936
    .line 1937
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 1938
    .line 1939
    .line 1940
    move-result v7

    .line 1941
    if-eqz v7, :cond_5f

    .line 1942
    .line 1943
    const/4 v7, 0x1

    .line 1944
    goto :goto_36

    .line 1945
    :cond_5f
    const/4 v7, 0x0

    .line 1946
    :goto_36
    if-nez v11, :cond_60

    .line 1947
    .line 1948
    if-eqz v6, :cond_61

    .line 1949
    .line 1950
    if-nez v7, :cond_60

    .line 1951
    .line 1952
    goto :goto_37

    .line 1953
    :cond_60
    const/4 v7, 0x0

    .line 1954
    goto :goto_38

    .line 1955
    :cond_61
    :goto_37
    iget v6, v1, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 1956
    .line 1957
    iget v7, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1958
    .line 1959
    if-ne v6, v7, :cond_60

    .line 1960
    .line 1961
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1962
    .line 1963
    .line 1964
    move-result-object v6

    .line 1965
    const/4 v7, 0x0

    .line 1966
    invoke-virtual {v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 1967
    .line 1968
    .line 1969
    :goto_38
    if-nez v11, :cond_62

    .line 1970
    .line 1971
    if-eqz v5, :cond_62

    .line 1972
    .line 1973
    filled-new-array {v7}, [I

    .line 1974
    .line 1975
    .line 1976
    move-result-object v6

    .line 1977
    new-instance v7, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;

    .line 1978
    .line 1979
    const/4 v9, 0x0

    .line 1980
    invoke-direct {v7, v9, v6}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/ActivityRecord;[I)V

    .line 1981
    .line 1982
    .line 1983
    const/4 v6, 0x1

    .line 1984
    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 1985
    .line 1986
    .line 1987
    :cond_62
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_NOTIFY_TASKBAR_VISIBLE:Z

    .line 1988
    .line 1989
    if-eqz v5, :cond_63

    .line 1990
    .line 1991
    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1992
    .line 1993
    if-eqz v5, :cond_63

    .line 1994
    .line 1995
    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1996
    .line 1997
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1998
    .line 1999
    const/4 v6, 0x0

    .line 2000
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTaskbarTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V

    .line 2001
    .line 2002
    .line 2003
    :cond_63
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    .line 2004
    .line 2005
    .line 2006
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->handleCompleteDeferredRemoval()Z

    .line 2007
    .line 2008
    .line 2009
    add-int/lit8 v0, v0, 0x1

    .line 2010
    .line 2011
    goto/16 :goto_30

    .line 2012
    .line 2013
    :cond_64
    iget v0, v1, Lcom/android/server/wm/Transition;->mFlags:I

    .line 2014
    .line 2015
    const v4, 0x43900

    .line 2016
    .line 2017
    .line 2018
    and-int/2addr v0, v4

    .line 2019
    if-eqz v0, :cond_65

    .line 2020
    .line 2021
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    .line 2022
    .line 2023
    iget-object v4, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2024
    .line 2025
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2026
    .line 2027
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 2028
    .line 2029
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    .line 2031
    .line 2032
    new-instance v5, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;

    .line 2033
    .line 2034
    const/4 v6, 0x1

    .line 2035
    invoke-direct {v5, v6, v4}, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 2036
    .line 2037
    .line 2038
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2039
    .line 2040
    .line 2041
    :cond_65
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 2042
    .line 2043
    if-eqz v0, :cond_67

    .line 2044
    .line 2045
    const/4 v0, 0x0

    .line 2046
    :goto_39
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2047
    .line 2048
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 2049
    .line 2050
    .line 2051
    move-result v4

    .line 2052
    if-ge v0, v4, :cond_67

    .line 2053
    .line 2054
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2055
    .line 2056
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v4

    .line 2060
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 2061
    .line 2062
    iget-object v5, v8, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    .line 2063
    .line 2064
    iget v6, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2065
    .line 2066
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v6

    .line 2070
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2071
    .line 2072
    .line 2073
    move-result v5

    .line 2074
    if-eqz v5, :cond_66

    .line 2075
    .line 2076
    goto :goto_3a

    .line 2077
    :cond_66
    iget-object v5, v8, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    .line 2078
    .line 2079
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2080
    .line 2081
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v4

    .line 2085
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    .line 2087
    .line 2088
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    .line 2089
    .line 2090
    goto :goto_39

    .line 2091
    :cond_67
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 2092
    .line 2093
    if-eqz v0, :cond_71

    .line 2094
    .line 2095
    iget-object v0, v1, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 2096
    .line 2097
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2098
    .line 2099
    .line 2100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2101
    .line 2102
    const-string/jumbo v5, "onTransitionFinished: "

    .line 2103
    .line 2104
    .line 2105
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2106
    .line 2107
    .line 2108
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2109
    .line 2110
    .line 2111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v4

    .line 2115
    const-string v5, "ChangeTransitionController"

    .line 2116
    .line 2117
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    .line 2119
    .line 2120
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 2121
    .line 2122
    if-eqz v4, :cond_6e

    .line 2123
    .line 2124
    const-string/jumbo v4, "restoreLastParentBeforePip: r="

    .line 2125
    .line 2126
    .line 2127
    iget-object v6, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 2128
    .line 2129
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    .line 2131
    .line 2132
    move-result-object v6

    .line 2133
    check-cast v6, Lcom/android/server/wm/Task;

    .line 2134
    .line 2135
    if-eqz v6, :cond_6e

    .line 2136
    .line 2137
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 2138
    .line 2139
    .line 2140
    move-result v7

    .line 2141
    if-eqz v7, :cond_6e

    .line 2142
    .line 2143
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 2144
    .line 2145
    .line 2146
    move-result v7

    .line 2147
    if-nez v7, :cond_68

    .line 2148
    .line 2149
    goto/16 :goto_3f

    .line 2150
    .line 2151
    :cond_68
    const/4 v7, 0x0

    .line 2152
    iput-boolean v7, v6, Lcom/android/server/wm/Task;->mIsChangingPipToSplit:Z

    .line 2153
    .line 2154
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v9

    .line 2158
    const/4 v10, 0x1

    .line 2159
    invoke-virtual {v6, v10, v7}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v11

    .line 2163
    if-eqz v11, :cond_69

    .line 2164
    .line 2165
    iget-object v7, v11, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 2166
    .line 2167
    goto :goto_3b

    .line 2168
    :cond_69
    const/4 v7, 0x0

    .line 2169
    :goto_3b
    if-eqz v7, :cond_6e

    .line 2170
    .line 2171
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 2172
    .line 2173
    .line 2174
    move-result v10

    .line 2175
    if-eqz v10, :cond_6e

    .line 2176
    .line 2177
    iget-object v10, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2178
    .line 2179
    if-ne v7, v10, :cond_6a

    .line 2180
    .line 2181
    goto/16 :goto_3f

    .line 2182
    .line 2183
    :cond_6a
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 2184
    .line 2185
    .line 2186
    move-result v10

    .line 2187
    invoke-virtual {v9, v10}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v10

    .line 2191
    if-eqz v10, :cond_6d

    .line 2192
    .line 2193
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenVisible()Z

    .line 2194
    .line 2195
    .line 2196
    move-result v9

    .line 2197
    if-nez v9, :cond_6b

    .line 2198
    .line 2199
    goto :goto_3e

    .line 2200
    :cond_6b
    iget-object v9, v0, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2201
    .line 2202
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2203
    .line 2204
    .line 2205
    const/4 v12, 0x1

    .line 2206
    iput-boolean v12, v6, Lcom/android/server/wm/Task;->mIsPipReparetingToLastParent:Z

    .line 2207
    .line 2208
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 2209
    .line 2210
    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2211
    .line 2212
    .line 2213
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2214
    .line 2215
    .line 2216
    const-string v4, ", lastParent="

    .line 2217
    .line 2218
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    .line 2220
    .line 2221
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2222
    .line 2223
    .line 2224
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v4

    .line 2228
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    .line 2230
    .line 2231
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2235
    const-string/jumbo v12, "restoreLastParentBeforePip"

    .line 2236
    .line 2237
    .line 2238
    if-eq v4, v10, :cond_6c

    .line 2239
    .line 2240
    const v4, 0x7fffffff

    .line 2241
    .line 2242
    .line 2243
    const/4 v13, 0x0

    .line 2244
    :try_start_3
    invoke-virtual {v7, v4, v10, v12, v13}, Lcom/android/server/wm/Task;->reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    .line 2245
    .line 2246
    .line 2247
    goto :goto_3c

    .line 2248
    :catchall_2
    move-exception v0

    .line 2249
    const/4 v1, 0x0

    .line 2250
    goto :goto_3d

    .line 2251
    :cond_6c
    :goto_3c
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 2252
    .line 2253
    .line 2254
    move-result v4

    .line 2255
    invoke-virtual {v11, v7, v4, v12}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 2256
    .line 2257
    .line 2258
    const/4 v4, 0x0

    .line 2259
    invoke-virtual {v7, v12, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2260
    .line 2261
    .line 2262
    const/4 v4, 0x0

    .line 2263
    iput-boolean v4, v6, Lcom/android/server/wm/Task;->mIsPipReparetingToLastParent:Z

    .line 2264
    .line 2265
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2266
    .line 2267
    .line 2268
    goto :goto_3f

    .line 2269
    :goto_3d
    iput-boolean v1, v6, Lcom/android/server/wm/Task;->mIsPipReparetingToLastParent:Z

    .line 2270
    .line 2271
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2272
    .line 2273
    .line 2274
    throw v0

    .line 2275
    :cond_6d
    :goto_3e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2276
    .line 2277
    const-string/jumbo v6, "restoreLastParentBeforePip: invalid stage, "

    .line 2278
    .line 2279
    .line 2280
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2281
    .line 2282
    .line 2283
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2284
    .line 2285
    .line 2286
    const-string/jumbo v6, "r="

    .line 2287
    .line 2288
    .line 2289
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2290
    .line 2291
    .line 2292
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2293
    .line 2294
    .line 2295
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2296
    .line 2297
    .line 2298
    move-result-object v4

    .line 2299
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    .line 2301
    .line 2302
    :cond_6e
    :goto_3f
    iget v4, v0, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    .line 2303
    .line 2304
    const/4 v6, 0x1

    .line 2305
    if-eq v4, v6, :cond_70

    .line 2306
    .line 2307
    iget v6, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 2308
    .line 2309
    if-ne v6, v4, :cond_70

    .line 2310
    .line 2311
    const-string v4, "ChangeTransitionController"

    .line 2312
    .line 2313
    const-string/jumbo v6, "resumeRotation by ai key"

    .line 2314
    .line 2315
    .line 2316
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    .line 2318
    .line 2319
    iget-object v4, v0, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2320
    .line 2321
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2322
    .line 2323
    const/4 v6, 0x0

    .line 2324
    invoke-virtual {v4, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v4

    .line 2328
    if-eqz v4, :cond_6f

    .line 2329
    .line 2330
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 2331
    .line 2332
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayRotation;->resume()V

    .line 2333
    .line 2334
    .line 2335
    :cond_6f
    iput v3, v0, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    .line 2336
    .line 2337
    :cond_70
    iget v3, v1, Lcom/android/server/wm/Transition;->mAdditionalFlags:I

    .line 2338
    .line 2339
    const/4 v4, 0x1

    .line 2340
    and-int/2addr v3, v4

    .line 2341
    if-eqz v3, :cond_71

    .line 2342
    .line 2343
    const-string/jumbo v3, "onTransitionFinished: now update rotation"

    .line 2344
    .line 2345
    .line 2346
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    .line 2348
    .line 2349
    iget-object v0, v0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 2350
    .line 2351
    const/4 v3, 0x0

    .line 2352
    invoke-virtual {v0, v3, v3}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 2353
    .line 2354
    .line 2355
    :cond_71
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2356
    .line 2357
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2358
    .line 2359
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 2360
    .line 2361
    iget-object v0, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mInTransitionInfoList:Ljava/util/ArrayList;

    .line 2362
    .line 2363
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2364
    .line 2365
    .line 2366
    iput v2, v1, Lcom/android/server/wm/Transition;->mState:I

    .line 2367
    .line 2368
    if-eqz v17, :cond_72

    .line 2369
    .line 2370
    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    .line 2371
    .line 2372
    .line 2373
    move-result v0

    .line 2374
    if-nez v0, :cond_72

    .line 2375
    .line 2376
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2377
    .line 2378
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2379
    .line 2380
    const/4 v2, 0x0

    .line 2381
    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 2382
    .line 2383
    .line 2384
    :cond_72
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Transition;->cleanUpInternal()V

    .line 2385
    .line 2386
    .line 2387
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2388
    .line 2389
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 2390
    .line 2391
    iget-object v2, v1, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2392
    .line 2393
    iget-object v3, v0, Lcom/android/server/wm/BackNavigationController;->mWaitTransitionFinish:Lcom/android/server/wm/Transition;

    .line 2394
    .line 2395
    const/4 v6, 0x0

    .line 2396
    if-ne v1, v3, :cond_73

    .line 2397
    .line 2398
    invoke-virtual {v0, v6}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 2399
    .line 2400
    .line 2401
    :cond_73
    iget-boolean v3, v0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    .line 2402
    .line 2403
    if-eqz v3, :cond_7c

    .line 2404
    .line 2405
    iget-object v3, v0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2406
    .line 2407
    if-nez v3, :cond_74

    .line 2408
    .line 2409
    goto/16 :goto_45

    .line 2410
    .line 2411
    :cond_74
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 2412
    .line 2413
    aget-boolean v3, v3, v6

    .line 2414
    .line 2415
    if-eqz v3, :cond_75

    .line 2416
    .line 2417
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2418
    .line 2419
    const-string v13, "Handling the deferred animation after transition finished"

    .line 2420
    .line 2421
    const-wide v10, -0x383ac77d153bcb3aL    # -5.64144236978451E37

    .line 2422
    .line 2423
    .line 2424
    .line 2425
    .line 2426
    const/4 v12, 0x0

    .line 2427
    const/4 v14, 0x0

    .line 2428
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2429
    .line 2430
    .line 2431
    :cond_75
    move v3, v6

    .line 2432
    :goto_40
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2433
    .line 2434
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 2435
    .line 2436
    .line 2437
    move-result v4

    .line 2438
    if-ge v3, v4, :cond_7d

    .line 2439
    .line 2440
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2441
    .line 2442
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2443
    .line 2444
    .line 2445
    move-result-object v4

    .line 2446
    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 2447
    .line 2448
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v5

    .line 2452
    if-nez v5, :cond_76

    .line 2453
    .line 2454
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 2455
    .line 2456
    .line 2457
    move-result-object v5

    .line 2458
    if-nez v5, :cond_76

    .line 2459
    .line 2460
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 2461
    .line 2462
    .line 2463
    move-result-object v5

    .line 2464
    if-nez v5, :cond_76

    .line 2465
    .line 2466
    goto :goto_42

    .line 2467
    :cond_76
    iget-object v5, v0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2468
    .line 2469
    iget-object v7, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 2470
    .line 2471
    if-eqz v7, :cond_78

    .line 2472
    .line 2473
    array-length v7, v7

    .line 2474
    const/4 v9, 0x1

    .line 2475
    sub-int/2addr v7, v9

    .line 2476
    :goto_41
    if-ltz v7, :cond_78

    .line 2477
    .line 2478
    iget-object v9, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 2479
    .line 2480
    aget-object v9, v9, v7

    .line 2481
    .line 2482
    if-eq v4, v9, :cond_7a

    .line 2483
    .line 2484
    invoke-virtual {v9, v4}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 2485
    .line 2486
    .line 2487
    move-result v9

    .line 2488
    if-nez v9, :cond_7a

    .line 2489
    .line 2490
    iget-object v9, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 2491
    .line 2492
    aget-object v9, v9, v7

    .line 2493
    .line 2494
    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 2495
    .line 2496
    .line 2497
    move-result v9

    .line 2498
    if-eqz v9, :cond_77

    .line 2499
    .line 2500
    goto :goto_43

    .line 2501
    :cond_77
    add-int/lit8 v7, v7, -0x1

    .line 2502
    .line 2503
    goto :goto_41

    .line 2504
    :cond_78
    iget-object v7, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 2505
    .line 2506
    if-eq v4, v7, :cond_7a

    .line 2507
    .line 2508
    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 2509
    .line 2510
    .line 2511
    move-result v7

    .line 2512
    if-nez v7, :cond_7a

    .line 2513
    .line 2514
    iget-object v5, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 2515
    .line 2516
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 2517
    .line 2518
    .line 2519
    move-result v4

    .line 2520
    if-eqz v4, :cond_79

    .line 2521
    .line 2522
    goto :goto_43

    .line 2523
    :cond_79
    :goto_42
    add-int/lit8 v3, v3, 0x1

    .line 2524
    .line 2525
    goto :goto_40

    .line 2526
    :cond_7a
    :goto_43
    move v7, v6

    .line 2527
    :goto_44
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2528
    .line 2529
    .line 2530
    move-result v3

    .line 2531
    if-ge v7, v3, :cond_7b

    .line 2532
    .line 2533
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2534
    .line 2535
    .line 2536
    move-result-object v3

    .line 2537
    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2538
    .line 2539
    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2540
    .line 2541
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 2542
    .line 2543
    .line 2544
    add-int/lit8 v7, v7, 0x1

    .line 2545
    .line 2546
    goto :goto_44

    .line 2547
    :cond_7b
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2548
    .line 2549
    if-eqz v2, :cond_7c

    .line 2550
    .line 2551
    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackNavigationController;->scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    .line 2552
    .line 2553
    .line 2554
    const/4 v2, 0x0

    .line 2555
    iput-object v2, v0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2556
    .line 2557
    :cond_7c
    :goto_45
    const/4 v0, 0x0

    .line 2558
    goto :goto_46

    .line 2559
    :cond_7d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2560
    .line 2561
    const-string v3, "Finished transition didn\'t include the targets open: "

    .line 2562
    .line 2563
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2564
    .line 2565
    .line 2566
    iget-object v3, v0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2567
    .line 2568
    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 2569
    .line 2570
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 2571
    .line 2572
    .line 2573
    move-result-object v3

    .line 2574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    .line 2576
    .line 2577
    const-string v3, " close: "

    .line 2578
    .line 2579
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2580
    .line 2581
    .line 2582
    iget-object v3, v0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2583
    .line 2584
    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 2585
    .line 2586
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2587
    .line 2588
    .line 2589
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2590
    .line 2591
    .line 2592
    move-result-object v2

    .line 2593
    const-string v3, "CoreBackPreview"

    .line 2594
    .line 2595
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    .line 2597
    .line 2598
    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    .line 2599
    .line 2600
    .line 2601
    goto :goto_45

    .line 2602
    :goto_46
    iput-object v0, v8, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 2603
    .line 2604
    iget-object v0, v8, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 2605
    .line 2606
    iget-object v2, v1, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2607
    .line 2608
    iget v3, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 2609
    .line 2610
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/SnapshotController;->onTransitionFinish(Ljava/util/ArrayList;I)V

    .line 2611
    .line 2612
    .line 2613
    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->updateAnimatingState()V

    .line 2614
    .line 2615
    .line 2616
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Transition;->invokeTransitionEndedListeners()V

    .line 2617
    .line 2618
    .line 2619
    move-object/from16 v0, p0

    .line 2620
    .line 2621
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    .line 2622
    .line 2623
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2624
    .line 2625
    .line 2626
    move-result v2

    .line 2627
    const/4 v3, 0x1

    .line 2628
    sub-int/2addr v2, v3

    .line 2629
    :goto_47
    if-ltz v2, :cond_81

    .line 2630
    .line 2631
    iget-object v3, v0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    .line 2632
    .line 2633
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2634
    .line 2635
    .line 2636
    move-result-object v3

    .line 2637
    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2638
    .line 2639
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2640
    .line 2641
    if-eqz v4, :cond_7e

    .line 2642
    .line 2643
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 2644
    .line 2645
    if-eqz v4, :cond_7e

    .line 2646
    .line 2647
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 2648
    .line 2649
    .line 2650
    move-result v4

    .line 2651
    if-nez v4, :cond_7e

    .line 2652
    .line 2653
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 2654
    .line 2655
    .line 2656
    :cond_7e
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2657
    .line 2658
    if-eqz v4, :cond_7f

    .line 2659
    .line 2660
    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 2661
    .line 2662
    if-nez v3, :cond_80

    .line 2663
    .line 2664
    :cond_7f
    iget-object v3, v0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    .line 2665
    .line 2666
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2667
    .line 2668
    .line 2669
    :cond_80
    add-int/lit8 v2, v2, -0x1

    .line 2670
    .line 2671
    goto :goto_47

    .line 2672
    :cond_81
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    .line 2673
    .line 2674
    monitor-enter v2

    .line 2675
    :try_start_4
    iget v3, v2, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 2676
    .line 2677
    if-lez v3, :cond_82

    .line 2678
    .line 2679
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2680
    .line 2681
    .line 2682
    goto :goto_48

    .line 2683
    :catchall_3
    move-exception v0

    .line 2684
    goto :goto_4a

    .line 2685
    :cond_82
    :goto_48
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2686
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 2687
    .line 2688
    .line 2689
    move-result v2

    .line 2690
    if-nez v2, :cond_86

    .line 2691
    .line 2692
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TransitionController;->validateStates()V

    .line 2693
    .line 2694
    .line 2695
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 2696
    .line 2697
    if-eqz v2, :cond_83

    .line 2698
    .line 2699
    iget v2, v1, Lcom/android/server/wm/Transition;->mState:I

    .line 2700
    .line 2701
    const/4 v3, 0x3

    .line 2702
    if-ne v2, v3, :cond_83

    .line 2703
    .line 2704
    const/4 v2, 0x1

    .line 2705
    goto :goto_49

    .line 2706
    :cond_83
    iget v1, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 2707
    .line 2708
    const/4 v2, 0x1

    .line 2709
    if-ne v1, v2, :cond_84

    .line 2710
    .line 2711
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2712
    .line 2713
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2714
    .line 2715
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    .line 2716
    .line 2717
    .line 2718
    move-result-object v1

    .line 2719
    if-nez v1, :cond_84

    .line 2720
    .line 2721
    :goto_49
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2722
    .line 2723
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2724
    .line 2725
    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 2726
    .line 2727
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2728
    .line 2729
    .line 2730
    :cond_84
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    .line 2731
    .line 2732
    if-eqz v1, :cond_85

    .line 2733
    .line 2734
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2735
    .line 2736
    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 2737
    .line 2738
    const/4 v2, 0x2

    .line 2739
    and-int/2addr v1, v2

    .line 2740
    if-eqz v1, :cond_85

    .line 2741
    .line 2742
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2743
    .line 2744
    iget v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 2745
    .line 2746
    and-int/lit8 v2, v2, -0x3

    .line 2747
    .line 2748
    iput v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 2749
    .line 2750
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2751
    .line 2752
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 2753
    .line 2754
    if-eqz v1, :cond_85

    .line 2755
    .line 2756
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2757
    .line 2758
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 2759
    .line 2760
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->scheduleUpdateOomAdj()V

    .line 2761
    .line 2762
    .line 2763
    :cond_85
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2764
    .line 2765
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2766
    .line 2767
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->onAnimationFinished()V

    .line 2768
    .line 2769
    .line 2770
    :cond_86
    return-void

    .line 2771
    :goto_4a
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2772
    throw v0

    .line 2773
    :cond_87
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2774
    .line 2775
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2776
    .line 2777
    const-string v3, "Can\'t finish a non-playing transition "

    .line 2778
    .line 2779
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2780
    .line 2781
    .line 2782
    iget v1, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 2783
    .line 2784
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2785
    .line 2786
    .line 2787
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2788
    .line 2789
    .line 2790
    move-result-object v1

    .line 2791
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2792
    .line 2793
    .line 2794
    throw v0
.end method

.method public final flushRunningTransitions()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v1, :cond_3

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/wm/Transition;

    .line 30
    .line 31
    iget v3, v2, Lcom/android/server/wm/Transition;->mState:I

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    if-ge v3, v4, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v3, v2, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v3, v2, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v3, v2, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TransitionController;->finishTransition(Lcom/android/server/wm/Transition;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/lit8 v1, v1, -0x1

    .line 71
    .line 72
    :goto_2
    if-ltz v1, :cond_4

    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/android/server/wm/Transition;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->abort()V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v1, -0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->abort()V

    .line 98
    .line 99
    .line 100
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController$RemotePlayer;->clear()V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    .line 106
    .line 107
    monitor-enter v1

    .line 108
    :try_start_0
    iget v2, v1, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 109
    .line 110
    if-lez v2, :cond_6

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_4

    .line 118
    :cond_6
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    throw p0
.end method

.method public final getCollectingTransition()Lcom/android/server/wm/Transition;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Collecting Transition (#"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 19
    .line 20
    iget v1, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ") is not collecting. state="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 31
    .line 32
    iget v1, v1, Lcom/android/server/wm/Transition;->mState:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "TransitionController"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 47
    .line 48
    return-object p0
.end method

.method public final getCollectingTransitionId()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "There is no collecting transition"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public final getCollectingTransitionType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final getTransitionPlayer()Landroid/window/ITransitionPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

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
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    .line 20
    .line 21
    :goto_0
    return-object p0
.end method

.method public final hasCollectingRotationChange(ILcom/android/server/wm/WindowContainer;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 26
    .line 27
    if-eq p0, p1, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_1
    :goto_0
    return v0
.end method

.method public final hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sub-int/2addr v0, v1

    .line 30
    :goto_0
    if-ltz v0, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/wm/Transition;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sub-int/2addr v0, v1

    .line 65
    :goto_1
    if-ltz v0, :cond_4

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/server/wm/Transition;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    iget-object v2, v2, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    return v1

    .line 90
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    const/4 p0, 0x0

    .line 94
    return p0
.end method

.method public final inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    move v0, v1

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ge v0, v3, :cond_3

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/server/wm/Transition;

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return v1
.end method

.method public final inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

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

.method public final inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/Transition;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return v1

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
    return p0
.end method

.method public final inTransition()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final inTransition(I)Z
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6
    iget v0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-ne v0, p1, :cond_0

    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 8
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    .line 9
    iget v2, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final inTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isCollecting()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCollecting(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    move v0, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 5
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iget-object v3, v3, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final isShellTransitionsEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public final isTransientHide(Lcom/android/server/wm/Task;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sub-int/2addr v0, v1

    .line 20
    :goto_0
    if-ltz v0, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/server/wm/Transition;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sub-int/2addr v0, v1

    .line 47
    :goto_1
    if-ltz v0, :cond_4

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/server/wm/Transition;

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    return v1

    .line 64
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    const/4 p0, 0x0

    .line 68
    return p0
.end method

.method public final isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sub-int/2addr v0, v2

    .line 26
    :goto_1
    if-ltz v0, :cond_3

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/server/wm/Transition;

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    sub-int/2addr v0, v2

    .line 53
    :goto_2
    if-ltz v0, :cond_5

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lcom/android/server/wm/Transition;

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    return v2

    .line 70
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    return v1
.end method

.method public final moveToCollecting(Lcom/android/server/wm/Transition;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 18
    .line 19
    iget v0, p1, Lcom/android/server/wm/Transition;->mType:I

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    const-wide/16 v0, 0x7d0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-wide/16 v0, 0x1388

    .line 28
    .line 29
    :goto_0
    iget v2, p1, Lcom/android/server/wm/Transition;->mState:I

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    if-ne v2, v3, :cond_6

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    iput v2, p1, Lcom/android/server/wm/Transition;->mState:I

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v4, "Transition-"

    .line 40
    .line 41
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v4, p1, Lcom/android/server/wm/Transition;->mType:I

    .line 45
    .line 46
    invoke-static {v4}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget v4, p1, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    move v4, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v4, v2

    .line 65
    :goto_1
    iget-object v6, p1, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance v7, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 71
    .line 72
    iget v8, v6, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 73
    .line 74
    add-int/lit8 v9, v8, 0x1

    .line 75
    .line 76
    iput v9, v6, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 77
    .line 78
    invoke-direct {v7, v6, p1, v8, v3}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v7, v0, v1, v4}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    .line 82
    .line 83
    .line 84
    iget v0, v7, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 85
    .line 86
    iput v0, p1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 87
    .line 88
    sget v1, Lcom/android/server/wm/TransitionController;->SYNC_METHOD:I

    .line 89
    .line 90
    invoke-virtual {v6, v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->setSyncMethod(II)V

    .line 91
    .line 92
    .line 93
    iget v0, p1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 94
    .line 95
    iget-object p1, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 96
    .line 97
    iput v0, p1, Lcom/android/server/wm/TransitionController$Logger;->mSyncId:I

    .line 98
    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    iput-wide v0, p1, Lcom/android/server/wm/TransitionController$Logger;->mCollectTimeNs:J

    .line 104
    .line 105
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 106
    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 110
    .line 111
    aget-boolean p1, p1, v5

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 116
    .line 117
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const/4 v0, 0x5

    .line 122
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 131
    .line 132
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    const-wide v4, 0x59d847994a9f3e82L    # 6.420091692138887E124

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    const/4 v6, 0x0

    .line 142
    const-string v7, "Start collecting in Transition: %s, caller=%s"

    .line 143
    .line 144
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 149
    .line 150
    aget-boolean p1, p1, v5

    .line 151
    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 155
    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 161
    .line 162
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    const-wide v4, 0x1de7036ff85639deL

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    const/4 v6, 0x0

    .line 172
    const/4 v7, 0x0

    .line 173
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-ge v2, p1, :cond_5

    .line 183
    .line 184
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_5
    return-void

    .line 199
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    const-string p1, "Attempting to re-use a transition"

    .line 202
    .line 203
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 208
    .line 209
    const-string p1, "Simultaneous transition collection not supported."

    .line 210
    .line 211
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p0
.end method

.method public final queueTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/wm/TransitionController$QueuedTransition;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/TransitionController$QueuedTransition;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    aget-boolean p0, p0, p2

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 23
    .line 24
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-wide v1, -0x4c762d3db2dfc06dL    # -2.0087331146961005E-60

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const-string v4, "Queueing transition: %s"

    .line 35
    .line 36
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final registerTransitionPlayer(Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    aget-boolean v0, v1, v2

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-long v1, v1

    .line 31
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 32
    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const/4 v6, 0x4

    .line 42
    const-string v7, "Registering transition player %s over %d other players"

    .line 43
    .line 44
    const-wide v4, -0x3f17c8741fc1c04dL    # -49596.37112343255

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->flushRunningTransitions()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    aget-boolean v0, v1, v2

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 69
    .line 70
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-wide v2, -0x3afc20681e8ccaa3L    # -3.003185000262496E24

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    const-string v5, "Registering transition player %s "

    .line 81
    .line 82
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 86
    .line 87
    new-instance v1, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    .line 88
    .line 89
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;-><init>(Lcom/android/server/wm/TransitionController;Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 96
    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    iget-boolean p1, p0, Lcom/android/server/wm/TransitionController;->mUnregisteredTransitionPlayer:Z

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 112
    .line 113
    new-instance p2, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda9;

    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-direct {p2, v0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda9;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/android/server/wm/TransitionController;->mUnregisteredTransitionPlayer:Z

    .line 124
    .line 125
    :cond_4
    return-void
.end method

.method public final requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string/jumbo p1, "requestCloseTransitionIfNeeded: skip, force hidden, t="

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p1, "TransitionController"

    .line 58
    .line 59
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    const/4 v0, 0x2

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_4
    :goto_1
    return-object v1
.end method

.method public final requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iget-boolean v2, v0, Lcom/android/server/wm/TransitionController;->mIsWaitingForDisplayEnabled:Z

    .line 4
    .line 5
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    aget-boolean v2, v3, v5

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget v2, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    const/4 v8, 0x1

    .line 29
    const/4 v9, 0x0

    .line 30
    const-wide v6, -0x3ac8823a709dc01dL    # -2.8399234001968437E25

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iput-boolean v4, v1, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    .line 39
    .line 40
    iget-object v2, v1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    iput-wide v3, v2, Lcom/android/server/wm/TransitionController$Logger;->mRequestTimeNs:J

    .line 47
    .line 48
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 51
    .line 52
    new-instance v3, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TransitionController;Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_9

    .line 69
    .line 70
    iget v2, v1, Lcom/android/server/wm/Transition;->mState:I

    .line 71
    .line 72
    const/4 v6, 0x3

    .line 73
    if-ne v2, v6, :cond_2

    .line 74
    .line 75
    move v4, v5

    .line 76
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 77
    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :cond_3
    :try_start_0
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 83
    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 87
    .line 88
    aget-boolean v3, v3, v5

    .line 89
    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/4 v4, 0x5

    .line 97
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 106
    .line 107
    const-string v10, "Requesting StartTransition: %s, caller=%s"

    .line 108
    .line 109
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    const-wide v7, 0x67418596fdc530edL    # 2.4396463801731246E189

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    const/4 v9, 0x0

    .line 119
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :cond_4
    aget-boolean v3, v3, v5

    .line 127
    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 135
    .line 136
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    const/4 v9, 0x0

    .line 141
    const/4 v10, 0x0

    .line 142
    const-wide v7, 0x37971f38593a3bd5L    # 6.635675241800035E-41

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    :goto_0
    const/4 v3, 0x0

    .line 151
    if-eqz p2, :cond_6

    .line 152
    .line 153
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    move-object v8, v4

    .line 158
    goto :goto_1

    .line 159
    :cond_6
    move-object v8, v3

    .line 160
    :goto_1
    iget-object v4, v1, Lcom/android/server/wm/Transition;->mPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 161
    .line 162
    if-eqz v4, :cond_7

    .line 163
    .line 164
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    iput-object v3, v1, Lcom/android/server/wm/Transition;->mPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 171
    .line 172
    move-object v9, v4

    .line 173
    goto :goto_2

    .line 174
    :cond_7
    move-object v9, v3

    .line 175
    :goto_2
    new-instance v3, Landroid/window/TransitionRequestInfo;

    .line 176
    .line 177
    iget v7, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 178
    .line 179
    iget v12, v1, Lcom/android/server/wm/Transition;->mFlags:I

    .line 180
    .line 181
    iget v13, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 182
    .line 183
    move-object v6, v3

    .line 184
    move-object/from16 v10, p3

    .line 185
    .line 186
    move-object/from16 v11, p4

    .line 187
    .line 188
    invoke-direct/range {v6 .. v13}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 192
    .line 193
    .line 194
    move-result-wide v6

    .line 195
    iput-wide v6, v2, Lcom/android/server/wm/TransitionController$Logger;->mRequestTimeNs:J

    .line 196
    .line 197
    iput-object v3, v2, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    .line 198
    .line 199
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    .line 206
    .line 207
    iget-object v0, v0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    .line 208
    .line 209
    iget-object v2, v1, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 210
    .line 211
    invoke-interface {v0, v2, v3}, Landroid/window/ITransitionPlayer;->requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V

    .line 212
    .line 213
    .line 214
    if-eqz p3, :cond_8

    .line 215
    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iget-object v2, v1, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 221
    .line 222
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 223
    .line 224
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    .line 231
    .line 232
    invoke-virtual {v2, v0, v5, v5}, Lcom/android/server/wm/TransitionController$RemotePlayer;->update(Lcom/android/server/wm/WindowProcessController;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :goto_3
    const-string v2, "TransitionController"

    .line 237
    .line 238
    const-string v3, "Error requesting transition"

    .line 239
    .line 240
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->start()V

    .line 244
    .line 245
    .line 246
    :cond_8
    :goto_4
    return-object v1

    .line 247
    :cond_9
    :goto_5
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_a

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    .line 254
    .line 255
    .line 256
    :cond_a
    return-object v1
.end method

.method public final requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

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
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-virtual {p1, p4, p3}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 21
    .line 22
    .line 23
    const p1, 0x43900

    .line 24
    .line 25
    .line 26
    and-int/2addr p1, p2

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-object p3, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 30
    .line 31
    invoke-virtual {p3, p1}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 32
    .line 33
    .line 34
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    and-int/2addr p2, p1

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object p2, v1

    .line 60
    :goto_0
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_3
    :goto_1
    return-object v1
.end method

.method public final setDisplaySyncMethod(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V
    .locals 3

    .line 9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p4, p0, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-le p2, p1, :cond_3

    move v0, v1

    :cond_3
    if-ne v2, v0, :cond_5

    if-ne p4, p0, :cond_4

    if-eq p2, p1, :cond_5

    .line 15
    :cond_4
    new-instance p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {p3, p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_5
    return-void
.end method

.method public final setDisplaySyncMethod(Landroid/window/TransitionRequestInfo$DisplayChange;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result p3

    .line 3
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result v0

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    throw v1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object p3

    .line 7
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p3, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/wm/TransitionController;->setDisplaySyncMethod(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setHideWhileTwoHandDragging(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mHideWhileTwoHandDragging:Z

    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v0, "setHideWhileTwoHandDragging: wc="

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "TransitionController"

    .line 35
    .line 36
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final setNoAnimation(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x8

    .line 19
    .line 20
    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string p1, "Can\'t set no-animation property of non-participant"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public setSyncEngine(Lcom/android/server/wm/BLASTSyncEngine;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda5;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p1, Lcom/android/server/wm/BLASTSyncEngine;->mOnIdleListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    new-instance v1, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, v0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    .line 23
    .line 24
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-object v1, p2

    .line 30
    :goto_0
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 60
    .line 61
    iget v3, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 62
    .line 63
    or-int/lit8 v3, v3, 0x2

    .line 64
    .line 65
    iput v3, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    if-eqz v1, :cond_5

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    const/4 v2, 0x0

    .line 91
    :goto_2
    const/4 v3, 0x1

    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    new-instance v4, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;

    .line 95
    .line 96
    invoke-direct {v4, v0, v1, p1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 100
    .line 101
    .line 102
    iget-object p1, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    sub-int/2addr p1, v3

    .line 109
    :goto_3
    if-ltz p1, :cond_6

    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 120
    .line 121
    .line 122
    add-int/lit8 p1, p1, -0x1

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 126
    .line 127
    if-eqz p1, :cond_7

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_7

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mTransientLaunchOverlayTokens:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    sub-int/2addr v1, v3

    .line 146
    :goto_4
    if-ltz v1, :cond_7

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransientLaunchOverlayToken;->setVisibility(Z)V

    .line 155
    .line 156
    .line 157
    add-int/lit8 v1, v1, -0x1

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_7
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 161
    .line 162
    if-eqz p1, :cond_8

    .line 163
    .line 164
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 165
    .line 166
    aget-boolean p1, p1, v3

    .line 167
    .line 168
    if-eqz p1, :cond_9

    .line 169
    .line 170
    iget p1, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 171
    .line 172
    int-to-long v0, p1

    .line 173
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const/4 v2, 0x3

    .line 178
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 187
    .line 188
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    filled-new-array {v0, p1, v2}, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    const/4 v6, 0x1

    .line 197
    const-string v7, "Transition %d: Set %s as transient-launch, caller=%s"

    .line 198
    .line 199
    const-wide v4, -0x2910890d9c70c92bL    # -5.9116830112887826E110

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_8
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 209
    .line 210
    aget-boolean p1, p1, v3

    .line 211
    .line 212
    if-eqz p1, :cond_9

    .line 213
    .line 214
    iget p1, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 215
    .line 216
    int-to-long v0, p1

    .line 217
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 222
    .line 223
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    const/4 v5, 0x1

    .line 232
    const/4 v6, 0x0

    .line 233
    const-wide v3, -0x786856514a9dccf3L    # -4.374117719556477E-272

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_9
    :goto_5
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    const/4 v0, 0x0

    .line 246
    if-eqz p1, :cond_a

    .line 247
    .line 248
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 249
    .line 250
    const/16 v1, 0x80

    .line 251
    .line 252
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 256
    .line 257
    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 258
    .line 259
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-nez p1, :cond_c

    .line 264
    .line 265
    :goto_6
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-ge v0, p1, :cond_b

    .line 272
    .line 273
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    check-cast p1, Ljava/lang/Runnable;

    .line 280
    .line 281
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 282
    .line 283
    .line 284
    add-int/lit8 v0, v0, 0x1

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 290
    .line 291
    .line 292
    :cond_c
    return-void
.end method

.method public final shouldKeepFocus(Lcom/android/server/wm/WindowContainer;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne v0, v2, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/server/wm/Transition;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_2
    return v1
.end method

.method public final startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TransitionController;->queueTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->canStartCollectingNow(Lcom/android/server/wm/Transition;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    aget-boolean v0, v0, v2

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 42
    .line 43
    iget v0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 44
    .line 45
    int-to-long v2, v0

    .line 46
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 47
    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const/4 v7, 0x1

    .line 57
    const-string v8, "Moving #%d from collecting to waiting."

    .line 58
    .line 59
    const-wide v5, -0x165e91cdd667c4f0L    # -6.67107460160601E200

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p2, v1}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    const-string v0, "TransitionController"

    .line 85
    .line 86
    const-string v1, "Ongoing Sync outside of transition."

    .line 87
    .line 88
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TransitionController;->queueTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p2, v1}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final startLegacySyncOrQueue(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 19
    .line 20
    const-wide/16 v0, 0x1388

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p2, p0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->accept(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/wm/TransitionController$QueuedTransition;

    .line 35
    .line 36
    new-instance v1, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda7;

    .line 37
    .line 38
    invoke-direct {v1, p2}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TransitionController$QueuedTransition;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda7;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    aget-boolean p0, p0, p2

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    iget p0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 61
    .line 62
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-wide v1, -0x260c18a64943c1eaL    # -2.105194890288045E125

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    const-string v4, "Queueing legacy sync-set: %s"

    .line 73
    .line 74
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method public final tryStartCollectFromQueue()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/wm/TransitionController$QueuedTransition;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TransitionController;->canStartCollectingNow(Lcom/android/server/wm/Transition;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 37
    .line 38
    aget-boolean v2, v2, v3

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 43
    .line 44
    iget v2, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 45
    .line 46
    int-to-long v4, v2

    .line 47
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 48
    .line 49
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    const/4 v9, 0x1

    .line 58
    const-string v10, "Moving #%d from collecting to waiting."

    .line 59
    .line 60
    const-wide v7, -0x165e91cdd667c4f0L    # -6.67107460160601E200

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    iput-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    iget-object v2, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    .line 94
    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 102
    .line 103
    const-wide/16 v4, 0x1388

    .line 104
    .line 105
    iget-object v6, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 106
    .line 107
    invoke-virtual {v2, v6, v4, v5, v1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    .line 108
    .line 109
    .line 110
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    .line 111
    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    iget v1, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 115
    .line 116
    const/16 v2, 0xc

    .line 117
    .line 118
    if-ne v1, v2, :cond_7

    .line 119
    .line 120
    iget-object p0, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

    .line 121
    .line 122
    invoke-interface {p0, v3}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 127
    .line 128
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 129
    .line 130
    new-instance v2, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    const/4 v3, 0x1

    .line 133
    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TransitionController;Ljava/lang/Object;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    :goto_2
    return-void
.end method

.method public unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

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
    if-ltz v1, :cond_1

    .line 12
    .line 13
    iget-object v3, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    .line 22
    .line 23
    invoke-interface {v3}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface/range {p1 .. p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-ne v3, v4, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 38
    .line 39
    if-gez v1, :cond_3

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    aget-boolean v0, v3, v0

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface/range {p1 .. p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 55
    .line 56
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-wide v2, 0x2d00a38953023dcfL    # 6.381366704917865E-92

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    const-string v5, "Attempt to unregister transition player %s but it isn\'t registered"

    .line 67
    .line 68
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void

    .line 72
    :cond_3
    iget-object v4, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    sub-int/2addr v4, v2

    .line 79
    const/4 v5, 0x0

    .line 80
    if-ne v1, v4, :cond_4

    .line 81
    .line 82
    move v4, v2

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    move v4, v5

    .line 85
    :goto_2
    iget-object v6, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    .line 92
    .line 93
    if-eqz v4, :cond_5

    .line 94
    .line 95
    aget-boolean v3, v3, v2

    .line 96
    .line 97
    if-eqz v3, :cond_6

    .line 98
    .line 99
    invoke-interface/range {p1 .. p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    int-to-long v7, v1

    .line 108
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    int-to-long v9, v1

    .line 115
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 116
    .line 117
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    filled-new-array {v3, v1, v7}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v16

    .line 129
    const/16 v14, 0x14

    .line 130
    .line 131
    const-string v15, "Unregistering active transition player %s at index=%d leaving %d in stack"

    .line 132
    .line 133
    const-wide v12, 0x333c4f1d2b4f3463L    # 6.88154613984404E-62

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    aget-boolean v3, v3, v2

    .line 143
    .line 144
    if-eqz v3, :cond_6

    .line 145
    .line 146
    invoke-interface/range {p1 .. p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    int-to-long v7, v1

    .line 155
    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    int-to-long v9, v1

    .line 162
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 163
    .line 164
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    filled-new-array {v3, v1, v7}, [Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v16

    .line 176
    const/16 v14, 0x14

    .line 177
    .line 178
    const-string v15, "Unregistering transition player %s at index=%d leaving %d in stack"

    .line 179
    .line 180
    const-wide v12, -0x27f7beac5544cef7L    # -1.1946285839395035E116

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_6
    :goto_3
    iget-object v1, v6, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    .line 189
    .line 190
    invoke-interface {v1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-eqz v1, :cond_8

    .line 195
    .line 196
    iget-object v1, v6, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

    .line 197
    .line 198
    if-nez v1, :cond_7

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_7
    iget-object v1, v6, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    .line 202
    .line 203
    invoke-interface {v1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iget-object v3, v6, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

    .line 208
    .line 209
    invoke-interface {v1, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 210
    .line 211
    .line 212
    const/4 v1, 0x0

    .line 213
    iput-object v1, v6, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

    .line 214
    .line 215
    :cond_8
    :goto_4
    if-nez v4, :cond_9

    .line 216
    .line 217
    return-void

    .line 218
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TransitionController;->flushRunningTransitions()V

    .line 219
    .line 220
    .line 221
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 222
    .line 223
    if-eqz v1, :cond_a

    .line 224
    .line 225
    iput-boolean v2, v0, Lcom/android/server/wm/TransitionController;->mUnregisteredTransitionPlayer:Z

    .line 226
    .line 227
    :cond_a
    return-void
.end method

.method public final updateAnimatingState()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, v0, Lcom/android/server/wm/Transition;->mState:I

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v2

    .line 23
    :goto_1
    const-string v3, "Transition"

    .line 24
    .line 25
    const-wide/16 v4, 0x20

    .line 26
    .line 27
    const v6, 0x41bfaf1

    .line 28
    .line 29
    .line 30
    iget-object v7, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 31
    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    iget-boolean v8, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    .line 35
    .line 36
    if-nez v8, :cond_6

    .line 37
    .line 38
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-int/2addr v0, v2

    .line 45
    :goto_2
    if-ltz v0, :cond_5

    .line 46
    .line 47
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 54
    .line 55
    iget-object v8, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 56
    .line 57
    if-eqz v8, :cond_2

    .line 58
    .line 59
    invoke-virtual {v8, v1}, Lcom/android/server/wm/Transition;->shouldUsePerfHint(Lcom/android/server/wm/DisplayContent;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    sub-int/2addr v8, v2

    .line 76
    :goto_3
    if-ltz v8, :cond_4

    .line 77
    .line 78
    iget-object v9, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    check-cast v9, Lcom/android/server/wm/Transition;

    .line 85
    .line 86
    invoke-virtual {v9, v1}, Lcom/android/server/wm/Transition;->shouldUsePerfHint(Lcom/android/server/wm/DisplayContent;)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_3

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lcom/android/server/wm/SnapshotController;->setPause(Z)V

    .line 105
    .line 106
    .line 107
    iput-boolean v2, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    .line 108
    .line 109
    const-string p0, "animating"

    .line 110
    .line 111
    invoke-static {v4, v5, v3, p0, v6}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_6
    if-nez v0, :cond_8

    .line 116
    .line 117
    iget-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    .line 118
    .line 119
    if-eqz v0, :cond_8

    .line 120
    .line 121
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    sub-int/2addr v0, v2

    .line 128
    :goto_5
    if-ltz v0, :cond_7

    .line 129
    .line 130
    iget-object v2, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 137
    .line 138
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v0, v0, -0x1

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_7
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SnapshotController;->setPause(Z)V

    .line 152
    .line 153
    .line 154
    iput-boolean v1, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    .line 155
    .line 156
    invoke-static {v4, v5, v3, v6}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    :cond_8
    :goto_6
    return-void
.end method

.method public final updateRunningRemoteAnimation(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayerProc:Lcom/android/server/wm/WindowProcessController;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const/4 v2, 0x1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget p0, v1, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 27
    .line 28
    or-int/lit8 p1, p0, 0x1

    .line 29
    .line 30
    iput p1, v1, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 31
    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    iget-object p0, v1, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 37
    .line 38
    new-instance p1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    invoke-direct {p1, v1, v2}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object p1, v0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayerProc:Lcom/android/server/wm/WindowProcessController;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController$RemotePlayer;->clear()V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_0
    return-void
.end method

.method public final useShellTransitionsRotation()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-boolean p0, Lcom/android/server/wm/TransitionController;->SHELL_TRANSITIONS_ROTATION:Z

    .line 8
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

.method public final validateStates()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    move v1, v0

    .line 49
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const-string v3, "TransitionController"

    .line 56
    .line 57
    if-ge v1, v2, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_2

    .line 72
    .line 73
    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 74
    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v5, "Uncommitted visibility change: "

    .line 80
    .line 81
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v2, v3, v0, v0}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 99
    .line 100
    .line 101
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 107
    .line 108
    .line 109
    move v1, v0

    .line 110
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-ge v1, v2, :cond_5

    .line 117
    .line 118
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 125
    .line 126
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 127
    .line 128
    if-nez v4, :cond_4

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    new-instance v4, Landroid/graphics/Point;

    .line 132
    .line 133
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 144
    .line 145
    iget v6, v4, Landroid/graphics/Point;->x:I

    .line 146
    .line 147
    int-to-float v6, v6

    .line 148
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 149
    .line 150
    int-to-float v4, v4

    .line 151
    invoke-virtual {v5, v2, v6, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 152
    .line 153
    .line 154
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 160
    .line 161
    .line 162
    move v1, v0

    .line 163
    :goto_4
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-ge v1, v2, :cond_8

    .line 170
    .line 171
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lcom/android/server/wm/DisplayArea;

    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_7

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    if-nez v4, :cond_6

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_7

    .line 197
    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v5, "DisplayArea became visible outside of a transition: "

    .line 201
    .line 202
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v4, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 224
    .line 225
    .line 226
    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 232
    .line 233
    .line 234
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 235
    .line 236
    if-eqz v1, :cond_c

    .line 237
    .line 238
    move v1, v0

    .line 239
    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-ge v1, v2, :cond_b

    .line 246
    .line 247
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 260
    .line 261
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 262
    .line 263
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 264
    .line 265
    invoke-virtual {v3, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    if-eqz v2, :cond_a

    .line 270
    .line 271
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 272
    .line 273
    if-eqz v2, :cond_a

    .line 274
    .line 275
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-nez v3, :cond_9

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_9
    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->enforceSurfaceVisible(Lcom/android/server/wm/WindowContainer;)V

    .line 283
    .line 284
    .line 285
    :cond_a
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateFocusedAppVis:Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 291
    .line 292
    .line 293
    :cond_c
    :goto_8
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-ge v0, v1, :cond_d

    .line 300
    .line 301
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    check-cast v1, Ljava/lang/Runnable;

    .line 308
    .line 309
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 310
    .line 311
    .line 312
    add-int/lit8 v0, v0, 0x1

    .line 313
    .line 314
    goto :goto_8

    .line 315
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method public final waitFor(Lcom/android/server/wm/Transition$ReadyCondition;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "No collecting transition available to wait for "

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "TransitionController"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    sget-object p0, Lcom/android/server/wm/Transition$ReadyTracker;->NULL_TRACKER:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 25
    .line 26
    iput-object p0, p1, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
