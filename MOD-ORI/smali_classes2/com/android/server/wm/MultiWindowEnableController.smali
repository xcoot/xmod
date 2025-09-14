.class public final Lcom/android/server/wm/MultiWindowEnableController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCDRequestLogs:Ljava/util/ArrayList;

.field public mCoreStateController:Lcom/android/server/wm/CoreStateController;

.field public final mCornerGestureRequestLogs:Ljava/util/ArrayList;

.field public mDeviceSupportsMultiWindow:Z

.field public final mELSRequestLog:Ljava/util/ArrayList;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Landroid/os/Handler;

.field public final mMWForceOnRequesters:Landroid/util/SparseArray;

.field public final mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

.field public final mMWForceOnRequestersLog:Landroid/util/SparseArray;

.field public final mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

.field public final mMWOffRequesters:Landroid/util/SparseArray;

.field public final mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

.field public final mMWOffRequestersLog:Landroid/util/SparseArray;

.field public final mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

.field public final mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;

.field public final mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

.field public mPref:Landroid/content/SharedPreferences;

.field public final mSFRequestLog:Ljava/util/ArrayList;

.field public final mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field public final mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    new-instance v0, Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 20
    .line 21
    new-instance v0, Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v0, Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    .line 48
    .line 49
    new-instance v0, Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    .line 62
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    .line 72
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;

    .line 79
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    .line 86
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSFRequestLog:Ljava/util/ArrayList;

    .line 93
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCDRequestLogs:Ljava/util/ArrayList;

    .line 100
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mELSRequestLog:Ljava/util/ArrayList;

    .line 107
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    .line 114
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCornerGestureRequestLogs:Ljava/util/ArrayList;

    .line 121
    .line 122
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 125
    .line 126
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 127
    .line 128
    return-void
.end method

.method public static dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v3, p2, v2

    .line 7
    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    aget-object v0, p2, v2

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, " = "

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-lez v0, :cond_0

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    aget-object p2, p2, v1

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p2, " : "

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :catchall_0
    :cond_0
    return-void
.end method

