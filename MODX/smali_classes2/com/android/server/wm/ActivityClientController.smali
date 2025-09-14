.class public final Lcom/android/server/wm/ActivityClientController;
.super Landroid/app/IActivityClientController$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public final mContext:Landroid/content/Context;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/IActivityClientController$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    return-void
.end method

.method public static canGetLaunchedFromLocked(ILcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;Z)Z
    .locals 3

    .line 1
    const-wide/32 v0, 0xf7b60d9

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    .line 17
    .line 18
    invoke-virtual {v2, p2, v0}, Ljava/util/WeakHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mIsShareIdentityEnabled:Z

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    .line 32
    .line 33
    :goto_0
    if-eqz p3, :cond_3

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    .line 38
    .line 39
    invoke-virtual {p1, p2, v0}, Ljava/util/WeakHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget p1, p1, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mUid:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 p1, -0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 53
    .line 54
    :goto_1
    if-nez v2, :cond_4

    .line 55
    .line 56
    if-ne p1, p0, :cond_5

    .line 57
    .line 58
    :cond_4
    const/4 v1, 0x1

    .line 59
    :cond_5
    return v1
.end method

.method public static executeMultiWindowFullscreenRequest(ILcom/android/server/wm/Task;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 9
    .line 10
    .line 11
    iput p0, p1, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iput-object p0, p1, Lcom/android/server/wm/Task;->mMultiWindowRestoreParent:Landroid/window/WindowContainerToken;

    .line 24
    .line 25
    move p0, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p0, p1, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    if-ne p0, v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p1, Lcom/android/server/wm/Task;->mMultiWindowRestoreParent:Landroid/window/WindowContainerToken;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p1, Lcom/android/server/wm/Task;->mMultiWindowRestoreParent:Landroid/window/WindowContainerToken;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const v2, 0x7fffffff

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget v1, p1, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    if-ne p0, v0, :cond_3

    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public static shouldMoveTaskToBack(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eq p0, p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda0;-><init>(ILcom/android/server/wm/ActivityRecord;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eq p0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v2, v2, Lcom/android/server/wm/TaskFragment;->mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 26
    .line 27
    if-ne v2, v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    return v0

    .line 31
    :cond_2
    :goto_1
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/4 v1, 0x0

    .line 47
    :goto_2
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-ne v2, p0, :cond_4

    .line 58
    .line 59
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    .line 60
    .line 61
    const/4 p1, 0x2

    .line 62
    if-ne p0, p1, :cond_4

    .line 63
    .line 64
    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_4

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    :cond_4
    return v0
.end method

.method public static validateMultiwindowFullscreenRequestLocked(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    if-nez p0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 p1, 0x1

    .line 24
    if-eq p0, p1, :cond_2

    .line 25
    .line 26
    return p1

    .line 27
    :cond_2
    iget p0, p2, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    .line 28
    .line 29
    const/4 p2, -0x1

    .line 30
    if-ne p0, p2, :cond_3

    .line 31
    .line 32
    return p1

    .line 33
    :cond_3
    return v1
.end method


# virtual methods
.method public final activityDestroyed(Landroid/os/IBinder;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    const-string v2, "activityDestroyed"

    .line 12
    .line 13
    const-wide/16 v3, 0x20

    .line 14
    .line 15
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string v2, "activityDestroyed"

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyed(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_1
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public final activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x20

    .line 6
    .line 7
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    const-string v5, "activityIdle"

    .line 14
    .line 15
    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_2
    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const v6, 0xf430b

    .line 58
    .line 59
    .line 60
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0, p1, v5, v5, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 67
    .line 68
    .line 69
    if-eqz p3, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 82
    .line 83
    new-instance p2, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;

    .line 84
    .line 85
    const/4 p3, 0x1

    .line 86
    invoke-direct {p2, p3}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 90
    .line 91
    invoke-static {p2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    .line 97
    .line 98
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :goto_0
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 113
    .line 114
    .line 115
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 116
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    .line 121
    .line 122
    throw p0
.end method

.method public final activityLocalRelaunch(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->startRelaunching()V

    .line 18
    .line 19
    .line 20
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->onActivityLocalRelaunched(Lcom/android/server/wm/ActivityRecord;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final activityPaused(Landroid/os/IBinder;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    const-string v2, "activityPaused"

    .line 12
    .line 13
    const-wide/16 v3, 0x20

    .line 14
    .line 15
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final activityRefreshed(Landroid/os/IBinder;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    aget-boolean v2, v2, v3

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 27
    .line 28
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const-wide v4, -0xf78113bedfcb65L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    if-nez p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p1, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mIsRefreshRequested:Z

    .line 63
    .line 64
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public final activityRelaunched(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->finishRelaunching()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final activityResumed(Landroid/os/IBinder;Z)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-object v5, v4, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    const-string/jumbo v5, "persona"

    .line 30
    .line 31
    .line 32
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v5}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Lcom/android/server/pm/PersonaManagerService;

    .line 41
    .line 42
    iput-object v5, v4, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 43
    .line 44
    :cond_0
    iget-object v4, v4, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityClientController;->isTopOfTask(Landroid/os/IBinder;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v5, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 53
    .line 54
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    .line 55
    .line 56
    invoke-virtual {v5, v4, v3}, Lcom/android/server/wm/PersonaActivityHelper;->notifyActivityResumedLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 63
    .line 64
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 73
    .line 74
    if-nez v4, :cond_2

    .line 75
    .line 76
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v3}, Lcom/android/server/DualAppManagerService;->notifyActivityResumedLocked(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->activityResumedLocked(Landroid/os/IBinder;Z)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 91
    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->mIsAiKeyAppTarget:Z

    .line 100
    .line 101
    if-eqz p2, :cond_3

    .line 102
    .line 103
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 104
    .line 105
    if-eqz p2, :cond_3

    .line 106
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    if-eqz p2, :cond_3

    .line 112
    .line 113
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 114
    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    const-string/jumbo v3, "voice.robin.main.MainActivity"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_3

    .line 131
    .line 132
    const-string/jumbo p2, "resumed"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ChangeTransitionController;->removeSyncDeferredForTrampolineApp(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const/4 p0, 0x0

    .line 139
    iput-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mIsAiKeyAppTarget:Z

    .line 140
    .line 141
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 151
    .line 152
    .line 153
    throw p0
.end method

.method public final activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 11

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/Bundle;->hasFileDescriptors()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p1, "File descriptors passed in Bundle"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 25
    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    const-string v3, "activityStopped"

    .line 29
    .line 30
    const-wide/16 v4, 0x20

    .line 31
    .line 32
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/16 v3, 0xd5

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 46
    .line 47
    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    .line 48
    .line 49
    invoke-virtual {p1, v8, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-nez v8, :cond_2

    .line 54
    .line 55
    iget-object v8, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 56
    .line 57
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 58
    .line 59
    invoke-virtual {v8, v3, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_2

    .line 64
    .line 65
    const-string v8, "continue-restart"

    .line 66
    .line 67
    invoke-virtual {p1, v9, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_3

    .line 85
    .line 86
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 87
    .line 88
    iget-object v7, v6, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 89
    .line 90
    iget v6, v6, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 91
    .line 92
    move-object v10, v7

    .line 93
    move v7, v6

    .line 94
    move-object v6, v10

    .line 95
    :cond_3
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->activityStopped(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 99
    .line 100
    .line 101
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 103
    .line 104
    .line 105
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    .line 106
    .line 107
    if-eqz p2, :cond_9

    .line 108
    .line 109
    if-eqz p1, :cond_9

    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 112
    .line 113
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 114
    .line 115
    iget-object p3, p2, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 116
    .line 117
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 118
    .line 119
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 120
    .line 121
    .line 122
    monitor-enter p3

    .line 123
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    if-eqz p4, :cond_8

    .line 128
    .line 129
    iget-boolean v2, p4, Lcom/android/server/wm/Task;->mIsWaitingRemoveEmbedActivityTask:Z

    .line 130
    .line 131
    if-nez v2, :cond_5

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    iget-object v2, p4, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 135
    .line 136
    if-eqz v2, :cond_7

    .line 137
    .line 138
    iget v4, v2, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 139
    .line 140
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 141
    .line 142
    if-ne v4, v5, :cond_6

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    iget-object v4, p2, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 146
    .line 147
    new-instance v5, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;

    .line 148
    .line 149
    invoke-direct {v5, p2, p4, v2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowProcessController;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    .line 154
    .line 155
    :cond_7
    :goto_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :catchall_1
    move-exception p0

    .line 161
    goto :goto_4

    .line 162
    :cond_8
    :goto_3
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :goto_4
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 169
    .line 170
    .line 171
    throw p0

    .line 172
    :cond_9
    :goto_5
    if-eqz v6, :cond_a

    .line 173
    .line 174
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 175
    .line 176
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 177
    .line 178
    invoke-virtual {p2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 184
    .line 185
    const-string/jumbo p2, "restartActivityProcess"

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v6, v7, p2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    .line 196
    .line 197
    .line 198
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :goto_6
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 204
    .line 205
    .line 206
    throw p0
.end method

.method public final activityTopResumedStateLost()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleTopResumedStateReleased(Z)V

    .line 15
    .line 16
    .line 17
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final adjustPopOverOptions(Landroid/os/IBinder;[I[I[Landroid/graphics/Point;[I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 18
    .line 19
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/wm/PopOverState;->adjustOptions([I[I[Landroid/graphics/Point;[I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    .line 38
    .line 39
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;II)I
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/uri/GrantUri;

    .line 2
    .line 3
    invoke-direct {v0, p5, p4, p3}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object p5, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object p5, p5, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    check-cast p5, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 16
    .line 17
    invoke-virtual {p5, v0, v1, p4, v2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkUriPermission(Lcom/android/server/uri/GrantUri;IIZ)Z

    .line 18
    .line 19
    .line 20
    move-result p5

    .line 21
    if-eqz p5, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 26
    .line 27
    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p3, -0x1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, p2, v0, p4}, Lcom/android/server/wm/ActivityRecord;->checkContentUriPermission(Landroid/os/IBinder;Lcom/android/server/uri/GrantUri;I)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    return p3

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    .line 53
    .line 54
    return p3

    .line 55
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p2, "You don\'t have access to the content URI, hence can\'t check if the caller has access to it: "

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0
.end method

.method public final clearOverrideActivityTransition(Landroid/os/IBinder;Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 24
    .line 25
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final convertFromTranslucent(Landroid/os/IBinder;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityClientController;->convertFromTranslucentOp(Landroid/os/IBinder;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final convertFromTranslucentOp(Landroid/os/IBinder;Z)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :try_start_2
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 46
    .line 47
    const/4 v5, 0x4

    .line 48
    invoke-virtual {v3, v5, v2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object v2, v4

    .line 54
    :goto_0
    const/4 v3, 0x1

    .line 55
    invoke-virtual {p1, v3, p2}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(ZZ)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    invoke-static {}, Landroid/window/TransitionInfo$AnimationOptions;->makeSceneTransitionAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v2, v5, v4, v4}, Lcom/android/server/wm/Transition;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 68
    .line 69
    .line 70
    iget-object v5, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 71
    .line 72
    invoke-virtual {v5, v2, v4, v4, v4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 73
    .line 74
    .line 75
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->abort()V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    return p2

    .line 96
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    .line 99
    .line 100
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public final convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 11

    .line 1
    const-string v0, "convertToTranslucent, r="

    .line 2
    .line 3
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return v3

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_0
    :try_start_2
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 36
    .line 37
    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v5, 0x3

    .line 42
    const/4 v6, 0x0

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 48
    .line 49
    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 50
    .line 51
    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 52
    .line 53
    iget-object v10, p1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 54
    .line 55
    invoke-virtual {p2, v7, v8, v9, v10}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object p2, v6

    .line 61
    :goto_0
    iput-object p2, v4, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 62
    .line 63
    const-string p2, "ActivityTaskManager"

    .line 64
    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, ", under="

    .line 74
    .line 75
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ", under.returningOptions="

    .line 82
    .line 83
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 87
    .line 88
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, ", caller="

    .line 92
    .line 93
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_3

    .line 117
    .line 118
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-nez p2, :cond_3

    .line 125
    .line 126
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 127
    .line 128
    invoke-virtual {p2, v5, v3}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    goto :goto_1

    .line 133
    :cond_3
    move-object p2, v6

    .line 134
    :goto_1
    invoke-virtual {p1, v3, v3}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(ZZ)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz p2, :cond_7

    .line 139
    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 143
    .line 144
    invoke-virtual {v3, p2, v6, v6, v6}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 145
    .line 146
    .line 147
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const/4 v5, 0x1

    .line 154
    invoke-virtual {v3, p1, v5}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 155
    .line 156
    .line 157
    if-eqz v4, :cond_4

    .line 158
    .line 159
    iget-object p1, v4, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 160
    .line 161
    if-eqz p1, :cond_4

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationType()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    const/4 v3, 0x5

    .line 168
    if-eq p1, v3, :cond_5

    .line 169
    .line 170
    :cond_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    .line 171
    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    :cond_5
    invoke-static {}, Landroid/window/TransitionInfo$AnimationOptions;->makeSceneTransitionAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p2, p1, v6, v6}, Lcom/android/server/wm/Transition;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->abort()V

    .line 183
    .line 184
    .line 185
    :cond_7
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 187
    .line 188
    .line 189
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    .line 191
    .line 192
    return v0

    .line 193
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 195
    .line 196
    .line 197
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 198
    :catchall_1
    move-exception p0

    .line 199
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    .line 201
    .line 202
    throw p0
.end method

.method public final dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 6
    .line 7
    const-string v1, "android.permission.SHOW_KEYGUARD_MESSAGE"

    .line 8
    .line 9
    const-string v2, "dismissKeyguard"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 19
    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 21
    .line 22
    .line 23
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/KeyguardController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final enableTaskLocaleOverride(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x3e8

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mAlignActivityLocaleWithTask:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_6

    .line 18
    .line 19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->getAspectRatio()Landroid/util/Rational;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getAspectRatio()Landroid/util/Rational;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 54
    .line 55
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    const-string/jumbo v3, "setPipAspectRatio"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p2, ": Too many PiP aspect ratio change requests from "

    .line 70
    .line 71
    invoke-static {p1, p2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const v1, 0x1050100

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const v2, 0x10500ff

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 121
    .line 122
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 123
    .line 124
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 125
    .line 126
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object v2, v3, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 134
    .line 135
    iget v3, v2, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    .line 136
    .line 137
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-gtz v3, :cond_2

    .line 142
    .line 143
    iget v2, v2, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    .line 144
    .line 145
    invoke-static {v4, v2}, Ljava/lang/Float;->compare(FF)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-gtz v2, :cond_2

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    const-string p3, ": Aspect ratio is too extreme (must be between %f and %f)."

    .line 155
    .line 156
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 181
    .line 182
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsExpandedPictureInPicture:Z

    .line 183
    .line 184
    if-eqz v2, :cond_5

    .line 185
    .line 186
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetExpandedAspectRatio()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_5

    .line 191
    .line 192
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 193
    .line 194
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 195
    .line 196
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 197
    .line 198
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    iget-object v2, v3, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 206
    .line 207
    iget v3, v2, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    .line 208
    .line 209
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-gtz v3, :cond_5

    .line 214
    .line 215
    iget v2, v2, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    .line 216
    .line 217
    invoke-static {v4, v2}, Ljava/lang/Float;->compare(FF)I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-lez v2, :cond_4

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 225
    .line 226
    const-string p3, ": Expanded aspect ratio is not extreme enough (must not be between %f and %f)."

    .line 227
    .line 228
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    .line 238
    .line 239
    move-result-object p3

    .line 240
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw p0

    .line 252
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    .line 253
    .line 254
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->getMaxNumPictureInPictureActions(Landroid/content/Context;)I

    .line 255
    .line 256
    .line 257
    move-result p0

    .line 258
    invoke-virtual {p3, p0}, Landroid/app/PictureInPictureParams;->truncateActions(I)V

    .line 259
    .line 260
    .line 261
    return-object v0

    .line 262
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 263
    .line 264
    const-string p2, ": Current activity does not support picture-in-picture."

    .line 265
    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0

    .line 274
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 275
    .line 276
    new-instance p3, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string p1, ": Can\'t find activity for token="

    .line 285
    .line 286
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw p0

    .line 300
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 301
    .line 302
    const-string p2, ": Device doesn\'t support picture-in-picture mode."

    .line 303
    .line 304
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw p0
.end method

.method public final enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    sget-object v4, Lcom/android/server/utils/quota/Categorizer;->SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 19
    .line 20
    sget-object v3, Lcom/android/server/utils/quota/Category;->SINGLE_CATEGORY:Lcom/android/server/utils/quota/Category;

    .line 21
    .line 22
    const/16 v4, 0x3c

    .line 23
    .line 24
    const-wide/32 v5, 0xea60

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 33
    .line 34
    .line 35
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    const-string v3, "enterPictureInPictureMode"

    .line 37
    .line 38
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityClientController;->ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-virtual {p0, p1, p2, v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;ZZ)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    move/from16 v1, p4

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "File descriptors passed in Intent"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 27
    .line 28
    .line 29
    monitor-enter v3

    .line 30
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v4, 0x1

    .line 35
    if-nez v6, :cond_2

    .line 36
    .line 37
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    return v4

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto/16 :goto_9

    .line 44
    .line 45
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    .line 51
    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 52
    .line 53
    invoke-virtual {v3, v2, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v7, v0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 58
    .line 59
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 60
    .line 61
    .line 62
    monitor-enter v7

    .line 63
    :try_start_2
    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 64
    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    .line 70
    .line 71
    return v4

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    goto/16 :goto_8

    .line 74
    .line 75
    :cond_3
    :try_start_3
    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    invoke-virtual {v9, v4, v5}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    if-nez v8, :cond_4

    .line 83
    .line 84
    const-string v10, "ActivityTaskManager"

    .line 85
    .line 86
    const-string v11, "Finishing task with all activities already finished"

    .line 87
    .line 88
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object v10, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 92
    .line 93
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 94
    .line 95
    invoke-virtual {v10, v6}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-eqz v10, :cond_5

    .line 100
    .line 101
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 103
    .line 104
    .line 105
    return v5

    .line 106
    :cond_5
    :try_start_4
    iget-object v10, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 107
    .line 108
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 109
    .line 110
    if-eqz v10, :cond_6

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    const/4 v11, -0x1

    .line 117
    move-object/from16 v12, p1

    .line 118
    .line 119
    invoke-virtual {v10, v11, v12}, Lcom/android/server/wm/Task;->topRunningActivity(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 120
    .line 121
    .line 122
    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    if-eqz v10, :cond_6

    .line 124
    .line 125
    :try_start_5
    iget-object v11, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 126
    .line 127
    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 128
    .line 129
    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {v11, v10}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v10
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    goto :goto_1

    .line 136
    :catch_0
    :try_start_6
    iget-object v10, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 137
    .line 138
    const/4 v11, 0x0

    .line 139
    iput-object v11, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 140
    .line 141
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    invoke-virtual {v10, v11}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 146
    .line 147
    .line 148
    move v10, v4

    .line 149
    :goto_1
    if-nez v10, :cond_6

    .line 150
    .line 151
    const-string v0, "ActivityTaskManager"

    .line 152
    .line 153
    const-string v1, "Not finishing activity because controller resumed"

    .line 154
    .line 155
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 159
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 160
    .line 161
    .line 162
    return v5

    .line 163
    :cond_6
    :try_start_7
    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 164
    .line 165
    if-eqz v10, :cond_8

    .line 166
    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v11

    .line 171
    iget-wide v13, v10, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    .line 172
    .line 173
    cmp-long v13, v11, v13

    .line 174
    .line 175
    if-lez v13, :cond_8

    .line 176
    .line 177
    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    if-nez v13, :cond_7

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_7
    iput-wide v11, v10, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    .line 185
    .line 186
    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 187
    .line 188
    .line 189
    move-result-wide v17

    .line 190
    const-string v10, "finishActivity"

    .line 191
    .line 192
    const-wide/16 v14, 0x20

    .line 193
    .line 194
    invoke-static {v14, v15, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 195
    .line 196
    .line 197
    if-ne v1, v4, :cond_9

    .line 198
    .line 199
    move v11, v4

    .line 200
    goto :goto_3

    .line 201
    :cond_9
    move v11, v5

    .line 202
    :goto_3
    :try_start_8
    iget-object v10, v0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 203
    .line 204
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 205
    .line 206
    invoke-virtual {v10, v6}, Lcom/android/server/wm/BackgroundActivityStartController;->onActivityRequestedFinishing(Lcom/android/server/wm/ActivityRecord;)V

    .line 207
    .line 208
    .line 209
    const/4 v10, 0x2

    .line 210
    if-eq v1, v10, :cond_c

    .line 211
    .line 212
    if-eqz v11, :cond_a

    .line 213
    .line 214
    if-ne v6, v8, :cond_a

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_a
    const-string v4, "app-request"

    .line 218
    .line 219
    const/4 v5, 0x1

    .line 220
    move-object v0, v6

    .line 221
    move/from16 v1, p2

    .line 222
    .line 223
    move-object/from16 v2, p3

    .line 224
    .line 225
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 226
    .line 227
    .line 228
    iget-boolean v4, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 229
    .line 230
    if-nez v4, :cond_b

    .line 231
    .line 232
    const-string v0, "ActivityTaskManager"

    .line 233
    .line 234
    const-string v1, "Failed to finish by app-request"

    .line 235
    .line 236
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :catchall_2
    move-exception v0

    .line 241
    move-wide v2, v14

    .line 242
    goto :goto_7

    .line 243
    :cond_b
    :goto_4
    move-wide v2, v14

    .line 244
    goto :goto_6

    .line 245
    :cond_c
    :goto_5
    iget-object v8, v0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 246
    .line 247
    const-string v12, "finish-activity"

    .line 248
    .line 249
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 257
    .line 258
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 259
    .line 260
    const/4 v13, 0x0

    .line 261
    const/16 v1, 0x3e8

    .line 262
    .line 263
    const/16 v16, 0x0

    .line 264
    .line 265
    const/4 v10, 0x0

    .line 266
    move-wide v2, v14

    .line 267
    move v14, v1

    .line 268
    move v15, v0

    .line 269
    :try_start_9
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V

    .line 270
    .line 271
    .line 272
    iput v5, v6, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 273
    .line 274
    :goto_6
    :try_start_a
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 275
    .line 276
    .line 277
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 278
    .line 279
    .line 280
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 281
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 282
    .line 283
    .line 284
    return v4

    .line 285
    :catchall_3
    move-exception v0

    .line 286
    :goto_7
    :try_start_b
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 287
    .line 288
    .line 289
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    .line 291
    .line 292
    throw v0

    .line 293
    :goto_8
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 294
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 295
    .line 296
    .line 297
    throw v0

    .line 298
    :goto_9
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 299
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 300
    .line 301
    .line 302
    throw v0
.end method

.method public final finishActivityAffinity(Landroid/os/IBinder;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return v3

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    monitor-exit v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 41
    .line 42
    new-instance v3, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    invoke-direct {v3, v4, p1}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda0;-><init>(ILcom/android/server/wm/ActivityRecord;)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    invoke-virtual {p0, v3, p1, v4, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 50
    .line 51
    .line 52
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return v4

    .line 60
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    .line 63
    .line 64
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda3;

    .line 32
    .line 33
    invoke-direct {v4, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 43
    .line 44
    .line 45
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 57
    .line 58
    .line 59
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 60
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public final getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityClientController;->getPackage(Landroid/os/IBinder;Landroid/os/IBinder;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityClientController;->getUid(Landroid/os/IBinder;Landroid/os/IBinder;Z)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_2
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 29
    .line 30
    new-instance v4, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda2;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x1

    .line 37
    invoke-virtual {v3, v4, p1, v5, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-ne v4, p1, :cond_1

    .line 52
    .line 53
    iget-object p1, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 54
    .line 55
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    return-object v2

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 74
    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 78
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, v0

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, v0

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 21
    .line 22
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final getDisplayId(Landroid/os/IBinder;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v1, -0x1

    .line 27
    if-eq p1, v1, :cond_1

    .line 28
    .line 29
    move v0, p1

    .line 30
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    return v0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    return v0

    .line 42
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityClientController;->getPackage(Landroid/os/IBinder;Landroid/os/IBinder;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityClientController;->getUid(Landroid/os/IBinder;Landroid/os/IBinder;Z)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getPackage(Landroid/os/IBinder;Landroid/os/IBinder;Z)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityClientController;->isInternalCallerGetLaunchedFrom(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz p1, :cond_4

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController;->canGetLaunchedFromLocked(ILcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 34
    .line 35
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    .line 38
    .line 39
    invoke-virtual {v0, p2, v2}, Ljava/util/WeakHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    if-nez p2, :cond_4

    .line 49
    .line 50
    :goto_1
    if-eqz p3, :cond_2

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    .line 55
    .line 56
    invoke-virtual {p1, p2, v2}, Ljava/util/WeakHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget-object v2, p1, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mPackageName:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 68
    .line 69
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method public final getRequestedOrientation(Landroid/os/IBinder;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p1, -0x1

    .line 21
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    return p1

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final getTaskForActivity(Landroid/os/IBinder;Z)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, -0x1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 16
    .line 17
    .line 18
    return v0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-ne p2, p1, :cond_1

    .line 32
    .line 33
    iget v0, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 34
    .line 35
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    :try_start_2
    iget p1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 41
    .line 42
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    return p1

    .line 47
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public final getUid(Landroid/os/IBinder;Landroid/os/IBinder;Z)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityClientController;->isInternalCallerGetLaunchedFrom(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v2, -0x1

    .line 20
    if-eqz p1, :cond_4

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController;->canGetLaunchedFromLocked(ILcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    if-nez p2, :cond_4

    .line 50
    .line 51
    :goto_1
    if-eqz p3, :cond_2

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Ljava/util/WeakHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iget v2, p1, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mUid:I

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 69
    .line 70
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 77
    .line 78
    .line 79
    return v2

    .line 80
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 82
    .line 83
    .line 84
    throw p1
.end method

.method public final invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string v0, "invalidateHomeTaskSnapshot"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v0

    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 59
    .line 60
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 63
    .line 64
    check-cast p0, Lcom/android/server/wm/TaskSnapshotCache;

    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final isImmersive(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 14
    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 17
    .line 18
    .line 19
    return p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public final isInternalCallerGetLaunchedFrom(I)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    const/4 v3, 0x2

    .line 33
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    array-length p1, p0

    .line 42
    if-lez p1, :cond_3

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    aget-object p0, p0, v1

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move v2, v1

    .line 58
    :goto_0
    return v2
.end method

.method public final isRequestedToLaunchInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 16
    .line 17
    .line 18
    return v0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

    .line 22
    .line 23
    if-ne p1, p2, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    return v0

    .line 31
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    return p1

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final isTopOfTask(Landroid/os/IBinder;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-ne v0, p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 8

    .line 1
    const-string/jumbo v0, "moveActivityTaskToBack"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    const/4 v3, 0x1

    .line 18
    xor-int/2addr p2, v3

    .line 19
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, -0x1

    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    if-nez v7, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v7, v5, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-lez p2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget v6, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 50
    .line 51
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 54
    .line 55
    invoke-virtual {p0, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_4

    .line 60
    .line 61
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 p2, 0x0

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move-object p1, p2

    .line 74
    :goto_1
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    return p0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    return v5

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    goto :goto_3

    .line 98
    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 100
    .line 101
    .line 102
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 103
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    throw p0
.end method

.method public final navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 32
    .line 33
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 34
    .line 35
    invoke-virtual {p1, p5, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 40
    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 42
    .line 43
    .line 44
    monitor-enter p0

    .line 45
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v3, p2

    .line 50
    move-object v4, p3

    .line 51
    move v6, p4

    .line 52
    move-object v7, p5

    .line 53
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/Task;->navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    return p1

    .line 62
    :catchall_1
    move-exception p1

    .line 63
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public final onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :try_start_2
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    .line 37
    iget-object v5, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    .line 39
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 40
    .line 41
    iget-object v5, v5, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v5, v7}, Lcom/android/server/wm/TaskOrganizerController;->handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    monitor-exit v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v3, v4}, Lcom/android/server/wm/ActivityClientController;->shouldMoveTaskToBack(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wm/ActivityClientController;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    .line 62
    .line 63
    .line 64
    monitor-exit v2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    .line 69
    .line 70
    :try_start_4
    invoke-interface {p2}, Landroid/app/IRequestFinishCallback;->requestFinish()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p0

    .line 75
    :try_start_5
    const-string p1, "ActivityTaskManager"

    .line 76
    .line 77
    const-string p2, "Failed to invoke request finish callback"

    .line 78
    .line 79
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    goto :goto_3

    .line 88
    :goto_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 89
    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    .line 91
    .line 92
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 93
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public final onPictureInPictureUiStateChanged(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureUiState;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 10
    .line 11
    invoke-static {v1, p2}, Landroid/app/servertransaction/PipStateTransactionItem;->obtain(Landroid/os/IBinder;Landroid/app/PictureInPictureUiState;)Landroid/app/servertransaction/PipStateTransactionItem;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v0, "Failed to send pip state transaction item: "

    .line 23
    .line 24
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "ActivityTaskManager"

    .line 41
    .line 42
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IActivityClientController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string p1, "ActivityClientController"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final overrideActivityTransition(Landroid/os/IBinder;ZIII)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 23
    .line 24
    :goto_0
    if-nez v2, :cond_2

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 37
    .line 38
    :cond_2
    :goto_1
    iput p3, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    .line 39
    .line 40
    iput p4, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    .line 41
    .line 42
    iput p5, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    .line 43
    .line 44
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public final overridePendingTaskTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 18
    .line 19
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 20
    .line 21
    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v10, 0x1

    .line 35
    move-object v4, p2

    .line 36
    move v5, p3

    .line 37
    move v6, p4

    .line 38
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-static {p2, p3, p4, v2, v3}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 50
    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p3, 0x0

    .line 55
    invoke-virtual {p1, p2, p3, p3}, Lcom/android/server/wm/Transition;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public final overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 13

    .line 1
    const-string v0, "OverrideAnimation is not allowed by Letterbox. r="

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    move-object v3, p0

    .line 8
    iget-object v3, v3, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v3

    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    invoke-static {v4}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    const-string v5, "MultiTaskingAppCompat"

    .line 29
    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    if-eqz v4, :cond_2

    .line 49
    .line 50
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 51
    .line 52
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 53
    .line 54
    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 61
    .line 62
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 63
    .line 64
    iget-boolean v12, v4, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    const/4 v11, 0x0

    .line 68
    move-object v6, p2

    .line 69
    move/from16 v7, p3

    .line 70
    .line 71
    move/from16 v8, p4

    .line 72
    .line 73
    move/from16 v9, p5

    .line 74
    .line 75
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 79
    .line 80
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    .line 81
    .line 82
    move-object v5, p2

    .line 83
    move/from16 v6, p3

    .line 84
    .line 85
    move/from16 v7, p4

    .line 86
    .line 87
    move/from16 v8, p5

    .line 88
    .line 89
    invoke-static {p2, v6, v7, v8, v4}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 94
    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const/4 v5, 0x0

    .line 99
    invoke-virtual {v0, v4, v5, v5}, Lcom/android/server/wm/Transition;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 112
    .line 113
    .line 114
    throw v0
.end method

.method public final registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    .line 6
    .line 7
    const-string/jumbo v2, "registerRemoteAnimations"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 31
    .line 32
    .line 33
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iput-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 41
    .line 42
    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda9;

    .line 43
    .line 44
    invoke-direct {v2, p1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v2}, Landroid/view/RemoteAnimationDefinition;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final releaseActivityInstance(Landroid/os/IBinder;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v2, "app-req"

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    .line 30
    .line 31
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    .line 32
    .line 33
    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return p1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 58
    .line 59
    .line 60
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    .locals 4

    .line 1
    const-string v0, "<GATE-M>APP_FULLY_LOADED_"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 22
    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyFullyDrawn(ZLcom/android/server/wm/ActivityRecord;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string p0, "GATE"

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "</GATE-M>"

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 71
    .line 72
    .line 73
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    const-wide v3, -0x444be87d4eb7ca3dL    # -4.254612180629345E-21

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 33
    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 35
    .line 36
    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iput-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    .line 45
    .line 46
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public final requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController;->requestMultiwindowFullscreenLocked(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :catchall_1
    move-exception p0

    .line 25
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final requestMultiwindowFullscreenLocked(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    if-nez v4, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p2, v4, p0}, Lcom/android/server/wm/ActivityClientController;->validateMultiwindowFullscreenRequestLocked(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string/jumbo v0, "result"

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :try_start_0
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    const-string p3, "ActivityTaskManager"

    .line 43
    .line 44
    const-string v0, "client throws an exception back to the server, ignore it"

    .line 45
    .line 46
    invoke-static {p3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    if-nez p1, :cond_2

    .line 50
    .line 51
    invoke-static {p2, p0}, Lcom/android/server/wm/ActivityClientController;->executeMultiWindowFullscreenRequest(ILcom/android/server/wm/Task;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void

    .line 55
    :cond_3
    new-instance v6, Lcom/android/server/wm/Transition;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 62
    .line 63
    const/4 v1, 0x6

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-direct {v6, v1, v2, p1, v0}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 69
    .line 70
    new-instance v7, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;

    .line 71
    .line 72
    move-object v0, v7

    .line 73
    move-object v1, p0

    .line 74
    move v2, p2

    .line 75
    move-object v3, p3

    .line 76
    move-object v5, v6

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityClientController;ILandroid/os/IRemoteCallback;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v6, v7}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final requestPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string/jumbo v0, "requestPictureInPictureMode"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 28
    .line 29
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;ZZ)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 43
    .line 44
    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 45
    .line 46
    invoke-static {v2}, Landroid/app/servertransaction/EnterPipRequestedItem;->obtain(Landroid/os/IBinder;)Landroid/app/servertransaction/EnterPipRequestedItem;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v2, "Failed to send enter pip requested item: "

    .line 59
    .line 60
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v0, "ActivityTaskManager"

    .line 77
    .line 78
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    return v1
.end method

.method public final setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->allowDisableActivityRecordInputSink()Z

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
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 11
    .line 12
    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 13
    .line 14
    const-string/jumbo v2, "setActivityRecordInputSinkEnabled"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 23
    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSinkEnabled:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->mAllowCrossUidActivitySwitchFromBelow:Z

    .line 18
    .line 19
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception p1

    .line 30
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final setForceSendResultForMediaProjection(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    .line 6
    .line 7
    const-string/jumbo v2, "setForceSendResultForMediaProjection"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 16
    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mForceSendResultForMediaProjection:Z

    .line 32
    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final setImmersive(Landroid/os/IBinder;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 14
    .line 15
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/ActivityRecord;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    aget-boolean p2, p2, v1

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 41
    .line 42
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    const-wide v2, -0x162d2a884e53ca28L    # -5.766554428023569E201

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 67
    .line 68
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;

    .line 69
    .line 70
    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public final setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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
    :catchall_1
    move-exception p1

    .line 37
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 42
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    sget-object v4, Lcom/android/server/utils/quota/Categorizer;->SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mSetPipAspectRatioQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 19
    .line 20
    sget-object v3, Lcom/android/server/utils/quota/Category;->SINGLE_CATEGORY:Lcom/android/server/utils/quota/Category;

    .line 21
    .line 22
    const/16 v4, 0x3c

    .line 23
    .line 24
    const-wide/32 v5, 0xea60

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 33
    .line 34
    .line 35
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    const-string/jumbo v3, "setPictureInPictureParams"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityClientController;->ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 69
    .line 70
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    invoke-virtual {p2, v3, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 89
    .line 90
    .line 91
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_0

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    .line 105
    .line 106
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    .line 109
    .line 110
    throw p0
.end method

.method public final setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->mEnableRecentsScreenshot:Z

    .line 18
    .line 19
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception p1

    .line 30
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/16 v3, 0x791e

    .line 28
    .line 29
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setRequestedOrientation(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    .line 51
    .line 52
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 53
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->shouldDockBigOverlays:Z

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 25
    .line 26
    .line 27
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 40
    .line 41
    .line 42
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final setShowWhenLocked(Landroid/os/IBinder;Z)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const v3, 0xf430d

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    .line 48
    .line 49
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 71
    .line 72
    .line 73
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final setTurnScreenOn(Landroid/os/IBinder;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 18
    .line 19
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception p1

    .line 30
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_1
    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 38
    .line 39
    invoke-virtual {v0, v1, p3}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(ILandroid/content/ComponentName;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    return v0

    .line 47
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 52
    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 54
    .line 55
    .line 56
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p3, 0x0

    .line 61
    :goto_0
    :try_start_3
    iput-object p3, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 62
    .line 63
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 64
    .line 65
    new-instance p3, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;

    .line 66
    .line 67
    const/4 v3, 0x5

    .line 68
    invoke-direct {p3, v3, p1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/ActivityRecord;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    return p0

    .line 94
    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 96
    .line 97
    .line 98
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :catchall_2
    move-exception p0

    .line 105
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 106
    throw p0

    .line 107
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :catchall_3
    move-exception p0

    .line 114
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 115
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 116
    .line 117
    .line 118
    throw p0
.end method

.method public final shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task;->shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    return p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 11

    .line 1
    const-string/jumbo v0, "showAssistFromActivity failed: caller "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "showAssistFromActivity failed: caller "

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v6, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 22
    .line 23
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 24
    .line 25
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    invoke-virtual {v6, v7, v7}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v6, 0x0

    .line 38
    :goto_0
    const/4 v7, 0x0

    .line 39
    if-eq v6, v5, :cond_1

    .line 40
    .line 41
    const-string p0, "ActivityTaskManager"

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p2, " is not current top "

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :goto_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    return v7

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    :try_start_2
    iget-boolean v1, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 77
    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    const-string p0, "ActivityTaskManager"

    .line 81
    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p2, " is not visible"

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    monitor-exit v4

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 105
    .line 106
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 108
    .line 109
    .line 110
    iget-object v5, p0, Lcom/android/server/wm/ActivityClientController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 111
    .line 112
    const/16 v7, 0x8

    .line 113
    .line 114
    const/4 v9, 0x0

    .line 115
    move-object v6, p2

    .line 116
    move-object v10, p1

    .line 117
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    .line 118
    .line 119
    .line 120
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    .line 123
    .line 124
    return p0

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    goto :goto_3

    .line 127
    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 129
    .line 130
    .line 131
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method public final showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final splashScreenAttached(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "ActivityTaskManager"

    .line 18
    .line 19
    const-string/jumbo v2, "splashScreenTransferredLocked cannot find activity"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mTransferSplashScreenTimeoutRunnable:Lcom/android/server/wm/ActivityRecord$1;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 44
    .line 45
    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    const/4 v2, 0x3

    .line 49
    iput v2, p1, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    .line 52
    .line 53
    .line 54
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public final startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "ActivityTaskManager"

    .line 2
    .line 3
    const-string v1, "Activity tried to startLocalVoiceInteraction"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-ne v3, v1, :cond_4

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 40
    .line 41
    if-nez p0, :cond_3

    .line 42
    .line 43
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 46
    .line 47
    if-nez p0, :cond_3

    .line 48
    .line 49
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-boolean p0, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    const-string p0, "ActivityTaskManager"

    .line 59
    .line 60
    const-string p1, "Pending start of voice interaction already."

    .line 61
    .line 62
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :try_start_1
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 73
    .line 74
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 75
    .line 76
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 87
    .line 88
    invoke-virtual {v0, p1, p0, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->startLocalVoiceInteraction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    :goto_1
    :try_start_2
    const-string p0, "ActivityTaskManager"

    .line 93
    .line 94
    const-string p1, "Already in a voice interaction, cannot start new voice interaction"

    .line 95
    .line 96
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 105
    .line 106
    const-string p1, "Only focused activity can call startVoiceInteraction"

    .line 107
    .line 108
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 114
    .line 115
    .line 116
    throw p0
.end method

.method public final startLockTaskModeByToken(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskMode(Lcom/android/server/wm/Task;Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Landroid/os/IBinder;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "toggleFreeformWindowingMode: No activity record matching token="

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_8

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_7

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v4, 0x1

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ne v0, v4, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string/jumbo v0, "toggleFreeformWindowingMode: You can only toggle between fullscreen and freeform."

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 63
    .line 64
    .line 65
    iget-object p1, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 66
    .line 67
    iput-object v0, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_BOUNDS_POLICY:Z

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    :cond_3
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_MODE:Z

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    sget-object v0, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lcom/android/server/wm/DexSizeCompatController;->getCompatPolicy(Lcom/android/server/wm/Task;)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    const-string v0, "This activity is currently not freeform-enabled"

    .line 123
    .line 124
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    const/4 v0, 0x5

    .line 144
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 145
    .line 146
    .line 147
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :catchall_1
    move-exception p0

    .line 156
    goto :goto_4

    .line 157
    :cond_7
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    const-string/jumbo v0, "toggleFreeformWindowingMode: the activity doesn\'t have a root task"

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v3

    .line 184
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 186
    .line 187
    .line 188
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 189
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    .line 191
    .line 192
    throw p0
.end method

.method public final unregisterRemoteAnimations(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    .line 6
    .line 7
    const-string/jumbo v2, "unregisterRemoteAnimations"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 31
    .line 32
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    :goto_1
    move p1, v1

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string/jumbo v3, "willActivityBeVisible: Returning false, would have returned true for r="

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "ActivityTaskManager"

    .line 58
    .line 59
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 63
    .line 64
    xor-int/2addr p1, v0

    .line 65
    :goto_2
    if-eqz p1, :cond_4

    .line 66
    .line 67
    move v1, v0

    .line 68
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    .line 77
    .line 78
    throw p1
.end method
