.class public final Lcom/android/server/wm/RecentTasks;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FREEZE_TASK_LIST_TIMEOUT_MS:J

.field public static final NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

.field public static final NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

.field public static final TASK_ID_COMPARATOR:Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;


# instance fields
.field public mActiveTasksSessionDurationMs:J

.field public final mCallbacks:Ljava/util/ArrayList;

.field public mCheckTrimmableTasksOnIdle:Z

.field public mFreezeTaskListReordering:Z

.field public mFreezeTaskListTimeoutMs:J

.field public mGlobalMaxNumTasks:I

.field public final mHasVisibleRecentTasks:Z

.field public final mHiddenTasks:Ljava/util/ArrayList;

.field public mLauncherInfo:I

.field public final mListener:Lcom/android/server/wm/RecentTasks$1;

.field public mMaxNumVisibleTasks:I

.field public mMinNumVisibleTasks:I

.field public final mPersistedTaskIds:Landroid/util/SparseArray;

.field public mRecentsComponent:Landroid/content/ComponentName;

.field public mRecentsUid:I

.field public final mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field public final mTaskPersister:Lcom/android/server/wm/TaskPersister;

.field public final mTasks:Ljava/util/ArrayList;

.field public final mTmpAvailActCache:Ljava/util/HashMap;

.field public final mTmpAvailAppCache:Ljava/util/HashMap;

.field public final mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

.field public final mTmpRecents:Ljava/util/ArrayList;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

