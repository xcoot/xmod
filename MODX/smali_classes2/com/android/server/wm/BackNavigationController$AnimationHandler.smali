.class public final Lcom/android/server/wm/BackNavigationController$AnimationHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

.field public mComposed:Z

.field public mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

.field public mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

.field public final mShowWindowlessSurface:Z

.field public mStartingSurfaceTargetMatch:Z

.field public mSwitchType:I

.field public mWaitTransition:Z

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const v1, 0x1110202

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lcom/android/window/flags/Flags;->activitySnapshotByDefault()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mShowWindowlessSurface:Z

    .line 32
    .line 33
    return-void
.end method

.method public static createAdaptor(ILcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;-><init>(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurface()V

    .line 29
    .line 30
    .line 31
    iget-object p2, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 p2, 0x0

    .line 37
    const/16 v1, 0x100

    .line 38
    .line 39
    invoke-virtual {p1, p0, v0, p2, v1}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public static isAnimateTarget(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p2, v1, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    if-eq p0, p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    :cond_2
    move v0, v1

    .line 45
    :cond_3
    return v0

    .line 46
    :cond_4
    const/4 v2, 0x2

    .line 47
    if-ne p2, v2, :cond_6

    .line 48
    .line 49
    if-eq p0, p1, :cond_5

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_6

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_6

    .line 62
    .line 63
    :cond_5
    move v0, v1

    .line 64
    :cond_6
    return v0
.end method


# virtual methods
.method public final clearBackAnimateTarget(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v0, :cond_5

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    aget-object v3, v3, v0

    .line 21
    .line 22
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-boolean v4, v3, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 36
    .line 37
    if-eqz v4, :cond_4

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iput-boolean v2, v3, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 47
    .line 48
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 49
    .line 50
    aget-boolean v4, v4, v2

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 59
    .line 60
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    const-wide v6, -0x3da5c2b6b5a7cc04L    # -4.5078945212881226E11

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    const-string v9, "Setting Activity.mLauncherTaskBehind to false. Activity=%s"

    .line 71
    .line 72
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    if-eqz p1, :cond_4

    .line 76
    .line 77
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 78
    .line 79
    iget-object v5, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 80
    .line 81
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 82
    .line 83
    const/16 v6, 0xd4

    .line 84
    .line 85
    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 90
    .line 91
    .line 92
    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 93
    .line 94
    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    iget-object v3, v3, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    iget-object p1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 120
    .line 121
    .line 122
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 123
    .line 124
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 125
    .line 126
    if-eqz p1, :cond_9

    .line 127
    .line 128
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mStartingSurfaceTargetMatch:Z

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->cleanUpWindowlessSurface(Z)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 134
    .line 135
    array-length v3, v0

    .line 136
    add-int/lit8 v3, v3, -0x1

    .line 137
    .line 138
    :goto_2
    if-ltz v3, :cond_7

    .line 139
    .line 140
    aget-object v4, v0, v3

    .line 141
    .line 142
    iget-object v4, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v3, v3, -0x1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    iget-object v0, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 151
    .line 152
    if-eqz v0, :cond_8

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 155
    .line 156
    .line 157
    iput-object v1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 158
    .line 159
    :cond_8
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 160
    .line 161
    :cond_9
    iput-boolean v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 162
    .line 163
    iput-boolean v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mStartingSurfaceTargetMatch:Z

    .line 164
    .line 165
    iput v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 166
    .line 167
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    .line 168
    .line 169
    return-void
.end method

.method public final containTarget(Ljava/util/ArrayList;Z)Z
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
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 14
    .line 15
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final hasTargetDetached()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    :goto_0
    if-ltz v0, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 19
    .line 20
    aget-object v2, v2, v0

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    xor-int/2addr p0, v1

    .line 43
    return p0
.end method

.method public final isTarget(Lcom/android/server/wm/WindowContainer;Z)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

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
    if-eqz p2, :cond_3

    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 12
    .line 13
    array-length p2, p2

    .line 14
    const/4 v0, 0x1

    .line 15
    sub-int/2addr p2, v0

    .line 16
    :goto_0
    if-ltz p2, :cond_2

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 21
    .line 22
    aget-object v2, v2, p2

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 25
    .line 26
    iget v3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 27
    .line 28
    invoke-static {p1, v2, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isAnimateTarget(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;I)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return v1

    .line 39
    :cond_3
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 42
    .line 43
    iget p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 44
    .line 45
    invoke-static {p1, p2, p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isAnimateTarget(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;I)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mStartingSurfaceTargetMatch:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mStartingSurfaceTargetMatch:Z

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    .line 18
    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_5

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    aget-object p1, v2, v1

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    array-length v3, v2

    .line 42
    if-eq v3, v0, :cond_5

    .line 43
    .line 44
    aget-object v0, v2, v1

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    aget-object v0, v2, v1

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_2
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 81
    .line 82
    .line 83
    :cond_5
    :goto_3
    return-void
.end method

.method public final prepareAnimation(ILandroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler;Landroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    if-eq p1, p2, :cond_2

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    if-eq p1, p2, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x3

    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_0
    filled-new-array {p5}, [Lcom/android/server/wm/WindowContainer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 25
    .line 26
    iput-object p1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 27
    .line 28
    iput-boolean p0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    new-array p1, p1, [Lcom/android/server/wm/ActivityRecord;

    .line 36
    .line 37
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, [Lcom/android/server/wm/ActivityRecord;

    .line 42
    .line 43
    iput-object p6, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 44
    .line 45
    iput-object p1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 46
    .line 47
    iput-boolean p0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    iput-boolean p2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    .line 51
    .line 52
    filled-new-array {p5}, [Lcom/android/server/wm/WindowContainer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iput-object p4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 57
    .line 58
    iput-object p0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_3
    filled-new-array {p6}, [Lcom/android/server/wm/WindowContainer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p8, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 66
    .line 67
    iput-object p1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 68
    .line 69
    iput-boolean p0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    .line 70
    .line 71
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AnimationTargets{ openTarget= "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v3, "{"

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 23
    .line 24
    iget-object v4, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 25
    .line 26
    array-length v4, v4

    .line 27
    if-ge v3, v4, :cond_1

    .line 28
    .line 29
    if-lez v3, :cond_0

    .line 30
    .line 31
    const/16 v4, 0x2c

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 37
    .line 38
    iget-object v4, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 39
    .line 40
    aget-object v4, v4, v3

    .line 41
    .line 42
    iget-object v4, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string/jumbo v3, "}"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object v1, v2

    .line 62
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, " closeTarget= "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object v2, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 75
    .line 76
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, " mSwitchType= "

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, " mComposed= "

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-boolean v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, " mWaitTransition= "

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-boolean p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const/16 p0, 0x7d

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method
