.class public final Lcom/android/server/wm/LockTaskController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

.field static final STATUS_BAR_MASK_LOCKED:I = 0x7a60000

.field static final STATUS_BAR_MASK_PINNED:I = 0x69f0000


# instance fields
.field public final mContext:Landroid/content/Context;

.field mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field public final mHandler:Landroid/os/Handler;

.field public mInteractionControlEnabled:Z

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockTaskFeatures:Landroid/util/SparseIntArray;

.field public volatile mLockTaskModeState:I

.field public final mLockTaskModeTasks:Ljava/util/ArrayList;

.field public final mLockTaskPackages:Landroid/util/SparseArray;

.field public mPendingDisableFromDismiss:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mToken:Lcom/android/server/wm/LockTaskController$LockTaskToken;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    .line 7
    .line 8
    new-instance v1, Landroid/util/Pair;

    .line 9
    .line 10
    const/high16 v2, 0x800000

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroid/util/Pair;

    .line 29
    .line 30
    const/high16 v2, 0x60000

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v4, 0x4

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Landroid/util/Pair;

    .line 48
    .line 49
    const/high16 v2, 0x200000

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Landroid/util/Pair;

    .line 67
    .line 68
    const/high16 v2, 0x1000000

    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const/16 v2, 0x8

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Landroid/util/Pair;

    .line 83
    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const/16 v2, 0x10

    .line 92
    .line 93
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;Lcom/android/server/wm/TaskChangeNotificationController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Lcom/android/server/wm/LockTaskController$LockTaskToken;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 34
    .line 35
    const/16 v1, -0x2710

    .line 36
    .line 37
    iput v1, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 44
    .line 45
    iput-object p3, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    iput-object p4, p0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v1, v2, :cond_5

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_5

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-ne p1, v4, :cond_0

    .line 27
    .line 28
    if-eq p1, v2, :cond_4

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v4, v2, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-nez v5, :cond_5

    .line 41
    .line 42
    iget-boolean v5, v2, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    .line 43
    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 47
    .line 48
    if-eqz v5, :cond_5

    .line 49
    .line 50
    iget-boolean v5, v2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 51
    .line 52
    if-eqz v5, :cond_5

    .line 53
    .line 54
    :cond_1
    if-nez v4, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance v5, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda3;

    .line 58
    .line 59
    invoke-direct {v5, p1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    return v3

    .line 69
    :cond_3
    new-instance v2, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;

    .line 70
    .line 71
    invoke-direct {v2, p1, v4}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    return v3

    .line 81
    :cond_4
    const-string p1, "ActivityTaskManager"

    .line 82
    .line 83
    const-string v0, "Not finishing task in lock task mode"

    .line 84
    .line 85
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 89
    .line 90
    .line 91
    return v1

    .line 92
    :cond_5
    :goto_0
    return v3
.end method

.method public final clearLockedTask(Lcom/android/server/wm/Task;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    :goto_0
    if-lez v0, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/wm/Task;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/Task;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    return-void
.end method

.method public final clearLockedTasks(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    const-wide v2, 0x7b660c7567323b13L    # 2.6229391831797296E286

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/server/wm/Task;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "  LockTaskController:"

    .line 2
    .line 3
    const-string v1, "    mLockTaskModeState="

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v2, "unknown="

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

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
    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "PINNED"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v1, "LOCKED"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string v1, "NONE"

    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "    mLockTaskModeTasks="

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    move v1, v0

    .line 62
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v1, v2, :cond_3

    .line 69
    .line 70
    const-string v2, "      #"

    .line 71
    .line 72
    const-string v3, " "

    .line 73
    .line 74
    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const-string v1, "    mLockTaskPackages (userId:packages)="

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-ge v0, v1, :cond_4

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v2, "      u"

    .line 113
    .line 114
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 118
    .line 119
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, ":"

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 132
    .line 133
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, [Ljava/lang/Object;

    .line 138
    .line 139
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public final getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "device_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "ActivityTaskManager"

    .line 20
    .line 21
    const-string/jumbo v1, "warning: no DEVICE_POLICY_SERVICE"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 28
    .line 29
    return-object p0
.end method

.method public final getLockTaskAuth(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget-object v2, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 14
    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_1

    .line 23
    :cond_3
    :goto_0
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    :goto_1
    if-eqz p1, :cond_4

    .line 26
    .line 27
    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_4
    iget p1, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 31
    .line 32
    :goto_2
    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    .line 33
    .line 34
    const/4 v3, 0x3

    .line 35
    if-eqz p2, :cond_8

    .line 36
    .line 37
    if-eq p2, v1, :cond_9

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    if-eq p2, v4, :cond_7

    .line 41
    .line 42
    if-eq p2, v3, :cond_5

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_6

    .line 50
    .line 51
    move v0, v4

    .line 52
    goto :goto_3

    .line 53
    :cond_6
    move v0, v1

    .line 54
    goto :goto_3

    .line 55
    :cond_7
    const/4 v0, 0x4

    .line 56
    goto :goto_3

    .line 57
    :cond_8
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_6

    .line 62
    .line 63
    move v0, v3

    .line 64
    :cond_9
    :goto_3
    return v0
.end method

.method public getStatusBarDisableFlags(I)Landroid/util/Pair;
    .locals 4

    .line 1
    sget-object p0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    add-int/lit8 p0, p0, -0x1

    .line 8
    .line 9
    const/high16 v0, 0x7ff0000

    .line 10
    .line 11
    const/16 v1, 0x1f

    .line 12
    .line 13
    :goto_0
    if-ltz p0, :cond_1

    .line 14
    .line 15
    sget-object v2, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/util/Pair;

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    and-int/2addr v2, p1

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    not-int v2, v2

    .line 39
    and-int/2addr v0, v2

    .line 40
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    not-int v2, v2

    .line 49
    and-int/2addr v1, v2

    .line 50
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/high16 p0, 0x7a60000

    .line 54
    .line 55
    and-int/2addr p0, v0

    .line 56
    new-instance p1, Landroid/util/Pair;

    .line 57
    .line 58
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object p1
.end method

.method public final getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "statusbar"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "StatusBarManager"

    .line 21
    .line 22
    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 29
    .line 30
    return-object p0
.end method

.method public final isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 13
    .line 14
    iget v1, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

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
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    and-int/lit8 v0, v0, 0x8

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    and-int/lit8 p2, p2, 0x20

    .line 26
    .line 27
    if-eqz p2, :cond_6

    .line 28
    .line 29
    if-nez p3, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    sget-object p2, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const-string p2, "android.intent.action.CALL_EMERGENCY"

    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 59
    .line 60
    if-nez p2, :cond_4

    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const-class v0, Landroid/telecom/TelecomManager;

    .line 65
    .line 66
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Landroid/telecom/TelecomManager;

    .line 71
    .line 72
    :cond_4
    if-eqz p2, :cond_5

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    const/4 p2, 0x0

    .line 80
    :goto_0
    if-eqz p2, :cond_6

    .line 81
    .line 82
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_6

    .line 101
    .line 102
    :goto_1
    return v1

    .line 103
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    return v1

    .line 110
    :cond_7
    if-nez p3, :cond_8

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/android/internal/telephony/CellBroadcastUtils;->getDefaultCellBroadcastAlertDialogComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-nez p1, :cond_9

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_9
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_a

    .line 131
    .line 132
    return v1

    .line 133
    :cond_a
    :goto_3
    const/4 p1, 0x2

    .line 134
    if-eq p4, p1, :cond_b

    .line 135
    .line 136
    const/4 p1, 0x3

    .line 137
    if-eq p4, p1, :cond_b

    .line 138
    .line 139
    const/4 p1, 0x4

    .line 140
    if-eq p4, p1, :cond_b

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-nez p0, :cond_b

    .line 149
    .line 150
    const/4 v1, 0x1

    .line 151
    :cond_b
    return v1
.end method

.method public final isPackageAllowlisted(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [Ljava/lang/String;

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    array-length p1, p0

    .line 17
    move v1, v0

    .line 18
    :goto_0
    if-ge v1, p1, :cond_3

    .line 19
    .line 20
    aget-object v2, p0, v1

    .line 21
    .line 22
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    return v0
.end method

.method public isTaskLocked(Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final lockKeyguardIfNeeded(I)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "lock_to_app_exit_locked"

    .line 11
    .line 12
    const/4 v5, -0x2

    .line 13
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "lock_to_app_enabled"

    .line 26
    .line 27
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v2

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "access_control_use"

    .line 43
    .line 44
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v3, "interaction_control_exit_locked"

    .line 57
    .line 58
    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, ""

    .line 70
    .line 71
    const-string v3, "127605586"

    .line 72
    .line 73
    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const v2, 0x534e4554

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 84
    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    :goto_0
    if-eqz v1, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 107
    .line 108
    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 112
    .line 113
    if-nez p1, :cond_3

    .line 114
    .line 115
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 123
    .line 124
    .line 125
    :cond_4
    return-void
.end method

.method public final notifyLockTaskStateChanged(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_LOCK_TASK_MODE_BROADCAST:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v1, "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "status"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 40
    .line 41
    const-string v1, "com.samsung.android.action.LOCK_TASK_MODE"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "enable"

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 54
    .line 55
    const-string v1, "com.samsung.android.permission.LOCK_TASK_MODE"

    .line 56
    .line 57
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final removeLockedTask(Lcom/android/server/wm/Task;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget-boolean v2, v0, v1

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    const-wide v4, 0x7c7e188c4a9a3415L    # 4.6927024816201397E291

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    aget-boolean v0, v0, v1

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-wide v3, 0x793af378f8db3f7eL    # 9.331081252945195E275

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    new-instance v0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;

    .line 79
    .line 80
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/Task;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public final setKeyguardState(II)V
    .locals 3

    .line 1
    const/16 v0, -0x2710

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Lcom/android/server/wm/LockTaskController$LockTaskToken;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    const-string v2, "Lock-to-App"

    .line 17
    .line 18
    if-ne p1, v1, :cond_3

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    and-int/lit8 p1, p1, 0x20

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 32
    .line 33
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    iput p2, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 56
    .line 57
    new-instance v0, Lcom/android/server/wm/LockTaskController$1;

    .line 58
    .line 59
    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/LockTaskController$1;-><init>(Lcom/android/server/wm/LockTaskController;I)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 68
    .line 69
    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 74
    .line 75
    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method public final setLockTaskMode(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    iget v2, v6, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 8
    .line 9
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    aget-boolean v0, v3, v4

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 19
    .line 20
    const-wide v2, -0x3bdeb0d322a5c7ebL    # -1.5964991373029582E20

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v6, v2}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    const-string v0, "ActivityTaskManager"

    .line 40
    .line 41
    const-string/jumbo v1, "setLockTaskMode: Attempt to start an unauthorized lock task."

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object v5, v6, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 49
    .line 50
    iget-object v7, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const/4 v8, 0x4

    .line 57
    iget-object v9, v0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 58
    .line 59
    const/4 v10, 0x1

    .line 60
    if-eqz v7, :cond_6

    .line 61
    .line 62
    if-eqz v5, :cond_6

    .line 63
    .line 64
    iget-object v7, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 65
    .line 66
    iget v11, v6, Lcom/android/server/wm/Task;->mUserId:I

    .line 67
    .line 68
    if-eq v1, v10, :cond_3

    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    iget-object v12, v7, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    sub-int/2addr v12, v10

    .line 81
    :goto_0
    if-ltz v12, :cond_5

    .line 82
    .line 83
    iget-object v13, v7, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    check-cast v13, Lcom/android/server/wm/Task;

    .line 90
    .line 91
    iget v14, v13, Lcom/android/server/wm/Task;->mUserId:I

    .line 92
    .line 93
    if-ne v14, v11, :cond_4

    .line 94
    .line 95
    iget-object v14, v7, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 96
    .line 97
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget v14, v13, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 101
    .line 102
    const/4 v15, 0x2

    .line 103
    if-eq v14, v15, :cond_4

    .line 104
    .line 105
    if-eq v14, v4, :cond_4

    .line 106
    .line 107
    if-eq v14, v8, :cond_4

    .line 108
    .line 109
    invoke-virtual {v7, v13}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    add-int/lit8 v12, v12, -0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    :goto_1
    new-instance v7, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;

    .line 116
    .line 117
    invoke-direct {v7, v0, v5, v6, v1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V

    .line 118
    .line 119
    .line 120
    iget-object v5, v0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    .line 121
    .line 122
    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    .line 124
    .line 125
    :cond_6
    aget-boolean v3, v3, v4

    .line 126
    .line 127
    if-eqz v3, :cond_7

    .line 128
    .line 129
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 142
    .line 143
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v16

    .line 147
    const-wide v12, 0x2e19af22b9253ba4L

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    const/4 v14, 0x0

    .line 153
    const/4 v15, 0x0

    .line 154
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    iget-object v3, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-nez v3, :cond_8

    .line 164
    .line 165
    iget-object v3, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_8
    iget v3, v6, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 171
    .line 172
    const/4 v4, -0x1

    .line 173
    if-ne v3, v4, :cond_9

    .line 174
    .line 175
    iget v3, v6, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 176
    .line 177
    iput v3, v6, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 178
    .line 179
    :cond_9
    iget-object v3, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 180
    .line 181
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/android/server/wm/MultiWindowEnableController;->dismissMultiWindowMode()V

    .line 184
    .line 185
    .line 186
    if-eqz p4, :cond_b

    .line 187
    .line 188
    if-eqz v1, :cond_a

    .line 189
    .line 190
    move v5, v10

    .line 191
    goto :goto_2

    .line 192
    :cond_a
    move v5, v2

    .line 193
    :goto_2
    const/4 v2, 0x0

    .line 194
    const/4 v3, 0x0

    .line 195
    iget-object v0, v0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 196
    .line 197
    move-object/from16 v1, p2

    .line 198
    .line 199
    move-object/from16 v4, p3

    .line 200
    .line 201
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 202
    .line 203
    .line 204
    iget-object v0, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-eqz v0, :cond_c

    .line 214
    .line 215
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_b
    if-eqz v1, :cond_c

    .line 222
    .line 223
    iget-object v0, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v9, v6, v0, v1, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    .line 236
    .line 237
    .line 238
    :cond_c
    :goto_3
    return-void
.end method

.method public final setStatusBarState(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Lcom/android/server/wm/LockTaskController$LockTaskToken;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "ActivityTaskManager"

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string p0, "Can\'t find StatusBarService"

    .line 12
    .line 13
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v3, 0x2

    .line 18
    const/4 v4, 0x0

    .line 19
    if-ne p1, v3, :cond_1

    .line 20
    .line 21
    const/high16 p1, 0x69f0000

    .line 22
    .line 23
    move v5, v4

    .line 24
    move v4, p1

    .line 25
    move p1, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v3, 0x1

    .line 28
    if-ne p1, v3, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    invoke-virtual {p1, p2, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getStatusBarDisableFlags(I)Landroid/util/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move p1, v4

    .line 58
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-interface {v1, v4, v0, p2}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-interface {v1, p1, v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception p0

    .line 78
    const-string p1, "Failed to set status bar flags"

    .line 79
    .line 80
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void
.end method

.method public final showLockTaskToast()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEscapeToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string v0, "ActivityTaskManager"

    .line 22
    .line 23
    const-string v1, "Failed to send pinning escape toast"

    .line 24
    .line 25
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    return-void
.end method

.method public final startLockTaskMode(ILcom/android/server/wm/Task;Z)V
    .locals 11

    .line 1
    iget v0, p2, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 2
    .line 3
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    aget-boolean p0, v1, v2

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 13
    .line 14
    const-wide v1, 0xa3b08e3ba7535ecL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    const/4 v3, 0x2

    .line 27
    const/4 v4, 0x1

    .line 28
    if-nez p3, :cond_6

    .line 29
    .line 30
    iput p1, p2, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 31
    .line 32
    const-string v5, "ActivityTaskManager"

    .line 33
    .line 34
    if-ne v0, v4, :cond_5

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    const-string p0, "Already locked."

    .line 45
    .line 46
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    aget-boolean p0, v1, v2

    .line 51
    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 55
    .line 56
    const-wide v1, -0x62cd9f84c3e5c454L    # -4.869386163618263E-168

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 68
    .line 69
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 74
    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    iget p1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 78
    .line 79
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 84
    .line 85
    if-eqz p0, :cond_4

    .line 86
    .line 87
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showScreenPinningRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    :catch_0
    :cond_4
    return-void

    .line 91
    :cond_5
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 92
    .line 93
    if-ne v0, v3, :cond_6

    .line 94
    .line 95
    const-string v0, "Stop app pinning before entering full lock task mode"

    .line 96
    .line 97
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/wm/LockTaskController;->stopLockTaskMode(ILcom/android/server/wm/Task;Z)V

    .line 102
    .line 103
    .line 104
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 107
    .line 108
    filled-new-array {v3}, [I

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 113
    .line 114
    .line 115
    aget-boolean p1, v1, v2

    .line 116
    .line 117
    if-eqz p1, :cond_8

    .line 118
    .line 119
    if-eqz p3, :cond_7

    .line 120
    .line 121
    const-string p1, "Locking pinned"

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_7
    const-string p1, "Locking fully"

    .line 125
    .line 126
    :goto_0
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 127
    .line 128
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    const-wide v6, -0x159d2505424ecde6L    # -2.955851137831249E204

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    const/4 v8, 0x0

    .line 138
    const/4 v9, 0x0

    .line 139
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_8
    if-eqz p3, :cond_9

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_9
    move v3, v4

    .line 146
    :goto_1
    const-string/jumbo p1, "startLockTask"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v3, p2, p1, v4}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final stopLockTaskMode(ILcom/android/server/wm/Task;Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p3, :cond_2

    .line 7
    .line 8
    iget p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    if-ne p1, p2, :cond_1

    .line 12
    .line 13
    const-string/jumbo p1, "stopAppPinning"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const-string p1, "ActivityTaskManager"

    .line 21
    .line 22
    const-string p2, "Attempted to stop app pinning while fully locked"

    .line 23
    .line 24
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    if-eqz p2, :cond_5

    .line 32
    .line 33
    iget p3, p2, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 34
    .line 35
    if-eq p1, p3, :cond_4

    .line 36
    .line 37
    if-nez p3, :cond_3

    .line 38
    .line 39
    iget p3, p2, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 40
    .line 41
    if-ne p1, p3, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 45
    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "Invalid uid, expected "

    .line 49
    .line 50
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v0, p2, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 54
    .line 55
    const-string v1, " callingUid="

    .line 56
    .line 57
    const-string v2, " effectiveUid="

    .line 58
    .line 59
    invoke-static {v0, p1, v1, v2, p3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 60
    .line 61
    .line 62
    iget p1, p2, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 63
    .line 64
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_4
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void

    .line 79
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string p1, "can\'t stop LockTask for null task"

    .line 82
    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public final updateLockTaskFeatures(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 27
    .line 28
    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 31
    .line 32
    iput-object p2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 33
    .line 34
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Lcom/android/server/wm/Task;

    .line 53
    .line 54
    iget p2, p2, Lcom/android/server/wm/Task;->mUserId:I

    .line 55
    .line 56
    if-ne p1, p2, :cond_1

    .line 57
    .line 58
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance v0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public final updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x1

    .line 13
    sub-int/2addr p2, v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    if-ltz p2, :cond_7

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lcom/android/server/wm/Task;

    .line 28
    .line 29
    iget v6, v5, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    if-eq v6, v4, :cond_1

    .line 33
    .line 34
    if-ne v6, v7, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v6, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    move v6, v0

    .line 40
    :goto_2
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {v5, v8}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 45
    .line 46
    .line 47
    iget v8, v5, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 48
    .line 49
    if-eq v8, v4, :cond_3

    .line 50
    .line 51
    if-ne v8, v7, :cond_2

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_2
    move v4, v1

    .line 55
    goto :goto_4

    .line 56
    :cond_3
    :goto_3
    move v4, v0

    .line 57
    :goto_4
    iget v7, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 58
    .line 59
    if-ne v7, v0, :cond_6

    .line 60
    .line 61
    iget v7, v5, Lcom/android/server/wm/Task;->mUserId:I

    .line 62
    .line 63
    if-ne v7, p1, :cond_6

    .line 64
    .line 65
    if-eqz v6, :cond_6

    .line 66
    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_4
    aget-boolean v2, v3, v1

    .line 71
    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 87
    .line 88
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    const-wide v7, -0x42e094cce40ac071L    # -2.7905454493532132E-14

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    const/4 v10, 0x0

    .line 99
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/Task;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v1}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    .line 106
    .line 107
    .line 108
    move v2, v0

    .line 109
    :cond_6
    :goto_5
    add-int/lit8 p2, p2, -0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 115
    .line 116
    new-instance p2, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda1;

    .line 117
    .line 118
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 125
    .line 126
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_8
    const/4 p1, 0x0

    .line 138
    :goto_6
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_a

    .line 145
    .line 146
    if-eqz p1, :cond_a

    .line 147
    .line 148
    iget p2, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 149
    .line 150
    if-ne p2, v4, :cond_a

    .line 151
    .line 152
    aget-boolean p2, v3, v1

    .line 153
    .line 154
    if-eqz p2, :cond_9

    .line 155
    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 161
    .line 162
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    const-wide v3, 0x1d6ade5d6cc338b5L    # 5.695576166508023E-167

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    const/4 v5, 0x0

    .line 172
    const/4 v6, 0x0

    .line 173
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :cond_9
    const-string/jumbo p2, "package updated"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_a
    move v0, v2

    .line 184
    :goto_7
    if-eqz v0, :cond_b

    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 191
    .line 192
    .line 193
    :cond_b
    return-void
.end method