.field public final mUsersWithRecentsLoaded:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x5

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    new-instance v0, Landroid/content/pm/ActivityInfo;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 24
    .line 25
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 8

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 31
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 32
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 36
    sget-wide v1, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 40
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 41
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpRect:Landroid/graphics/Rect;

    .line 42
    new-instance v1, Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 43
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 45
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mLauncherInfo:I

    .line 46
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Lcom/android/server/wm/RecentTasks$1;

    .line 47
    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 48
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    .line 49
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 51
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 52
    new-instance v7, Lcom/android/server/wm/TaskPersister;

    iget-object v6, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    move-object v1, v7

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V

    iput-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 53
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 54
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 55
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    const p1, 0x11101af

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskPersister;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 4
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 9
    sget-wide v1, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 13
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpRect:Landroid/graphics/Rect;

    .line 15
    new-instance v1, Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 16
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 18
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mLauncherInfo:I

    .line 19
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Lcom/android/server/wm/RecentTasks$1;

    .line 20
    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 21
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 22
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 23
    iput-object p2, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 24
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 26
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 27
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/wm/Task;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 6
    .line 7
    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    if-ne v2, v3, :cond_1

    .line 13
    .line 14
    iget v2, v1, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 15
    .line 16
    if-ne v2, v4, :cond_1

    .line 17
    .line 18
    iget v2, v1, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 19
    .line 20
    if-eq v2, v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v5

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v2, v6

    .line 26
    :goto_1
    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v7, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 33
    .line 34
    if-eqz v7, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    if-nez v2, :cond_3

    .line 38
    .line 39
    if-lez v3, :cond_3

    .line 40
    .line 41
    iget-object v7, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-ne v7, v1, :cond_3

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    if-eqz v2, :cond_4

    .line 51
    .line 52
    if-lez v3, :cond_4

    .line 53
    .line 54
    iget-boolean v3, v1, Lcom/android/server/wm/Task;->inRecents:Z

    .line 55
    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    iget v3, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 59
    .line 60
    iget-object v7, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Lcom/android/server/wm/Task;

    .line 67
    .line 68
    iget v7, v7, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 69
    .line 70
    if-ne v3, v7, :cond_4

    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    iget-boolean v3, v1, Lcom/android/server/wm/Task;->inRecents:Z

    .line 74
    .line 75
    const-string v7, "ActivityTaskManager"

    .line 76
    .line 77
    if-eqz v3, :cond_d

    .line 78
    .line 79
    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-ltz v3, :cond_c

    .line 86
    .line 87
    if-nez v2, :cond_d

    .line 88
    .line 89
    iget-boolean v2, v0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 90
    .line 91
    if-nez v2, :cond_b

    .line 92
    .line 93
    move v2, v5

    .line 94
    move v4, v2

    .line 95
    :goto_2
    iget-object v6, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-ge v2, v6, :cond_a

    .line 102
    .line 103
    iget-object v6, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Lcom/android/server/wm/Task;

    .line 110
    .line 111
    if-ne v1, v6, :cond_5

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-nez v7, :cond_6

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_7

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    invoke-virtual {v6, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    if-nez v7, :cond_8

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_8
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-lez v6, :cond_9

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    add-int/lit8 v4, v2, 0x1

    .line 143
    .line 144
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_a
    :goto_4
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    if-eqz v3, :cond_b

    .line 158
    .line 159
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 160
    .line 161
    iget-object v3, v2, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 162
    .line 163
    const/16 v4, 0x16

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    iget-object v4, v2, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 170
    .line 171
    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 175
    .line 176
    .line 177
    :cond_b
    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v8, "Task with inRecent not in recents: "

    .line 184
    .line 185
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move v3, v6

    .line 199
    goto :goto_5

    .line 200
    :cond_d
    move v3, v5

    .line 201
    :goto_5
    iget-object v8, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-ne v8, v4, :cond_e

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_e
    iget-object v9, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    check-cast v9, Lcom/android/server/wm/Task;

    .line 220
    .line 221
    if-eq v9, v1, :cond_11

    .line 222
    .line 223
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    if-eqz v10, :cond_f

    .line 228
    .line 229
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    if-nez v10, :cond_f

    .line 234
    .line 235
    new-instance v10, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v11, "Add "

    .line 238
    .line 239
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v11, " to hidden list because adding "

    .line 246
    .line 247
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    iget-object v10, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {v10, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_f
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 266
    .line 267
    if-eqz v10, :cond_10

    .line 268
    .line 269
    iget-boolean v10, v9, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 270
    .line 271
    iput-boolean v10, v1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 272
    .line 273
    iget-object v10, v9, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 274
    .line 275
    iput-object v10, v1, Lcom/android/server/wm/Task;->mOldHostProcessName:Ljava/lang/String;

    .line 276
    .line 277
    iget-boolean v10, v9, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 278
    .line 279
    if-eqz v10, :cond_10

    .line 280
    .line 281
    iput-boolean v5, v9, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 282
    .line 283
    iget-object v10, v0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 284
    .line 285
    iget v11, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 286
    .line 287
    invoke-virtual {v10, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyDedicated(I)V

    .line 288
    .line 289
    .line 290
    :cond_10
    invoke-virtual {v0, v9, v5, v5}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 291
    .line 292
    .line 293
    :cond_11
    invoke-virtual {v0, v9, v5}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 294
    .line 295
    .line 296
    :goto_6
    iput-boolean v6, v1, Lcom/android/server/wm/Task;->inRecents:Z

    .line 297
    .line 298
    if-eqz v2, :cond_24

    .line 299
    .line 300
    if-eqz v3, :cond_12

    .line 301
    .line 302
    goto/16 :goto_f

    .line 303
    .line 304
    :cond_12
    if-eqz v2, :cond_26

    .line 305
    .line 306
    iget-object v2, v1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 307
    .line 308
    if-nez v2, :cond_13

    .line 309
    .line 310
    iget-object v2, v1, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 311
    .line 312
    :cond_13
    if-eqz v2, :cond_23

    .line 313
    .line 314
    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-ltz v3, :cond_23

    .line 321
    .line 322
    iget-object v8, v1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 323
    .line 324
    if-ne v2, v8, :cond_14

    .line 325
    .line 326
    add-int/lit8 v3, v3, 0x1

    .line 327
    .line 328
    :cond_14
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/Task;)V

    .line 334
    .line 335
    .line 336
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    move-object v8, v1

    .line 343
    move v9, v3

    .line 344
    :goto_7
    iget-object v10, v8, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 345
    .line 346
    if-eqz v10, :cond_15

    .line 347
    .line 348
    if-lez v9, :cond_15

    .line 349
    .line 350
    add-int/lit8 v9, v9, -0x1

    .line 351
    .line 352
    move-object v8, v10

    .line 353
    goto :goto_7

    .line 354
    :cond_15
    iget v10, v8, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 355
    .line 356
    iget v11, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 357
    .line 358
    if-ne v10, v11, :cond_16

    .line 359
    .line 360
    move v10, v6

    .line 361
    goto :goto_8

    .line 362
    :cond_16
    move v10, v5

    .line 363
    :goto_8
    move-object v12, v8

    .line 364
    move v11, v9

    .line 365
    :goto_9
    const-string v13, " @"

    .line 366
    .line 367
    const-string v14, "Bad chain @"

    .line 368
    .line 369
    if-ge v11, v2, :cond_1f

    .line 370
    .line 371
    iget-object v15, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v15

    .line 377
    check-cast v15, Lcom/android/server/wm/Task;

    .line 378
    .line 379
    if-ne v15, v8, :cond_18

    .line 380
    .line 381
    iget-object v5, v15, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 382
    .line 383
    if-nez v5, :cond_17

    .line 384
    .line 385
    iget v5, v15, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 386
    .line 387
    if-eq v5, v4, :cond_19

    .line 388
    .line 389
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v4, ": first task has next affiliate: "

    .line 398
    .line 399
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-static {v7, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    :goto_a
    const/4 v10, 0x0

    .line 413
    goto/16 :goto_c

    .line 414
    .line 415
    :cond_18
    iget-object v5, v15, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 416
    .line 417
    if-ne v5, v12, :cond_1e

    .line 418
    .line 419
    iget v5, v15, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 420
    .line 421
    iget v6, v12, Lcom/android/server/wm/Task;->mTaskId:I

    .line 422
    .line 423
    if-eq v5, v6, :cond_19

    .line 424
    .line 425
    goto/16 :goto_b

    .line 426
    .line 427
    :cond_19
    iget v5, v15, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 428
    .line 429
    const-string v6, " has previous affiliate "

    .line 430
    .line 431
    const-string v12, ": last task "

    .line 432
    .line 433
    if-ne v5, v4, :cond_1a

    .line 434
    .line 435
    iget-object v2, v15, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 436
    .line 437
    if-eqz v2, :cond_1f

    .line 438
    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    iget-object v4, v15, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 457
    .line 458
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-static {v7, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_1a
    iget-object v5, v15, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 470
    .line 471
    const-string v4, ": task "

    .line 472
    .line 473
    if-nez v5, :cond_1b

    .line 474
    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    iget-object v4, v15, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 493
    .line 494
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v4, " but should be id "

    .line 498
    .line 499
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    iget-object v4, v15, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 503
    .line 504
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-static {v7, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    goto :goto_a

    .line 515
    :cond_1b
    iget v5, v15, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 516
    .line 517
    iget v6, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 518
    .line 519
    if-eq v5, v6, :cond_1c

    .line 520
    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    const-string v4, " has affiliated id "

    .line 536
    .line 537
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    iget v4, v15, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 541
    .line 542
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const-string v4, " but should be "

    .line 546
    .line 547
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    iget v4, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 551
    .line 552
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-static {v7, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    goto/16 :goto_a

    .line 563
    .line 564
    :cond_1c
    add-int/lit8 v11, v11, 0x1

    .line 565
    .line 566
    if-lt v11, v2, :cond_1d

    .line 567
    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    const-string v4, "Bad chain ran off index "

    .line 571
    .line 572
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-static {v7, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    goto/16 :goto_a

    .line 592
    .line 593
    :cond_1d
    move-object v12, v15

    .line 594
    const/4 v4, -0x1

    .line 595
    const/4 v5, 0x0

    .line 596
    const/4 v6, 0x1

    .line 597
    goto/16 :goto_9

    .line 598
    .line 599
    :cond_1e
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v4, ": middle task "

    .line 608
    .line 609
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    const-string v4, " has bad next affiliate "

    .line 622
    .line 623
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    iget-object v4, v15, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 627
    .line 628
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    const-string v4, " id "

    .line 632
    .line 633
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    iget v4, v15, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 637
    .line 638
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    const-string v4, ", expected "

    .line 642
    .line 643
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-static {v7, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .line 655
    .line 656
    goto/16 :goto_a

    .line 657
    .line 658
    :cond_1f
    :goto_c
    if-eqz v10, :cond_20

    .line 659
    .line 660
    if-ge v11, v3, :cond_20

    .line 661
    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    .line 663
    .line 664
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    const-string v4, ": did not extend to task "

    .line 671
    .line 672
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-static {v7, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .line 690
    .line 691
    const/4 v10, 0x0

    .line 692
    :cond_20
    if-eqz v10, :cond_22

    .line 693
    .line 694
    move v2, v9

    .line 695
    :goto_d
    if-gt v2, v11, :cond_21

    .line 696
    .line 697
    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 698
    .line 699
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    check-cast v3, Lcom/android/server/wm/Task;

    .line 704
    .line 705
    iget-object v4, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 706
    .line 707
    sub-int v5, v2, v9

    .line 708
    .line 709
    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    add-int/lit8 v2, v2, 0x1

    .line 713
    .line 714
    goto :goto_d

    .line 715
    :cond_21
    const/4 v2, 0x1

    .line 716
    goto :goto_e

    .line 717
    :cond_22
    const/4 v2, 0x0

    .line 718
    :goto_e
    if-eqz v2, :cond_23

    .line 719
    .line 720
    return-void

    .line 721
    :cond_23
    const/4 v3, 0x1

    .line 722
    goto :goto_11

    .line 723
    :cond_24
    :goto_f
    iget-boolean v2, v0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 724
    .line 725
    if-eqz v2, :cond_25

    .line 726
    .line 727
    const/4 v2, -0x1

    .line 728
    if-eq v8, v2, :cond_25

    .line 729
    .line 730
    goto :goto_10

    .line 731
    :cond_25
    const/4 v8, 0x0

    .line 732
    :goto_10
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 733
    .line 734
    invoke-virtual {v2, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/Task;)V

    .line 738
    .line 739
    .line 740
    :cond_26
    :goto_11
    if-eqz v3, :cond_27

    .line 741
    .line 742
    iget v2, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 743
    .line 744
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 745
    .line 746
    .line 747
    :cond_27
    const/4 v2, 0x1

    .line 748
    iput-boolean v2, v0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    .line 749
    .line 750
    const/4 v2, 0x0

    .line 751
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 752
    .line 753
    .line 754
    return-void
.end method

.method public final cleanupDisabledPackageTasksLocked(ILjava/lang/String;Ljava/util/Set;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

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
    if-ltz v0, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v3, v1

    .line 18
    check-cast v3, Lcom/android/server/wm/Task;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    iget v1, v3, Lcom/android/server/wm/Task;->mUserId:I

    .line 24
    .line 25
    if-eq v1, p1, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v1, v3, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_1
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v2, p3

    .line 57
    check-cast v2, Landroid/util/ArraySet;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    :cond_2
    const/4 v7, 0x0

    .line 66
    const/4 v9, -0x1

    .line 67
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x1

    .line 71
    const-string v6, "disabled-package"

    .line 72
    .line 73
    const/16 v8, 0x3e8

    .line 74
    .line 75
    const/4 v10, 0x0

    .line 76
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    return-void
.end method

.method public final cleanupLocked(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    sub-int/2addr v0, v2

    .line 26
    :goto_0
    const-string v3, "ActivityTaskManager"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-ltz v0, :cond_e

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/android/server/wm/Task;

    .line 38
    .line 39
    const/4 v6, -0x1

    .line 40
    if-eq p1, v6, :cond_1

    .line 41
    .line 42
    iget v6, v5, Lcom/android/server/wm/Task;->mUserId:I

    .line 43
    .line 44
    if-eq v6, p1, :cond_1

    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_1
    iget-boolean v6, v5, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 49
    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    invoke-virtual {v5, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 59
    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentTasks;->okToRemove(Lcom/android/server/wm/Task;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v6, "Removing auto-remove without activity: "

    .line 74
    .line 75
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_3
    iget-object v6, v5, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 91
    .line 92
    if-eqz v6, :cond_d

    .line 93
    .line 94
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Landroid/content/pm/ActivityInfo;

    .line 101
    .line 102
    if-nez v6, :cond_5

    .line 103
    .line 104
    :try_start_0
    iget-object v6, v5, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 105
    .line 106
    const-wide/32 v7, 0x10000400

    .line 107
    .line 108
    .line 109
    invoke-interface {v1, v6, v7, v8, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 110
    .line 111
    .line 112
    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    if-nez v6, :cond_4

    .line 114
    .line 115
    sget-object v6, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 116
    .line 117
    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 118
    .line 119
    iget-object v8, v5, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 120
    .line 121
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    :cond_5
    sget-object v7, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 125
    .line 126
    const/high16 v8, 0x800000

    .line 127
    .line 128
    if-ne v6, v7, :cond_a

    .line 129
    .line 130
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 131
    .line 132
    iget-object v7, v5, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 133
    .line 134
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 143
    .line 144
    if-nez v6, :cond_7

    .line 145
    .line 146
    :try_start_1
    iget-object v6, v5, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 147
    .line 148
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    const-wide/16 v9, 0x2000

    .line 153
    .line 154
    invoke-interface {v1, v6, v9, v10, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    if-nez v6, :cond_6

    .line 159
    .line 160
    sget-object v6, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 161
    .line 162
    :cond_6
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 163
    .line 164
    iget-object v9, v5, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 165
    .line 166
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-virtual {v7, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    :cond_7
    sget-object v7, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 174
    .line 175
    if-eq v6, v7, :cond_9

    .line 176
    .line 177
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 178
    .line 179
    and-int/2addr v6, v8

    .line 180
    if-nez v6, :cond_8

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_8
    iput-boolean v4, v5, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_9
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 187
    .line 188
    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v6, "Removing no longer valid recent: "

    .line 192
    .line 193
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_a
    iget-boolean v3, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 208
    .line 209
    if-eqz v3, :cond_c

    .line 210
    .line 211
    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 212
    .line 213
    iget-boolean v6, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 214
    .line 215
    if-eqz v6, :cond_c

    .line 216
    .line 217
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 218
    .line 219
    and-int/2addr v3, v8

    .line 220
    if-nez v3, :cond_b

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_b
    iput-boolean v2, v5, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_c
    :goto_2
    iput-boolean v4, v5, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 227
    .line 228
    :catch_0
    :cond_d
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_e
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    move v0, v4

    .line 239
    :goto_4
    if-ge v0, p1, :cond_17

    .line 240
    .line 241
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Lcom/android/server/wm/Task;

    .line 248
    .line 249
    iget v5, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 250
    .line 251
    iget v6, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 252
    .line 253
    if-ne v6, v5, :cond_f

    .line 254
    .line 255
    iget-object v6, v1, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 256
    .line 257
    if-nez v6, :cond_f

    .line 258
    .line 259
    iget-object v6, v1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 260
    .line 261
    if-nez v6, :cond_f

    .line 262
    .line 263
    iput-boolean v2, v1, Lcom/android/server/wm/Task;->inRecents:Z

    .line 264
    .line 265
    add-int/lit8 v0, v0, 0x1

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 271
    .line 272
    .line 273
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    sub-int/2addr v1, v2

    .line 280
    :goto_5
    if-lt v1, v0, :cond_11

    .line 281
    .line 282
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    check-cast v6, Lcom/android/server/wm/Task;

    .line 289
    .line 290
    iget v7, v6, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 291
    .line 292
    if-ne v7, v5, :cond_10

    .line 293
    .line 294
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    :cond_10
    add-int/lit8 v1, v1, -0x1

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 308
    .line 309
    sget-object v5, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    .line 310
    .line 311
    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 312
    .line 313
    .line 314
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Lcom/android/server/wm/Task;

    .line 321
    .line 322
    iput-boolean v2, v1, Lcom/android/server/wm/Task;->inRecents:Z

    .line 323
    .line 324
    iget-object v5, v1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 325
    .line 326
    const/4 v6, 0x0

    .line 327
    if-eqz v5, :cond_12

    .line 328
    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v7, "Link error 1 first.next="

    .line 332
    .line 333
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object v7, v1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 337
    .line 338
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 352
    .line 353
    .line 354
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    move v5, v4

    .line 361
    :goto_6
    add-int/lit8 v7, v1, -0x1

    .line 362
    .line 363
    if-ge v5, v7, :cond_15

    .line 364
    .line 365
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v7

    .line 371
    check-cast v7, Lcom/android/server/wm/Task;

    .line 372
    .line 373
    iget-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 374
    .line 375
    add-int/lit8 v5, v5, 0x1

    .line 376
    .line 377
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    check-cast v8, Lcom/android/server/wm/Task;

    .line 382
    .line 383
    iget-object v9, v7, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 384
    .line 385
    if-eq v9, v8, :cond_13

    .line 386
    .line 387
    new-instance v9, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    const-string v10, "Link error 2 next="

    .line 390
    .line 391
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v10, " prev="

    .line 398
    .line 399
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget-object v10, v7, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 403
    .line 404
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v10, " setting prev="

    .line 408
    .line 409
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    invoke-virtual {v7, v8}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0, v7, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 426
    .line 427
    .line 428
    :cond_13
    iget-object v9, v8, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 429
    .line 430
    if-eq v9, v7, :cond_14

    .line 431
    .line 432
    new-instance v9, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v10, "Link error 3 prev="

    .line 435
    .line 436
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v10, " next="

    .line 443
    .line 444
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    iget-object v10, v8, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 448
    .line 449
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const-string v10, " setting next="

    .line 453
    .line 454
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v9

    .line 464
    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    invoke-virtual {v8, v7}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p0, v8, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 471
    .line 472
    .line 473
    :cond_14
    iput-boolean v2, v8, Lcom/android/server/wm/Task;->inRecents:Z

    .line 474
    .line 475
    goto :goto_6

    .line 476
    :cond_15
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    check-cast v5, Lcom/android/server/wm/Task;

    .line 483
    .line 484
    iget-object v7, v5, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 485
    .line 486
    if-eqz v7, :cond_16

    .line 487
    .line 488
    new-instance v7, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    const-string v8, "Link error 4 last.prev="

    .line 491
    .line 492
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    iget-object v8, v5, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 496
    .line 497
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {p0, v5, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 511
    .line 512
    .line 513
    :cond_16
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 514
    .line 515
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 516
    .line 517
    invoke-virtual {v5, v0, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 518
    .line 519
    .line 520
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 523
    .line 524
    .line 525
    add-int/2addr v0, v1

    .line 526
    goto/16 :goto_4

    .line 527
    .line 528
    :cond_17
    return-void
.end method

.method public final clearRecentTasksLocked(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

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
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/server/wm/Task;

    .line 18
    .line 19
    iget v4, v3, Lcom/android/server/wm/Task;->mUserId:I

    .line 20
    .line 21
    if-ne v4, p1, :cond_1

    .line 22
    .line 23
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    iget-boolean v4, v3, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget-object v4, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    iput-boolean v1, v3, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/RecentTasks;->removeDedicatedProcessFromPackage(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method

.method public final createRecentTaskInfo(Lcom/android/server/wm/Task;ZZ)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-virtual {p1, v0, p2, p0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    .line 28
    .line 29
    .line 30
    iget-boolean p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 p2, -0x1

    .line 38
    :goto_1
    iput p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 39
    .line 40
    iget p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 41
    .line 42
    iput p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 43
    .line 44
    iget-object p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 45
    .line 46
    iget-object v1, p1, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->set(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)V

    .line 49
    .line 50
    .line 51
    if-nez p3, :cond_2

    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/android/server/wm/Task;->trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-boolean p2, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 57
    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    const/4 p3, 0x1

    .line 65
    sub-int/2addr p2, p3

    .line 66
    :goto_2
    if-ltz p2, :cond_4

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 85
    .line 86
    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2, p3, p0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->childrenTaskInfos:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    return-object v0
.end method

.method public final dedicateTo(Lcom/android/server/wm/Task;Z)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "dedicateTo "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ","

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "ActivityTaskManager"

    .line 37
    .line 38
    invoke-static {v1, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    :goto_0
    if-nez v1, :cond_3

    .line 61
    .line 62
    const-string p0, "dedicateTo: pkgName is null"

    .line 63
    .line 64
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const/4 v3, 0x0

    .line 75
    move v4, v3

    .line 76
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    .line 78
    if-ge v4, v2, :cond_5

    .line 79
    .line 80
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Lcom/android/server/wm/Task;

    .line 87
    .line 88
    iget-boolean v7, v6, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 89
    .line 90
    if-eq p2, v7, :cond_4

    .line 91
    .line 92
    iget v7, v6, Lcom/android/server/wm/Task;->mUserId:I

    .line 93
    .line 94
    iget v8, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 95
    .line 96
    if-ne v7, v8, :cond_4

    .line 97
    .line 98
    iget-object v7, v6, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_4

    .line 105
    .line 106
    iput-boolean p2, v6, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 107
    .line 108
    invoke-virtual {p0, v6, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 109
    .line 110
    .line 111
    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyDedicated(I)V

    .line 114
    .line 115
    .line 116
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 120
    .line 121
    if-eq p2, v2, :cond_6

    .line 122
    .line 123
    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 124
    .line 125
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 126
    .line 127
    .line 128
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 129
    .line 130
    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyDedicated(I)V

    .line 131
    .line 132
    .line 133
    :cond_6
    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 134
    .line 135
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 136
    .line 137
    invoke-virtual {v3, v2}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-eqz p2, :cond_9

    .line 142
    .line 143
    const-string p2, "com.android.systemui"

    .line 144
    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-nez p2, :cond_7

    .line 150
    .line 151
    const-string/jumbo p2, "system:ui"

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-eqz p2, :cond_8

    .line 159
    .line 160
    :cond_7
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-nez p2, :cond_8

    .line 165
    .line 166
    invoke-virtual {v2, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_8
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-nez p2, :cond_c

    .line 175
    .line 176
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-nez p2, :cond_a

    .line 185
    .line 186
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    if-eqz p2, :cond_c

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_a
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-eqz p2, :cond_c

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_c

    .line 212
    .line 213
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    .line 219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_b

    .line 228
    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    :goto_2
    iget p2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 237
    .line 238
    invoke-virtual {v3, p2}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 243
    .line 244
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 245
    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPersister;->saveDedicatedProcessName(ILjava/util/HashMap;)V

    .line 247
    .line 248
    .line 249
    :cond_c
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v8, p2

    .line 5
    .line 6
    const-string v0, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    .line 7
    .line 8
    const-string/jumbo v1, "mRecentsUid="

    .line 9
    .line 10
    .line 11
    invoke-static {v7, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, v6, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 16
    .line 17
    const-string/jumbo v2, "mRecentsComponent="

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, v7, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "mFreezeTaskListReordering="

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v1, v6, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 44
    .line 45
    const-string v2, "mFreezeTaskListReorderingPendingTimeout="

    .line 46
    .line 47
    invoke-static {v0, v1, v7, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 54
    .line 55
    iget-object v3, v6, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "mHiddenTasks="

    .line 82
    .line 83
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v6, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    return-void

    .line 107
    :cond_1
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const/4 v9, 0x0

    .line 114
    move v2, v9

    .line 115
    move v3, v2

    .line 116
    move v10, v3

    .line 117
    :goto_0
    const/4 v11, 0x1

    .line 118
    const-string v12, "    "

    .line 119
    .line 120
    const-string v13, ": "

    .line 121
    .line 122
    if-ge v2, v0, :cond_d

    .line 123
    .line 124
    iget-object v4, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Lcom/android/server/wm/Task;

    .line 131
    .line 132
    if-eqz v8, :cond_a

    .line 133
    .line 134
    iget-object v5, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 135
    .line 136
    if-eqz v5, :cond_2

    .line 137
    .line 138
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    if-eqz v5, :cond_2

    .line 143
    .line 144
    iget-object v5, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 145
    .line 146
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_2

    .line 159
    .line 160
    move v5, v11

    .line 161
    goto :goto_1

    .line 162
    :cond_2
    move v5, v9

    .line 163
    :goto_1
    if-nez v5, :cond_4

    .line 164
    .line 165
    iget-object v14, v4, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 166
    .line 167
    if-eqz v14, :cond_3

    .line 168
    .line 169
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    if-eqz v14, :cond_3

    .line 174
    .line 175
    iget-object v14, v4, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 176
    .line 177
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 178
    .line 179
    .line 180
    move-result-object v14

    .line 181
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    if-eqz v14, :cond_3

    .line 190
    .line 191
    move v14, v11

    .line 192
    goto :goto_2

    .line 193
    :cond_3
    move v14, v9

    .line 194
    :goto_2
    or-int/2addr v5, v14

    .line 195
    :cond_4
    if-nez v5, :cond_6

    .line 196
    .line 197
    iget-object v14, v4, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 198
    .line 199
    if-eqz v14, :cond_5

    .line 200
    .line 201
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    if-eqz v14, :cond_5

    .line 210
    .line 211
    move v14, v11

    .line 212
    goto :goto_3

    .line 213
    :cond_5
    move v14, v9

    .line 214
    :goto_3
    or-int/2addr v5, v14

    .line 215
    :cond_6
    if-nez v5, :cond_8

    .line 216
    .line 217
    iget-object v14, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 218
    .line 219
    if-eqz v14, :cond_7

    .line 220
    .line 221
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v14

    .line 229
    if-eqz v14, :cond_7

    .line 230
    .line 231
    move v14, v11

    .line 232
    goto :goto_4

    .line 233
    :cond_7
    move v14, v9

    .line 234
    :goto_4
    or-int/2addr v5, v14

    .line 235
    :cond_8
    if-nez v5, :cond_9

    .line 236
    .line 237
    iget-object v14, v4, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v14

    .line 243
    or-int/2addr v5, v14

    .line 244
    :cond_9
    if-nez v5, :cond_a

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_a
    if-nez v3, :cond_b

    .line 248
    .line 249
    const-string v3, "  Recent tasks:"

    .line 250
    .line 251
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    move v3, v11

    .line 255
    move v10, v3

    .line 256
    :cond_b
    const-string v5, "  * Recent #"

    .line 257
    .line 258
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    if-eqz p3, :cond_c

    .line 271
    .line 272
    invoke-virtual {v4, v7, v12}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_c
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_d
    iget-boolean v0, v6, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 280
    .line 281
    if-eqz v0, :cond_1a

    .line 282
    .line 283
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    const/4 v2, 0x0

    .line 290
    const/4 v5, 0x1

    .line 291
    const v1, 0x7fffffff

    .line 292
    .line 293
    .line 294
    const/16 v4, 0x3e8

    .line 295
    .line 296
    move-object v0, p0

    .line 297
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIIIZ)Ljava/util/ArrayList;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    move v1, v9

    .line 302
    move v2, v1

    .line 303
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-ge v1, v3, :cond_1a

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 314
    .line 315
    if-eqz v8, :cond_17

    .line 316
    .line 317
    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 318
    .line 319
    if-eqz v4, :cond_e

    .line 320
    .line 321
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    if-eqz v4, :cond_e

    .line 326
    .line 327
    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 328
    .line 329
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-eqz v4, :cond_e

    .line 342
    .line 343
    move v4, v11

    .line 344
    goto :goto_7

    .line 345
    :cond_e
    move v4, v9

    .line 346
    :goto_7
    if-nez v4, :cond_10

    .line 347
    .line 348
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 349
    .line 350
    if-eqz v5, :cond_f

    .line 351
    .line 352
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_f

    .line 361
    .line 362
    move v5, v11

    .line 363
    goto :goto_8

    .line 364
    :cond_f
    move v5, v9

    .line 365
    :goto_8
    or-int/2addr v4, v5

    .line 366
    :cond_10
    if-nez v4, :cond_12

    .line 367
    .line 368
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 369
    .line 370
    if-eqz v5, :cond_11

    .line 371
    .line 372
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    if-eqz v5, :cond_11

    .line 381
    .line 382
    move v5, v11

    .line 383
    goto :goto_9

    .line 384
    :cond_11
    move v5, v9

    .line 385
    :goto_9
    or-int/2addr v4, v5

    .line 386
    :cond_12
    if-nez v4, :cond_14

    .line 387
    .line 388
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 389
    .line 390
    if-eqz v5, :cond_13

    .line 391
    .line 392
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    if-eqz v5, :cond_13

    .line 401
    .line 402
    move v5, v11

    .line 403
    goto :goto_a

    .line 404
    :cond_13
    move v5, v9

    .line 405
    :goto_a
    or-int/2addr v4, v5

    .line 406
    :cond_14
    if-nez v4, :cond_16

    .line 407
    .line 408
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 409
    .line 410
    if-eqz v5, :cond_15

    .line 411
    .line 412
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    if-eqz v5, :cond_15

    .line 421
    .line 422
    move v5, v11

    .line 423
    goto :goto_b

    .line 424
    :cond_15
    move v5, v9

    .line 425
    :goto_b
    or-int/2addr v4, v5

    .line 426
    :cond_16
    if-nez v4, :cond_17

    .line 427
    .line 428
    goto :goto_c

    .line 429
    :cond_17
    if-nez v2, :cond_19

    .line 430
    .line 431
    if-eqz v10, :cond_18

    .line 432
    .line 433
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 434
    .line 435
    .line 436
    :cond_18
    const-string v2, "  Visible recent tasks (most recent first):"

    .line 437
    .line 438
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    move v2, v11

    .line 442
    move v10, v2

    .line 443
    :cond_19
    const-string v4, "  * RecentTaskInfo #"

    .line 444
    .line 445
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v7, v12}, Landroid/app/ActivityManager$RecentTaskInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :goto_c
    add-int/lit8 v1, v1, 0x1

    .line 458
    .line 459
    goto/16 :goto_6

    .line 460
    .line 461
    :cond_1a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 462
    .line 463
    if-eqz v0, :cond_22

    .line 464
    .line 465
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 466
    .line 467
    .line 468
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 469
    .line 470
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    move v2, v9

    .line 475
    move v3, v2

    .line 476
    :goto_d
    if-ge v2, v1, :cond_20

    .line 477
    .line 478
    if-nez v2, :cond_1b

    .line 479
    .line 480
    const-string v4, "  Dedicated processes:"

    .line 481
    .line 482
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    move v10, v11

    .line 486
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    check-cast v5, Ljava/util/HashMap;

    .line 495
    .line 496
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 497
    .line 498
    .line 499
    move-result v6

    .line 500
    if-nez v6, :cond_1f

    .line 501
    .line 502
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 503
    .line 504
    .line 505
    const-string v3, "    #"

    .line 506
    .line 507
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    move v4, v11

    .line 525
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 526
    .line 527
    .line 528
    move-result v6

    .line 529
    if-eqz v6, :cond_1e

    .line 530
    .line 531
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    check-cast v6, Ljava/lang/String;

    .line 536
    .line 537
    const-string v8, ", "

    .line 538
    .line 539
    if-eqz v4, :cond_1c

    .line 540
    .line 541
    move v4, v9

    .line 542
    goto :goto_f

    .line 543
    :cond_1c
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    :goto_f
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v12

    .line 550
    check-cast v12, Ljava/lang/String;

    .line 551
    .line 552
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v14

    .line 556
    if-eqz v14, :cond_1d

    .line 557
    .line 558
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    goto :goto_e

    .line 562
    :cond_1d
    const-string v14, "("

    .line 563
    .line 564
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    const-string v6, ")"

    .line 577
    .line 578
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    goto :goto_e

    .line 582
    :cond_1e
    move v3, v11

    .line 583
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    .line 584
    .line 585
    goto :goto_d

    .line 586
    :cond_20
    if-nez v3, :cond_21

    .line 587
    .line 588
    const-string v0, "(nothing)"

    .line 589
    .line 590
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    :cond_21
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 594
    .line 595
    .line 596
    :cond_22
    if-nez v10, :cond_23

    .line 597
    .line 598
    const-string v0, "  (nothing)"

    .line 599
    .line 600
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    :cond_23
    return-void
.end method

.method public final findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    move v6, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v6, v5

    .line 26
    :goto_0
    iget v7, v1, Lcom/android/server/wm/Task;->maxRecents:I

    .line 27
    .line 28
    sub-int/2addr v7, v4

    .line 29
    move v8, v5

    .line 30
    :goto_1
    if-ge v8, v2, :cond_1a

    .line 31
    .line 32
    iget-object v9, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    check-cast v9, Lcom/android/server/wm/Task;

    .line 39
    .line 40
    if-eq v1, v9, :cond_19

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-nez v10, :cond_1

    .line 51
    .line 52
    move v12, v4

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    move v12, v5

    .line 55
    :goto_2
    if-nez v11, :cond_2

    .line 56
    .line 57
    move v13, v4

    .line 58
    goto :goto_3

    .line 59
    :cond_2
    move v13, v5

    .line 60
    :goto_3
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 65
    .line 66
    .line 67
    move-result v15

    .line 68
    if-nez v14, :cond_3

    .line 69
    .line 70
    move/from16 v16, v4

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_3
    move/from16 v16, v5

    .line 74
    .line 75
    :goto_4
    if-nez v15, :cond_4

    .line 76
    .line 77
    move/from16 v17, v4

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_4
    move/from16 v17, v5

    .line 81
    .line 82
    :goto_5
    if-eq v10, v14, :cond_6

    .line 83
    .line 84
    if-nez v12, :cond_6

    .line 85
    .line 86
    if-eqz v16, :cond_5

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_5
    move v10, v5

    .line 90
    goto :goto_7

    .line 91
    :cond_6
    :goto_6
    move v10, v4

    .line 92
    :goto_7
    if-eq v11, v15, :cond_8

    .line 93
    .line 94
    if-nez v13, :cond_8

    .line 95
    .line 96
    if-eqz v17, :cond_7

    .line 97
    .line 98
    goto :goto_8

    .line 99
    :cond_7
    move v11, v5

    .line 100
    goto :goto_9

    .line 101
    :cond_8
    :goto_8
    move v11, v4

    .line 102
    :goto_9
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    if-nez v12, :cond_9

    .line 107
    .line 108
    move v12, v4

    .line 109
    goto :goto_a

    .line 110
    :cond_9
    move v12, v5

    .line 111
    :goto_a
    if-eqz v10, :cond_18

    .line 112
    .line 113
    if-nez v11, :cond_a

    .line 114
    .line 115
    if-eqz v12, :cond_18

    .line 116
    .line 117
    :cond_a
    iget v10, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 118
    .line 119
    iget v11, v9, Lcom/android/server/wm/Task;->mUserId:I

    .line 120
    .line 121
    if-eq v10, v11, :cond_b

    .line 122
    .line 123
    goto/16 :goto_13

    .line 124
    .line 125
    :cond_b
    iget-object v10, v9, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 126
    .line 127
    iget-object v11, v1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v11, :cond_c

    .line 130
    .line 131
    iget-object v12, v9, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-eqz v11, :cond_c

    .line 138
    .line 139
    move v11, v4

    .line 140
    goto :goto_b

    .line 141
    :cond_c
    move v11, v5

    .line 142
    :goto_b
    if-eqz v3, :cond_d

    .line 143
    .line 144
    invoke-virtual {v3, v10}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    if-eqz v12, :cond_d

    .line 149
    .line 150
    move v12, v4

    .line 151
    goto :goto_c

    .line 152
    :cond_d
    move v12, v5

    .line 153
    :goto_c
    if-eqz v3, :cond_e

    .line 154
    .line 155
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    goto :goto_d

    .line 160
    :cond_e
    move v13, v5

    .line 161
    :goto_d
    const/high16 v14, 0x10080000

    .line 162
    .line 163
    and-int v15, v13, v14

    .line 164
    .line 165
    const/high16 v16, 0x8000000

    .line 166
    .line 167
    if-eqz v15, :cond_f

    .line 168
    .line 169
    and-int v15, v13, v16

    .line 170
    .line 171
    if-eqz v15, :cond_f

    .line 172
    .line 173
    move v15, v4

    .line 174
    goto :goto_e

    .line 175
    :cond_f
    move v15, v5

    .line 176
    :goto_e
    if-eqz v10, :cond_10

    .line 177
    .line 178
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    .line 179
    .line 180
    .line 181
    move-result v17

    .line 182
    goto :goto_f

    .line 183
    :cond_10
    move/from16 v17, v5

    .line 184
    .line 185
    :goto_f
    and-int v14, v17, v14

    .line 186
    .line 187
    if-eqz v14, :cond_11

    .line 188
    .line 189
    and-int v14, v17, v16

    .line 190
    .line 191
    if-eqz v14, :cond_11

    .line 192
    .line 193
    move v14, v4

    .line 194
    goto :goto_10

    .line 195
    :cond_11
    move v14, v5

    .line 196
    :goto_10
    if-eqz v10, :cond_12

    .line 197
    .line 198
    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    if-eqz v10, :cond_12

    .line 203
    .line 204
    move v10, v4

    .line 205
    goto :goto_11

    .line 206
    :cond_12
    move v10, v5

    .line 207
    :goto_11
    if-eqz v6, :cond_13

    .line 208
    .line 209
    if-eqz v10, :cond_13

    .line 210
    .line 211
    move/from16 v17, v4

    .line 212
    .line 213
    goto :goto_12

    .line 214
    :cond_13
    move/from16 v17, v5

    .line 215
    .line 216
    :goto_12
    if-nez v11, :cond_14

    .line 217
    .line 218
    if-nez v12, :cond_14

    .line 219
    .line 220
    if-nez v17, :cond_14

    .line 221
    .line 222
    goto :goto_13

    .line 223
    :cond_14
    if-eqz v17, :cond_15

    .line 224
    .line 225
    iget-object v10, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 226
    .line 227
    if-eqz v10, :cond_18

    .line 228
    .line 229
    iget-object v9, v9, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 230
    .line 231
    if-eqz v9, :cond_18

    .line 232
    .line 233
    invoke-virtual {v10, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    if-eqz v9, :cond_18

    .line 238
    .line 239
    if-lez v7, :cond_19

    .line 240
    .line 241
    add-int/lit8 v7, v7, -0x1

    .line 242
    .line 243
    if-eqz v12, :cond_18

    .line 244
    .line 245
    if-eqz v15, :cond_19

    .line 246
    .line 247
    goto :goto_13

    .line 248
    :cond_15
    if-nez v6, :cond_18

    .line 249
    .line 250
    if-eqz v10, :cond_16

    .line 251
    .line 252
    goto :goto_13

    .line 253
    :cond_16
    if-nez v15, :cond_18

    .line 254
    .line 255
    if-eqz v14, :cond_17

    .line 256
    .line 257
    goto :goto_13

    .line 258
    :cond_17
    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    if-eqz v10, :cond_19

    .line 263
    .line 264
    iget v10, v10, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 265
    .line 266
    const/4 v11, 0x4

    .line 267
    if-ne v10, v11, :cond_19

    .line 268
    .line 269
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 270
    .line 271
    .line 272
    move-result v9

    .line 273
    if-eqz v9, :cond_19

    .line 274
    .line 275
    and-int v9, v13, v16

    .line 276
    .line 277
    if-eqz v9, :cond_19

    .line 278
    .line 279
    :cond_18
    :goto_13
    add-int/lit8 v8, v8, 0x1

    .line 280
    .line 281
    goto/16 :goto_1

    .line 282
    .line 283
    :cond_19
    return v8

    .line 284
    :cond_1a
    const/4 v0, -0x1

    .line 285
    return v0
.end method

.method public final getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/wm/Task;

    .line 22
    .line 23
    iget v4, v3, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 24
    .line 25
    if-eq v4, p1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    new-instance v4, Lcom/android/server/wm/AppTaskImpl;

    .line 40
    .line 41
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 42
    .line 43
    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 44
    .line 45
    invoke-direct {v4, v5, v3, p1}, Lcom/android/server/wm/AppTaskImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/app/IAppTask$Stub;->asBinder()Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-object v0
.end method

.method public getCurrentProfileIds()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getDedicatedTaskIdsLocked(I)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, -0x1

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/wm/Task;

    .line 24
    .line 25
    iget-boolean v4, v2, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    if-eq p1, v3, :cond_1

    .line 30
    .line 31
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 32
    .line 33
    if-ne p1, v3, :cond_0

    .line 34
    .line 35
    :cond_1
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-eq p1, v3, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eq v2, v3, :cond_3

    .line 62
    .line 63
    new-instance v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v3, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-direct {v3, v4, v2}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v3, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda5;

    .line 92
    .line 93
    invoke-direct {v3, p1}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda5;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    new-instance v3, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda6;

    .line 101
    .line 102
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    new-instance v3, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;

    .line 110
    .line 111
    const/4 v4, 0x1

    .line 112
    invoke-direct {v3, v4, v2}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;

    .line 119
    .line 120
    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/RecentTasks;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    return-object v0
.end method

.method public getProfileIds(I)Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v1, v2, v2, p1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(Ljava/lang/String;ZZI)[I

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    array-length p1, p0

    .line 19
    if-ge v2, p1, :cond_0

    .line 20
    .line 21
    aget p1, p0, v2

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method public getRawTasks()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRecentTaskIds()Landroid/util/SparseBooleanArray;
    .locals 7

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Lcom/android/server/wm/Task;

    .line 24
    .line 25
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(IILcom/android/server/wm/Task;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method

.method public final getRecentTasksImpl(IIIIZ)Ljava/util/ArrayList;
    .locals 10

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-interface {v3, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    new-instance p3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    move v5, v1

    .line 33
    move v6, v5

    .line 34
    :goto_1
    if-ge v5, v4, :cond_a

    .line 35
    .line 36
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Lcom/android/server/wm/Task;

    .line 43
    .line 44
    invoke-virtual {p0, v7}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_9

    .line 49
    .line 50
    add-int/lit8 v6, v6, 0x1

    .line 51
    .line 52
    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(IILcom/android/server/wm/Task;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_9

    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-lt v8, p1, :cond_1

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_1
    iget v8, v7, Lcom/android/server/wm/Task;->mUserId:I

    .line 67
    .line 68
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-nez v8, :cond_2

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    iget-boolean v8, v7, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 80
    .line 81
    if-eqz v8, :cond_3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    if-nez p5, :cond_4

    .line 85
    .line 86
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-nez v8, :cond_4

    .line 91
    .line 92
    iget v8, v7, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 93
    .line 94
    if-eq v8, p4, :cond_4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    iget-boolean v8, v7, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 98
    .line 99
    if-eqz v8, :cond_5

    .line 100
    .line 101
    invoke-virtual {v7, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    if-nez v8, :cond_5

    .line 106
    .line 107
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 108
    .line 109
    if-eqz v8, :cond_9

    .line 110
    .line 111
    invoke-virtual {p0, v7}, Lcom/android/server/wm/RecentTasks;->okToRemove(Lcom/android/server/wm/Task;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_5

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    and-int/lit8 v8, p2, 0x2

    .line 119
    .line 120
    if-eqz v8, :cond_6

    .line 121
    .line 122
    iget-boolean v8, v7, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 123
    .line 124
    if-nez v8, :cond_6

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_6
    iget-boolean v8, v7, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 128
    .line 129
    if-nez v8, :cond_7

    .line 130
    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v9, "Skipping, user setup not complete: "

    .line 134
    .line 135
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    const-string v8, "ActivityTaskManager"

    .line 146
    .line 147
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    and-int/lit8 v8, p2, 0x10

    .line 152
    .line 153
    if-nez v8, :cond_8

    .line 154
    .line 155
    invoke-virtual {v7, v1, v2}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    if-eqz v8, :cond_8

    .line 160
    .line 161
    iget-boolean v8, v8, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    .line 162
    .line 163
    if-eqz v8, :cond_8

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_8
    invoke-virtual {p0, v7, v2, p5}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/Task;ZZ)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :cond_9
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_a
    return-object p3
.end method

.method public final getTask(I)Lcom/android/server/wm/Task;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

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
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/wm/Task;

    .line 17
    .line 18
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 19
    .line 20
    if-ne v3, p1, :cond_0

    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

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
    return v1

    .line 11
    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 17
    .line 18
    if-eq v0, p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    return p0
.end method

.method public isFreezeTaskListReorderingSet()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isInVisibleRange(IILcom/android/server/wm/Task;Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p4, :cond_3

    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    if-eqz p4, :cond_3

    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    invoke-virtual {p4}, Landroid/content/Intent;->getFlags()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    const/high16 v2, 0x800000

    .line 20
    .line 21
    and-int/2addr p4, v2

    .line 22
    if-ne p4, v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    move v0, v1

    .line 47
    :cond_0
    return v0

    .line 48
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_2

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    move v0, v1

    .line 57
    :cond_2
    return v0

    .line 58
    :cond_3
    iget p1, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 59
    .line 60
    if-ltz p1, :cond_4

    .line 61
    .line 62
    if-gt p2, p1, :cond_4

    .line 63
    .line 64
    return v1

    .line 65
    :cond_4
    iget-object p1, p3, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    return v1

    .line 70
    :cond_5
    iget p1, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 71
    .line 72
    if-ltz p1, :cond_7

    .line 73
    .line 74
    if-gt p2, p1, :cond_6

    .line 75
    .line 76
    move v0, v1

    .line 77
    :cond_6
    return v0

    .line 78
    :cond_7
    iget-wide p1, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 79
    .line 80
    const-wide/16 v2, 0x0

    .line 81
    .line 82
    cmp-long p1, p1, v2

    .line 83
    .line 84
    if-lez p1, :cond_9

    .line 85
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 87
    .line 88
    .line 89
    move-result-wide p1

    .line 90
    iget-wide p3, p3, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 91
    .line 92
    sub-long/2addr p1, p3

    .line 93
    iget-wide p3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 94
    .line 95
    cmp-long p0, p1, p3

    .line 96
    .line 97
    if-gtz p0, :cond_8

    .line 98
    .line 99
    return v1

    .line 100
    :cond_8
    return v0

    .line 101
    :cond_9
    return v1
.end method

.method public final isRecentsComponentHomeActivity(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 45
    :goto_1
    return p0
.end method

.method public isVisibleRecentTask(Lcom/android/server/wm/Task;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_a

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v0, v3, :cond_a

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x5

    .line 16
    if-eq v0, v3, :cond_a

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/high16 v3, 0x800000

    .line 28
    .line 29
    and-int/2addr v0, v3

    .line 30
    if-ne v0, v3, :cond_1

    .line 31
    .line 32
    return v2

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eq v0, v1, :cond_a

    .line 38
    .line 39
    const/4 v1, 0x6

    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTopWhenVisible()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    return v2

    .line 50
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Lcom/android/server/wm/Task;

    .line 71
    .line 72
    :goto_2
    if-ne p1, p0, :cond_5

    .line 73
    .line 74
    return v2

    .line 75
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const/4 v0, 0x1

    .line 80
    if-eqz p0, :cond_8

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 87
    .line 88
    if-nez p0, :cond_6

    .line 89
    .line 90
    :goto_3
    move p0, v0

    .line 91
    goto :goto_4

    .line 92
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 93
    .line 94
    if-nez p0, :cond_7

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_7
    invoke-virtual {p0}, Landroid/window/DisplayWindowPolicyController;->canShowTasksInHostDeviceRecents()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    :goto_4
    if-nez p0, :cond_8

    .line 102
    .line 103
    return v2

    .line 104
    :cond_8
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 105
    .line 106
    if-eqz p0, :cond_9

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    if-eqz p0, :cond_9

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_9

    .line 123
    .line 124
    return v2

    .line 125
    :cond_9
    return v0

    .line 126
    :cond_a
    return v2
.end method

.method public loadParametersFromResources(Landroid/content/res/Resources;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const v0, 0x10e00e7

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 15
    .line 16
    const v0, 0x10e00da

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const v0, 0x10e00e6

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 34
    .line 35
    const v0, 0x10e00d9

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 43
    .line 44
    :goto_0
    const-wide/16 v0, -0x1

    .line 45
    .line 46
    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 47
    .line 48
    return-void
.end method

.method public final loadRecentTasksIfNeeded(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

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
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 20
    .line 21
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v2

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskPersister;->readPersistedTaskIdsFromFileForUser(I)Landroid/util/SparseBooleanArray;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister;->loadTasksForUser(I)Lcom/android/server/wm/TaskPersister$RecentTaskFiles;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 61
    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 63
    .line 64
    .line 65
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :try_start_2
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/wm/RecentTasks;->restoreRecentTasksLocked(ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/TaskPersister$RecentTaskFiles;)V

    .line 67
    .line 68
    .line 69
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x1

    .line 74
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    .line 76
    .line 77
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    return-void

    .line 79
    :catchall_2
    move-exception p0

    .line 80
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 81
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 86
    throw p0

    .line 87
    :goto_2
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 88
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public final notifyTaskAdded(Lcom/android/server/wm/Task;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    .line 17
    .line 18
    check-cast v1, Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iput-wide v1, p1, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 38
    .line 39
    const/16 v0, 0x16

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 29
    .line 30
    new-instance v2, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, v3, p1}, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda0;-><init>(ILcom/android/server/wm/Task;)V

    .line 34
    .line 35
    .line 36
    const-class v3, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->inRecents:Z

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    new-instance v2, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-direct {v2, v3, p1}, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda0;-><init>(ILcom/android/server/wm/Task;)V

    .line 54
    .line 55
    .line 56
    const-class v3, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 59
    .line 60
    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 67
    .line 68
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 73
    .line 74
    new-instance v2, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    .line 78
    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 86
    .line 87
    sget-object v1, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p0
.end method

.method public final notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyDedicated(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContentDispatcher:Lcom/android/server/pm/ContentDispatcher;

    .line 19
    .line 20
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/server/pm/ContentDispatcher;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ContentDispatcher;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    move v1, v0

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ge v1, v2, :cond_9

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/server/wm/RecentTasks$Callbacks;

    .line 49
    .line 50
    move-object v3, v2

    .line 51
    check-cast v3, Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 59
    .line 60
    const-string/jumbo v7, "recent-task-trimmed"

    .line 61
    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    const/16 v5, 0x3e8

    .line 66
    .line 67
    const/4 v6, -0x1

    .line 68
    move v8, p3

    .line 69
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IIILjava/lang/String;ZZZ)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    iget-object v3, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v2, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    iget-object v3, p1, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 95
    .line 96
    .line 97
    iget-boolean v3, p1, Lcom/android/server/wm/Task;->inRecents:Z

    .line 98
    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    iput-boolean v0, p1, Lcom/android/server/wm/Task;->inRecents:Z

    .line 102
    .line 103
    iget-object v3, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 104
    .line 105
    invoke-virtual {v3, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 109
    .line 110
    .line 111
    iget-object v3, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 112
    .line 113
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object v4, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 119
    .line 120
    if-eqz v4, :cond_8

    .line 121
    .line 122
    iget-object v5, v3, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    .line 123
    .line 124
    if-nez v5, :cond_5

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    if-nez v4, :cond_6

    .line 132
    .line 133
    move v4, v0

    .line 134
    goto :goto_2

    .line 135
    :cond_6
    iget-object v6, v5, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->mLock:Ljava/lang/Object;

    .line 136
    .line 137
    monitor-enter v6

    .line 138
    :try_start_0
    iget-object v5, v5, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->mDeferredPackages:Ljava/util/Set;

    .line 139
    .line 140
    if-eqz v5, :cond_7

    .line 141
    .line 142
    check-cast v5, Ljava/util/HashSet;

    .line 143
    .line 144
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_7

    .line 149
    .line 150
    const/4 v4, 0x1

    .line 151
    goto :goto_1

    .line 152
    :cond_7
    move v4, v0

    .line 153
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_2
    if-eqz v4, :cond_8

    .line 155
    .line 156
    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    throw p0

    .line 163
    :cond_8
    :goto_3
    iget-object v2, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 164
    .line 165
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 166
    .line 167
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 168
    .line 169
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 170
    .line 171
    iget v4, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 172
    .line 173
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TaskSnapshotController;->removeAndDeleteSnapshot(II)V

    .line 174
    .line 175
    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 181
    .line 182
    iget-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 183
    .line 184
    const/16 p2, 0x16

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 191
    .line 192
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public final okToRemove(Lcom/android/server/wm/Task;)Z
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda2;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/Task;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final onPackagesSuspendedChanged(IZ[Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {p3}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v0, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/wm/Task;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget v2, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 38
    .line 39
    if-ne v2, p1, :cond_1

    .line 40
    .line 41
    iget-boolean v2, v1, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 42
    .line 43
    if-eq v2, p2, :cond_1

    .line 44
    .line 45
    iput-boolean p2, v1, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 46
    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v9, -0x1

    .line 51
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x1

    .line 55
    const-string/jumbo v6, "suspended-package"

    .line 56
    .line 57
    .line 58
    const/16 v8, 0x3e8

    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    move-object v3, v1

    .line 62
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V

    .line 63
    .line 64
    .line 65
    :cond_0
    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 67
    .line 68
    .line 69
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method

.method public final onSystemReadyLocked()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 10
    .line 11
    const-string v3, "ActivityTaskManager"

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v4, "com.sec.android.app.launcher"

    .line 20
    .line 21
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    invoke-interface {v2, v4, v6, v7, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 36
    .line 37
    iput v2, p0, Lcom/android/server/wm/RecentTasks;->mLauncherInfo:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const-string v2, "Could not load application info for recents edge"

    .line 41
    .line 42
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    const v2, 0x104039f

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const-wide/16 v5, 0x2200

    .line 80
    .line 81
    invoke-interface {v2, v4, v5, v6, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 88
    .line 89
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 90
    .line 91
    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, "Could not load application info for recents component: "

    .line 97
    .line 98
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final remove(Lcom/android/server/wm/Task;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final removeAllVisibleTasks(I)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    :goto_0
    if-ltz v0, :cond_5

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/wm/Task;

    .line 22
    .line 23
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_0
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    :goto_1
    move-object v5, v3

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v3, 0x0

    .line 77
    goto :goto_1

    .line 78
    :goto_2
    if-eqz v5, :cond_3

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    const-class v3, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 87
    .line 88
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    move-object v4, v3

    .line 93
    check-cast v4, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 94
    .line 95
    iget v6, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v10, 0x1

    .line 101
    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->isApplicationStopDisabledAsUser(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    return-void
.end method

.method public final removeDedicatedProcessFromPackage(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "remove dedicated process of "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "ActivityTaskManager"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x0

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 100
    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskPersister;->saveDedicatedProcessName(ILjava/util/HashMap;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    return-void
.end method

.method public final resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

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
    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x17

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 41
    .line 42
    invoke-virtual {v1, p1, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public resetFreezeTaskListReorderingOnTimeout()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

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
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    move-object v2, v1

    .line 37
    :cond_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    aget-boolean v1, v1, v3

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 45
    .line 46
    const-wide v4, 0x381393610cf534bfL    # 1.4381952701529872E-38

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V

    .line 58
    .line 59
    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final restoreRecentTasksLocked(ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/TaskPersister$RecentTaskFiles;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    iget-object v4, v1, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 8
    .line 9
    iget-object v0, v4, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 10
    .line 11
    move-object/from16 v5, p2

    .line 12
    .line 13
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Landroid/util/IntArray;

    .line 26
    .line 27
    invoke-direct {v5}, Landroid/util/IntArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v6, 0x1

    .line 37
    sub-int/2addr v0, v6

    .line 38
    :goto_0
    if-ltz v0, :cond_2

    .line 39
    .line 40
    iget-object v7, v1, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Lcom/android/server/wm/Task;

    .line 47
    .line 48
    iget v8, v7, Lcom/android/server/wm/Task;->mUserId:I

    .line 49
    .line 50
    if-ne v8, v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    iget-boolean v9, v7, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 57
    .line 58
    if-eqz v9, :cond_1

    .line 59
    .line 60
    if-eqz v8, :cond_0

    .line 61
    .line 62
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_1

    .line 67
    .line 68
    :cond_0
    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 69
    .line 70
    invoke-virtual {v5, v7}, Landroid/util/IntArray;->add(I)V

    .line 71
    .line 72
    .line 73
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "Restoring recents for user "

    .line 77
    .line 78
    const-string v7, "ActivityTaskManager"

    .line 79
    .line 80
    invoke-static {v2, v0, v7}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v7, v4, Lcom/android/server/wm/TaskPersister;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 84
    .line 85
    new-instance v8, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v9, v3, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;->mLoadedFiles:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const-string v11, "Failing file: "

    .line 97
    .line 98
    const-string v12, ". Error "

    .line 99
    .line 100
    const-string v13, "Unable to parse "

    .line 101
    .line 102
    const-string v14, " name="

    .line 103
    .line 104
    const-string/jumbo v10, "task"

    .line 105
    .line 106
    .line 107
    const-string v15, "TaskPersister"

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    move-object/from16 v19, v5

    .line 112
    .line 113
    move-object/from16 v22, v10

    .line 114
    .line 115
    move-object v1, v11

    .line 116
    move-object v4, v12

    .line 117
    move-object v3, v13

    .line 118
    const/4 v13, 0x0

    .line 119
    goto/16 :goto_10

    .line 120
    .line 121
    :cond_3
    new-instance v6, Landroid/util/ArraySet;

    .line 122
    .line 123
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 124
    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-ge v1, v0, :cond_10

    .line 132
    .line 133
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;

    .line 138
    .line 139
    move-object/from16 v18, v9

    .line 140
    .line 141
    iget v9, v0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mTaskId:I

    .line 142
    .line 143
    invoke-virtual {v5, v9}, Landroid/util/IntArray;->contains(I)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v9, :cond_4

    .line 148
    .line 149
    new-instance v9, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    move-object/from16 v19, v5

    .line 152
    .line 153
    const-string v5, "Task #"

    .line 154
    .line 155
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget v0, v0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mTaskId:I

    .line 159
    .line 160
    const-string v5, " has already been created, so skip restoring"

    .line 161
    .line 162
    invoke-static {v9, v0, v5, v15}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    move/from16 v20, v1

    .line 166
    .line 167
    move-object/from16 v17, v4

    .line 168
    .line 169
    move-object/from16 v22, v10

    .line 170
    .line 171
    move-object v1, v11

    .line 172
    move-object v4, v12

    .line 173
    move-object v3, v13

    .line 174
    const/4 v13, 0x0

    .line 175
    goto/16 :goto_e

    .line 176
    .line 177
    :cond_4
    move-object/from16 v19, v5

    .line 178
    .line 179
    iget-object v5, v0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mFile:Ljava/io/File;

    .line 180
    .line 181
    :try_start_0
    iget-object v9, v0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mXmlContent:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 182
    .line 183
    :try_start_1
    invoke-static {v9}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    :goto_2
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 188
    .line 189
    .line 190
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 191
    move/from16 v20, v1

    .line 192
    .line 193
    const/4 v1, 0x1

    .line 194
    if-eq v3, v1, :cond_d

    .line 195
    .line 196
    const/4 v1, 0x3

    .line 197
    if-eq v3, v1, :cond_d

    .line 198
    .line 199
    :try_start_2
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 203
    move-object/from16 v21, v11

    .line 204
    .line 205
    const/4 v11, 0x2

    .line 206
    if-ne v3, v11, :cond_c

    .line 207
    .line 208
    :try_start_3
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-eqz v11, :cond_b

    .line 213
    .line 214
    invoke-static {v0, v7}, Lcom/android/server/wm/Task;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/Task;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 219
    .line 220
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    .line 221
    .line 222
    .line 223
    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 224
    move-object/from16 v22, v10

    .line 225
    .line 226
    const-string v10, " found"

    .line 227
    .line 228
    if-eqz v11, :cond_5

    .line 229
    .line 230
    move-object/from16 v23, v12

    .line 231
    .line 232
    :try_start_4
    iget-object v12, v4, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 233
    .line 234
    invoke-virtual {v12, v3}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    if-eqz v12, :cond_6

    .line 239
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v11, "Existing persisted task with taskId "

    .line 246
    .line 247
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v15, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    .line 262
    .line 263
    move-object/from16 v17, v4

    .line 264
    .line 265
    goto/16 :goto_6

    .line 266
    .line 267
    :catchall_0
    move-exception v0

    .line 268
    move-object v1, v0

    .line 269
    move-object/from16 v17, v4

    .line 270
    .line 271
    move-object/from16 v24, v13

    .line 272
    .line 273
    const/4 v13, 0x0

    .line 274
    goto/16 :goto_a

    .line 275
    .line 276
    :cond_5
    move-object/from16 v23, v12

    .line 277
    .line 278
    :cond_6
    if-nez v11, :cond_7

    .line 279
    .line 280
    :try_start_5
    iget-object v11, v4, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 281
    .line 282
    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 283
    .line 284
    move-object/from16 v17, v4

    .line 285
    .line 286
    move-object/from16 v24, v13

    .line 287
    .line 288
    const/4 v4, 0x0

    .line 289
    const/4 v12, 0x1

    .line 290
    const/4 v13, 0x0

    .line 291
    :try_start_6
    invoke-virtual {v11, v3, v12, v4, v13}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    if-eqz v11, :cond_8

    .line 296
    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string v4, "Existing task with taskId "

    .line 303
    .line 304
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-static {v15, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    goto/16 :goto_7

    .line 321
    .line 322
    :catchall_1
    move-exception v0

    .line 323
    :goto_3
    move-object v1, v0

    .line 324
    goto/16 :goto_a

    .line 325
    .line 326
    :catchall_2
    move-exception v0

    .line 327
    move-object/from16 v17, v4

    .line 328
    .line 329
    :goto_4
    move-object/from16 v24, v13

    .line 330
    .line 331
    const/4 v13, 0x0

    .line 332
    goto :goto_3

    .line 333
    :cond_7
    move-object/from16 v17, v4

    .line 334
    .line 335
    move-object/from16 v24, v13

    .line 336
    .line 337
    const/4 v13, 0x0

    .line 338
    :cond_8
    iget v4, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 339
    .line 340
    if-eq v2, v4, :cond_9

    .line 341
    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v4, "Task with userId "

    .line 348
    .line 349
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    iget v1, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 353
    .line 354
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v1, " found in "

    .line 358
    .line 359
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-static {v15, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_9
    iget-object v4, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 378
    .line 379
    const/4 v10, -0x1

    .line 380
    invoke-virtual {v4, v2, v10}, Landroid/util/SparseIntArray;->get(II)I

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    if-le v3, v4, :cond_a

    .line 385
    .line 386
    iget-object v4, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 387
    .line 388
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 389
    .line 390
    .line 391
    :cond_a
    const/4 v4, 0x1

    .line 392
    iput-boolean v4, v1, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 393
    .line 394
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    goto :goto_7

    .line 405
    :catchall_3
    move-exception v0

    .line 406
    move-object/from16 v17, v4

    .line 407
    .line 408
    move-object/from16 v22, v10

    .line 409
    .line 410
    :goto_5
    move-object/from16 v23, v12

    .line 411
    .line 412
    goto :goto_4

    .line 413
    :cond_b
    move-object/from16 v17, v4

    .line 414
    .line 415
    move-object/from16 v22, v10

    .line 416
    .line 417
    move-object/from16 v23, v12

    .line 418
    .line 419
    move-object/from16 v24, v13

    .line 420
    .line 421
    const/4 v13, 0x0

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string/jumbo v10, "restoreTasksForUserLocked: Unknown xml event="

    .line 428
    .line 429
    .line 430
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-static {v15, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    goto :goto_7

    .line 450
    :cond_c
    move-object/from16 v17, v4

    .line 451
    .line 452
    move-object/from16 v22, v10

    .line 453
    .line 454
    move-object/from16 v23, v12

    .line 455
    .line 456
    :goto_6
    move-object/from16 v24, v13

    .line 457
    .line 458
    const/4 v13, 0x0

    .line 459
    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 460
    .line 461
    .line 462
    move-object/from16 v4, v17

    .line 463
    .line 464
    move/from16 v1, v20

    .line 465
    .line 466
    move-object/from16 v11, v21

    .line 467
    .line 468
    move-object/from16 v10, v22

    .line 469
    .line 470
    move-object/from16 v12, v23

    .line 471
    .line 472
    move-object/from16 v13, v24

    .line 473
    .line 474
    goto/16 :goto_2

    .line 475
    .line 476
    :catchall_4
    move-exception v0

    .line 477
    :goto_8
    move-object/from16 v17, v4

    .line 478
    .line 479
    move-object/from16 v22, v10

    .line 480
    .line 481
    move-object/from16 v21, v11

    .line 482
    .line 483
    goto :goto_5

    .line 484
    :cond_d
    move-object/from16 v17, v4

    .line 485
    .line 486
    move-object/from16 v22, v10

    .line 487
    .line 488
    move-object/from16 v21, v11

    .line 489
    .line 490
    move-object/from16 v23, v12

    .line 491
    .line 492
    move-object/from16 v24, v13

    .line 493
    .line 494
    const/4 v13, 0x0

    .line 495
    if-eqz v9, :cond_e

    .line 496
    .line 497
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 498
    .line 499
    .line 500
    goto :goto_9

    .line 501
    :catchall_5
    move-exception v0

    .line 502
    goto :goto_c

    .line 503
    :catch_0
    move-exception v0

    .line 504
    goto :goto_d

    .line 505
    :cond_e
    :goto_9
    move-object/from16 v1, v21

    .line 506
    .line 507
    move-object/from16 v4, v23

    .line 508
    .line 509
    move-object/from16 v3, v24

    .line 510
    .line 511
    goto :goto_e

    .line 512
    :catchall_6
    move-exception v0

    .line 513
    move/from16 v20, v1

    .line 514
    .line 515
    goto :goto_8

    .line 516
    :goto_a
    if-eqz v9, :cond_f

    .line 517
    .line 518
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 519
    .line 520
    .line 521
    goto :goto_b

    .line 522
    :catchall_7
    move-exception v0

    .line 523
    move-object v3, v0

    .line 524
    :try_start_9
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 525
    .line 526
    .line 527
    :cond_f
    :goto_b
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 528
    :goto_c
    throw v0

    .line 529
    :catch_1
    move-exception v0

    .line 530
    move/from16 v20, v1

    .line 531
    .line 532
    move-object/from16 v17, v4

    .line 533
    .line 534
    move-object/from16 v22, v10

    .line 535
    .line 536
    move-object/from16 v21, v11

    .line 537
    .line 538
    move-object/from16 v23, v12

    .line 539
    .line 540
    move-object/from16 v24, v13

    .line 541
    .line 542
    const/4 v13, 0x0

    .line 543
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    move-object/from16 v3, v24

    .line 546
    .line 547
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    move-object/from16 v4, v23

    .line 554
    .line 555
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    invoke-static {v15, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    .line 564
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    move-object/from16 v1, v21

    .line 568
    .line 569
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-static {v5}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v9

    .line 576
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .line 585
    .line 586
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 587
    .line 588
    .line 589
    :goto_e
    add-int/lit8 v0, v20, 0x1

    .line 590
    .line 591
    move-object v11, v1

    .line 592
    move-object v13, v3

    .line 593
    move-object v12, v4

    .line 594
    move-object/from16 v4, v17

    .line 595
    .line 596
    move-object/from16 v9, v18

    .line 597
    .line 598
    move-object/from16 v5, v19

    .line 599
    .line 600
    move-object/from16 v10, v22

    .line 601
    .line 602
    move-object/from16 v3, p3

    .line 603
    .line 604
    move v1, v0

    .line 605
    goto/16 :goto_1

    .line 606
    .line 607
    :cond_10
    move-object/from16 v19, v5

    .line 608
    .line 609
    move-object/from16 v22, v10

    .line 610
    .line 611
    move-object v1, v11

    .line 612
    move-object v4, v12

    .line 613
    move-object v5, v3

    .line 614
    move-object v3, v13

    .line 615
    const/4 v13, 0x0

    .line 616
    iget-object v0, v5, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;->mUserTaskFiles:[Ljava/io/File;

    .line 617
    .line 618
    invoke-static {v6, v0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    const/4 v5, 0x1

    .line 626
    sub-int/2addr v0, v5

    .line 627
    :goto_f
    if-ltz v0, :cond_11

    .line 628
    .line 629
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v5

    .line 633
    check-cast v5, Lcom/android/server/wm/Task;

    .line 634
    .line 635
    iget v6, v5, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 636
    .line 637
    invoke-static {v8, v6}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(Ljava/util/ArrayList;I)Lcom/android/server/wm/Task;

    .line 638
    .line 639
    .line 640
    move-result-object v6

    .line 641
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 642
    .line 643
    .line 644
    iget v6, v5, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 645
    .line 646
    invoke-static {v8, v6}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(Ljava/util/ArrayList;I)Lcom/android/server/wm/Task;

    .line 647
    .line 648
    .line 649
    move-result-object v6

    .line 650
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 651
    .line 652
    .line 653
    add-int/lit8 v0, v0, -0x1

    .line 654
    .line 655
    goto :goto_f

    .line 656
    :cond_11
    new-instance v0, Lcom/android/server/wm/TaskPersister$1;

    .line 657
    .line 658
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 659
    .line 660
    .line 661
    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 662
    .line 663
    .line 664
    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 665
    .line 666
    .line 667
    move-result-wide v5

    .line 668
    move v0, v13

    .line 669
    :goto_11
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 670
    .line 671
    .line 672
    move-result v7

    .line 673
    if-ge v0, v7, :cond_12

    .line 674
    .line 675
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v7

    .line 679
    check-cast v7, Lcom/android/server/wm/Task;

    .line 680
    .line 681
    int-to-long v9, v0

    .line 682
    sub-long v9, v5, v9

    .line 683
    .line 684
    iput-wide v9, v7, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 685
    .line 686
    add-int/lit8 v0, v0, 0x1

    .line 687
    .line 688
    goto :goto_11

    .line 689
    :cond_12
    move-object/from16 v7, p0

    .line 690
    .line 691
    iget-object v0, v7, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 692
    .line 693
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 694
    .line 695
    .line 696
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 697
    .line 698
    .line 699
    invoke-virtual/range {v19 .. v19}, Landroid/util/IntArray;->size()I

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    if-lez v0, :cond_13

    .line 704
    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 706
    .line 707
    .line 708
    :cond_13
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 709
    .line 710
    if-eqz v0, :cond_22

    .line 711
    .line 712
    new-instance v5, Ljava/util/HashMap;

    .line 713
    .line 714
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 715
    .line 716
    .line 717
    new-instance v0, Ljava/io/File;

    .line 718
    .line 719
    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 720
    .line 721
    .line 722
    move-result-object v6

    .line 723
    const-string v8, "dedicated_tasks"

    .line 724
    .line 725
    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 729
    .line 730
    .line 731
    move-result-object v6

    .line 732
    if-nez v6, :cond_14

    .line 733
    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    .line 735
    .line 736
    const-string/jumbo v3, "restoreDedicatedProcess.: Unable to list files from "

    .line 737
    .line 738
    .line 739
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .line 751
    .line 752
    const/4 v15, 0x0

    .line 753
    goto/16 :goto_22

    .line 754
    .line 755
    :cond_14
    :goto_12
    array-length v0, v6

    .line 756
    if-ge v13, v0, :cond_21

    .line 757
    .line 758
    aget-object v8, v6, v13

    .line 759
    .line 760
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    const-string v9, "dedicated_process_task.xml"

    .line 765
    .line 766
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    if-nez v0, :cond_15

    .line 771
    .line 772
    move-object/from16 p3, v6

    .line 773
    .line 774
    const/4 v6, 0x3

    .line 775
    goto/16 :goto_20

    .line 776
    .line 777
    :cond_15
    :try_start_a
    new-instance v0, Ljava/io/FileInputStream;

    .line 778
    .line 779
    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 780
    .line 781
    .line 782
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    :goto_13
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 787
    .line 788
    .line 789
    move-result v9

    .line 790
    const/4 v10, 0x1

    .line 791
    if-eq v9, v10, :cond_20

    .line 792
    .line 793
    const/4 v10, 0x3

    .line 794
    if-eq v9, v10, :cond_1f

    .line 795
    .line 796
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v10

    .line 800
    const/4 v11, 0x2

    .line 801
    if-ne v9, v11, :cond_1e

    .line 802
    .line 803
    const-string v12, "dedicated_process"

    .line 804
    .line 805
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    move-result v12

    .line 809
    if-eqz v12, :cond_1d

    .line 810
    .line 811
    :cond_16
    :goto_14
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 812
    .line 813
    .line 814
    move-result v9

    .line 815
    const/4 v12, 0x1

    .line 816
    if-eq v9, v12, :cond_1e

    .line 817
    .line 818
    const/4 v10, 0x3

    .line 819
    if-eq v9, v10, :cond_1e

    .line 820
    .line 821
    if-ne v9, v11, :cond_16

    .line 822
    .line 823
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 827
    move-object/from16 v11, v22

    .line 828
    .line 829
    :try_start_b
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v16

    .line 833
    if-eqz v16, :cond_1c

    .line 834
    .line 835
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    .line 836
    .line 837
    .line 838
    move-result v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 839
    sub-int/2addr v9, v12

    .line 840
    const/4 v10, 0x0

    .line 841
    const/4 v12, 0x0

    .line 842
    :goto_15
    if-ltz v9, :cond_19

    .line 843
    .line 844
    move-object/from16 p3, v6

    .line 845
    .line 846
    :try_start_c
    invoke-interface {v0, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v6

    .line 850
    invoke-interface {v0, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v17
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 854
    move-object/from16 v22, v11

    .line 855
    .line 856
    :try_start_d
    const-string/jumbo v11, "process_name"

    .line 857
    .line 858
    .line 859
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v11

    .line 863
    if-eqz v11, :cond_17

    .line 864
    .line 865
    move-object/from16 v10, v17

    .line 866
    .line 867
    goto :goto_16

    .line 868
    :cond_17
    const-string/jumbo v11, "package_name"

    .line 869
    .line 870
    .line 871
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 872
    .line 873
    .line 874
    move-result v6

    .line 875
    if-eqz v6, :cond_18

    .line 876
    .line 877
    move-object/from16 v12, v17

    .line 878
    .line 879
    :cond_18
    :goto_16
    add-int/lit8 v9, v9, -0x1

    .line 880
    .line 881
    move-object/from16 v6, p3

    .line 882
    .line 883
    move-object/from16 v11, v22

    .line 884
    .line 885
    goto :goto_15

    .line 886
    :catchall_8
    move-exception v0

    .line 887
    const/4 v1, 0x0

    .line 888
    goto/16 :goto_21

    .line 889
    .line 890
    :catch_2
    move-exception v0

    .line 891
    :goto_17
    const/4 v6, 0x3

    .line 892
    goto/16 :goto_1f

    .line 893
    .line 894
    :catch_3
    move-exception v0

    .line 895
    :goto_18
    move-object/from16 v22, v11

    .line 896
    .line 897
    goto :goto_17

    .line 898
    :cond_19
    move-object/from16 p3, v6

    .line 899
    .line 900
    move-object/from16 v22, v11

    .line 901
    .line 902
    if-eqz v10, :cond_1b

    .line 903
    .line 904
    if-nez v12, :cond_1a

    .line 905
    .line 906
    goto :goto_19

    .line 907
    :cond_1a
    invoke-virtual {v5, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    goto :goto_1a

    .line 911
    :cond_1b
    :goto_19
    new-instance v6, Ljava/lang/StringBuilder;

    .line 912
    .line 913
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 914
    .line 915
    .line 916
    const-string/jumbo v9, "task: proc="

    .line 917
    .line 918
    .line 919
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    const-string v9, ", pkg="

    .line 926
    .line 927
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v6

    .line 937
    invoke-static {v15, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    .line 939
    .line 940
    goto :goto_1a

    .line 941
    :catch_4
    move-exception v0

    .line 942
    move-object/from16 p3, v6

    .line 943
    .line 944
    goto :goto_18

    .line 945
    :cond_1c
    move-object/from16 p3, v6

    .line 946
    .line 947
    move-object/from16 v22, v11

    .line 948
    .line 949
    new-instance v6, Ljava/lang/StringBuilder;

    .line 950
    .line 951
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    .line 953
    .line 954
    const-string/jumbo v11, "restoreDedicatedProcess.: Unknown xml event2="

    .line 955
    .line 956
    .line 957
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    const-string v9, " taskName="

    .line 964
    .line 965
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v6

    .line 975
    invoke-static {v15, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    .line 977
    .line 978
    :goto_1a
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 979
    .line 980
    .line 981
    move-object/from16 v6, p3

    .line 982
    .line 983
    const/4 v11, 0x2

    .line 984
    goto/16 :goto_14

    .line 985
    .line 986
    :catch_5
    move-exception v0

    .line 987
    move-object/from16 p3, v6

    .line 988
    .line 989
    goto :goto_17

    .line 990
    :goto_1b
    const/4 v6, 0x3

    .line 991
    goto :goto_1c

    .line 992
    :cond_1d
    move-object/from16 p3, v6

    .line 993
    .line 994
    const/4 v6, 0x3

    .line 995
    :try_start_e
    new-instance v11, Ljava/lang/StringBuilder;

    .line 996
    .line 997
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 998
    .line 999
    .line 1000
    const-string/jumbo v12, "restoreDedicatedProcess.: Unknown xml event="

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v9

    .line 1019
    invoke-static {v15, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1020
    .line 1021
    .line 1022
    goto :goto_1c

    .line 1023
    :catch_6
    move-exception v0

    .line 1024
    goto :goto_1f

    .line 1025
    :cond_1e
    move-object/from16 p3, v6

    .line 1026
    .line 1027
    goto :goto_1b

    .line 1028
    :goto_1c
    move-object/from16 v6, p3

    .line 1029
    .line 1030
    goto/16 :goto_13

    .line 1031
    .line 1032
    :cond_1f
    move-object/from16 p3, v6

    .line 1033
    .line 1034
    move v6, v10

    .line 1035
    :goto_1d
    const/4 v8, 0x0

    .line 1036
    goto :goto_1e

    .line 1037
    :cond_20
    move-object/from16 p3, v6

    .line 1038
    .line 1039
    const/4 v6, 0x3

    .line 1040
    goto :goto_1d

    .line 1041
    :goto_1e
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1042
    .line 1043
    .line 1044
    goto :goto_20

    .line 1045
    :goto_1f
    :try_start_f
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v9

    .line 1063
    invoke-static {v15, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1064
    .line 1065
    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-static {v8}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v9

    .line 1078
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 1086
    .line 1087
    .line 1088
    const/4 v9, 0x0

    .line 1089
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1090
    .line 1091
    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    const-string v9, "Deleting file="

    .line 1095
    .line 1096
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v9

    .line 1103
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1114
    .line 1115
    .line 1116
    :goto_20
    add-int/lit8 v13, v13, 0x1

    .line 1117
    .line 1118
    move-object/from16 v6, p3

    .line 1119
    .line 1120
    goto/16 :goto_12

    .line 1121
    .line 1122
    :goto_21
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1123
    .line 1124
    .line 1125
    throw v0

    .line 1126
    :cond_21
    move-object v15, v5

    .line 1127
    :goto_22
    if-eqz v15, :cond_22

    .line 1128
    .line 1129
    iget-object v0, v7, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 1130
    .line 1131
    invoke-virtual {v0, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1132
    .line 1133
    .line 1134
    iget-object v0, v7, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 1135
    .line 1136
    new-instance v1, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;

    .line 1137
    .line 1138
    const/4 v2, 0x2

    .line 1139
    invoke-direct {v1, v2, v7}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 1143
    .line 1144
    .line 1145
    iget-object v0, v7, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1146
    .line 1147
    const/4 v1, -0x1

    .line 1148
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyDedicated(I)V

    .line 1149
    .line 1150
    .line 1151
    :cond_22
    return-void
.end method

.method public final setFreezeTaskListReordering()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 8
    .line 9
    const/16 v2, 0x17

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    iput-boolean v3, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 26
    .line 27
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    aget-boolean v0, v0, v1

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 35
    .line 36
    const-wide v2, -0x7a2d6bd90944c3a1L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 59
    .line 60
    iget-wide v2, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public setFreezeTaskListTimeout(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 2
    .line 3
    return-void
.end method

.method public setGlobalMaxNumTasks(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 2
    .line 3
    return-void
.end method

.method public setParameters(IIJ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 6
    .line 7
    return-void
.end method

.method public final syncPersistentTaskIdsLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

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
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 42
    .line 43
    .line 44
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    sub-int/2addr v0, v1

    .line 54
    :goto_1
    if-ltz v0, :cond_5

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/server/wm/Task;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-boolean v4, v2, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 81
    .line 82
    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-nez v3, :cond_3

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v4, "No task ids found for userId "

    .line 93
    .line 94
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v4, ". task="

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v4, " mPersistedTaskIds="

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v4, "ActivityTaskManager"

    .line 125
    .line 126
    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 130
    .line 131
    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 132
    .line 133
    new-instance v5, Landroid/util/SparseBooleanArray;

    .line 134
    .line 135
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 142
    .line 143
    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 150
    .line 151
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 152
    .line 153
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 154
    .line 155
    .line 156
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    return-void
.end method

.method public final trimInactiveRecentTasks()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-le v0, v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 19
    .line 20
    add-int/lit8 v4, v0, -0x1

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/wm/Task;

    .line 27
    .line 28
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iget-boolean v1, v1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/server/wm/Task;

    .line 46
    .line 47
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->getCurrentProfileIds()[I

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 58
    .line 59
    .line 60
    array-length v1, v0

    .line 61
    move v4, v3

    .line 62
    :goto_2
    if-ge v4, v1, :cond_4

    .line 63
    .line 64
    aget v5, v0, v4

    .line 65
    .line 66
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentTasks;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 85
    .line 86
    invoke-virtual {v6, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 87
    .line 88
    .line 89
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move v0, v3

    .line 93
    move v1, v0

    .line 94
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-ge v0, v4, :cond_c

    .line 101
    .line 102
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lcom/android/server/wm/Task;

    .line 109
    .line 110
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 111
    .line 112
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_b

    .line 117
    .line 118
    iget-boolean v5, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 119
    .line 120
    if-nez v5, :cond_6

    .line 121
    .line 122
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_7

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(IILcom/android/server/wm/Task;Z)Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-nez v5, :cond_5

    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-nez v5, :cond_8

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-nez v5, :cond_5

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    iget-object v5, v5, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 158
    .line 159
    if-nez v5, :cond_9

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_9
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_a

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_a
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-gez v5, :cond_5

    .line 174
    .line 175
    :cond_b
    :goto_5
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_c
    return-void
.end method

.method public final unloadUserDataFromMemoryLocked(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    const-string v0, "Unloading recents for user "

    .line 18
    .line 19
    const-string v1, " from memory."

    .line 20
    .line 21
    const-string v2, "ActivityTaskManager"

    .line 22
    .line 23
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 29
    .line 30
    .line 31
    if-gtz p1, :cond_0

    .line 32
    .line 33
    const-string v0, "Can\'t remove recent task on user "

    .line 34
    .line 35
    invoke-static {p1, v0, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    :goto_0
    if-ltz v0, :cond_3

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/server/wm/Task;

    .line 56
    .line 57
    iget v2, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 58
    .line 59
    if-ne v2, p1, :cond_2

    .line 60
    .line 61
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    aget-boolean v2, v2, v3

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    int-to-long v3, p1

    .line 73
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 74
    .line 75
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    const/4 v9, 0x0

    .line 84
    const-wide v6, 0x2de8dfeb552d3e8fL    # 1.563035543413058E-87

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    const/4 v8, 0x4

    .line 90
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final usersWithRecentsLoadedLocked()[I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    add-int/lit8 v5, v3, 0x1

    .line 34
    .line 35
    aput v4, v1, v3

    .line 36
    .line 37
    move v3, v5

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-ge v3, v0, :cond_2

    .line 42
    .line 43
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    return-object v1
.end method
