.class public final Lcom/android/server/UiModeManagerService$Stub;
.super Landroid/app/IUiModeManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/app/IUiModeManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final addCallback(Landroid/app/IUiModeManagerCallback;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    .line 23
    .line 24
    new-instance v3, Landroid/os/RemoteCallbackList;

    .line 25
    .line 26
    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final addNightPriorityAllowedPackageFromShell(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->addOnProjectionStateChangedListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/UiModeManagerService;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    new-instance v2, Landroid/util/SparseArray;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v2, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 51
    .line 52
    new-instance v2, Landroid/os/RemoteCallbackList;

    .line 53
    .line 54
    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 82
    .line 83
    invoke-virtual {p0, p2, v1}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-nez p2, :cond_3

    .line 92
    .line 93
    :try_start_1
    invoke-interface {p1, p0, v1}, Landroid/app/IOnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    :try_start_2
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 98
    .line 99
    const-string p0, "UiModeManager"

    .line 100
    .line 101
    const-string p1, "Failed a call to onProjectionStateChanged() during listener registration."

    .line 102
    .line 103
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_1
    monitor-exit v0

    .line 107
    return-void

    .line 108
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    throw p0
.end method

.method public final disableCarMode(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final disableCarModeByCallingPackage(ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isUiModeLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 8
    .line 9
    const-string p0, "UiModeManager"

    .line 10
    .line 11
    const-string/jumbo p1, "disableCarMode while UI mode is locked"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x3e8

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    move v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v1, v3

    .line 38
    :goto_0
    const/16 v4, 0x7d0

    .line 39
    .line 40
    if-ne v0, v4, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v2, v3

    .line 44
    :goto_1
    if-nez v1, :cond_3

    .line 45
    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 49
    .line 50
    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    if-eqz v1, :cond_4

    .line 54
    .line 55
    move v0, p1

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    and-int/lit8 v0, p1, -0x3

    .line 58
    .line 59
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    :try_start_0
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 64
    .line 65
    iget-object v4, v4, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 69
    .line 70
    iget-object v5, v5, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 71
    .line 72
    check-cast v5, Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    new-instance v6, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda2;

    .line 83
    .line 84
    invoke-direct {v6, p2}, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    new-instance v6, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda3;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 119
    .line 120
    invoke-virtual {v6, v0, v5, p2, v3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(IILjava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 124
    .line 125
    iget-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 126
    .line 127
    if-eqz p2, :cond_5

    .line 128
    .line 129
    invoke-virtual {p0, v3, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    goto :goto_4

    .line 135
    :cond_5
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    :catchall_1
    move-exception p0

    .line 143
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    .line 145
    .line 146
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object p3, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 8
    .line 9
    const-string p3, "UiModeManager"

    .line 10
    .line 11
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    const-string p3, "Current UI Mode Service state:"

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p3, "  mDockState="

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget p3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 34
    .line 35
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 36
    .line 37
    .line 38
    const-string p3, " mLastBroadcastState="

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget p3, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 44
    .line 45
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 46
    .line 47
    .line 48
    const-string p3, " mStartDreamImmediatelyOnDock="

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    .line 54
    .line 55
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 56
    .line 57
    .line 58
    const-string p3, "  mNightMode="

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 64
    .line 65
    iget p3, p3, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 66
    .line 67
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 68
    .line 69
    .line 70
    const-string p3, " ("

    .line 71
    .line 72
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 76
    .line 77
    iget p3, p3, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 78
    .line 79
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 80
    .line 81
    invoke-static {p3, v0}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string p3, ") "

    .line 89
    .line 90
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p3, " mOverrideOn/Off="

    .line 94
    .line 95
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 99
    .line 100
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 101
    .line 102
    .line 103
    const-string p3, "/"

    .line 104
    .line 105
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 109
    .line 110
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 111
    .line 112
    .line 113
    const-string p3, "  mAttentionModeThemeOverlay="

    .line 114
    .line 115
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget p3, p0, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    .line 119
    .line 120
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 121
    .line 122
    .line 123
    const-string p3, " mNightModeLocked="

    .line 124
    .line 125
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 129
    .line 130
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 131
    .line 132
    .line 133
    const-string p3, "  mCarModeEnabled="

    .line 134
    .line 135
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 141
    .line 142
    .line 143
    const-string p3, " (carModeApps="

    .line 144
    .line 145
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 149
    .line 150
    check-cast p3, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_1

    .line 165
    .line 166
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    const-string v1, ":"

    .line 180
    .line 181
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v0, " "

    .line 194
    .line 195
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :catchall_0
    move-exception p0

    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_1
    const-string p3, ""

    .line 203
    .line 204
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string p3, " mWaitForDeviceInactive="

    .line 208
    .line 209
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    .line 213
    .line 214
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 215
    .line 216
    .line 217
    const-string p3, " mComputedNightMode="

    .line 218
    .line 219
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 223
    .line 224
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 225
    .line 226
    .line 227
    const-string p3, " customStart="

    .line 228
    .line 229
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 233
    .line 234
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    const-string p3, " customEnd"

    .line 238
    .line 239
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 243
    .line 244
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    const-string p3, " mCarModeEnableFlags="

    .line 248
    .line 249
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget p3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    .line 253
    .line 254
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 255
    .line 256
    .line 257
    const-string p3, " mEnableCarDockLaunch="

    .line 258
    .line 259
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 263
    .line 264
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 265
    .line 266
    .line 267
    const-string p3, "  mCurUiMode=0x"

    .line 268
    .line 269
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget p3, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 273
    .line 274
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p3

    .line 278
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const-string p3, " mUiModeLocked="

    .line 282
    .line 283
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 289
    .line 290
    .line 291
    const-string p3, " mSetUiMode=0x"

    .line 292
    .line 293
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget p3, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 297
    .line 298
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p3

    .line 302
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const-string p3, "  mHoldingConfiguration="

    .line 306
    .line 307
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 311
    .line 312
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 313
    .line 314
    .line 315
    const-string p3, " mSystemReady="

    .line 316
    .line 317
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 321
    .line 322
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 323
    .line 324
    .line 325
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 326
    .line 327
    if-eqz p3, :cond_2

    .line 328
    .line 329
    const-string p3, "  mTwilightService.getLastTwilightState()="

    .line 330
    .line 331
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 335
    .line 336
    check-cast p3, Lcom/android/server/twilight/TwilightService$1;

    .line 337
    .line 338
    invoke-virtual {p3}, Lcom/android/server/twilight/TwilightService$1;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    .line 339
    .line 340
    .line 341
    move-result-object p3

    .line 342
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    :cond_2
    invoke-static {}, Lcom/android/server/UiModeManagerService;->buildLogString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p3

    .line 349
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-static {}, Lcom/android/server/UiModeManagerService$LogWrapper;->getLogText()Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    move-result-object p3

    .line 356
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    const-string p3, "  mNightPriorityAllowedPackagesFromScpm="

    .line 360
    .line 361
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    .line 365
    .line 366
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAppliedPackages:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 370
    .line 371
    const-string v0, "Applied packages"

    .line 372
    .line 373
    const-string v1, "    "

    .line 374
    .line 375
    invoke-virtual {p3, p2, v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mPackagesNeedToShowDialog:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 379
    .line 380
    const-string v0, "Show dialog packages"

    .line 381
    .line 382
    const-string v1, "    "

    .line 383
    .line 384
    invoke-virtual {p3, p2, v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    const-string p3, "  mDesktopModeEnabled="

    .line 388
    .line 389
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mDesktopModeEnabled:Z

    .line 393
    .line 394
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 395
    .line 396
    .line 397
    monitor-exit p1

    .line 398
    return-void

    .line 399
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    throw p0
.end method

.method public final enableCarMode(IILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isUiModeLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 8
    .line 9
    const-string p0, "UiModeManager"

    .line 10
    .line 11
    const-string/jumbo p1, "enableCarMode while UI mode is locked"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "android.permission.ENTER_CAR_MODE_PRIORITIZED"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 36
    .line 37
    const-string p1, "Enabling car mode with a priority requires permission ENTER_CAR_MODE_PRIORITIZED"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/16 v1, 0x7d0

    .line 55
    .line 56
    if-ne v0, v1, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 60
    .line 61
    invoke-static {v0, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    :try_start_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(IILjava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 80
    .line 81
    iget-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 82
    .line 83
    if-eqz p2, :cond_4

    .line 84
    .line 85
    const/4 p2, 0x0

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    throw p0
.end method

.method public final getActiveProjectionTypes()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getActiveProjectionTypes_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    move v1, v2

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    or-int/2addr v1, v3

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v2, v1

    .line 59
    :cond_2
    monitor-exit v0

    .line 60
    return v2

    .line 61
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final getAttentionModeThemeOverlay()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getAttentionModeThemeOverlay_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final getContrast()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateContrastLocked()Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Float;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    monitor-exit v0

    .line 36
    return p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final getCurrentModeType()I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 13
    .line 14
    and-int/lit8 p0, p0, 0xf

    .line 15
    .line 16
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    :catchall_1
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final getCustomNightModeEnd()J
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x3e8

    .line 10
    .line 11
    div-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public final getCustomNightModeStart()J
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x3e8

    .line 10
    .line 11
    div-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public final getNightMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final getNightModeCustomType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightModeCustomType_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final getNightPriorityAllowedPackagesFromScpm()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final getPackageNightMode(Ljava/lang/String;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/UiModeManagerService;->isNightPriorityAllowedLocked(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "UiModeManager"

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 13
    .line 14
    const-string/jumbo p0, "getPackageNightMode is not allowed for "

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 22
    .line 23
    iget-object v3, v0, Lcom/android/server/UiModeManagerService;->mNightPriorityAppliedPackages:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 24
    .line 25
    monitor-enter v3

    .line 26
    :try_start_0
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mNightPriorityAppliedPackages:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 27
    .line 28
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 43
    .line 44
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 49
    .line 50
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->findPackageConfiguration(ILjava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mNightMode:Ljava/lang/Integer;

    .line 57
    .line 58
    if-nez p0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    const-string/jumbo p0, "getPackageNightMode cannot get config for "

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :cond_4
    const/4 p0, 0x2

    .line 74
    :goto_2
    return p0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p0
.end method

.method public final getProjectingPackages(I)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getProjectingPackages_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final isNightModeLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final isUiModeLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/UiModeManagerService$Shell;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mService:Lcom/android/server/UiModeManagerService$Stub;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;-><init>(Landroid/app/IUiModeManager;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mService:Lcom/android/server/UiModeManagerService$Stub;

    .line 13
    .line 14
    move-object v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move-object v4, p3

    .line 17
    move-object v5, p4

    .line 18
    move-object v6, p5

    .line 19
    move-object v7, p6

    .line 20
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final releaseProjection(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v0, p1, -0x1

    .line 7
    .line 8
    and-int/2addr v0, p1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz p1, :cond_2

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 19
    .line 20
    and-int/lit8 v1, p1, 0x1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "android.permission.TOGGLE_AUTOMOTIVE_PROJECTION"

    .line 29
    .line 30
    const-string/jumbo v2, "toggleProjection"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :goto_1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/UiModeManagerService;I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 50
    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string p1, "Must specify exactly one projection type."

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public final removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->removeOnProjectionStateChangedListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 3
    .line 4
    invoke-static {v1, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    add-int/lit8 v1, p2, -0x1

    .line 8
    .line 9
    and-int/2addr v1, p2

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move v1, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :goto_0
    if-eqz p2, :cond_7

    .line 17
    .line 18
    if-eqz v1, :cond_7

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 21
    .line 22
    and-int/lit8 v3, p2, 0x1

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v3, "android.permission.TOGGLE_AUTOMOTIVE_PROJECTION"

    .line 31
    .line 32
    const-string/jumbo v4, "toggleProjection"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    :goto_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-static {v1, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/UiModeManagerService;I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 57
    .line 58
    iget-object v4, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 59
    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    new-instance v4, Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-direct {v4, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object v4, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 74
    .line 75
    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->contains(I)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 84
    .line 85
    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 86
    .line 87
    new-instance v4, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 96
    .line 97
    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Ljava/util/List;

    .line 104
    .line 105
    move v4, v2

    .line 106
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-ge v4, v5, :cond_5

    .line 111
    .line 112
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 117
    .line 118
    iget-object v5, v5, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_4

    .line 125
    .line 126
    monitor-exit v1

    .line 127
    return v0

    .line 128
    :cond_4
    add-int/2addr v4, v0

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    if-ne p2, v0, :cond_6

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-nez v4, :cond_6

    .line 137
    .line 138
    monitor-exit v1

    .line 139
    return v2

    .line 140
    :cond_6
    new-instance v4, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 141
    .line 142
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 143
    .line 144
    new-instance v6, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;

    .line 145
    .line 146
    invoke-direct {v6, v5}, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/UiModeManagerService;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {v4, p3, p2, p1, v6}, Lcom/android/server/UiModeManagerService$ProjectionHolder;-><init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    .line 152
    :try_start_1
    invoke-interface {p1, v4, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .line 154
    .line 155
    :try_start_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    sget-object p1, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 159
    .line 160
    const-string p1, "UiModeManager"

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v3, "Package "

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string p3, " set projection type "

    .line 176
    .line 177
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p3, "."

    .line 184
    .line 185
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 196
    .line 197
    invoke-virtual {p0, p2}, Lcom/android/server/UiModeManagerService;->onProjectionStateChangedLocked(I)V

    .line 198
    .line 199
    .line 200
    monitor-exit v1

    .line 201
    return v0

    .line 202
    :catch_0
    move-exception p0

    .line 203
    sget-object p1, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 204
    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string/jumbo p2, "linkToDeath failed for projection requester: "

    .line 208
    .line 209
    .line 210
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object p2, v4, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string p2, "."

    .line 219
    .line 220
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    const-string p2, "UiModeManager"

    .line 228
    .line 229
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .line 231
    .line 232
    monitor-exit v1

    .line 233
    return v2

    .line 234
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    throw p0

    .line 236
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 237
    .line 238
    const-string p1, "Must specify exactly one projection type."

    .line 239
    .line 240
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p0
.end method

.method public final resetNightPriorityAppliedPackages(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setApplicationNightMode(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne p1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Unknown mode: "

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_0
    if-eq p1, v1, :cond_3

    .line 26
    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/16 p1, 0x20

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const/16 p1, 0x10

    .line 35
    .line 36
    :goto_1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 39
    .line 40
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->setNightMode(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->commit()Z

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final setAttentionModeThemeOverlay(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->setAttentionModeThemeOverlay_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/UiModeManagerService;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 19
    .line 20
    iget v2, v1, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    .line 21
    .line 22
    if-eq v2, p1, :cond_0

    .line 23
    .line 24
    iput p1, v1, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    .line 25
    .line 26
    new-instance p1, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiModeManagerService$Stub;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final setCustomNightModeEnd(J)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isNightModeLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 22
    .line 23
    const-string p0, "UiModeManager"

    .line 24
    .line 25
    const-string p1, "Set custom time end, requires MODIFY_DAY_NIGHT_MODE permission"

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/UiModeManagerService;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    const-wide/16 v3, 0x3e8

    .line 45
    .line 46
    mul-long/2addr p1, v3

    .line 47
    :try_start_0
    invoke-static {p1, p2}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 58
    .line 59
    iput-object p1, p2, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 60
    .line 61
    invoke-static {p2, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_2

    .line 70
    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_1
    return-void

    .line 77
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public final setCustomNightModeStart(J)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isNightModeLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 22
    .line 23
    const-string p0, "UiModeManager"

    .line 24
    .line 25
    const-string p1, "Set custom time start, requires MODIFY_DAY_NIGHT_MODE permission"

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/UiModeManagerService;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    const-wide/16 v3, 0x3e8

    .line 45
    .line 46
    mul-long/2addr p1, v3

    .line 47
    :try_start_0
    invoke-static {p1, p2}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 58
    .line 59
    iput-object p1, p2, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 65
    .line 66
    invoke-static {p1, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :goto_1
    return-void

    .line 82
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final setDesktopMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDesktopModeEnabled:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final setNightMode(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, -0x1

    .line 7
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeInternal(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setNightModeActivated(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeActivatedForModeInternal(IZ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setNightModeActivatedForCustomMode(IZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeActivatedForModeInternal(IZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final setNightModeActivatedForModeInternal(IZ)Z
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string/jumbo v1, "setNightModeActivated : "

    .line 3
    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 21
    .line 22
    const-string p0, "UiModeManager"

    .line 23
    .line 24
    const-string p1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v3

    .line 30
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 39
    .line 40
    invoke-static {v4, v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/UiModeManagerService;I)V

    .line 41
    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 44
    .line 45
    iget v5, v4, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 46
    .line 47
    if-eq v2, v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    const-string p0, "UiModeManager"

    .line 62
    .line 63
    const-string p1, "Target user is not current user, INTERACT_ACROSS_USERS permission is required"

    .line 64
    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return v3

    .line 69
    :cond_1
    if-ne p1, v0, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 72
    .line 73
    iput-boolean p2, v2, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    .line 74
    .line 75
    :cond_2
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 76
    .line 77
    iget v4, v2, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 78
    .line 79
    if-eq p1, v4, :cond_3

    .line 80
    .line 81
    return v3

    .line 82
    :cond_3
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mcanSetNightMode(Lcom/android/server/UiModeManagerService;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    const-string p1, "UiModeManager"

    .line 89
    .line 90
    const-string v0, "Ignore setNightModeActivated : "

    .line 91
    .line 92
    const-string v1, ", mNightMode "

    .line 93
    .line 94
    invoke-static {v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 101
    .line 102
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    return v3

    .line 113
    :cond_4
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 136
    .line 137
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$mgetPackageName(Lcom/android/server/UiModeManagerService;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/android/server/UiModeManagerService;->isPowerSavingAndTurnOnDarkModeEnabled()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-nez v5, :cond_5

    .line 148
    .line 149
    if-eqz v4, :cond_5

    .line 150
    .line 151
    const-string/jumbo v5, "com.samsung.android.lool"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_5

    .line 159
    .line 160
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 161
    .line 162
    iget-object v6, v5, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 163
    .line 164
    iget v6, v6, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 165
    .line 166
    if-nez v6, :cond_5

    .line 167
    .line 168
    iget-object v5, v5, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 169
    .line 170
    if-eqz v5, :cond_5

    .line 171
    .line 172
    check-cast v5, Lcom/android/server/twilight/TwilightService$1;

    .line 173
    .line 174
    invoke-virtual {v5}, Lcom/android/server/twilight/TwilightService$1;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    if-eqz v5, :cond_5

    .line 179
    .line 180
    invoke-virtual {v5}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eq p2, v6, :cond_5

    .line 185
    .line 186
    invoke-virtual {v5}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    const-string v5, "UiModeManager"

    .line 191
    .line 192
    const-string/jumbo v6, "setNightModeActivated changes "

    .line 193
    .line 194
    .line 195
    invoke-static {v6, v5, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    .line 197
    .line 198
    :cond_5
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 199
    .line 200
    iget-object v5, v5, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 201
    .line 202
    monitor-enter v5

    .line 203
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 204
    .line 205
    .line 206
    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    :try_start_1
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 208
    .line 209
    iget-object v9, v8, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 210
    .line 211
    iget v10, v9, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 212
    .line 213
    if-eqz v10, :cond_8

    .line 214
    .line 215
    const/4 v11, 0x3

    .line 216
    if-ne v10, v11, :cond_6

    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_6
    const/4 v3, 0x2

    .line 220
    if-ne v10, v0, :cond_7

    .line 221
    .line 222
    if-eqz p2, :cond_7

    .line 223
    .line 224
    invoke-virtual {v9, v3}, Lcom/android/server/UiModeManagerService$1;->set(I)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :catchall_0
    move-exception p0

    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :cond_7
    if-ne v10, v3, :cond_a

    .line 232
    .line 233
    if-nez p2, :cond_a

    .line 234
    .line 235
    invoke-virtual {v9, v0}, Lcom/android/server/UiModeManagerService$1;->set(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_8
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V

    .line 240
    .line 241
    .line 242
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 243
    .line 244
    xor-int/lit8 v9, p2, 0x1

    .line 245
    .line 246
    iput-boolean v9, v8, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 247
    .line 248
    iput-boolean p2, v8, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 249
    .line 250
    iget v9, v8, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 251
    .line 252
    iput v9, v8, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    .line 253
    .line 254
    invoke-virtual {v8, v9}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    .line 255
    .line 256
    .line 257
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 258
    .line 259
    iget-boolean v9, v8, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 260
    .line 261
    if-eq v9, p2, :cond_9

    .line 262
    .line 263
    iput-boolean v3, v8, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    .line 264
    .line 265
    :cond_9
    iput-boolean p2, v8, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 266
    .line 267
    :cond_a
    :goto_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 268
    .line 269
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    const-string/jumbo v8, "display_night_theme"

    .line 278
    .line 279
    .line 280
    iget-object v9, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 281
    .line 282
    iget v9, v9, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 283
    .line 284
    invoke-static {v3, v8, p2, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 285
    .line 286
    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string p2, " by "

    .line 296
    .line 297
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string p2, ", "

    .line 304
    .line 305
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string p1, ", "

    .line 312
    .line 313
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string p1, ", mNightMode "

    .line 320
    .line 321
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 325
    .line 326
    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 327
    .line 328
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string p1, ", mNightModeCustomType "

    .line 332
    .line 333
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 337
    .line 338
    iget p1, p1, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 339
    .line 340
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-static {p1}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 353
    .line 354
    .line 355
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 356
    .line 357
    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 358
    .line 359
    .line 360
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 361
    .line 362
    iget p1, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 363
    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    .line 366
    .line 367
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 368
    .line 369
    .line 370
    monitor-exit v5

    .line 371
    return v0

    .line 372
    :catchall_1
    move-exception p0

    .line 373
    goto :goto_3

    .line 374
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    .line 376
    .line 377
    throw p0

    .line 378
    :goto_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 379
    throw p0
.end method

.method public final setNightModeCustomType(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->setNightModeCustomType_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeInternal(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setNightModeInternal(II)V
    .locals 9

    .line 1
    const-string/jumbo v0, "setNightMode : "

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isNightModeLocked()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "android.permission.MODIFY_DAY_NIGHT_MODE"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 25
    .line 26
    const-string p0, "UiModeManager"

    .line 27
    .line 28
    const-string p1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const/4 v1, 0x3

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    if-eq p1, v2, :cond_3

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    if-eq p1, v3, :cond_3

    .line 42
    .line 43
    if-ne p1, v1, :cond_2

    .line 44
    .line 45
    sget-object v3, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 46
    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string p1, "Can\'t set the custom type to "

    .line 61
    .line 62
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string p2, "Unknown mode: "

    .line 73
    .line 74
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_3
    :goto_0
    if-eq p1, v2, :cond_4

    .line 83
    .line 84
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mcanSetNightMode(Lcom/android/server/UiModeManagerService;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_4

    .line 91
    .line 92
    const-string p0, "UiModeManager"

    .line 93
    .line 94
    const-string p2, "Ignore setNightMode : "

    .line 95
    .line 96
    invoke-static {p1, p2, p0}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 101
    .line 102
    const/4 v3, -0x2

    .line 103
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/UiModeManagerService;I)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 107
    .line 108
    .line 109
    move-result-wide v4

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 113
    .line 114
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    :try_start_1
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 116
    .line 117
    iget-object v7, v6, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 118
    .line 119
    iget v7, v7, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 120
    .line 121
    if-ne v7, p1, :cond_5

    .line 122
    .line 123
    iget v8, v6, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 124
    .line 125
    if-eq v8, p2, :cond_d

    .line 126
    .line 127
    :cond_5
    if-eqz v7, :cond_6

    .line 128
    .line 129
    if-ne v7, v1, :cond_7

    .line 130
    .line 131
    :cond_6
    invoke-virtual {v6}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V

    .line 132
    .line 133
    .line 134
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 135
    .line 136
    iget-object v7, v6, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 137
    .line 138
    iget-object v6, v6, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    .line 139
    .line 140
    invoke-virtual {v7, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 144
    .line 145
    if-ne p1, v1, :cond_8

    .line 146
    .line 147
    move v7, p2

    .line 148
    goto :goto_1

    .line 149
    :cond_8
    const/4 v7, -0x1

    .line 150
    :goto_1
    iput v7, v6, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 151
    .line 152
    iget-object v6, v6, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 153
    .line 154
    invoke-virtual {v6, p1}, Lcom/android/server/UiModeManagerService$1;->set(I)V

    .line 155
    .line 156
    .line 157
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 158
    .line 159
    const/16 v7, 0x3e8

    .line 160
    .line 161
    iput v7, v6, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    .line 162
    .line 163
    invoke-virtual {v6}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    .line 164
    .line 165
    .line 166
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 167
    .line 168
    invoke-virtual {v6, v3}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    .line 169
    .line 170
    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p1, ", customModeType : "

    .line 180
    .line 181
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string p1, ", by "

    .line 188
    .line 189
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p1, ", "

    .line 200
    .line 201
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string p1, ", "

    .line 226
    .line 227
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 231
    .line 232
    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mgetPackageName(Lcom/android/server/UiModeManagerService;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-static {p1}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 247
    .line 248
    invoke-virtual {p1, v3}, Lcom/android/server/UiModeManagerService;->persistNightModeSettingDB(I)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 252
    .line 253
    iget-object p2, p1, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 254
    .line 255
    iget p2, p2, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 256
    .line 257
    if-eqz p2, :cond_9

    .line 258
    .line 259
    if-ne p2, v1, :cond_c

    .line 260
    .line 261
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-nez p1, :cond_c

    .line 266
    .line 267
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 268
    .line 269
    iget-object p2, p1, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 270
    .line 271
    iget p2, p2, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 272
    .line 273
    if-ne p2, v1, :cond_a

    .line 274
    .line 275
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    iget-object v0, p1, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 280
    .line 281
    iget-object v1, p1, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 282
    .line 283
    invoke-static {p2, v0, v1}, Landroid/util/TimeUtils;->isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    iget-boolean p1, p1, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 288
    .line 289
    xor-int/2addr p1, p2

    .line 290
    if-eqz p1, :cond_a

    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_a
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 294
    .line 295
    iget-boolean p2, p1, Lcom/android/server/UiModeManagerService;->mAutoModeChangeImmediately:Z

    .line 296
    .line 297
    if-eqz p2, :cond_b

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->registerDeviceInactiveListenerLocked()V

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :catchall_0
    move-exception p0

    .line 305
    goto :goto_4

    .line 306
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 307
    .line 308
    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V

    .line 309
    .line 310
    .line 311
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 312
    .line 313
    const/4 p1, 0x0

    .line 314
    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 315
    .line 316
    .line 317
    :cond_d
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :goto_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    :catchall_1
    move-exception p0

    .line 325
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    .line 327
    .line 328
    throw p0
.end method

.method public final setNightPriorityAllowedPackagesFromScpm(Ljava/util/List;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setNightPriorityAllowedPackagesFromScpm "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 19
    .line 20
    const-string p0, "UiModeManager"

    .line 21
    .line 22
    const-string/jumbo p1, "setNightPriorityAllowedPackagesFromScpm requires INTERACT_ACROSS_USERS_FULL permission"

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    if-nez p1, :cond_1

    .line 30
    .line 31
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 32
    .line 33
    const-string p0, "UiModeManager"

    .line 34
    .line 35
    const-string/jumbo p1, "setNightPriorityAllowedPackagesFromScpm received invalid list"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    .line 45
    .line 46
    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v2, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 48
    .line 49
    const-string v2, "UiModeManager"

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    .line 73
    .line 74
    check-cast v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    .line 82
    .line 83
    check-cast p0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    .line 87
    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final setPackageNightMode(Ljava/lang/String;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 16
    .line 17
    const-string p0, "UiModeManager"

    .line 18
    .line 19
    const-string/jumbo p1, "setPackageNightMode requires MODIFY_DAY_NIGHT_MODE permission"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 27
    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$msetPackageNightModeInnerLocked(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
