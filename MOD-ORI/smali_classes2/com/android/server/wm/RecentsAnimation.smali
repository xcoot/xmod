.class public final Lcom/android/server/wm/RecentsAnimation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field public final mCaller:Lcom/android/server/wm/WindowProcessController;

.field public final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mRecentsComponent:Landroid/content/ComponentName;

.field public final mRecentsFeatureId:Ljava/lang/String;

.field public final mRecentsUid:I

.field public mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTargetActivityType:I

.field public final mTargetIntent:Landroid/content/Intent;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mUserId:I

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;ILcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 7
    .line 8
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 23
    .line 24
    iput-object p6, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    .line 28
    .line 29
    iput p7, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 30
    .line 31
    iput-object p8, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 40
    .line 41
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p6, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    const/4 p1, 0x3

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p1, 0x2

    .line 60
    :goto_0
    iput p1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
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
    new-instance v1, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const-class v2, Lcom/android/server/wm/Task;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    invoke-virtual {p1, p0, p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    return-object v0
.end method

.method public final onAnimationFinished(IZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

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
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aget-boolean v1, v1, v2

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    int-to-long v2, p1

    .line 25
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 26
    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    const/4 v7, 0x4

    .line 36
    const/4 v8, 0x0

    .line 37
    const-wide v5, 0x4bf842159d4b39d3L    # 9.516926699465541E57

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v2, 0x1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->endPowerMode(I)V

    .line 72
    .line 73
    .line 74
    :cond_2
    if-ne p1, v2, :cond_3

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    .line 79
    .line 80
    .line 81
    :cond_3
    new-instance v2, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    invoke-direct {v2, p0, p1, p2, v1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RecentsAnimation;IZLcom/android/server/wm/RecentsAnimationController;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;->run()V

    .line 87
    .line 88
    .line 89
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void

    .line 94
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final preloadRecentsActivity()V
    .locals 12

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v2, v0, v1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 9
    .line 10
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    const-wide v4, -0x342818509bebc4c7L    # -2.3445975397956602E57

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 31
    .line 32
    iget v3, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 33
    .line 34
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string/jumbo v3, "preloadRecents"

    .line 43
    .line 44
    .line 45
    const-string v4, "RecentsAnimation"

    .line 46
    .line 47
    const/4 v5, 0x1

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_6

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-nez v6, :cond_3

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 70
    .line 71
    iget v6, v6, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 72
    .line 73
    const/16 v7, 0x10

    .line 74
    .line 75
    if-lt v6, v7, :cond_2

    .line 76
    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v0, "Skip preload recents for cached proc "

    .line 80
    .line 81
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 98
    .line 99
    .line 100
    aget-boolean v4, v0, v1

    .line 101
    .line 102
    if-eqz v4, :cond_6

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 113
    .line 114
    const/4 v10, 0x0

    .line 115
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    const-wide v7, -0x2eb536feb407cd6dL    # -4.065213145291019E83

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    const/4 v9, 0x0

    .line 125
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    :goto_0
    return-void

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 131
    .line 132
    new-instance v6, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;

    .line 133
    .line 134
    const/4 v7, 0x0

    .line 135
    invoke-direct {v6, v7}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v6, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    if-nez v2, :cond_5

    .line 143
    .line 144
    return-void

    .line 145
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 149
    .line 150
    iget v6, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 151
    .line 152
    invoke-virtual {v2, v1, v6}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    if-nez v2, :cond_6

    .line 161
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v1, "Cannot start "

    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 170
    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_6
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-nez v4, :cond_8

    .line 187
    .line 188
    aget-boolean v0, v0, v1

    .line 189
    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 193
    .line 194
    const/4 v10, 0x0

    .line 195
    const/4 v11, 0x0

    .line 196
    const-wide v7, -0x636fc4f1837ecbbcL    # -4.199904826239937E-171

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    const/4 v9, 0x0

    .line 202
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 206
    .line 207
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    if-eqz p0, :cond_8

    .line 215
    .line 216
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 221
    .line 222
    invoke-virtual {p0, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    .line 223
    .line 224
    .line 225
    :cond_8
    iget-boolean p0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 226
    .line 227
    if-nez p0, :cond_9

    .line 228
    .line 229
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    if-eqz p0, :cond_9

    .line 234
    .line 235
    sget-object p0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 236
    .line 237
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    .line 238
    .line 239
    invoke-virtual {v2, p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    if-nez p0, :cond_9

    .line 244
    .line 245
    invoke-virtual {v2, v3, v5, v5}, Lcom/android/server/wm/ActivityRecord;->addToStopping(Ljava/lang/String;ZZ)V

    .line 246
    .line 247
    .line 248
    :cond_9
    return-void
.end method

.method public final setProcessAnimating(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget v1, v0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 9
    .line 10
    or-int/lit8 v2, v1, 0x4

    .line 11
    .line 12
    iput v2, v0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 19
    .line 20
    new-instance v2, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, v0, v3}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x4

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 35
    .line 36
    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    or-int/lit8 v0, v0, 0x2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    and-int/lit8 v0, v0, -0x3

    .line 44
    .line 45
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 46
    .line 47
    iput v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->scheduleUpdateOomAdj()V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method

.method public final startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v8, p2

    .line 4
    .line 5
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aget-boolean v3, v1, v2

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 19
    .line 20
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v15

    .line 24
    const-wide v11, -0x2f3c3feff9dace17L    # -1.1709041020944812E81

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const/4 v13, 0x0

    .line 30
    const/4 v14, 0x0

    .line 31
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const-wide/16 v10, 0x20

    .line 35
    .line 36
    const-string v3, "RecentsAnimation#startRecentsActivity"

    .line 37
    .line 38
    invoke-static {v10, v11, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, v0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 42
    .line 43
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    iget-boolean v5, v4, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 48
    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    const-string/jumbo v6, "startRecentsActivity"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/RecentsAnimationController;->continueDeferredCancelAnimation()V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    iget-object v12, v0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 63
    .line 64
    iget v4, v0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 65
    .line 66
    invoke-virtual {v12, v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v0, v5}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const/4 v13, 0x1

    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    move v14, v13

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move v14, v2

    .line 80
    :goto_1
    const-string v15, "RecentsAnimation"

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    if-eqz v14, :cond_5

    .line 84
    .line 85
    invoke-static {v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    iput-object v10, v0, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    .line 90
    .line 91
    if-nez v10, :cond_5

    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 98
    .line 99
    if-ne v10, v11, :cond_5

    .line 100
    .line 101
    move-object/from16 v10, p1

    .line 102
    .line 103
    :try_start_0
    invoke-interface {v10, v7, v7}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    move-object v3, v0

    .line 109
    const-string v0, "Failed to cancel recents animation before start"

    .line 110
    .line 111
    invoke-static {v15, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    :goto_2
    aget-boolean v0, v1, v2

    .line 115
    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 123
    .line 124
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-wide v2, -0x738a80113efcc8b5L

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    const/4 v5, 0x0

    .line 135
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    return-void

    .line 139
    :cond_5
    move-object/from16 v10, p1

    .line 140
    .line 141
    iget-object v11, v0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 142
    .line 143
    if-eqz v6, :cond_6

    .line 144
    .line 145
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 146
    .line 147
    .line 148
    move-result v16

    .line 149
    if-nez v16, :cond_7

    .line 150
    .line 151
    :cond_6
    iget-object v2, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 152
    .line 153
    invoke-virtual {v2, v13, v6}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    iget-object v2, v0, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 157
    .line 158
    iget-object v13, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 159
    .line 160
    iget-object v7, v0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 161
    .line 162
    const/4 v10, -0x1

    .line 163
    move-object/from16 v17, v15

    .line 164
    .line 165
    const/4 v15, 0x0

    .line 166
    invoke-virtual {v13, v7, v15, v10}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 167
    .line 168
    .line 169
    move-result-object v19

    .line 170
    const/4 v7, 0x1

    .line 171
    invoke-virtual {v0, v7}, Lcom/android/server/wm/RecentsAnimation;->setProcessAnimating(Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 175
    .line 176
    .line 177
    if-eqz v14, :cond_a

    .line 178
    .line 179
    :try_start_1
    invoke-virtual {v12, v5}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V

    .line 180
    .line 181
    .line 182
    const/4 v3, 0x0

    .line 183
    aget-boolean v1, v1, v3

    .line 184
    .line 185
    if-eqz v1, :cond_8

    .line 186
    .line 187
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    sget-object v20, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 200
    .line 201
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v25

    .line 205
    const/16 v23, 0x0

    .line 206
    .line 207
    const/16 v24, 0x0

    .line 208
    .line 209
    const-wide v21, -0x6501eaa954a2c37bL

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    goto/16 :goto_8

    .line 220
    .line 221
    :catch_1
    move-exception v0

    .line 222
    goto/16 :goto_7

    .line 223
    .line 224
    :cond_8
    :goto_3
    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 225
    .line 226
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    if-eq v3, v1, :cond_9

    .line 231
    .line 232
    invoke-virtual {v5, v1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 233
    .line 234
    .line 235
    :cond_9
    :goto_4
    move-object v10, v6

    .line 236
    const/4 v1, 0x1

    .line 237
    goto :goto_5

    .line 238
    :cond_a
    const-string/jumbo v5, "startRecentsActivity_noTargetActivity"

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v5}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const/4 v5, 0x0

    .line 245
    invoke-virtual {v12, v5, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-virtual {v0, v4}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {v12, v4}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V

    .line 254
    .line 255
    .line 256
    aget-boolean v7, v1, v5

    .line 257
    .line 258
    if-eqz v7, :cond_b

    .line 259
    .line 260
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-static {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    sget-object v20, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 273
    .line 274
    filled-new-array {v5, v4}, [Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v25

    .line 278
    const/16 v23, 0x0

    .line 279
    .line 280
    const/16 v24, 0x0

    .line 281
    .line 282
    const-wide v21, -0x6501eaa954a2c37bL

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 294
    .line 295
    .line 296
    const/4 v3, 0x0

    .line 297
    aget-boolean v1, v1, v3

    .line 298
    .line 299
    if-eqz v1, :cond_9

    .line 300
    .line 301
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 302
    .line 303
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    sget-object v20, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 308
    .line 309
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v25

    .line 313
    const/16 v23, 0x0

    .line 314
    .line 315
    const/16 v24, 0x0

    .line 316
    .line 317
    const-wide v21, 0xe0c9fb2be8e38cdL    # 5.365881676730054E-241

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :goto_5
    iput-boolean v1, v10, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 327
    .line 328
    iput-object v10, v0, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    .line 329
    .line 330
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 331
    .line 332
    iget-object v3, v0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 333
    .line 334
    invoke-virtual {v1, v3}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 338
    .line 339
    iget v3, v0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 340
    .line 341
    iget-object v4, v12, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 342
    .line 343
    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 344
    .line 345
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 346
    .line 347
    invoke-virtual {v4}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    move-object v13, v2

    .line 352
    move v2, v3

    .line 353
    move-object/from16 v3, p1

    .line 354
    .line 355
    move-object/from16 v4, p0

    .line 356
    .line 357
    move-object v7, v10

    .line 358
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimation;ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/ActivityRecord;)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 362
    .line 363
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 364
    .line 365
    .line 366
    const-wide/16 v1, 0x0

    .line 367
    .line 368
    cmp-long v1, v8, v1

    .line 369
    .line 370
    if-lez v1, :cond_c

    .line 371
    .line 372
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    const/4 v1, 0x4

    .line 377
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    .line 378
    .line 379
    .line 380
    move-object/from16 v23, v7

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_c
    move-object/from16 v23, v15

    .line 384
    .line 385
    :goto_6
    iget-object v1, v13, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 386
    .line 387
    const/4 v2, 0x1

    .line 388
    xor-int/lit8 v21, v14, 0x1

    .line 389
    .line 390
    const/16 v20, 0x2

    .line 391
    .line 392
    move-object/from16 v18, v1

    .line 393
    .line 394
    move-object/from16 v22, v10

    .line 395
    .line 396
    invoke-virtual/range {v18 .. v23}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 397
    .line 398
    .line 399
    iget-object v1, v12, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-nez v1, :cond_d

    .line 406
    .line 407
    iget-object v1, v12, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    .line 411
    .line 412
    :cond_d
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 413
    .line 414
    .line 415
    const-wide/16 v1, 0x20

    .line 416
    .line 417
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 418
    .line 419
    .line 420
    return-void

    .line 421
    :goto_7
    :try_start_2
    const-string v1, "Failed to start recents activity"

    .line 422
    .line 423
    move-object/from16 v2, v17

    .line 424
    .line 425
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .line 427
    .line 428
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    :goto_8
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 430
    .line 431
    .line 432
    const-wide/16 v1, 0x20

    .line 433
    .line 434
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 435
    .line 436
    .line 437
    throw v0
.end method

.method public final startRecentsActivityInBackground(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 14
    .line 15
    const/high16 v2, 0x10010000

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 23
    .line 24
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 29
    .line 30
    iget v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 31
    .line 32
    iput v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 41
    .line 42
    iput-object v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v1, Lcom/android/server/wm/SafeActivityOptions;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 54
    .line 55
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 56
    .line 57
    iget p0, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 58
    .line 59
    iput p0, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 62
    .line 63
    .line 64
    return-void
.end method