.method public static dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    const-string v1, "      "

    .line 8
    .line 9
    invoke-static {v1, p2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v0, -0x1

    .line 26
    .line 27
    if-ge v1, v2, :cond_0

    .line 28
    .line 29
    const-string v2, " - "

    .line 30
    .line 31
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method


# virtual methods
.method public final dismissMultiWindowMode()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string p0, "MultiWindowEnableController"

    .line 19
    .line 20
    const-string v1, "dismissMultiWindowMode: cannot found displayContent #0"

    .line 21
    .line 22
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    const-string p0, "MultiWindowEnableController"

    .line 40
    .line 41
    const-string v1, "dismissMultiWindowMode: cannot found tda, for display #0"

    .line 42
    .line 43
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;

    .line 57
    .line 58
    invoke-direct {v5, v4, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v2, 0x1

    .line 69
    sub-int/2addr v1, v2

    .line 70
    :goto_0
    if-ltz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Lcom/android/server/wm/Task;

    .line 77
    .line 78
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 79
    .line 80
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 81
    .line 82
    invoke-virtual {v6, v5}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_2

    .line 87
    .line 88
    const-string v1, "MultiWindowEnableController"

    .line 89
    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v7, "dismissMultiWindowMode: locked freeform, #"

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget v7, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 101
    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_5

    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_4

    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Lcom/android/server/wm/Task;

    .line 143
    .line 144
    const/4 v5, 0x0

    .line 145
    invoke-virtual {v2, v2, v5}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z

    .line 146
    .line 147
    .line 148
    const-string v5, "MultiWindowEnableController"

    .line 149
    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v7, "dismissMultiWindowMode: freeform to back, #"

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 161
    .line 162
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 174
    .line 175
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 176
    .line 177
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 178
    .line 179
    new-instance v2, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;

    .line 180
    .line 181
    invoke-direct {v2, v4, v1}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;-><init>(Ljava/util/List;Lcom/android/server/wm/TransitionController;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    iget-object v1, v3, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 188
    .line 189
    if-eqz v1, :cond_6

    .line 190
    .line 191
    const-string v2, "MultiWindowEnableController"

    .line 192
    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v4, "dismissMultiWindowMode: remove pip, #"

    .line 199
    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget v4, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 204
    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 216
    .line 217
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 218
    .line 219
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 220
    .line 221
    .line 222
    :cond_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 229
    .line 230
    .line 231
    throw p0
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const-string v0, "[MultiWindowEnableController]"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "] : "

    .line 15
    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "MWOffRequester[u"

    .line 21
    .line 22
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-static {p1, v3, v2}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v1, v0

    .line 56
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-ge v1, v2, :cond_1

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v4, "MWOffRequesterLog[u"

    .line 67
    .line 68
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-static {p1, v4, v2}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-lez v1, :cond_2

    .line 108
    .line 109
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    .line 110
    .line 111
    const-string v2, "MWOffRequestersForAllUsers : "

    .line 112
    .line 113
    invoke-static {p1, v1, v2}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-lez v1, :cond_3

    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 125
    .line 126
    const-string v2, "MWOffRequestersLogForAllUsers : "

    .line 127
    .line 128
    invoke-static {p1, v1, v2}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    move v1, v0

    .line 132
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    .line 133
    .line 134
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-ge v1, v2, :cond_4

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v4, "MWForceOnRequester[u"

    .line 143
    .line 144
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    .line 164
    .line 165
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-static {p1, v4, v2}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    add-int/lit8 v1, v1, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_4
    move v1, v0

    .line 178
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    .line 179
    .line 180
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-ge v1, v2, :cond_5

    .line 185
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v4, "MWForceOnRequesterLog[u"

    .line 189
    .line 190
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    .line 194
    .line 195
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    .line 210
    .line 211
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    check-cast v4, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-static {p1, v4, v2}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    add-int/lit8 v1, v1, 0x1

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-lez v1, :cond_6

    .line 230
    .line 231
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    .line 232
    .line 233
    const-string v2, "MWForceOnRequestersForAllUsers : "

    .line 234
    .line 235
    invoke-static {p1, v1, v2}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-lez v1, :cond_7

    .line 245
    .line 246
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 247
    .line 248
    const-string v2, "MWForceOnRequestersLogForAllUsers : "

    .line 249
    .line 250
    invoke-static {p1, v1, v2}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;

    .line 254
    .line 255
    const-string v2, "MW_MULTISTAR_BLOCKED_MINIMIZE_FREEFORM"

    .line 256
    .line 257
    const-string/jumbo v3, "mMultiStarBlockedMinimizeRequestLog"

    .line 258
    .line 259
    .line 260
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-static {p1, v1, v2}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCDRequestLogs:Ljava/util/ArrayList;

    .line 268
    .line 269
    const-string v2, "MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED"

    .line 270
    .line 271
    const-string v3, "mCDRequestLog"

    .line 272
    .line 273
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    const-string v3, "    "

    .line 278
    .line 279
    :try_start_0
    const-class v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 280
    .line 281
    aget-object v5, v2, v0

    .line 282
    .line 283
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    const-class v5, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 288
    .line 289
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    aget-object v0, v2, v0

    .line 299
    .line 300
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v0, " = "

    .line 304
    .line 305
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-lez v0, :cond_8

    .line 323
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const/4 v3, 0x1

    .line 330
    aget-object v2, v2, v3

    .line 331
    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v2, " : "

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {p1, v1, v0}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .line 346
    .line 347
    :catchall_0
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mELSRequestLog:Ljava/util/ArrayList;

    .line 348
    .line 349
    const-string v1, "MW_MULTISTAR_ENSURE_LAUNCH_SPLIT_ENABLED"

    .line 350
    .line 351
    const-string v2, "mELSRequestLog"

    .line 352
    .line 353
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-static {p1, v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCornerGestureRequestLogs:Ljava/util/ArrayList;

    .line 361
    .line 362
    const-string v1, "MW_FREEFORM_CORNER_GESTURE_ENABLED"

    .line 363
    .line 364
    const-string v2, "mCornerGestureRequestLogs"

    .line 365
    .line 366
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-static {p1, v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    .line 374
    .line 375
    const-string v1, "MW_SPLIT_IMMERSIVE_MODE_ENABLED"

    .line 376
    .line 377
    const-string/jumbo v2, "mSplitImmersiveModeRequestLog"

    .line 378
    .line 379
    .line 380
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-static {p1, v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    .line 388
    .line 389
    const-string v1, "MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED"

    .line 390
    .line 391
    const-string/jumbo v2, "mNaviStarSplitImmersiveModeRequestLog"

    .line 392
    .line 393
    .line 394
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-static {p1, v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSFRequestLog:Ljava/util/ArrayList;

    .line 402
    .line 403
    const-string v0, "MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED"

    .line 404
    .line 405
    const-string/jumbo v1, "mSFRequestLog"

    .line 406
    .line 407
    .line 408
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-static {p1, p0, v0}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    new-instance p0, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    const-string v0, "  "

    .line 418
    .line 419
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 437
    .line 438
    .line 439
    return-void
.end method

.method public final initialize()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mH:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/wm/CoreStateController;->mCallbacks:Ljava/util/ArrayList;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/CoreStateController;->mCallbacks:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    monitor-exit v1

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final isMultiWindowForceOnRequested(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-lez p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    :goto_1
    return p0
.end method

.method public final isMultiWindowOffRequested(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-lez p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    :goto_1
    return p0
.end method

.method public final onCoreStateChanged(I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p1, v0

    .line 3
    if-eqz p1, :cond_b

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_9

    .line 14
    .line 15
    sget-boolean p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowEnableController;->dismissMultiWindowMode()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "android.software.freeform_window_management"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    const-string v1, "enable_freeform_support"

    .line 48
    .line 49
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v1, v2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    move v1, v0

    .line 59
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    .line 61
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v3}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    .line 71
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string v5, "android.software.picture_in_picture"

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_3

    .line 84
    .line 85
    move v4, v0

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move v4, v2

    .line 88
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 89
    .line 90
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v5}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    .line 98
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const-string v7, "android.software.activities_on_secondary_displays"

    .line 105
    .line 106
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    const-string v7, "force_resizable_activities"

    .line 111
    .line 112
    invoke-static {p1, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    move p1, v0

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    move p1, v2

    .line 121
    :goto_3
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowEnableController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 122
    .line 123
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 124
    .line 125
    .line 126
    monitor-enter v7

    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    if-nez v5, :cond_6

    .line 130
    .line 131
    if-nez v4, :cond_6

    .line 132
    .line 133
    if-eqz v6, :cond_5

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_5
    move v5, v2

    .line 137
    goto :goto_5

    .line 138
    :cond_6
    :goto_4
    move v5, v0

    .line 139
    :goto_5
    if-eqz v3, :cond_7

    .line 140
    .line 141
    if-eqz v5, :cond_7

    .line 142
    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 144
    .line 145
    iput-boolean v0, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 146
    .line 147
    iput-boolean v1, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 148
    .line 149
    iput-boolean v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 150
    .line 151
    iput-boolean v6, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    goto :goto_7

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 157
    .line 158
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 159
    .line 160
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 161
    .line 162
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 163
    .line 164
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 165
    .line 166
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 167
    .line 168
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 169
    .line 170
    if-eq p1, v1, :cond_8

    .line 171
    .line 172
    iput-boolean p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 173
    .line 174
    iget-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateAllTasksLocked()V

    .line 177
    .line 178
    .line 179
    :cond_8
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 181
    .line 182
    .line 183
    goto :goto_8

    .line 184
    :goto_7
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :cond_9
    :goto_8
    sget-boolean p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 190
    .line 191
    if-eqz p1, :cond_a

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 196
    .line 197
    const-string/jumbo p1, "mw_on"

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 201
    .line 202
    const/16 v1, 0x65

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    .line 210
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    .line 214
    .line 215
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 216
    .line 217
    if-eqz v0, :cond_b

    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 220
    .line 221
    const/16 v1, 0x67

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    .line 229
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 230
    .line 231
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_9

    .line 235
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 238
    .line 239
    const-string/jumbo p1, "mw_off"

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 246
    .line 247
    if-eqz v0, :cond_b

    .line 248
    .line 249
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 250
    .line 251
    const/16 v1, 0x68

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 258
    .line 259
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 260
    .line 261
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    .line 263
    .line 264
    :cond_b
    :goto_9
    return-void
.end method

.method public final setBlockedMinimizeFreeformEnabled(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    const-string v2, ", "

    .line 6
    .line 7
    invoke-static {v1, v2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ")"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v1, 0x32

    .line 47
    .line 48
    if-le v0, v1, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const-string/jumbo v3, "mw_blocked_minimized_freeform"

    .line 91
    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    const/4 v7, 0x1

    .line 95
    const/4 v8, 0x0

    .line 96
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method public final setCornerGestureEnabled(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCornerGestureRequestLogs:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    const-string v2, ", "

    .line 6
    .line 7
    invoke-static {v1, v2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ")"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCornerGestureRequestLogs:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v1, 0x32

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-le v0, v1, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCornerGestureRequestLogs:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const-string/jumbo v1, "multiwindow.property"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 72
    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 74
    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string/jumbo v1, "open_in_pop_up_view"

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/wm/CoreStateController;->setSharedPreferenceEdited()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final setEnableForUser(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    :goto_0
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    :goto_1
    if-nez v1, :cond_2

    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    if-nez v0, :cond_3

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, "("

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v3, ", "

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object p3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 80
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {p3, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p3, ")"

    .line 97
    .line 98
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    const/16 v2, 0x64

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    if-le p3, v2, :cond_4

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :cond_4
    if-eqz p4, :cond_5

    .line 121
    .line 122
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-eqz p3, :cond_6

    .line 130
    .line 131
    const/4 p3, 0x1

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/MultiWindowEnableController;->updateEnableLocked(ILjava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    if-nez p3, :cond_6

    .line 141
    .line 142
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/MultiWindowEnableController;->updateEnableLocked(ILjava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_7

    .line 157
    .line 158
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Ljava/lang/String;

    .line 163
    .line 164
    const-string/jumbo p2, "updateMultiWindowSetting prev requester : "

    .line 165
    .line 166
    .line 167
    const-string p3, "MultiWindowEnableController"

    .line 168
    .line 169
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    return-void
.end method

.method public final setEnsureLaunchSplitEnabled(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mELSRequestLog:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    const-string v2, ", "

    .line 6
    .line 7
    invoke-static {v1, v2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ")"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mELSRequestLog:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v1, 0x32

    .line 47
    .line 48
    if-le v0, v1, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mELSRequestLog:Ljava/util/ArrayList;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const-string/jumbo v3, "mw_ensure_launch_split"

    .line 91
    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    const/4 v7, 0x1

    .line 95
    const/4 v8, 0x0

    .line 96
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method public final setMultiWindowDynamicEnabled(ILjava/lang/String;ZZZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v1, p1, :cond_4

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 28
    .line 29
    iget-object v3, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    new-instance v3, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda1;

    .line 36
    .line 37
    invoke-direct {v3, v1, v0}, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/TaskDisplayArea;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 60
    move v5, v0

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    :goto_2
    move v5, v2

    .line 63
    :goto_3
    new-instance v9, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    move-object v0, v9

    .line 67
    move-object v1, p0

    .line 68
    move-object v2, p2

    .line 69
    move v3, p3

    .line 70
    move v4, p1

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiWindowEnableController;Ljava/lang/String;ZIZI)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 75
    .line 76
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string/jumbo v4, "mw_enabled"

    .line 81
    .line 82
    .line 83
    move v6, p1

    .line 84
    move v7, p4

    .line 85
    move v8, p5

    .line 86
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final setNaviStarImmersiveSplitModeLocked(Z)V
    .locals 9

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    const-string v1, ", "

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ")"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v1, 0x14

    .line 47
    .line 48
    if-le v0, v1, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const-string/jumbo v3, "mw_navibar_immersive_mode"

    .line 91
    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    const/4 v7, 0x1

    .line 95
    const/4 v8, 0x0

    .line 96
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method public final setSplitImmersiveModeLocked(Z)V
    .locals 4

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    const-string v1, ", "

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ")"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v1, 0x14

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-le v0, v1, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const-string/jumbo v1, "multiwindow.property"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 72
    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 74
    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string/jumbo v1, "mw_immersive_mode"

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/wm/CoreStateController;->setSharedPreferenceEdited()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final setStayFocusAndTopResumedActivityEnabled(ZZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSFRequestLog:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    const-string v2, ", "

    .line 6
    .line 7
    invoke-static {v1, p1, v2, p2, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ")"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSFRequestLog:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v1, 0x32

    .line 47
    .line 48
    if-le v0, v1, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSFRequestLog:Ljava/util/ArrayList;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const-string/jumbo v3, "stay_focus_activity"

    .line 91
    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    const/4 v7, 0x1

    .line 95
    const/4 v8, 0x0

    .line 96
    move v5, v1

    .line 97
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 101
    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const-string/jumbo v3, "stay_top_resumed_activity"

    .line 107
    .line 108
    .line 109
    const/4 v6, 0x1

    .line 110
    const/4 v7, 0x1

    .line 111
    const/4 v8, 0x0

    .line 112
    move v5, v1

    .line 113
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method public final updateEnableLocked(ILjava/lang/String;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, -0x1

    .line 10
    const-string v2, "], Requester : "

    .line 11
    .line 12
    const-string v3, "MultiWindowEnableController"

    .line 13
    .line 14
    if-eqz p3, :cond_4

    .line 15
    .line 16
    const-string/jumbo p3, "turn on MW[#"

    .line 17
    .line 18
    .line 19
    if-ne p1, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_9

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowForceOnRequested(I)Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowOffRequested(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    if-eqz v9, :cond_0

    .line 52
    .line 53
    :cond_1
    const/4 v7, 0x1

    .line 54
    const/4 v8, 0x1

    .line 55
    move-object v4, p0

    .line 56
    move v5, v0

    .line 57
    move-object v6, p2

    .line 58
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowDynamicEnabled(ILjava/lang/String;ZZZ)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowForceOnRequested(I)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowOffRequested(I)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    if-eqz v9, :cond_9

    .line 94
    .line 95
    :cond_3
    const/4 v7, 0x1

    .line 96
    const/4 v8, 0x1

    .line 97
    move-object v4, p0

    .line 98
    move v5, p1

    .line 99
    move-object v6, p2

    .line 100
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowDynamicEnabled(ILjava/lang/String;ZZZ)V

    .line 101
    .line 102
    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :cond_4
    const-string/jumbo p3, "turn off MW[#"

    .line 127
    .line 128
    .line 129
    const-string v4, "force on now, turn off failed, MW[#"

    .line 130
    .line 131
    if-ne p1, v1, :cond_7

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_9

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowForceOnRequested(I)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_6

    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowOffRequested(I)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_5

    .line 186
    .line 187
    const/4 v10, 0x0

    .line 188
    const/4 v8, 0x0

    .line 189
    const/4 v9, 0x1

    .line 190
    move-object v5, p0

    .line 191
    move v6, v1

    .line 192
    move-object v7, p2

    .line 193
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowDynamicEnabled(ILjava/lang/String;ZZZ)V

    .line 194
    .line 195
    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v5, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowForceOnRequested(I)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_8

    .line 223
    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowOffRequested(I)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_9

    .line 251
    .line 252
    const/4 v9, 0x0

    .line 253
    const/4 v7, 0x0

    .line 254
    const/4 v8, 0x1

    .line 255
    move-object v4, p0

    .line 256
    move v5, p1

    .line 257
    move-object v6, p2

    .line 258
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowDynamicEnabled(ILjava/lang/String;ZZZ)V

    .line 259
    .line 260
    .line 261
    new-instance p0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    :cond_9
    :goto_2
    return-void
.end method
