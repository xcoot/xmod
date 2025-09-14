.class public final Lcom/android/server/wm/CoreStateController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

.field public final mStatesForUser:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/CoreStateController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/CoreStateController;->mCallbacks:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final getCoreStates(I)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    .line 13
    .line 14
    new-instance v2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroid/os/Bundle;

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-object p0

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final notifyCoreStatesChangedLocked(ILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoreStateController;->getCoreStates(I)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v1, p1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateFrom(Landroid/os/Bundle;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object v4, p0, Lcom/android/server/wm/CoreStateController;->mCallbacks:Ljava/util/ArrayList;

    .line 28
    .line 29
    monitor-enter v4

    .line 30
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/CoreStateController;->mCallbacks:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/android/server/wm/MultiWindowEnableController;

    .line 47
    .line 48
    invoke-virtual {v6, v3}, Lcom/android/server/wm/MultiWindowEnableController;->onCoreStateChanged(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    monitor-exit v4

    .line 55
    goto :goto_3

    .line 56
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0

    .line 58
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 61
    .line 62
    iget-object v3, v3, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    sub-int/2addr v4, v2

    .line 69
    :goto_4
    if-ltz v4, :cond_6

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 80
    .line 81
    iget v5, v2, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 82
    .line 83
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 84
    .line 85
    if-ne v5, v6, :cond_3

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_3
    iget v5, v2, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 89
    .line 90
    if-eq v5, p1, :cond_4

    .line 91
    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    if-nez v5, :cond_5

    .line 95
    .line 96
    const-string v5, "com.android.systemui"

    .line 97
    .line 98
    iget-object v6, v2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_5

    .line 105
    .line 106
    :cond_4
    :try_start_1
    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 107
    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    invoke-static {v2}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v0}, Landroid/app/servertransaction/CoreStatesChangeItem;->obtain(Landroid/os/Bundle;)Landroid/app/servertransaction/CoreStatesChangeItem;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v2, v5}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 119
    .line 120
    .line 121
    iget-object v5, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 122
    .line 123
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {v2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :catch_0
    move-exception v2

    .line 133
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, -0x1

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    if-eqz p2, :cond_7

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->run()V

    .line 142
    .line 143
    .line 144
    :cond_7
    return-void
.end method

.method public final onCoreStateChanged(Landroid/os/Bundle;IZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/os/Bundle;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    iget-object p1, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 27
    .line 28
    .line 29
    monitor-enter p1

    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    throw p0
.end method

.method public final setSharedPreferenceEdited()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

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
    iget-object p0, p0, Lcom/android/server/wm/CoreStateController;->mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v2, v2, v1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

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
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 10
    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move v4, p3

    .line 14
    move v5, p4

    .line 15
    move v6, p5

    .line 16
    move-object v7, p6

    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final startUserLocked(IZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "startUserLocked: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", u"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "CoreStateObserverController"

    .line 29
    .line 30
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    if-eqz p3, :cond_0

    .line 43
    .line 44
    iget-object v1, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    if-nez p3, :cond_1

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    :cond_1
    const/4 p2, 0x1

    .line 57
    invoke-virtual {v0, p2, p1, v1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final stopUserLocked(IZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "stopUserLocked: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", u"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "CoreStateObserverController"

    .line 29
    .line 30
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v2, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "endObserveCoreStateSettingsForSingleUser(u"

    .line 51
    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v4, ")"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "CoreStateSettingObserver"

    .line 68
    .line 69
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    new-instance v4, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-direct {v4, v1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettings()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_0

    .line 108
    .line 109
    if-ne v3, p1, :cond_1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 119
    .line 120
    .line 121
    if-eqz p2, :cond_4

    .line 122
    .line 123
    iget-object p2, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    .line 124
    .line 125
    if-eqz p2, :cond_4

    .line 126
    .line 127
    iget-object p2, p2, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 128
    .line 129
    check-cast p2, Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Ljava/util/Map$Entry;

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/util/SparseArray;

    .line 156
    .line 157
    if-eqz v0, :cond_3

    .line 158
    .line 159
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    iget-object p2, p0, Lcom/android/server/wm/CoreStateController;->mLock:Ljava/lang/Object;

    .line 164
    .line 165
    monitor-enter p2

    .line 166
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 169
    .line 170
    .line 171
    monitor-exit p2

    .line 172
    return-void

    .line 173
    :catchall_0
    move-exception p0

    .line 174
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    throw p0
.end method
