.class public final Lcom/android/server/wm/ActivityTaskSupervisor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/RecentTasks$Callbacks;


# static fields
.field public static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

.field public static final IDLE_TIMEOUT:I

.field public static final LAUNCH_TIMEOUT:I

.field public static final SLEEP_TIMEOUT:I


# instance fields
.field public mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final mActivityStateChangedProcs:Ljava/util/ArrayList;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppVisibilitiesChangedSinceLastPause:Z

.field public mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

.field public final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field public mDeferResumeCount:I

.field public mDeferRootVisibilityUpdate:Z

.field public final mFinishingActivities:Ljava/util/ArrayList;

.field public mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

.field public mInitialized:Z

.field public mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field public mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

.field public mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field public mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mLooper:Landroid/os/Looper;

.field public final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

.field public final mNoAnimActivities:Ljava/util/ArrayList;

.field public final mNoHistoryActivities:Ljava/util/ArrayList;

.field public final mOpaqueActivityHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;

.field public mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field public final mPipModeChangedActivities:Ljava/util/ArrayList;

.field public mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mRunningTasks:Lcom/android/server/wm/RunningTasks;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mStartingUsers:Ljava/util/ArrayList;

.field public final mStoppingActivities:Ljava/util/ArrayList;

.field public mSystemChooserActivity:Landroid/content/ComponentName;

.field public mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public final mTaskInfoHelper:Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

.field public mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mTopResumedActivityWaitingForPrev:Z

.field public mUserLeaving:Z

.field public mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

.field public mVisibilityTransactionDepth:I

.field public final mWaitingActivityLaunched:Ljava/util/ArrayList;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 2
    .line 3
    mul-int/lit16 v1, v0, 0x2710

    .line 4
    .line 5
    sput v1, Lcom/android/server/wm/ActivityTaskSupervisor;->IDLE_TIMEOUT:I

    .line 6
    .line 7
    mul-int/lit16 v1, v0, 0x1388

    .line 8
    .line 9
    sput v1, Lcom/android/server/wm/ActivityTaskSupervisor;->SLEEP_TIMEOUT:I

    .line 10
    .line 11
    mul-int/lit16 v0, v0, 0x2710

    .line 12
    .line 13
    sput v0, Lcom/android/server/wm/ActivityTaskSupervisor;->LAUNCH_TIMEOUT:I

    .line 14
    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 21
    .line 22
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 23
    .line 24
    const-string v2, "android.permission.CAMERA"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v1, "android.intent.action.CALL"

    .line 35
    .line 36
    const-string v2, "android.permission.CALL_PHONE"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskInfoHelper:Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mOpaqueActivityHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    const/16 v1, 0x14

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 75
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    .line 98
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    .line 99
    .line 100
    new-instance p1, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 101
    .line 102
    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 106
    .line 107
    return-void
.end method

.method public static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 16

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    move-object/from16 v14, p6

    .line 8
    .line 9
    move v13, v1

    .line 10
    const/4 v15, 0x0

    .line 11
    :goto_0
    if-ltz v0, :cond_0

    .line 12
    .line 13
    move-object/from16 v1, p2

    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move-object v12, v3

    .line 20
    check-cast v12, Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    const-string v7, "  "

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    move-object/from16 v3, p0

    .line 27
    .line 28
    move-object/from16 v4, p1

    .line 29
    .line 30
    move v5, v0

    .line 31
    move-object v6, v12

    .line 32
    move-object/from16 v8, p3

    .line 33
    .line 34
    move/from16 v10, p4

    .line 35
    .line 36
    move-object v2, v12

    .line 37
    move-object/from16 v12, p5

    .line 38
    .line 39
    invoke-static/range {v3 .. v15}, Lcom/android/server/wm/ActivityRecord;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)V

    .line 40
    .line 41
    .line 42
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public static logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->getSize()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :goto_1
    add-int p1, v1, v0

    .line 24
    .line 25
    const v2, 0x30d40

    .line 26
    .line 27
    .line 28
    if-le p1, v2, :cond_2

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Transaction too large, intent: "

    .line 33
    .line 34
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ", extras size: "

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p0, ", icicle size: "

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, "ActivityTaskManager"

    .line 54
    .line 55
    invoke-static {p1, v0, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZLjava/lang/String;Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p3, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne p3, v0, :cond_4

    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_4

    .line 21
    .line 22
    :cond_1
    if-eqz p4, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 25
    .line 26
    .line 27
    :cond_2
    if-eqz p6, :cond_3

    .line 28
    .line 29
    invoke-virtual {p6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;->run()V

    .line 30
    .line 31
    .line 32
    :cond_3
    invoke-virtual {p0, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_4
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public static removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 16
    .line 17
    if-ne v2, p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public final activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    iget-object v9, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v11, 0x1

    .line 11
    iget-object v12, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    if-eqz v7, :cond_8

    .line 14
    .line 15
    const/16 v0, 0xc8

    .line 16
    .line 17
    invoke-virtual {v9, v0, v7}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, v7, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    if-eqz p2, :cond_1

    .line 41
    .line 42
    const-wide/16 v3, -0x1

    .line 43
    .line 44
    const/4 v5, -0x1

    .line 45
    move-object/from16 v0, p0

    .line 46
    .line 47
    move/from16 v1, p2

    .line 48
    .line 49
    move-object/from16 v2, p1

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 52
    .line 53
    .line 54
    :cond_1
    if-eqz v8, :cond_2

    .line 55
    .line 56
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 57
    .line 58
    invoke-virtual {v0, v8}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iput-boolean v11, v7, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 62
    .line 63
    iget-object v0, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    :cond_3
    if-eqz p2, :cond_7

    .line 80
    .line 81
    :cond_4
    iget-object v0, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget-object v1, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 88
    .line 89
    invoke-virtual {v1, v10}, Landroid/app/ActivityManagerInternal;->setBooting(Z)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_5

    .line 99
    .line 100
    iget-object v1, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 101
    .line 102
    invoke-virtual {v1, v11}, Landroid/app/ActivityManagerInternal;->setBooted(Z)V

    .line 103
    .line 104
    .line 105
    move v1, v11

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    move v1, v10

    .line 108
    :goto_1
    if-nez v0, :cond_6

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    :cond_6
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 113
    .line 114
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda34;

    .line 115
    .line 116
    invoke-direct {v3, v12, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    :cond_7
    iput v10, v7, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 123
    .line 124
    :cond_8
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_10

    .line 131
    .line 132
    if-eqz v7, :cond_f

    .line 133
    .line 134
    iget-object v0, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 135
    .line 136
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;

    .line 137
    .line 138
    const/4 v2, 0x1

    .line 139
    invoke-direct {v1, v2, v12}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    .line 144
    .line 145
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 146
    .line 147
    iget-object v1, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_e

    .line 160
    .line 161
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 162
    .line 163
    invoke-virtual {v7, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_e

    .line 168
    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    const/16 v3, 0xa

    .line 180
    .line 181
    if-gt v2, v3, :cond_9

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_9
    sub-int/2addr v2, v11

    .line 185
    :goto_2
    if-lt v2, v3, :cond_e

    .line 186
    .line 187
    iget-object v4, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    move-object v14, v4

    .line 194
    check-cast v14, Lcom/android/server/wm/Task;

    .line 195
    .line 196
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eqz v4, :cond_c

    .line 201
    .line 202
    iget-boolean v4, v14, Lcom/android/server/wm/Task;->inRecents:Z

    .line 203
    .line 204
    if-eqz v4, :cond_a

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_a
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-ne v4, v1, :cond_d

    .line 212
    .line 213
    invoke-virtual {v14, v11, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    if-eqz v4, :cond_b

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_b
    iget-object v4, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    const/16 v18, 0x0

    .line 226
    .line 227
    const/16 v20, -0x1

    .line 228
    .line 229
    iget-object v13, v0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 230
    .line 231
    const/4 v15, 0x0

    .line 232
    const/16 v16, 0x0

    .line 233
    .line 234
    const-string/jumbo v17, "remove-hidden-task"

    .line 235
    .line 236
    .line 237
    const/16 v19, 0x3e8

    .line 238
    .line 239
    const/16 v21, 0x0

    .line 240
    .line 241
    invoke-virtual/range {v13 .. v21}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_c
    :goto_3
    iget-object v4, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    :cond_d
    :goto_4
    add-int/lit8 v2, v2, -0x1

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_e
    :goto_5
    iget-boolean v1, v0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    .line 254
    .line 255
    if-eqz v1, :cond_f

    .line 256
    .line 257
    iput-boolean v10, v0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    .line 260
    .line 261
    .line 262
    :cond_f
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_10

    .line 269
    .line 270
    const/16 v0, 0xcc

    .line 271
    .line 272
    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    .line 274
    .line 275
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 276
    .line 277
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 278
    .line 279
    .line 280
    :cond_10
    const-string v0, "idle"

    .line 281
    .line 282
    move/from16 v1, p3

    .line 283
    .line 284
    invoke-virtual {v6, v7, v1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_11

    .line 294
    .line 295
    new-instance v0, Ljava/util/ArrayList;

    .line 296
    .line 297
    iget-object v1, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 305
    .line 306
    .line 307
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-ge v10, v1, :cond_11

    .line 312
    .line 313
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Lcom/android/server/am/UserState;

    .line 318
    .line 319
    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 320
    .line 321
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    const-string v3, "ActivityTaskManager"

    .line 334
    .line 335
    const-string v4, "finishing switch of user %d"

    .line 336
    .line 337
    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 341
    .line 342
    invoke-virtual {v2, v1}, Landroid/app/ActivityManagerInternal;->finishUserSwitch(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    add-int/lit8 v10, v10, 0x1

    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_11
    iget-object v0, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 349
    .line 350
    new-instance v1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;

    .line 351
    .line 352
    const/4 v2, 0x0

    .line 353
    invoke-direct {v1, v6, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    .line 358
    .line 359
    return-void
.end method

.method public final beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_2a

    .line 11
    .line 12
    :cond_0
    iget v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 13
    .line 14
    if-nez v2, :cond_29

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sub-int/2addr v3, v1

    .line 25
    :goto_0
    if-ltz v3, :cond_29

    .line 26
    .line 27
    iget-object v4, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 34
    .line 35
    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    .line 36
    .line 37
    if-nez v5, :cond_28

    .line 38
    .line 39
    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    goto/16 :goto_15

    .line 44
    .line 45
    :cond_1
    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 46
    .line 47
    invoke-virtual {v2, v5}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-boolean v6, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 52
    .line 53
    iget-boolean v7, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 54
    .line 55
    iget-object v8, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    iput-boolean v9, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 59
    .line 60
    iput-boolean v9, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    iput-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 64
    .line 65
    iput-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 66
    .line 67
    iput-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 68
    .line 69
    new-instance v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {v11, v4}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v11}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    if-eqz v11, :cond_2

    .line 79
    .line 80
    invoke-virtual {v11, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-object v12, v10

    .line 86
    :goto_1
    iget-object v13, v2, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 87
    .line 88
    iget v14, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 89
    .line 90
    if-eqz v12, :cond_b

    .line 91
    .line 92
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    if-eqz v15, :cond_3

    .line 97
    .line 98
    iput-object v12, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 99
    .line 100
    :cond_3
    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 101
    .line 102
    if-nez v15, :cond_4

    .line 103
    .line 104
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    if-eqz v15, :cond_5

    .line 109
    .line 110
    :cond_4
    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 111
    .line 112
    if-eqz v15, :cond_5

    .line 113
    .line 114
    iput-object v12, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 115
    .line 116
    :cond_5
    iget-object v15, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 117
    .line 118
    iget-object v10, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 119
    .line 120
    invoke-virtual {v10}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    invoke-virtual {v15, v10}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->mDismissKeyguardIfInsecure:Z

    .line 129
    .line 130
    if-eqz v15, :cond_6

    .line 131
    .line 132
    iget-boolean v15, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 133
    .line 134
    if-eqz v15, :cond_6

    .line 135
    .line 136
    if-nez v10, :cond_6

    .line 137
    .line 138
    iput-boolean v1, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-eqz v10, :cond_7

    .line 146
    .line 147
    iput-object v12, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 148
    .line 149
    :cond_7
    :goto_2
    iput-boolean v9, v12, Lcom/android/server/wm/ActivityRecord;->mDismissKeyguardIfInsecure:Z

    .line 150
    .line 151
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 152
    .line 153
    if-nez v10, :cond_9

    .line 154
    .line 155
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 156
    .line 157
    if-eqz v10, :cond_8

    .line 158
    .line 159
    invoke-virtual {v11, v9}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    iget-object v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 164
    .line 165
    if-ne v10, v11, :cond_8

    .line 166
    .line 167
    invoke-virtual {v2, v1, v9}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-eqz v10, :cond_8

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_8
    move v10, v9

    .line 175
    goto :goto_4

    .line 176
    :cond_9
    :goto_3
    move v10, v1

    .line 177
    :goto_4
    iput-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 178
    .line 179
    if-eqz v14, :cond_b

    .line 180
    .line 181
    iget-object v11, v4, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 182
    .line 183
    invoke-virtual {v11}, Landroid/view/Display;->getFlags()I

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    and-int/lit8 v11, v11, 0x20

    .line 188
    .line 189
    if-eqz v11, :cond_a

    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    if-eqz v11, :cond_a

    .line 196
    .line 197
    move v11, v1

    .line 198
    goto :goto_5

    .line 199
    :cond_a
    move v11, v9

    .line 200
    :goto_5
    or-int/2addr v10, v11

    .line 201
    iput-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 202
    .line 203
    :cond_b
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 204
    .line 205
    if-eq v8, v10, :cond_c

    .line 206
    .line 207
    iget-boolean v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 208
    .line 209
    if-nez v11, :cond_c

    .line 210
    .line 211
    iget-boolean v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 212
    .line 213
    if-nez v11, :cond_c

    .line 214
    .line 215
    if-eqz v10, :cond_c

    .line 216
    .line 217
    move v10, v1

    .line 218
    goto :goto_6

    .line 219
    :cond_c
    move v10, v9

    .line 220
    :goto_6
    iput-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 221
    .line 222
    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 223
    .line 224
    if-eqz v10, :cond_e

    .line 225
    .line 226
    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 227
    .line 228
    if-eqz v10, :cond_e

    .line 229
    .line 230
    iget-boolean v10, v4, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 231
    .line 232
    if-nez v10, :cond_e

    .line 233
    .line 234
    invoke-virtual {v12, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-eqz v10, :cond_d

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_d
    iget-object v10, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 242
    .line 243
    iget-object v10, v10, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 244
    .line 245
    if-nez v10, :cond_e

    .line 246
    .line 247
    iget v10, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 248
    .line 249
    or-int/lit8 v10, v10, 0x4

    .line 250
    .line 251
    iput v10, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 252
    .line 253
    :cond_e
    :goto_7
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 254
    .line 255
    iget-object v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 256
    .line 257
    if-eqz v10, :cond_10

    .line 258
    .line 259
    iget-object v10, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 260
    .line 261
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 262
    .line 263
    invoke-virtual {v10}, Landroid/os/PowerManager;->isInteractive()Z

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    if-nez v10, :cond_10

    .line 268
    .line 269
    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 270
    .line 271
    if-nez v10, :cond_f

    .line 272
    .line 273
    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 274
    .line 275
    if-eqz v10, :cond_10

    .line 276
    .line 277
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v15, "handleTurnScreenOn::"

    .line 280
    .line 281
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v15, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 285
    .line 286
    iget-object v15, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v10

    .line 295
    iget-object v15, v2, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 296
    .line 297
    invoke-virtual {v15, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 301
    .line 302
    iput-boolean v9, v10, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 303
    .line 304
    :cond_10
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 305
    .line 306
    if-eq v8, v10, :cond_12

    .line 307
    .line 308
    if-eqz v10, :cond_11

    .line 309
    .line 310
    iget-object v8, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 311
    .line 312
    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 315
    .line 316
    .line 317
    move-result v10

    .line 318
    invoke-virtual {v8, v11, v10}, Landroid/app/ActivityManagerInternal;->setKeyguardPkgInfo(Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_11
    iget-object v8, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 323
    .line 324
    const/4 v10, -0x1

    .line 325
    const/4 v11, 0x0

    .line 326
    invoke-virtual {v8, v11, v10}, Landroid/app/ActivityManagerInternal;->setKeyguardPkgInfo(Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    :cond_12
    :goto_8
    iget-boolean v8, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 330
    .line 331
    if-eq v6, v8, :cond_24

    .line 332
    .line 333
    iget v15, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 334
    .line 335
    if-nez v15, :cond_13

    .line 336
    .line 337
    iget-boolean v6, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 338
    .line 339
    iget-boolean v7, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 340
    .line 341
    iget-boolean v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 342
    .line 343
    const-string/jumbo v20, "updateVisibility"

    .line 344
    .line 345
    .line 346
    move/from16 v16, v6

    .line 347
    .line 348
    move/from16 v17, v7

    .line 349
    .line 350
    move/from16 v18, v11

    .line 351
    .line 352
    move/from16 v19, v8

    .line 353
    .line 354
    invoke-static/range {v15 .. v20}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIIIILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    :cond_13
    iget-object v6, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 358
    .line 359
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    iget-boolean v7, v7, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 364
    .line 365
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    filled-new-array {v8, v7}, [Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    const v8, 0xf430a

    .line 378
    .line 379
    .line 380
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 381
    .line 382
    .line 383
    if-eqz v14, :cond_14

    .line 384
    .line 385
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_13

    .line 389
    .line 390
    :cond_14
    iget-object v7, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 391
    .line 392
    iget-object v7, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 393
    .line 394
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 395
    .line 396
    .line 397
    move-result-object v8

    .line 398
    iget-boolean v8, v8, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 399
    .line 400
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 401
    .line 402
    .line 403
    move-result v11

    .line 404
    if-eqz v11, :cond_15

    .line 405
    .line 406
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 407
    .line 408
    .line 409
    move-result v15

    .line 410
    if-nez v15, :cond_15

    .line 411
    .line 412
    move v15, v1

    .line 413
    goto :goto_9

    .line 414
    :cond_15
    move v15, v9

    .line 415
    :goto_9
    iget-object v10, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 416
    .line 417
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 418
    .line 419
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 420
    .line 421
    invoke-virtual {v10, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->onKeyguardOccludedChangedLw(Z)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 425
    .line 426
    .line 427
    :try_start_0
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_CHN_PREMIUM_WATCH:Z

    .line 428
    .line 429
    if-eqz v10, :cond_17

    .line 430
    .line 431
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 432
    .line 433
    .line 434
    move-result v10

    .line 435
    if-eqz v10, :cond_16

    .line 436
    .line 437
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 438
    .line 439
    .line 440
    move-result-object v10

    .line 441
    iget v10, v10, Lcom/android/server/wm/Transition;->mFlags:I

    .line 442
    .line 443
    const v17, 0x43900

    .line 444
    .line 445
    .line 446
    and-int v10, v10, v17

    .line 447
    .line 448
    if-eqz v10, :cond_16

    .line 449
    .line 450
    goto :goto_a

    .line 451
    :catchall_0
    move-exception v0

    .line 452
    goto/16 :goto_12

    .line 453
    .line 454
    :cond_16
    if-eqz v6, :cond_17

    .line 455
    .line 456
    iget-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->mNoTransitionOcclusion:Z

    .line 457
    .line 458
    if-eqz v10, :cond_17

    .line 459
    .line 460
    iget-object v6, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 461
    .line 462
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 463
    .line 464
    check-cast v6, Lcom/android/server/policy/PhoneWindowManager;

    .line 465
    .line 466
    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardOcclusionChange()I

    .line 467
    .line 468
    .line 469
    goto/16 :goto_11

    .line 470
    .line 471
    :cond_17
    :goto_a
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 472
    .line 473
    .line 474
    move-result v10

    .line 475
    if-eqz v10, :cond_20

    .line 476
    .line 477
    if-eqz v8, :cond_18

    .line 478
    .line 479
    const/16 v10, 0x8

    .line 480
    .line 481
    goto :goto_b

    .line 482
    :cond_18
    const/16 v10, 0x9

    .line 483
    .line 484
    :goto_b
    if-eqz v8, :cond_19

    .line 485
    .line 486
    const/16 v17, 0x1000

    .line 487
    .line 488
    :goto_c
    move/from16 v1, v17

    .line 489
    .line 490
    goto :goto_d

    .line 491
    :cond_19
    const/16 v17, 0x2000

    .line 492
    .line 493
    goto :goto_c

    .line 494
    :goto_d
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 495
    .line 496
    .line 497
    move-result v17

    .line 498
    if-eqz v17, :cond_1f

    .line 499
    .line 500
    if-eqz v8, :cond_1a

    .line 501
    .line 502
    if-eqz v6, :cond_1a

    .line 503
    .line 504
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 505
    .line 506
    .line 507
    move-result-object v17

    .line 508
    move-object/from16 v9, v17

    .line 509
    .line 510
    goto :goto_e

    .line 511
    :cond_1a
    const/4 v9, 0x0

    .line 512
    :goto_e
    if-eqz v14, :cond_1c

    .line 513
    .line 514
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 515
    .line 516
    invoke-virtual {v0, v14}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    if-eqz v0, :cond_1b

    .line 521
    .line 522
    goto :goto_f

    .line 523
    :cond_1b
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 524
    .line 525
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 526
    .line 527
    :goto_f
    invoke-virtual {v7, v10, v1, v9, v0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    goto :goto_10

    .line 532
    :cond_1c
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 533
    .line 534
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 535
    .line 536
    invoke-virtual {v7, v10, v1, v9, v0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    :goto_10
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    .line 541
    .line 542
    if-eqz v1, :cond_1d

    .line 543
    .line 544
    if-eqz v8, :cond_1d

    .line 545
    .line 546
    invoke-virtual {v2, v6}, Lcom/android/server/wm/KeyguardController;->handleFreeformTaskOccluded(Lcom/android/server/wm/ActivityRecord;)V

    .line 547
    .line 548
    .line 549
    :cond_1d
    if-eqz v9, :cond_22

    .line 550
    .line 551
    if-nez v0, :cond_1e

    .line 552
    .line 553
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    :cond_1e
    const/4 v1, 0x0

    .line 558
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 559
    .line 560
    .line 561
    goto :goto_11

    .line 562
    :cond_1f
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 563
    .line 564
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 565
    .line 566
    invoke-virtual {v0, v10, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 567
    .line 568
    .line 569
    goto :goto_11

    .line 570
    :cond_20
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-eqz v0, :cond_21

    .line 575
    .line 576
    iget-object v0, v7, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    .line 577
    .line 578
    iget-object v1, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 579
    .line 580
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 581
    .line 582
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    new-instance v6, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;

    .line 586
    .line 587
    const/4 v7, 0x1

    .line 588
    invoke-direct {v6, v7, v1}, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    goto :goto_11

    .line 595
    :cond_21
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 596
    .line 597
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 598
    .line 599
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 600
    .line 601
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardOcclusionChange()I

    .line 602
    .line 603
    .line 604
    :cond_22
    :goto_11
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 605
    .line 606
    .line 607
    if-eqz v11, :cond_23

    .line 608
    .line 609
    if-eqz v15, :cond_23

    .line 610
    .line 611
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 612
    .line 613
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    .line 615
    .line 616
    :cond_23
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 617
    .line 618
    .line 619
    goto :goto_13

    .line 620
    :goto_12
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 621
    .line 622
    .line 623
    throw v0

    .line 624
    :cond_24
    if-nez v7, :cond_26

    .line 625
    .line 626
    iget-boolean v0, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 627
    .line 628
    if-eqz v0, :cond_26

    .line 629
    .line 630
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 631
    .line 632
    .line 633
    const/4 v0, 0x7

    .line 634
    const/4 v1, 0x0

    .line 635
    :try_start_1
    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 636
    .line 637
    .line 638
    iget-object v0, v4, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 639
    .line 640
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 641
    .line 642
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 643
    .line 644
    const/16 v1, 0x100

    .line 645
    .line 646
    const/4 v6, 0x1

    .line 647
    const/4 v7, 0x0

    .line 648
    invoke-virtual {v0, v6, v1, v7, v4}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 652
    .line 653
    .line 654
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 655
    .line 656
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 657
    .line 658
    .line 659
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 660
    .line 661
    .line 662
    :goto_13
    if-eqz v12, :cond_26

    .line 663
    .line 664
    iget-boolean v0, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 665
    .line 666
    if-nez v0, :cond_25

    .line 667
    .line 668
    iget-boolean v0, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 669
    .line 670
    if-eqz v0, :cond_26

    .line 671
    .line 672
    :cond_25
    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 673
    .line 674
    invoke-virtual {v0, v12}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 675
    .line 676
    .line 677
    goto :goto_14

    .line 678
    :catchall_1
    move-exception v0

    .line 679
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 680
    .line 681
    .line 682
    throw v0

    .line 683
    :cond_26
    :goto_14
    iget-boolean v0, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 684
    .line 685
    if-eqz v0, :cond_28

    .line 686
    .line 687
    iget v0, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 688
    .line 689
    iget-object v1, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 690
    .line 691
    iget-object v4, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 692
    .line 693
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 694
    .line 695
    .line 696
    move-result v4

    .line 697
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    .line 698
    .line 699
    .line 700
    move-result v1

    .line 701
    if-nez v1, :cond_27

    .line 702
    .line 703
    goto :goto_15

    .line 704
    :cond_27
    iget-object v1, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 705
    .line 706
    const/4 v4, 0x0

    .line 707
    invoke-virtual {v1, v4, v4}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v2, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    const/4 v1, 0x1

    .line 715
    iput-boolean v1, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    .line 716
    .line 717
    iget-object v1, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 718
    .line 719
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 720
    .line 721
    iget-boolean v0, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 722
    .line 723
    if-eqz v0, :cond_28

    .line 724
    .line 725
    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    if-eqz v0, :cond_28

    .line 730
    .line 731
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 732
    .line 733
    const/16 v1, 0x9

    .line 734
    .line 735
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    .line 736
    .line 737
    .line 738
    move-result v0

    .line 739
    if-eqz v0, :cond_28

    .line 740
    .line 741
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 742
    .line 743
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 744
    .line 745
    .line 746
    :cond_28
    :goto_15
    add-int/lit8 v3, v3, -0x1

    .line 747
    .line 748
    const/4 v1, 0x1

    .line 749
    move-object/from16 v0, p0

    .line 750
    .line 751
    goto/16 :goto_0

    .line 752
    .line 753
    :cond_29
    move-object/from16 v0, p0

    .line 754
    .line 755
    :cond_2a
    iget v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 756
    .line 757
    const/4 v2, 0x1

    .line 758
    add-int/2addr v1, v2

    .line 759
    iput v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 760
    .line 761
    return-void
.end method

.method public final beginDeferResume()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 6
    .line 7
    return-void
.end method

.method public final canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_7

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    if-eqz p5, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_3
    if-eqz p4, :cond_4

    .line 39
    .line 40
    new-instance p2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;

    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    invoke-direct {p2, p3, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 47
    .line 48
    .line 49
    :cond_4
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    iget-object p3, p2, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 56
    .line 57
    if-nez p3, :cond_6

    .line 58
    .line 59
    move p0, v2

    .line 60
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-ge p0, p3, :cond_7

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Landroid/content/pm/ActivityInfo;

    .line 71
    .line 72
    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz p3, :cond_5

    .line 75
    .line 76
    iget-object p0, p2, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 77
    .line 78
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 79
    .line 80
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    filled-new-array {p3, p0}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string p1, "Checking activity launch with requiredDisplayCategory=\'%s\' on display %d, which doesn\'t have a matching category."

    .line 89
    .line 90
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "DisplayWindowPolicyControllerHelper"

    .line 95
    .line 96
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move v0, v2

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    add-int/lit8 p0, p0, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    invoke-virtual {p3, p1, p0}, Landroid/window/DisplayWindowPolicyController;->canContainActivities(Ljava/util/List;I)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    :cond_7
    :goto_1
    return v0
.end method

.method public final canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p1, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 25
    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    :cond_2
    const/4 v0, 0x1

    .line 29
    :cond_3
    :goto_0
    return v0
.end method

.method public final checkReadyForSleepLocked(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 6
    .line 7
    if-nez v3, :cond_1

    .line 8
    .line 9
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-array v3, v1, [Z

    .line 21
    .line 22
    aput-boolean v1, v3, v0

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;

    .line 25
    .line 26
    invoke-direct {v1, p1, v3, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;-><init>(Z[ZZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 30
    .line 31
    .line 32
    aget-boolean p1, v3, v0

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->endPowerMode(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 49
    .line 50
    const/16 v0, 0xcb

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 69
    .line 70
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method public final checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v8, p5

    .line 6
    .line 7
    move/from16 v9, p6

    .line 8
    .line 9
    move-object/from16 v10, p7

    .line 10
    .line 11
    move-object/from16 v11, p11

    .line 12
    .line 13
    iget-object v12, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 16
    .line 17
    const/4 v14, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget v2, v2, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 21
    .line 22
    invoke-static {v9, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move v15, v14

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v15, 0x0

    .line 31
    :goto_0
    const-string v4, "android.permission.START_ANY_ACTIVITY"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, -0x1

    .line 35
    const/4 v7, 0x1

    .line 36
    move/from16 v2, p5

    .line 37
    .line 38
    move/from16 v3, p6

    .line 39
    .line 40
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_18

    .line 45
    .line 46
    if-eqz v15, :cond_1

    .line 47
    .line 48
    if-eqz p10, :cond_1

    .line 49
    .line 50
    goto/16 :goto_a

    .line 51
    .line 52
    :cond_1
    const/4 v15, -0x1

    .line 53
    const/4 v7, 0x2

    .line 54
    if-nez p9, :cond_2

    .line 55
    .line 56
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 59
    .line 60
    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 61
    .line 62
    iget-boolean v5, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 63
    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    move/from16 v2, p5

    .line 67
    .line 68
    move/from16 v3, p6

    .line 69
    .line 70
    move/from16 v17, v5

    .line 71
    .line 72
    move/from16 v5, v16

    .line 73
    .line 74
    move v13, v7

    .line 75
    move/from16 v7, v17

    .line 76
    .line 77
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-ne v2, v15, :cond_3

    .line 82
    .line 83
    move v7, v14

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    move v13, v7

    .line 86
    :cond_3
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 87
    .line 88
    if-nez v2, :cond_5

    .line 89
    .line 90
    :cond_4
    :goto_1
    const/4 v7, 0x0

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-ne v3, v15, :cond_6

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 100
    .line 101
    if-nez v2, :cond_7

    .line 102
    .line 103
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    const-class v4, Landroid/app/AppOpsManager;

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Landroid/app/AppOpsManager;

    .line 112
    .line 113
    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 114
    .line 115
    :cond_7
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 116
    .line 117
    const-string v7, ""

    .line 118
    .line 119
    move/from16 v4, p6

    .line 120
    .line 121
    move-object/from16 v5, p7

    .line 122
    .line 123
    move-object/from16 v6, p8

    .line 124
    .line 125
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    if-nez p9, :cond_4

    .line 132
    .line 133
    move v7, v13

    .line 134
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const-string v6, "ActivityTaskManager"

    .line 139
    .line 140
    if-nez v2, :cond_8

    .line 141
    .line 142
    :goto_3
    move-object v3, v6

    .line 143
    move/from16 v21, v7

    .line 144
    .line 145
    :goto_4
    const/4 v7, 0x0

    .line 146
    goto/16 :goto_7

    .line 147
    .line 148
    :cond_8
    sget-object v3, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    move-object v5, v2

    .line 155
    check-cast v5, Ljava/lang/String;

    .line 156
    .line 157
    if-nez v5, :cond_9

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_9
    :try_start_0
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    const/16 v4, 0x1000

    .line 171
    .line 172
    invoke-virtual {v2, v10, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 173
    .line 174
    .line 175
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-nez v2, :cond_a

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_a
    const/16 v17, 0x0

    .line 186
    .line 187
    const/16 v18, -0x1

    .line 188
    .line 189
    const/16 v19, 0x1

    .line 190
    .line 191
    move/from16 v2, p5

    .line 192
    .line 193
    move/from16 v3, p6

    .line 194
    .line 195
    move-object v4, v5

    .line 196
    move-object/from16 p9, v5

    .line 197
    .line 198
    move/from16 v5, v17

    .line 199
    .line 200
    move-object/from16 v20, v6

    .line 201
    .line 202
    move/from16 v6, v18

    .line 203
    .line 204
    move/from16 v21, v7

    .line 205
    .line 206
    move/from16 v7, v19

    .line 207
    .line 208
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-ne v2, v15, :cond_b

    .line 213
    .line 214
    move v7, v14

    .line 215
    :goto_5
    move-object/from16 v3, v20

    .line 216
    .line 217
    goto/16 :goto_7

    .line 218
    .line 219
    :cond_b
    invoke-static/range {p9 .. p9}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-ne v3, v15, :cond_d

    .line 224
    .line 225
    :cond_c
    :goto_6
    move-object/from16 v3, v20

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_d
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 229
    .line 230
    if-nez v2, :cond_e

    .line 231
    .line 232
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 233
    .line 234
    const-class v4, Landroid/app/AppOpsManager;

    .line 235
    .line 236
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    check-cast v2, Landroid/app/AppOpsManager;

    .line 241
    .line 242
    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 243
    .line 244
    :cond_e
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 245
    .line 246
    const-string v7, ""

    .line 247
    .line 248
    move/from16 v4, p6

    .line 249
    .line 250
    move-object/from16 v5, p7

    .line 251
    .line 252
    move-object/from16 v6, p8

    .line 253
    .line 254
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_c

    .line 259
    .line 260
    const-string v2, "android.permission.CAMERA"

    .line 261
    .line 262
    move-object/from16 v3, p9

    .line 263
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_f

    .line 269
    .line 270
    const-class v2, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 271
    .line 272
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 277
    .line 278
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    invoke-virtual {v2, v4, v13}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_f

    .line 291
    .line 292
    const-class v2, Landroid/app/AppOpsManagerInternal;

    .line 293
    .line 294
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    check-cast v2, Landroid/app/AppOpsManagerInternal;

    .line 299
    .line 300
    const/16 v4, 0x1a

    .line 301
    .line 302
    const/4 v5, 0x0

    .line 303
    invoke-virtual {v2, v4, v3, v10, v5}, Landroid/app/AppOpsManagerInternal;->getOpRestrictionCount(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-ne v2, v14, :cond_f

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_f
    move v7, v13

    .line 311
    goto :goto_5

    .line 312
    :catch_0
    move-object/from16 v20, v6

    .line 313
    .line 314
    move/from16 v21, v7

    .line 315
    .line 316
    const-string v2, "Cannot find package info for "

    .line 317
    .line 318
    move-object/from16 v3, v20

    .line 319
    .line 320
    invoke-static {v2, v10, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_4

    .line 324
    .line 325
    :goto_7
    const-string v2, ") requires "

    .line 326
    .line 327
    const-string v4, ", uid="

    .line 328
    .line 329
    const-string v5, " (pid="

    .line 330
    .line 331
    const-string v6, " from "

    .line 332
    .line 333
    move/from16 v10, v21

    .line 334
    .line 335
    if-eq v10, v14, :cond_10

    .line 336
    .line 337
    if-ne v7, v14, :cond_11

    .line 338
    .line 339
    :cond_10
    move-object/from16 v10, p1

    .line 340
    .line 341
    goto/16 :goto_8

    .line 342
    .line 343
    :cond_11
    const-string v12, "Appop Denial: starting "

    .line 344
    .line 345
    if-ne v7, v13, :cond_12

    .line 346
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-static {v8, v9, v4, v2, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 369
    .line 370
    .line 371
    sget-object v1, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 372
    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    check-cast v1, Ljava/lang/String;

    .line 382
    .line 383
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    const/4 v0, 0x0

    .line 398
    return v0

    .line 399
    :cond_12
    if-ne v10, v13, :cond_13

    .line 400
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v2, ") requires appop "

    .line 423
    .line 424
    invoke-static {v8, v9, v4, v2, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 425
    .line 426
    .line 427
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 428
    .line 429
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    const/4 v1, 0x0

    .line 444
    return v1

    .line 445
    :cond_13
    const/4 v1, 0x0

    .line 446
    const-string v2, "com.sec.intent.extra.FREEZE_TASK_DISPLAY_AREA"

    .line 447
    .line 448
    move-object/from16 v10, p1

    .line 449
    .line 450
    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-eqz v1, :cond_14

    .line 455
    .line 456
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 457
    .line 458
    const-string v1, "com.samsung.android.permission.FREEZE_TASK_DISPLAY_AREA"

    .line 459
    .line 460
    const-string v2, "FREEZE_TASK_DISPLAY_AREA"

    .line 461
    .line 462
    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission$1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    return v0

    .line 467
    :cond_14
    return v14

    .line 468
    :goto_8
    if-eqz p12, :cond_15

    .line 469
    .line 470
    const/16 v21, 0x0

    .line 471
    .line 472
    const/16 v22, 0x0

    .line 473
    .line 474
    const/16 v16, -0x1

    .line 475
    .line 476
    const/16 v19, 0x0

    .line 477
    .line 478
    const/16 v20, 0x0

    .line 479
    .line 480
    const/16 v23, 0x0

    .line 481
    .line 482
    move-object/from16 v15, p12

    .line 483
    .line 484
    move-object/from16 v17, p3

    .line 485
    .line 486
    move/from16 v18, p4

    .line 487
    .line 488
    invoke-virtual/range {v15 .. v23}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 489
    .line 490
    .line 491
    :cond_15
    const-string v0, "Permission Denial: starting "

    .line 492
    .line 493
    if-eq v7, v14, :cond_17

    .line 494
    .line 495
    iget-boolean v7, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 496
    .line 497
    if-nez v7, :cond_16

    .line 498
    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v0, ") not exported from uid "

    .line 521
    .line 522
    invoke-static {v8, v9, v4, v0, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 523
    .line 524
    .line 525
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 526
    .line 527
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 528
    .line 529
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    goto :goto_9

    .line 537
    :cond_16
    new-instance v7, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-static {v8, v9, v4, v2, v7}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 559
    .line 560
    .line 561
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 562
    .line 563
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    goto :goto_9

    .line 571
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v0, ") with revoked permission "

    .line 593
    .line 594
    invoke-static {v8, v9, v4, v0, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 595
    .line 596
    .line 597
    sget-object v0, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 598
    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    check-cast v0, Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    :goto_9
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .line 618
    .line 619
    new-instance v1, Ljava/lang/SecurityException;

    .line 620
    .line 621
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    throw v1

    .line 625
    :cond_18
    :goto_a
    return v14
.end method

.method public final cleanUpRemovedTask(Lcom/android/server/wm/Task;ZZ)V
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 4
    .line 5
    invoke-virtual {p3, p1}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-nez v0, :cond_2

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p2, "No component for base intent of task: "

    .line 25
    .line 26
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "ActivityTaskManager"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    new-instance v1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 48
    .line 49
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 50
    .line 51
    iget v4, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 52
    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-instance v5, Landroid/content/Intent;

    .line 58
    .line 59
    invoke-direct {v5, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 67
    .line 68
    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    if-nez p2, :cond_3

    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    iget-boolean p3, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 81
    .line 82
    if-eqz p3, :cond_5

    .line 83
    .line 84
    iget-boolean p3, p2, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 85
    .line 86
    if-nez p3, :cond_5

    .line 87
    .line 88
    iget-wide v0, p2, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    .line 89
    .line 90
    const-wide/16 v2, 0x0

    .line 91
    .line 92
    cmp-long p3, v0, v2

    .line 93
    .line 94
    if-lez p3, :cond_5

    .line 95
    .line 96
    iget-boolean p3, p1, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    .line 97
    .line 98
    if-nez p3, :cond_5

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    .line 107
    .line 108
    if-eqz p2, :cond_4

    .line 109
    .line 110
    iget-boolean p2, p1, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    .line 111
    .line 112
    if-eqz p2, :cond_4

    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    const/4 p2, 0x1

    .line 116
    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 119
    .line 120
    const/16 p2, 0xce

    .line 121
    .line 122
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-wide/16 p2, 0x3e8

    .line 127
    .line 128
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->killTaskProcessesIfPossible(Lcom/android/server/wm/Task;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final computeProcessActivityStateBatch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/wm/WindowProcessController;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeProcessActivityState()V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final endActivityVisibilityUpdate()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final endDeferResume()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 6
    .line 7
    return-void
.end method

.method public final findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v12, p3

    .line 6
    .line 7
    const-string v2, " findTaskToMoveToFront"

    .line 8
    .line 9
    const-string v13, "findTaskToMoveToFront: move rootTask "

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v14, "ActivityTaskManager"

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "findTaskToMoveToFront: can\'t move task="

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " to front. Root task is null"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    const/4 v15, 0x1

    .line 43
    iget-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    if-eqz v12, :cond_2

    .line 47
    .line 48
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v4, v10

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    move v2, v10

    .line 59
    move-object v15, v11

    .line 60
    goto/16 :goto_13

    .line 61
    .line 62
    :cond_2
    :goto_0
    move v4, v15

    .line 63
    :goto_1
    and-int/lit8 v5, p2, 0x2

    .line 64
    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    iput-boolean v15, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 70
    .line 71
    :cond_3
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 72
    .line 73
    .line 74
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const/4 v9, 0x0

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_5

    .line 90
    .line 91
    :cond_4
    move-object v8, v9

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 94
    .line 95
    const/4 v5, 0x3

    .line 96
    invoke-virtual {v4, v5, v10}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    move-object v8, v4

    .line 101
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_6

    .line 106
    .line 107
    iget-object v4, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 108
    .line 109
    invoke-virtual {v4, v0}, Lcom/android/server/wm/FreeformController;->releaseForceHideTaskLocked(Lcom/android/server/wm/Task;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 113
    .line 114
    invoke-virtual {v4, v0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 115
    .line 116
    .line 117
    move-object/from16 v4, p4

    .line 118
    .line 119
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v0, v15}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 124
    .line 125
    .line 126
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-eqz v2, :cond_b

    .line 128
    .line 129
    :try_start_1
    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_b

    .line 134
    .line 135
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 136
    .line 137
    invoke-virtual {v2, v12, v0, v15}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    .line 138
    .line 139
    .line 140
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 141
    if-eq v6, v3, :cond_a

    .line 142
    .line 143
    :try_start_2
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-ne v4, v15, :cond_7

    .line 156
    .line 157
    and-int/lit8 v4, p2, 0x1

    .line 158
    .line 159
    if-nez v4, :cond_8

    .line 160
    .line 161
    :cond_7
    if-eqz v3, :cond_9

    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_9

    .line 168
    .line 169
    :cond_8
    invoke-virtual {v2, v7}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_9
    const/4 v4, 0x1

    .line 173
    const/4 v5, 0x1

    .line 174
    const/16 v16, 0x0

    .line 175
    .line 176
    const/16 v17, 0x1

    .line 177
    .line 178
    move-object/from16 v2, p1

    .line 179
    .line 180
    move-object v3, v6

    .line 181
    move-object/from16 v18, v6

    .line 182
    .line 183
    move/from16 v6, v16

    .line 184
    .line 185
    move-object/from16 p4, v7

    .line 186
    .line 187
    move/from16 v7, v17

    .line 188
    .line 189
    move-object/from16 v19, v8

    .line 190
    .line 191
    move-object/from16 v8, p4

    .line 192
    .line 193
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    .line 195
    .line 196
    move/from16 v16, v15

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_a
    move-object/from16 p4, v7

    .line 200
    .line 201
    move-object/from16 v19, v8

    .line 202
    .line 203
    move-object/from16 v18, v3

    .line 204
    .line 205
    move/from16 v16, v10

    .line 206
    .line 207
    :goto_3
    :try_start_3
    new-instance v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 208
    .line 209
    invoke-direct {v8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 210
    .line 211
    .line 212
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 213
    .line 214
    invoke-virtual {v0, v15, v15}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 215
    .line 216
    .line 217
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 218
    const/16 v17, 0x0

    .line 219
    .line 220
    const/16 v20, 0x3

    .line 221
    .line 222
    const/16 v21, 0x0

    .line 223
    .line 224
    const/4 v4, 0x0

    .line 225
    const/4 v6, 0x0

    .line 226
    move-object/from16 v3, p1

    .line 227
    .line 228
    move-object/from16 v7, p3

    .line 229
    .line 230
    move-object/from16 v22, v8

    .line 231
    .line 232
    move-object/from16 v8, v17

    .line 233
    .line 234
    move/from16 v9, v20

    .line 235
    .line 236
    move-object/from16 v10, v22

    .line 237
    .line 238
    move-object v15, v11

    .line 239
    move-object/from16 v11, v21

    .line 240
    .line 241
    :try_start_4
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 242
    .line 243
    .line 244
    move-object/from16 v2, v22

    .line 245
    .line 246
    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 249
    .line 250
    .line 251
    move/from16 v10, v16

    .line 252
    .line 253
    move-object/from16 v9, v18

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :catchall_1
    move-exception v0

    .line 257
    :goto_4
    const/4 v2, 0x0

    .line 258
    goto/16 :goto_13

    .line 259
    .line 260
    :catchall_2
    move-exception v0

    .line 261
    move-object v15, v11

    .line 262
    goto :goto_4

    .line 263
    :cond_b
    move-object/from16 p4, v7

    .line 264
    .line 265
    move-object/from16 v19, v8

    .line 266
    .line 267
    move-object v15, v11

    .line 268
    move-object v9, v3

    .line 269
    const/4 v10, 0x0

    .line 270
    :goto_5
    if-nez v10, :cond_f

    .line 271
    .line 272
    if-eqz v12, :cond_f

    .line 273
    .line 274
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    const/4 v4, -0x1

    .line 283
    if-eq v3, v4, :cond_f

    .line 284
    .line 285
    if-eq v2, v3, :cond_f

    .line 286
    .line 287
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_f

    .line 292
    .line 293
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_f

    .line 298
    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v4, " to display #"

    .line 308
    .line 309
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-static {v14, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    iget-object v2, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 323
    .line 324
    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    if-eqz v2, :cond_c

    .line 329
    .line 330
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    goto :goto_6

    .line 335
    :cond_c
    const/4 v2, 0x0

    .line 336
    :goto_6
    if-eqz v2, :cond_d

    .line 337
    .line 338
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    if-nez v4, :cond_d

    .line 343
    .line 344
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 345
    .line 346
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 347
    .line 348
    .line 349
    :cond_d
    iget v2, v9, Lcom/android/server/wm/Task;->mTaskId:I

    .line 350
    .line 351
    invoke-virtual {v15, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->moveRootTaskToDisplay(II)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-ne v2, v3, :cond_e

    .line 359
    .line 360
    const/4 v10, 0x1

    .line 361
    goto :goto_7

    .line 362
    :cond_e
    const/4 v10, 0x0

    .line 363
    :cond_f
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 364
    .line 365
    .line 366
    move-result v11

    .line 367
    if-nez v10, :cond_12

    .line 368
    .line 369
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    const/4 v5, 0x1

    .line 382
    if-ne v4, v5, :cond_11

    .line 383
    .line 384
    and-int/lit8 v4, p2, 0x1

    .line 385
    .line 386
    if-nez v4, :cond_10

    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_10
    :goto_8
    move-object/from16 v8, p4

    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_11
    :goto_9
    if-eqz v3, :cond_12

    .line 393
    .line 394
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-eqz v3, :cond_12

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :goto_a
    invoke-virtual {v2, v8}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :goto_b
    const/4 v2, 0x1

    .line 405
    goto :goto_c

    .line 406
    :cond_12
    move-object/from16 v8, p4

    .line 407
    .line 408
    goto :goto_b

    .line 409
    :goto_c
    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 410
    .line 411
    .line 412
    move-result-object v10

    .line 413
    if-nez v10, :cond_13

    .line 414
    .line 415
    const/4 v6, 0x0

    .line 416
    goto :goto_d

    .line 417
    :cond_13
    iget-object v2, v10, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 418
    .line 419
    move-object v6, v2

    .line 420
    :goto_d
    const/4 v7, 0x0

    .line 421
    const/4 v4, 0x0

    .line 422
    move-object v2, v9

    .line 423
    move-object/from16 v3, p1

    .line 424
    .line 425
    move-object/from16 v5, p3

    .line 426
    .line 427
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 431
    .line 432
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 433
    .line 434
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    move/from16 v3, p5

    .line 439
    .line 440
    invoke-virtual {v1, v0, v2, v9, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    .line 441
    .line 442
    .line 443
    if-eqz v10, :cond_14

    .line 444
    .line 445
    if-eqz v12, :cond_15

    .line 446
    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getDisableStartingWindow()Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-nez v2, :cond_14

    .line 452
    .line 453
    goto :goto_f

    .line 454
    :cond_14
    :goto_e
    move-object/from16 v9, v19

    .line 455
    .line 456
    goto :goto_10

    .line 457
    :cond_15
    :goto_f
    if-nez v11, :cond_14

    .line 458
    .line 459
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 460
    .line 461
    if-eqz v2, :cond_16

    .line 462
    .line 463
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 464
    .line 465
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 466
    .line 467
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 468
    .line 469
    if-eqz v2, :cond_16

    .line 470
    .line 471
    iget-boolean v2, v10, Lcom/android/server/wm/ActivityRecord;->mStyleFloating:Z

    .line 472
    .line 473
    if-eqz v2, :cond_16

    .line 474
    .line 475
    iget-object v2, v10, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 476
    .line 477
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    if-nez v2, :cond_14

    .line 486
    .line 487
    :cond_16
    const/4 v2, 0x1

    .line 488
    invoke-virtual {v10, v2}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 489
    .line 490
    .line 491
    goto :goto_e

    .line 492
    :goto_10
    if-eqz v9, :cond_18

    .line 493
    .line 494
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 495
    .line 496
    if-eqz v12, :cond_17

    .line 497
    .line 498
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    :goto_11
    const/4 v4, 0x0

    .line 503
    goto :goto_12

    .line 504
    :cond_17
    const/4 v3, 0x0

    .line 505
    goto :goto_11

    .line 506
    :goto_12
    invoke-virtual {v2, v9, v0, v3, v4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 507
    .line 508
    .line 509
    :cond_18
    const/4 v2, 0x0

    .line 510
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 511
    .line 512
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :goto_13
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 517
    .line 518
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 519
    .line 520
    .line 521
    throw v0
.end method

.method public final getDeviceIdForDisplayId(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHasCompanionDeviceSetupFeature:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    return v0

    .line 35
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_3
    :goto_0
    return v0
.end method

.method public final getNextTaskIdForUser(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const v1, 0x186a0

    .line 4
    .line 5
    .line 6
    mul-int v2, p1, v1

    .line 7
    .line 8
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v2, v0, 0x1

    .line 13
    .line 14
    add-int/lit8 v3, p1, 0x1

    .line 15
    .line 16
    mul-int/2addr v3, v1

    .line 17
    const v1, -0x1869f

    .line 18
    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    add-int v2, v0, v1

    .line 23
    .line 24
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x1

    .line 48
    invoke-virtual {v4, v2, v7, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    :goto_1
    add-int/lit8 v4, v2, 0x1

    .line 55
    .line 56
    if-ne v4, v3, :cond_2

    .line 57
    .line 58
    add-int/2addr v2, v1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move v2, v4

    .line 61
    :goto_2
    if-eq v2, v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string p1, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 73
    .line 74
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    .line 76
    .line 77
    return v2
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final goingToSleepLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 2
    .line 3
    const/16 v1, 0xcb

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    sget v2, Lcom/android/server/wm/ActivityTaskSupervisor;->SLEEP_TIMEOUT:I

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 38
    .line 39
    .line 40
    const/16 v1, 0xcc

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 9
    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-interface {v1, v2, p1}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldNotHandleForcedResizableTaskIfNeeded(II)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 58
    .line 59
    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 62
    .line 63
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 64
    .line 65
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_0
    return-void
.end method

.method public final handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const/4 v2, 0x5

    .line 10
    if-ne p3, v2, :cond_0

    .line 11
    .line 12
    move p3, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p3, v1

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    return-void

    .line 25
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 26
    .line 27
    iget-object v2, p2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    move v2, v0

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    move v2, v1

    .line 36
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_4

    .line 41
    .line 42
    return-void

    .line 43
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    if-eqz v2, :cond_8

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    invoke-virtual {p1, p3}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-eqz p3, :cond_7

    .line 56
    .line 57
    iget-object p2, p2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    if-eq p2, p3, :cond_5

    .line 64
    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p3, "Failed to put "

    .line 68
    .line 69
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p3, " on display "

    .line 76
    .line 77
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget p3, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 81
    .line 82
    const-string p4, "ActivityTaskManager"

    .line 83
    .line 84
    invoke-static {p0, p3, p4}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 94
    .line 95
    iget-object p3, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 96
    .line 97
    const/16 p4, 0x12

    .line 98
    .line 99
    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, p4, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    if-nez p4, :cond_6

    .line 116
    .line 117
    const/4 p2, 0x2

    .line 118
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    :goto_3
    return-void

    .line 122
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string p1, "Task resolved to incompatible display"

    .line 125
    .line 126
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_c

    .line 135
    .line 136
    if-eqz p2, :cond_c

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_c

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    if-eqz p0, :cond_b

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 155
    .line 156
    if-eqz p0, :cond_9

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 160
    .line 161
    .line 162
    iget-object p0, p2, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    if-eqz p0, :cond_b

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    if-eqz p0, :cond_a

    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_a

    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    goto :goto_4

    .line 195
    :cond_a
    const/4 p0, 0x0

    .line 196
    :goto_4
    iget-object p1, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 197
    .line 198
    iget-object p2, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 199
    .line 200
    const/4 p3, 0x7

    .line 201
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, p3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    iget-object p2, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 209
    .line 210
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    .line 215
    .line 216
    :cond_b
    :goto_5
    return-void

    .line 217
    :cond_c
    if-nez p4, :cond_e

    .line 218
    .line 219
    if-eqz p3, :cond_d

    .line 220
    .line 221
    const/4 p2, 0x3

    .line 222
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V

    .line 223
    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_d
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V

    .line 227
    .line 228
    .line 229
    :cond_e
    :goto_6
    return-void
.end method

.method public final handleTopResumedStateReleased(Z)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "(due to timeout)"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p1, "(transition complete)"

    .line 14
    .line 15
    :goto_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 16
    .line 17
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    const-wide v3, 0x37786b7acafe381fL    # 1.7520377694429976E-41

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 32
    .line 33
    const/16 v0, 0xd9

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 36
    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public final isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    move/from16 v1, p3

    .line 8
    .line 9
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    aget-boolean v2, v9, v10

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    int-to-long v2, v1

    .line 17
    int-to-long v4, v7

    .line 18
    int-to-long v11, v8

    .line 19
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v18

    .line 37
    const-wide v14, -0x765e9c822239c1bfL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const/16 v16, 0x15

    .line 43
    .line 44
    const/16 v17, 0x0

    .line 45
    .line 46
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    const/4 v11, -0x1

    .line 50
    const/4 v12, 0x1

    .line 51
    if-ne v7, v11, :cond_2

    .line 52
    .line 53
    if-ne v8, v11, :cond_2

    .line 54
    .line 55
    aget-boolean v0, v9, v10

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    const-wide v2, 0x7ef3e7a5f3e53e19L    # 3.4125193512928154E303

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return v12

    .line 73
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    const-string v14, "ActivityTaskManager"

    .line 80
    .line 81
    if-eqz v13, :cond_17

    .line 82
    .line 83
    iget-boolean v1, v13, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_3
    iget-object v1, v13, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 90
    .line 91
    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    .line 92
    .line 93
    const v2, 0x8000

    .line 94
    .line 95
    .line 96
    and-int/2addr v1, v2

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    move v15, v12

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    move v15, v10

    .line 102
    :goto_0
    iget-object v1, v13, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    and-int/lit16 v1, v1, 0x2000

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    const-string v0, "Launch on display check: activity launch is not allowed on rear display"

    .line 113
    .line 114
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return v10

    .line 118
    :cond_5
    const/4 v5, -0x1

    .line 119
    const/4 v6, 0x1

    .line 120
    const-string v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    move/from16 v1, p1

    .line 124
    .line 125
    move/from16 v2, p2

    .line 126
    .line 127
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_7

    .line 132
    .line 133
    aget-boolean v0, v9, v10

    .line 134
    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 138
    .line 139
    const/4 v5, 0x0

    .line 140
    const/4 v6, 0x0

    .line 141
    const-wide v2, 0x425a011a7ae73790L    # 4.4675064924486816E11

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    const/4 v4, 0x0

    .line 147
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    return v12

    .line 151
    :cond_7
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda55;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 154
    .line 155
    .line 156
    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 157
    .line 158
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget-object v2, v13, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 171
    .line 172
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-eqz v2, :cond_8

    .line 177
    .line 178
    move/from16 v16, v12

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_8
    move/from16 v16, v10

    .line 182
    .line 183
    :goto_1
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 184
    .line 185
    .line 186
    iget-object v6, v13, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 187
    .line 188
    invoke-virtual {v6}, Landroid/view/Display;->isTrusted()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_b

    .line 193
    .line 194
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 195
    .line 196
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 197
    .line 198
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 203
    .line 204
    if-eqz v2, :cond_9

    .line 205
    .line 206
    if-eqz v15, :cond_9

    .line 207
    .line 208
    if-eqz v1, :cond_9

    .line 209
    .line 210
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_a

    .line 215
    .line 216
    :cond_9
    move-object/from16 v1, p4

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_a
    const-string v1, "SPEG"

    .line 220
    .line 221
    const-string v2, "Ignore activity launch permission checking"

    .line 222
    .line 223
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    :cond_b
    move-object v7, v6

    .line 227
    goto :goto_3

    .line 228
    :goto_2
    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 229
    .line 230
    const/high16 v2, -0x80000000

    .line 231
    .line 232
    and-int/2addr v1, v2

    .line 233
    if-nez v1, :cond_d

    .line 234
    .line 235
    aget-boolean v0, v9, v10

    .line 236
    .line 237
    if-eqz v0, :cond_c

    .line 238
    .line 239
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 240
    .line 241
    const/4 v5, 0x0

    .line 242
    const/4 v6, 0x0

    .line 243
    const-wide v2, 0x6ca41b1e6ab53a07L    # 2.165963557774033E215

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    const/4 v4, 0x0

    .line 249
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_c
    return v10

    .line 253
    :cond_d
    const/4 v5, -0x1

    .line 254
    const/4 v15, 0x1

    .line 255
    const-string v3, "android.permission.ACTIVITY_EMBEDDING"

    .line 256
    .line 257
    const/4 v4, 0x0

    .line 258
    move/from16 v1, p1

    .line 259
    .line 260
    move/from16 v2, p2

    .line 261
    .line 262
    move-object v7, v6

    .line 263
    move v6, v15

    .line 264
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-ne v1, v11, :cond_f

    .line 269
    .line 270
    if-nez v16, :cond_f

    .line 271
    .line 272
    aget-boolean v0, v9, v10

    .line 273
    .line 274
    if-eqz v0, :cond_e

    .line 275
    .line 276
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 277
    .line 278
    const/4 v5, 0x0

    .line 279
    const/4 v6, 0x0

    .line 280
    const-wide v2, -0x1ec061dd9080c832L    # -2.778229783558705E160

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    const/4 v4, 0x0

    .line 286
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_e
    return v10

    .line 290
    :cond_f
    :goto_3
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-nez v1, :cond_12

    .line 295
    .line 296
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 305
    .line 306
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 307
    .line 308
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(II)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    aget-boolean v3, v9, v10

    .line 313
    .line 314
    if-eqz v3, :cond_11

    .line 315
    .line 316
    if-eqz v0, :cond_10

    .line 317
    .line 318
    const-string v3, "allow"

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_10
    const-string v3, "disallow"

    .line 322
    .line 323
    :goto_4
    int-to-long v4, v1

    .line 324
    int-to-long v1, v2

    .line 325
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 326
    .line 327
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    filled-new-array {v3, v4, v1}, [Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    const-wide v7, 0xdb0fc2af2333033L

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    const/16 v9, 0x14

    .line 345
    .line 346
    const/4 v10, 0x0

    .line 347
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    :cond_11
    return v0

    .line 351
    :cond_12
    invoke-virtual {v7}, Landroid/view/Display;->getOwnerUid()I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-ne v0, v8, :cond_14

    .line 356
    .line 357
    aget-boolean v0, v9, v10

    .line 358
    .line 359
    if-eqz v0, :cond_13

    .line 360
    .line 361
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 362
    .line 363
    const/4 v5, 0x0

    .line 364
    const/4 v6, 0x0

    .line 365
    const-wide v2, -0x1e8d024db84eca11L    # -2.669964969213711E161

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    const/4 v4, 0x0

    .line 371
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :cond_13
    return v12

    .line 375
    :cond_14
    if-eqz v16, :cond_16

    .line 376
    .line 377
    aget-boolean v0, v9, v10

    .line 378
    .line 379
    if-eqz v0, :cond_15

    .line 380
    .line 381
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 382
    .line 383
    const/4 v5, 0x0

    .line 384
    const/4 v6, 0x0

    .line 385
    const-wide v2, -0x3b187295d6d8c699L    # -8.897845576717156E23

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    const/4 v4, 0x0

    .line 391
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    :cond_15
    return v12

    .line 395
    :cond_16
    const-string v0, "Launch on display check: denied"

    .line 396
    .line 397
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    const-string v1, "Launch on display that does not exist, d="

    .line 403
    .line 404
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const-string v2, ", isRemoved="

    .line 413
    .line 414
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-boolean v2, v13, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 418
    .line 419
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    const-string v1, "WindowManager"

    .line 434
    .line 435
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    return v10

    .line 439
    :cond_17
    :goto_5
    const-string v0, "Launch on display check: display not found"

    .line 440
    .line 441
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    return v10
.end method

.method public final killTaskProcessesIfPossible(Lcom/android/server/wm/Task;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v0

    .line 18
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-ge v4, v5, :cond_a

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Landroid/util/SparseArray;

    .line 29
    .line 30
    move v6, v0

    .line 31
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-ge v6, v7, :cond_9

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Lcom/android/server/wm/WindowProcessController;

    .line 42
    .line 43
    iget v8, v7, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 44
    .line 45
    iget v9, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 46
    .line 47
    if-eq v8, v9, :cond_0

    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 54
    .line 55
    if-ne v7, v8, :cond_1

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_1
    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-nez v8, :cond_2

    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_2
    move v8, v0

    .line 66
    :goto_2
    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-ge v8, v9, :cond_5

    .line 73
    .line 74
    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    iget-boolean v10, v9, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 83
    .line 84
    if-nez v10, :cond_3

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 88
    .line 89
    iget v10, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 90
    .line 91
    iget v11, v9, Lcom/android/server/wm/Task;->mTaskId:I

    .line 92
    .line 93
    if-eq v10, v11, :cond_4

    .line 94
    .line 95
    iget-boolean v9, v9, Lcom/android/server/wm/Task;->inRecents:Z

    .line 96
    .line 97
    if-eqz v9, :cond_4

    .line 98
    .line 99
    :goto_3
    return-void

    .line 100
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    iget-boolean v8, v7, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    .line 104
    .line 105
    if-eqz v8, :cond_6

    .line 106
    .line 107
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 108
    .line 109
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 110
    .line 111
    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 112
    .line 113
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 114
    .line 115
    iget v10, v7, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 116
    .line 117
    invoke-virtual {v8, v9, v10}, Landroid/app/ActivityManagerInternal;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-nez v8, :cond_6

    .line 122
    .line 123
    return-void

    .line 124
    :cond_6
    iget-object v8, p1, Lcom/android/server/wm/Task;->mReason:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v8, :cond_7

    .line 127
    .line 128
    const-string v9, "MultiTaskingAppCompat"

    .line 129
    .line 130
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_7

    .line 135
    .line 136
    iput-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_7
    const-string v8, "kill"

    .line 140
    .line 141
    iput-object v8, v7, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    .line 142
    .line 143
    :goto_4
    if-nez v3, :cond_8

    .line 144
    .line 145
    new-instance v3, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    :cond_8
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_a
    if-nez v3, :cond_b

    .line 161
    .line 162
    return-void

    .line 163
    :cond_b
    new-instance p1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;

    .line 164
    .line 165
    const/4 v0, 0x1

    .line 166
    invoke-direct {p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;-><init>(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 172
    .line 173
    invoke-static {p1, v0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V
    .locals 0

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 4
    .line 5
    if-lez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->computeProcessActivityState()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method public final onUserUnlocked(I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, v2, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto/16 :goto_d

    .line 24
    .line 25
    :cond_0
    :goto_0
    monitor-exit v2

    .line 26
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v4, v2, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    .line 37
    .line 38
    invoke-interface {v4, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/io/File;

    .line 43
    .line 44
    new-instance v5, Ljava/io/File;

    .line 45
    .line 46
    const-string v6, "launch_params"

    .line 47
    .line 48
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const-string v6, "LaunchParamsPersister"

    .line 56
    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    const-string v2, "Didn\'t find launch param folder for user "

    .line 60
    .line 61
    invoke-static {v0, v2, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_c

    .line 65
    .line 66
    :cond_1
    new-instance v4, Landroid/util/ArraySet;

    .line 67
    .line 68
    iget-object v7, v2, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    .line 69
    .line 70
    iget-object v7, v7, Lcom/android/server/pm/PackageList;->mPackageNames:Ljava/util/List;

    .line 71
    .line 72
    invoke-direct {v4, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    new-instance v8, Landroid/util/ArrayMap;

    .line 80
    .line 81
    array-length v9, v7

    .line 82
    invoke-direct {v8, v9}, Landroid/util/ArrayMap;-><init>(I)V

    .line 83
    .line 84
    .line 85
    iget-object v9, v2, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v9, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    array-length v9, v7

    .line 91
    const/4 v11, 0x0

    .line 92
    :goto_1
    if-ge v11, v9, :cond_c

    .line 93
    .line 94
    aget-object v12, v7, v11

    .line 95
    .line 96
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-nez v13, :cond_2

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v12, " is not a file."

    .line 115
    .line 116
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :goto_2
    move-object/from16 v16, v4

    .line 127
    .line 128
    move-object/from16 v17, v5

    .line 129
    .line 130
    goto/16 :goto_b

    .line 131
    .line 132
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    const-string v14, ".xml"

    .line 137
    .line 138
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    if-nez v13, :cond_3

    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v13, "Unexpected params file name: "

    .line 147
    .line 148
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    const/16 v14, 0x5f

    .line 174
    .line 175
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    .line 176
    .line 177
    .line 178
    move-result v15

    .line 179
    const/16 v0, 0x2d

    .line 180
    .line 181
    const/4 v10, -0x1

    .line 182
    if-eq v15, v10, :cond_6

    .line 183
    .line 184
    add-int/lit8 v15, v15, 0x1

    .line 185
    .line 186
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->indexOf(II)I

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-eq v15, v10, :cond_4

    .line 191
    .line 192
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_4
    invoke-virtual {v13, v14, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    new-instance v10, Ljava/io/File;

    .line 201
    .line 202
    invoke-direct {v10, v5, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v12, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    if-eqz v14, :cond_5

    .line 210
    .line 211
    move-object v12, v10

    .line 212
    goto :goto_3

    .line 213
    :cond_5
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_6
    :goto_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    add-int/lit8 v10, v10, -0x4

    .line 222
    .line 223
    const/4 v14, 0x0

    .line 224
    invoke-virtual {v13, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    const/16 v15, 0x2f

    .line 229
    .line 230
    invoke-virtual {v10, v0, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    if-nez v10, :cond_7

    .line 239
    .line 240
    const-string v0, "Unexpected file name: "

    .line 241
    .line 242
    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_7
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-nez v0, :cond_8

    .line 262
    .line 263
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    goto/16 :goto_2

    .line 267
    .line 268
    :cond_8
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    .line 269
    .line 270
    invoke-direct {v13, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    .line 272
    .line 273
    :try_start_2
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 274
    .line 275
    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-static {v13}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 279
    .line 280
    .line 281
    move-result-object v15

    .line 282
    :goto_4
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 283
    .line 284
    .line 285
    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 286
    move-object/from16 v16, v4

    .line 287
    .line 288
    const/4 v4, 0x1

    .line 289
    if-eq v14, v4, :cond_b

    .line 290
    .line 291
    const/4 v4, 0x3

    .line 292
    if-eq v14, v4, :cond_b

    .line 293
    .line 294
    const/4 v4, 0x2

    .line 295
    if-eq v14, v4, :cond_9

    .line 296
    .line 297
    move-object/from16 v4, v16

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_9
    :try_start_3
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    const-string v14, "launch_params"

    .line 305
    .line 306
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-nez v14, :cond_a

    .line 311
    .line 312
    new-instance v14, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 315
    .line 316
    .line 317
    move-object/from16 v17, v5

    .line 318
    .line 319
    :try_start_4
    const-string v5, "Unexpected tag name: "

    .line 320
    .line 321
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    :goto_5
    move-object/from16 v4, v16

    .line 335
    .line 336
    move-object/from16 v5, v17

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :catchall_1
    move-exception v0

    .line 340
    :goto_6
    move-object v4, v0

    .line 341
    goto :goto_8

    .line 342
    :catchall_2
    move-exception v0

    .line 343
    :goto_7
    move-object/from16 v17, v5

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_a
    move-object/from16 v17, v5

    .line 347
    .line 348
    invoke-virtual {v0, v12, v15}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->restore(Ljava/io/File;Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 349
    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_b
    move-object/from16 v17, v5

    .line 353
    .line 354
    invoke-virtual {v8, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v2, v10, v0}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 360
    .line 361
    .line 362
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 363
    .line 364
    .line 365
    goto :goto_b

    .line 366
    :catch_0
    move-exception v0

    .line 367
    goto :goto_a

    .line 368
    :catchall_3
    move-exception v0

    .line 369
    move-object/from16 v16, v4

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :goto_8
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 373
    .line 374
    .line 375
    goto :goto_9

    .line 376
    :catchall_4
    move-exception v0

    .line 377
    move-object v5, v0

    .line 378
    :try_start_7
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 379
    .line 380
    .line 381
    :goto_9
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 382
    :catch_1
    move-exception v0

    .line 383
    move-object/from16 v16, v4

    .line 384
    .line 385
    move-object/from16 v17, v5

    .line 386
    .line 387
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    const-string v5, "Failed to restore launch params for "

    .line 390
    .line 391
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-static {v6, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    :goto_b
    add-int/lit8 v11, v11, 0x1

    .line 408
    .line 409
    move-object/from16 v4, v16

    .line 410
    .line 411
    move-object/from16 v5, v17

    .line 412
    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-nez v0, :cond_d

    .line 420
    .line 421
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    .line 422
    .line 423
    invoke-direct {v0, v3}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Ljava/util/List;)V

    .line 424
    .line 425
    .line 426
    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 427
    .line 428
    const/4 v3, 0x1

    .line 429
    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 430
    .line 431
    .line 432
    :cond_d
    :goto_c
    const-string/jumbo v0, "userUnlocked"

    .line 433
    .line 434
    .line 435
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 436
    .line 437
    const/16 v2, 0xd8

    .line 438
    .line 439
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    if-nez v3, :cond_e

    .line 444
    .line 445
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 450
    .line 451
    .line 452
    :cond_e
    return-void

    .line 453
    :goto_d
    monitor-exit v2

    .line 454
    throw v0
.end method

.method public final processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_NONE:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/lit8 v3, v3, -0x2

    .line 19
    .line 20
    :goto_0
    if-ltz v3, :cond_1

    .line 21
    .line 22
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v3, -0x1

    .line 41
    move-object v5, v4

    .line 42
    :goto_1
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    :goto_2
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-ge v7, v9, :cond_e

    .line 51
    .line 52
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 59
    .line 60
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    const/4 v11, 0x1

    .line 65
    if-eqz v10, :cond_2

    .line 66
    .line 67
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 68
    .line 69
    if-eqz v10, :cond_2

    .line 70
    .line 71
    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    if-nez v10, :cond_2

    .line 76
    .line 77
    move v10, v11

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    const/4 v10, 0x0

    .line 80
    :goto_3
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_NONE:Z

    .line 81
    .line 82
    if-eqz v12, :cond_3

    .line 83
    .line 84
    if-eqz v10, :cond_3

    .line 85
    .line 86
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-nez v12, :cond_3

    .line 91
    .line 92
    iget-object v12, v9, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 93
    .line 94
    iget-object v13, v9, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 95
    .line 96
    invoke-virtual {v12, v13}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    if-eqz v12, :cond_3

    .line 101
    .line 102
    if-gt v7, v3, :cond_3

    .line 103
    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    iget-object v12, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 107
    .line 108
    if-eq v12, v5, :cond_3

    .line 109
    .line 110
    new-instance v10, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string/jumbo v12, "processStoppingAndFinishingActivities: stop if possible in transition target="

    .line 113
    .line 114
    .line 115
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    const-string v12, "ActivityTaskManager"

    .line 126
    .line 127
    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    const/4 v10, 0x0

    .line 131
    :cond_3
    iget-object v12, v9, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 132
    .line 133
    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    sub-int/2addr v12, v11

    .line 140
    :goto_4
    if-ltz v12, :cond_6

    .line 141
    .line 142
    iget-object v13, v9, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 143
    .line 144
    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    check-cast v13, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 151
    .line 152
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v14

    .line 159
    move/from16 v16, v7

    .line 160
    .line 161
    iget-wide v6, v13, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mAcquireTime:J

    .line 162
    .line 163
    sub-long/2addr v14, v6

    .line 164
    const-wide/16 v6, 0x3e8

    .line 165
    .line 166
    cmp-long v6, v14, v6

    .line 167
    .line 168
    if-lez v6, :cond_4

    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    goto :goto_5

    .line 172
    :cond_4
    iget-boolean v6, v13, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mIsSwappingDisplay:Z

    .line 173
    .line 174
    :goto_5
    if-eqz v6, :cond_5

    .line 175
    .line 176
    move v6, v11

    .line 177
    goto :goto_6

    .line 178
    :cond_5
    add-int/lit8 v12, v12, -0x1

    .line 179
    .line 180
    move/from16 v7, v16

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    move/from16 v16, v7

    .line 184
    .line 185
    const/4 v6, 0x0

    .line 186
    :goto_6
    or-int/2addr v8, v6

    .line 187
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 188
    .line 189
    aget-boolean v7, v6, v11

    .line 190
    .line 191
    if-eqz v7, :cond_7

    .line 192
    .line 193
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    iget-boolean v12, v9, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 198
    .line 199
    iget-boolean v13, v9, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 200
    .line 201
    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v13

    .line 205
    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 206
    .line 207
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    filled-new-array {v7, v12, v14, v13}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v22

    .line 219
    const/16 v20, 0x3c

    .line 220
    .line 221
    const/16 v21, 0x0

    .line 222
    .line 223
    const-wide v18, 0x14c4c3c8730b3c8bL

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_7
    if-nez v10, :cond_8

    .line 232
    .line 233
    if-eqz v8, :cond_a

    .line 234
    .line 235
    :cond_8
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 236
    .line 237
    iget-boolean v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 238
    .line 239
    if-nez v7, :cond_a

    .line 240
    .line 241
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    iget v7, v7, Lcom/android/server/wm/TaskFragment;->mForceHiddenFlags:I

    .line 246
    .line 247
    and-int/2addr v7, v11

    .line 248
    if-eqz v7, :cond_9

    .line 249
    .line 250
    move v7, v11

    .line 251
    goto :goto_7

    .line 252
    :cond_9
    const/4 v7, 0x0

    .line 253
    :goto_7
    if-nez v7, :cond_a

    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_a
    if-nez p2, :cond_b

    .line 257
    .line 258
    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 259
    .line 260
    invoke-virtual {v9, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    if-eqz v7, :cond_b

    .line 265
    .line 266
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 267
    .line 268
    const/16 v7, 0xc8

    .line 269
    .line 270
    invoke-virtual {v6, v7, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 274
    .line 275
    invoke-virtual {v6, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    sget v9, Lcom/android/server/wm/ActivityTaskSupervisor;->IDLE_TIMEOUT:I

    .line 280
    .line 281
    int-to-long v9, v9

    .line 282
    invoke-virtual {v6, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 283
    .line 284
    .line 285
    :goto_8
    move/from16 v7, v16

    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_b
    aget-boolean v6, v6, v11

    .line 289
    .line 290
    if-eqz v6, :cond_c

    .line 291
    .line 292
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 297
    .line 298
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v22

    .line 302
    const-wide v18, 0x4ec93347c90239eaL    # 3.478523516253573E71

    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    const/16 v20, 0x0

    .line 308
    .line 309
    const/16 v21, 0x0

    .line 310
    .line 311
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :cond_c
    if-nez v4, :cond_d

    .line 315
    .line 316
    new-instance v4, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .line 320
    .line 321
    :cond_d
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 325
    .line 326
    move/from16 v7, v16

    .line 327
    .line 328
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    add-int/lit8 v7, v7, -0x1

    .line 332
    .line 333
    :goto_9
    add-int/2addr v7, v11

    .line 334
    goto/16 :goto_2

    .line 335
    .line 336
    :cond_e
    if-eqz v8, :cond_f

    .line 337
    .line 338
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 339
    .line 340
    new-instance v3, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;

    .line 341
    .line 342
    const/4 v5, 0x1

    .line 343
    invoke-direct {v3, v0, v5}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    .line 344
    .line 345
    .line 346
    const-wide/16 v5, 0xc8

    .line 347
    .line 348
    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    .line 350
    .line 351
    :cond_f
    if-nez v4, :cond_10

    .line 352
    .line 353
    const/4 v1, 0x0

    .line 354
    goto :goto_a

    .line 355
    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    :goto_a
    const/4 v3, 0x0

    .line 360
    :goto_b
    if-ge v3, v1, :cond_13

    .line 361
    .line 362
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 367
    .line 368
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 369
    .line 370
    if-eqz v6, :cond_12

    .line 371
    .line 372
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 373
    .line 374
    if-eqz v6, :cond_11

    .line 375
    .line 376
    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    goto :goto_c

    .line 380
    :cond_11
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->stopIfPossible()V

    .line 381
    .line 382
    .line 383
    :cond_12
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 384
    .line 385
    goto :goto_b

    .line 386
    :cond_13
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-nez v1, :cond_14

    .line 393
    .line 394
    return-void

    .line 395
    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    .line 396
    .line 397
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 400
    .line 401
    .line 402
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 405
    .line 406
    .line 407
    const/4 v6, 0x0

    .line 408
    :goto_d
    if-ge v6, v1, :cond_16

    .line 409
    .line 410
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 415
    .line 416
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 417
    .line 418
    if-eqz v4, :cond_15

    .line 419
    .line 420
    const-string v4, "finish-"

    .line 421
    .line 422
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 427
    .line 428
    .line 429
    :cond_15
    add-int/lit8 v6, v6, 0x1

    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_16
    return-void
.end method

.method public final realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    .locals 46

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v4, "2nd-crash"

    .line 8
    .line 9
    const-string v5, "Second failure launching "

    .line 10
    .line 11
    const-string v0, "Starting new heavy weight process "

    .line 12
    .line 13
    const-string v6, "User ID for activity changing for "

    .line 14
    .line 15
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 16
    .line 17
    invoke-virtual {v7}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    const/4 v10, 0x0

    .line 25
    if-nez v7, :cond_1

    .line 26
    .line 27
    aget-boolean v0, v8, v9

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 36
    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-wide v2, 0x38d3d6530fd93b5bL    # 5.96954171505427E-35

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return v10

    .line 52
    :cond_1
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-nez v11, :cond_6

    .line 59
    .line 60
    :cond_2
    iget-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 61
    .line 62
    if-nez v11, :cond_4

    .line 63
    .line 64
    sget-boolean v11, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 65
    .line 66
    if-eqz v11, :cond_3

    .line 67
    .line 68
    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v11, 0x0

    .line 72
    :goto_0
    iput-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 73
    .line 74
    :cond_4
    iget-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 75
    .line 76
    if-eqz v11, :cond_6

    .line 77
    .line 78
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 79
    .line 80
    if-eqz v12, :cond_5

    .line 81
    .line 82
    const-string v11, "com.samsung.speg"

    .line 83
    .line 84
    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-nez v11, :cond_6

    .line 91
    .line 92
    iget-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 93
    .line 94
    iget v12, v3, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 95
    .line 96
    invoke-virtual {v11, v12}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    iget v12, v3, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 101
    .line 102
    invoke-virtual {v11, v12}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_1
    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 106
    .line 107
    if-eqz p3, :cond_8

    .line 108
    .line 109
    const-string/jumbo v12, "realStart"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11, v2, v12}, Lcom/android/server/wm/Task;->pauseActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-eqz v13, :cond_7

    .line 117
    .line 118
    return v10

    .line 119
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    if-eqz v13, :cond_8

    .line 124
    .line 125
    iget-object v14, v13, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 126
    .line 127
    if-eqz v14, :cond_8

    .line 128
    .line 129
    iget-boolean v14, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 130
    .line 131
    invoke-virtual {v13, v2, v12, v14, v10}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    if-eqz v12, :cond_8

    .line 136
    .line 137
    return v10

    .line 138
    :cond_8
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 143
    .line 144
    .line 145
    iget v13, v3, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 146
    .line 147
    add-int/2addr v13, v9

    .line 148
    iput v13, v3, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 149
    .line 150
    :try_start_0
    sget-boolean v13, Landroid/os/Build;->IS_USER:Z

    .line 151
    .line 152
    const-wide/16 v14, 0x0

    .line 153
    .line 154
    if-eqz v13, :cond_9

    .line 155
    .line 156
    move-object v13, v8

    .line 157
    goto :goto_2

    .line 158
    :cond_9
    move-object v13, v8

    .line 159
    iget-wide v7, v2, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 160
    .line 161
    cmp-long v7, v7, v14

    .line 162
    .line 163
    if-nez v7, :cond_a

    .line 164
    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v7

    .line 169
    iput-wide v7, v2, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTicking()Z

    .line 172
    .line 173
    .line 174
    :cond_a
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 175
    .line 176
    .line 177
    move-result-wide v7

    .line 178
    iput-wide v7, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 179
    .line 180
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 181
    .line 182
    .line 183
    if-eqz p3, :cond_b

    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-nez v7, :cond_b

    .line 190
    .line 191
    move v7, v10

    .line 192
    goto :goto_3

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    move-object v4, v1

    .line 195
    move-object v7, v3

    .line 196
    goto/16 :goto_1a

    .line 197
    .line 198
    :cond_b
    move/from16 v7, p3

    .line 199
    .line 200
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    .line 201
    .line 202
    .line 203
    if-eqz p4, :cond_c

    .line 204
    .line 205
    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 206
    .line 207
    iget-object v10, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 208
    .line 209
    invoke-virtual {v8, v2, v10, v9}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    .line 210
    .line 211
    .line 212
    :cond_c
    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 213
    .line 214
    invoke-virtual {v8, v2}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    if-eqz v8, :cond_e

    .line 219
    .line 220
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 221
    .line 222
    if-eqz v8, :cond_d

    .line 223
    .line 224
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-nez v8, :cond_e

    .line 229
    .line 230
    :cond_d
    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 231
    .line 232
    .line 233
    :cond_e
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 234
    .line 235
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 236
    .line 237
    if-eqz v8, :cond_f

    .line 238
    .line 239
    iget v10, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_f
    const/4 v10, -0x1

    .line 243
    :goto_4
    iget v9, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 244
    .line 245
    iget v14, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .line 247
    const-string v15, "ActivityTaskManager"

    .line 248
    .line 249
    if-ne v9, v14, :cond_10

    .line 250
    .line 251
    :try_start_1
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 252
    .line 253
    if-eq v8, v10, :cond_11

    .line 254
    .line 255
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v6, " appInfo.uid="

    .line 264
    .line 265
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 269
    .line 270
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 271
    .line 272
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 273
    .line 274
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v6, " info.ai.uid="

    .line 278
    .line 279
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v6, " old="

    .line 286
    .line 287
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 291
    .line 292
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v6, " new="

    .line 296
    .line 297
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-static {v15, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    :cond_11
    iget-wide v8, v3, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    .line 311
    .line 312
    const-wide/16 v16, 0x0

    .line 313
    .line 314
    cmp-long v6, v8, v16

    .line 315
    .line 316
    if-lez v6, :cond_12

    .line 317
    .line 318
    const/4 v6, 0x1

    .line 319
    goto :goto_5

    .line 320
    :cond_12
    const/4 v6, 0x0

    .line 321
    :goto_5
    if-eqz v6, :cond_13

    .line 322
    .line 323
    const/16 v34, 0x0

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_13
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 327
    .line 328
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 329
    .line 330
    move-object/from16 v34, v6

    .line 331
    .line 332
    :goto_6
    iget v6, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 333
    .line 334
    const/4 v8, 0x1

    .line 335
    add-int/2addr v6, v8

    .line 336
    iput v6, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 337
    .line 338
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 339
    .line 340
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 341
    .line 342
    iget v8, v11, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 343
    .line 344
    const/4 v9, 0x2

    .line 345
    if-eq v8, v9, :cond_14

    .line 346
    .line 347
    const/4 v10, 0x4

    .line 348
    if-eq v8, v10, :cond_14

    .line 349
    .line 350
    const/4 v10, 0x3

    .line 351
    if-ne v8, v10, :cond_15

    .line 352
    .line 353
    iget v8, v6, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 354
    .line 355
    const/4 v10, 0x1

    .line 356
    if-ne v8, v10, :cond_15

    .line 357
    .line 358
    :cond_14
    const/4 v8, 0x0

    .line 359
    invoke-virtual {v6, v8, v11, v8}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(ILcom/android/server/wm/Task;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .line 361
    .line 362
    :cond_15
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    if-eqz v6, :cond_36

    .line 367
    .line 368
    if-eqz v7, :cond_16

    .line 369
    .line 370
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 371
    .line 372
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 373
    .line 374
    move-object/from16 v28, v6

    .line 375
    .line 376
    move-object/from16 v29, v8

    .line 377
    .line 378
    goto :goto_8

    .line 379
    :catch_0
    move-exception v0

    .line 380
    move-object v7, v3

    .line 381
    move-object/from16 v40, v4

    .line 382
    .line 383
    move-object/from16 v41, v5

    .line 384
    .line 385
    move-object v4, v1

    .line 386
    :goto_7
    move-object v1, v15

    .line 387
    goto/16 :goto_19

    .line 388
    .line 389
    :cond_16
    const/16 v28, 0x0

    .line 390
    .line 391
    const/16 v29, 0x0

    .line 392
    .line 393
    :goto_8
    iget v6, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 394
    .line 395
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 396
    .line 397
    .line 398
    move-result v8

    .line 399
    iget v10, v11, Lcom/android/server/wm/Task;->mTaskId:I

    .line 400
    .line 401
    iget-object v14, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 402
    .line 403
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v10

    .line 415
    filled-new-array {v6, v8, v10, v14}, [Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    const/16 v8, 0x7536

    .line 420
    .line 421
    invoke-static {v8, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 422
    .line 423
    .line 424
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateHomeProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 425
    .line 426
    .line 427
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 428
    .line 429
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 434
    .line 435
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 444
    .line 445
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 446
    .line 447
    const/4 v10, 0x0

    .line 448
    invoke-static {v6, v8, v10}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 449
    .line 450
    .line 451
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 452
    .line 453
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 454
    .line 455
    invoke-virtual {v6, v2}, Lcom/android/server/wm/AppWarnings;->onStartActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 456
    .line 457
    .line 458
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    if-eqz v6, :cond_17

    .line 463
    .line 464
    invoke-static {v6}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    if-eqz v6, :cond_17

    .line 469
    .line 470
    iget-object v8, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 471
    .line 472
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 473
    .line 474
    iget v10, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 475
    .line 476
    invoke-interface {v6, v8, v10}, Lcom/samsung/android/game/IGameManagerService;->notifyAppCreated(Ljava/lang/String;I)V

    .line 477
    .line 478
    .line 479
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    iget-boolean v8, v3, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 484
    .line 485
    if-eqz v8, :cond_18

    .line 486
    .line 487
    const/4 v8, 0x0

    .line 488
    iput-boolean v8, v3, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 489
    .line 490
    iget-object v8, v3, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 491
    .line 492
    iget v10, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 493
    .line 494
    const/4 v14, 0x1

    .line 495
    add-int/2addr v10, v14

    .line 496
    iput v10, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 497
    .line 498
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    .line 499
    .line 500
    .line 501
    move-result v10

    .line 502
    iput v10, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 503
    .line 504
    iput v10, v6, Landroid/content/res/Configuration;->seq:I

    .line 505
    .line 506
    :cond_18
    const/4 v8, 0x0

    .line 507
    iput-boolean v8, v3, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    .line 508
    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 510
    .line 511
    .line 512
    move-result-object v8

    .line 513
    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 514
    .line 515
    invoke-virtual {v10, v6, v8}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    .line 519
    .line 520
    .line 521
    move-result-object v10

    .line 522
    invoke-static {}, Lcom/android/window/flags/Flags;->activityWindowInfoFlag()Z

    .line 523
    .line 524
    .line 525
    move-result v14

    .line 526
    if-eqz v14, :cond_19

    .line 527
    .line 528
    iget-object v14, v2, Lcom/android/server/wm/ActivityRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 529
    .line 530
    invoke-virtual {v14, v10}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 531
    .line 532
    .line 533
    :cond_19
    iget-object v14, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 534
    .line 535
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    .line 536
    .line 537
    invoke-static {v14, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    if-eqz v9, :cond_1a

    .line 545
    .line 546
    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 547
    .line 548
    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 549
    .line 550
    invoke-virtual {v14, v9}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V

    .line 551
    .line 552
    .line 553
    :cond_1a
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 554
    .line 555
    if-eqz v9, :cond_1b

    .line 556
    .line 557
    iget-boolean v9, v9, Lcom/android/server/wm/StartingData;->mIsTransitionForward:Z

    .line 558
    .line 559
    if-nez v9, :cond_1c

    .line 560
    .line 561
    :cond_1b
    iget-object v9, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 562
    .line 563
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    .line 564
    .line 565
    .line 566
    move-result v9

    .line 567
    if-eqz v9, :cond_1d

    .line 568
    .line 569
    :cond_1c
    const/4 v9, 0x1

    .line 570
    goto :goto_9

    .line 571
    :cond_1d
    const/4 v9, 0x0

    .line 572
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 573
    .line 574
    .line 575
    move-result-object v14

    .line 576
    iget-object v14, v14, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    .line 578
    move-object/from16 v40, v4

    .line 579
    .line 580
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 581
    .line 582
    .line 583
    move-result v4

    .line 584
    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->getDeviceIdForDisplayId(I)I

    .line 585
    .line 586
    .line 587
    move-result v22

    .line 588
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 589
    .line 590
    move-object/from16 v41, v5

    .line 591
    .line 592
    :try_start_4
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 593
    .line 594
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 595
    .line 596
    .line 597
    move-result v18

    .line 598
    move-object/from16 v42, v12

    .line 599
    .line 600
    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 601
    .line 602
    move-object/from16 v43, v13

    .line 603
    .line 604
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual {v2, v13}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v23

    .line 610
    iget-object v11, v11, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 611
    .line 612
    iget v13, v3, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 613
    .line 614
    move-object/from16 p4, v15

    .line 615
    .line 616
    :try_start_5
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    .line 617
    .line 618
    move-object/from16 v44, v0

    .line 619
    .line 620
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 621
    .line 622
    :try_start_6
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 623
    .line 624
    if-nez v3, :cond_1e

    .line 625
    .line 626
    const/4 v1, 0x0

    .line 627
    const/16 v30, 0x0

    .line 628
    .line 629
    goto :goto_a

    .line 630
    :cond_1e
    const/4 v1, 0x0

    .line 631
    :try_start_7
    iput-object v1, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 632
    .line 633
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    move-object/from16 v30, v3

    .line 638
    .line 639
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;

    .line 640
    .line 641
    .line 642
    move-result-object v32

    .line 643
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 644
    .line 645
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 646
    .line 647
    move/from16 v45, v7

    .line 648
    .line 649
    iget-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    .line 650
    .line 651
    move-object/from16 v39, v10

    .line 652
    .line 653
    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 654
    .line 655
    move-object/from16 v16, v4

    .line 656
    .line 657
    move-object/from16 v17, v5

    .line 658
    .line 659
    move-object/from16 v19, v12

    .line 660
    .line 661
    move-object/from16 v20, v6

    .line 662
    .line 663
    move-object/from16 v21, v8

    .line 664
    .line 665
    move-object/from16 v24, v11

    .line 666
    .line 667
    move/from16 v25, v13

    .line 668
    .line 669
    move-object/from16 v26, v15

    .line 670
    .line 671
    move-object/from16 v27, v0

    .line 672
    .line 673
    move/from16 v31, v9

    .line 674
    .line 675
    move-object/from16 v33, v3

    .line 676
    .line 677
    move-object/from16 v35, v1

    .line 678
    .line 679
    move/from16 v36, v7

    .line 680
    .line 681
    move-object/from16 v37, v14

    .line 682
    .line 683
    move-object/from16 v38, v10

    .line 684
    .line 685
    invoke-static/range {v16 .. v39}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)Landroid/app/servertransaction/LaunchActivityItem;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    if-eqz v45, :cond_1f

    .line 690
    .line 691
    iget-object v1, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 692
    .line 693
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->shouldSendCompatFakeFocus()Z

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    invoke-static {v1, v9, v3}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Landroid/os/IBinder;ZZ)Landroid/app/servertransaction/ResumeActivityItem;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    goto :goto_e

    .line 702
    :catchall_1
    move-exception v0

    .line 703
    move-object/from16 v4, p0

    .line 704
    .line 705
    :goto_b
    move-object/from16 v7, p2

    .line 706
    .line 707
    goto/16 :goto_1a

    .line 708
    .line 709
    :catch_1
    move-exception v0

    .line 710
    move-object/from16 v4, p0

    .line 711
    .line 712
    :goto_c
    move-object/from16 v7, p2

    .line 713
    .line 714
    :goto_d
    move-object/from16 v1, p4

    .line 715
    .line 716
    goto/16 :goto_19

    .line 717
    .line 718
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 719
    .line 720
    .line 721
    move-result v1

    .line 722
    if-eqz v1, :cond_20

    .line 723
    .line 724
    iget-object v1, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 725
    .line 726
    invoke-static {v1}, Landroid/app/servertransaction/PauseActivityItem;->obtain(Landroid/os/IBinder;)Landroid/app/servertransaction/PauseActivityItem;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    goto :goto_e

    .line 731
    :cond_20
    iget-object v1, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 732
    .line 733
    invoke-static {v1}, Landroid/app/servertransaction/StopActivityItem;->obtain(Landroid/os/IBinder;)Landroid/app/servertransaction/StopActivityItem;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    :goto_e
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 738
    .line 739
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 740
    .line 741
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 742
    .line 743
    .line 744
    move-result v4

    .line 745
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    const-wide/32 v7, 0x1352f516

    .line 750
    .line 751
    .line 752
    invoke-static {v7, v8, v3, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 753
    .line 754
    .line 755
    move-result v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 756
    const/4 v4, 0x1

    .line 757
    xor-int/2addr v3, v4

    .line 758
    if-eqz v3, :cond_21

    .line 759
    .line 760
    const/4 v3, 0x0

    .line 761
    move-object/from16 v4, p0

    .line 762
    .line 763
    :try_start_8
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 764
    .line 765
    :try_start_9
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 766
    .line 767
    move-object/from16 v7, p2

    .line 768
    .line 769
    :try_start_a
    iget-object v8, v7, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 770
    .line 771
    invoke-virtual {v5, v8}, Lcom/android/server/wm/ClientLifecycleManager;->dispatchPendingTransaction(Landroid/app/IApplicationThread;)V

    .line 772
    .line 773
    .line 774
    goto :goto_f

    .line 775
    :catchall_2
    move-exception v0

    .line 776
    goto/16 :goto_1a

    .line 777
    .line 778
    :catch_2
    move-exception v0

    .line 779
    goto :goto_d

    .line 780
    :catch_3
    move-exception v0

    .line 781
    goto :goto_c

    .line 782
    :catchall_3
    move-exception v0

    .line 783
    goto :goto_b

    .line 784
    :catch_4
    move-exception v0

    .line 785
    goto :goto_c

    .line 786
    :cond_21
    move-object/from16 v4, p0

    .line 787
    .line 788
    move-object/from16 v7, p2

    .line 789
    .line 790
    const/4 v3, 0x0

    .line 791
    :goto_f
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 792
    .line 793
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 794
    .line 795
    iget-object v8, v7, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 796
    .line 797
    const/4 v9, 0x1

    .line 798
    invoke-virtual {v5, v8, v0, v1, v9}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionAndLifecycleItems(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;Landroid/app/servertransaction/ActivityLifecycleItem;Z)V

    .line 799
    .line 800
    .line 801
    iget v0, v6, Landroid/content/res/Configuration;->seq:I

    .line 802
    .line 803
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 804
    .line 805
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    iget v1, v1, Landroid/content/res/Configuration;->seq:I

    .line 810
    .line 811
    if-le v0, v1, :cond_22

    .line 812
    .line 813
    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    .line 814
    .line 815
    .line 816
    :cond_22
    iget-object v0, v7, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 817
    .line 818
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 819
    .line 820
    const/4 v5, 0x2

    .line 821
    and-int/2addr v1, v5

    .line 822
    if-eqz v1, :cond_24

    .line 823
    .line 824
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 825
    .line 826
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    .line 827
    .line 828
    if-eqz v1, :cond_24

    .line 829
    .line 830
    iget-object v1, v7, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 831
    .line 832
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 833
    .line 834
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    if-eqz v0, :cond_24

    .line 839
    .line 840
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 841
    .line 842
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 843
    .line 844
    if-eqz v0, :cond_23

    .line 845
    .line 846
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 847
    .line 848
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 849
    .line 850
    if-eq v0, v7, :cond_23

    .line 851
    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    .line 853
    .line 854
    move-object/from16 v1, v44

    .line 855
    .line 856
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    const-string v1, " when already running "

    .line 863
    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 868
    .line 869
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 870
    .line 871
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 878
    move-object/from16 v1, p4

    .line 879
    .line 880
    :try_start_b
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    .line 882
    .line 883
    goto :goto_10

    .line 884
    :catch_5
    move-exception v0

    .line 885
    goto/16 :goto_19

    .line 886
    .line 887
    :cond_23
    move-object/from16 v1, p4

    .line 888
    .line 889
    :goto_10
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 890
    .line 891
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 892
    .line 893
    .line 894
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 895
    .line 896
    .line 897
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 898
    .line 899
    .line 900
    const/4 v1, 0x0

    .line 901
    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 902
    .line 903
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V

    .line 904
    .line 905
    .line 906
    const-string/jumbo v0, "realStartActivityLocked"

    .line 907
    .line 908
    .line 909
    if-eqz v45, :cond_25

    .line 910
    .line 911
    iget v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 912
    .line 913
    if-nez v1, :cond_25

    .line 914
    .line 915
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 916
    .line 917
    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 918
    .line 919
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 920
    .line 921
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPackageList()Ljava/util/List;

    .line 922
    .line 923
    .line 924
    move-result-object v9

    .line 925
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 926
    .line 927
    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 928
    .line 929
    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 930
    .line 931
    const/4 v1, 0x0

    .line 932
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 933
    .line 934
    .line 935
    move-result v12

    .line 936
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 937
    .line 938
    iget v14, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 939
    .line 940
    invoke-virtual/range {v8 .. v14}, Landroid/app/ActivityManagerInternal;->onPackageResumedFG(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V

    .line 941
    .line 942
    .line 943
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 944
    .line 945
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 949
    .line 950
    .line 951
    goto :goto_12

    .line 952
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 953
    .line 954
    .line 955
    move-result v1

    .line 956
    if-eqz v1, :cond_27

    .line 957
    .line 958
    const/4 v1, 0x1

    .line 959
    aget-boolean v5, v43, v1

    .line 960
    .line 961
    if-eqz v5, :cond_26

    .line 962
    .line 963
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 968
    .line 969
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    move-result-object v13

    .line 973
    const-wide v9, 0xe834a71c5e731d2L    # 9.257711714113014E-239

    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    const/4 v11, 0x0

    .line 979
    const/4 v12, 0x0

    .line 980
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 981
    .line 982
    .line 983
    :cond_26
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 984
    .line 985
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 989
    .line 990
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 991
    .line 992
    .line 993
    move-result v1

    .line 994
    const/4 v5, 0x1

    .line 995
    sub-int/2addr v1, v5

    .line 996
    :goto_11
    if-ltz v1, :cond_28

    .line 997
    .line 998
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 999
    .line 1000
    .line 1001
    move-result-object v5

    .line 1002
    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 1003
    .line 1004
    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1005
    .line 1006
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1007
    .line 1008
    .line 1009
    add-int/lit8 v1, v1, -0x1

    .line 1010
    .line 1011
    goto :goto_11

    .line 1012
    :cond_27
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 1013
    .line 1014
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1015
    .line 1016
    .line 1017
    :cond_28
    :goto_12
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1018
    .line 1019
    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 1020
    .line 1021
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1022
    .line 1023
    iget v5, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1024
    .line 1025
    const/4 v6, 0x1

    .line 1026
    and-int/2addr v5, v6

    .line 1027
    if-eqz v5, :cond_2a

    .line 1028
    .line 1029
    const-string v5, "android"

    .line 1030
    .line 1031
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1032
    .line 1033
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v5

    .line 1037
    if-nez v5, :cond_29

    .line 1038
    .line 1039
    goto :goto_14

    .line 1040
    :cond_29
    move-object v12, v3

    .line 1041
    :goto_13
    const/4 v5, 0x2

    .line 1042
    goto :goto_15

    .line 1043
    :cond_2a
    :goto_14
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1044
    .line 1045
    move-object v12, v5

    .line 1046
    goto :goto_13

    .line 1047
    :goto_15
    if-ne v0, v5, :cond_2b

    .line 1048
    .line 1049
    iget-object v5, v7, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1050
    .line 1051
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1052
    .line 1053
    iget v6, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 1054
    .line 1055
    iget v8, v7, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 1056
    .line 1057
    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 1058
    .line 1059
    invoke-virtual {v5, v6, v8, v9}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(IILandroid/app/IApplicationThread;)V

    .line 1060
    .line 1061
    .line 1062
    :cond_2b
    iget-object v5, v7, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 1063
    .line 1064
    const/4 v6, 0x1

    .line 1065
    iput-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    .line 1066
    .line 1067
    iget-object v5, v7, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1068
    .line 1069
    iget-object v6, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1070
    .line 1071
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 1072
    .line 1073
    .line 1074
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1075
    .line 1076
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    .line 1077
    .line 1078
    .line 1079
    new-instance v8, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda10;

    .line 1080
    .line 1081
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 1082
    .line 1083
    .line 1084
    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 1085
    .line 1086
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v10

    .line 1090
    iget-object v0, v7, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1091
    .line 1092
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 1093
    .line 1094
    if-eqz v5, :cond_2d

    .line 1095
    .line 1096
    iget-object v6, v7, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 1097
    .line 1098
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v5

    .line 1102
    if-eqz v5, :cond_2d

    .line 1103
    .line 1104
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 1105
    .line 1106
    if-eqz v0, :cond_2c

    .line 1107
    .line 1108
    if-ne v0, v7, :cond_2d

    .line 1109
    .line 1110
    :cond_2c
    const/4 v0, 0x1

    .line 1111
    goto :goto_16

    .line 1112
    :cond_2d
    const/4 v0, 0x0

    .line 1113
    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v11

    .line 1117
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1118
    .line 1119
    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 1120
    .line 1121
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v13

    .line 1125
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    iget-object v1, v7, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1130
    .line 1131
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1132
    .line 1133
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1134
    .line 1135
    .line 1136
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 1137
    .line 1138
    if-eqz v0, :cond_2f

    .line 1139
    .line 1140
    if-nez v0, :cond_2e

    .line 1141
    .line 1142
    goto :goto_17

    .line 1143
    :cond_2e
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1144
    .line 1145
    iget v1, v7, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 1146
    .line 1147
    iget-object v5, v7, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 1148
    .line 1149
    iget-object v0, v0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 1150
    .line 1151
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v0

    .line 1155
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result v0

    .line 1159
    if-eqz v0, :cond_2f

    .line 1160
    .line 1161
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;

    .line 1162
    .line 1163
    const/4 v1, 0x0

    .line 1164
    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1165
    .line 1166
    .line 1167
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1168
    .line 1169
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1170
    .line 1171
    iget v5, v7, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 1172
    .line 1173
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v5

    .line 1177
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v0

    .line 1181
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1182
    .line 1183
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1184
    .line 1185
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1186
    .line 1187
    .line 1188
    :cond_2f
    :goto_17
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1189
    .line 1190
    if-eqz v42, :cond_33

    .line 1191
    .line 1192
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v0

    .line 1196
    move-object/from16 v1, v42

    .line 1197
    .line 1198
    if-ne v1, v0, :cond_34

    .line 1199
    .line 1200
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1201
    .line 1202
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 1203
    .line 1204
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 1205
    .line 1206
    if-eqz v1, :cond_30

    .line 1207
    .line 1208
    goto/16 :goto_18

    .line 1209
    .line 1210
    :cond_30
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1211
    .line 1212
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1213
    .line 1214
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v4

    .line 1218
    iget v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 1219
    .line 1220
    const/4 v6, 0x1

    .line 1221
    if-eq v5, v6, :cond_34

    .line 1222
    .line 1223
    const-string v5, "device_provisioned"

    .line 1224
    .line 1225
    const/4 v7, 0x0

    .line 1226
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1227
    .line 1228
    .line 1229
    move-result v5

    .line 1230
    if-eqz v5, :cond_34

    .line 1231
    .line 1232
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 1233
    .line 1234
    new-instance v5, Landroid/content/Intent;

    .line 1235
    .line 1236
    const-string v6, "android.intent.action.UPGRADE_SETUP"

    .line 1237
    .line 1238
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1242
    .line 1243
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v1

    .line 1247
    const v6, 0x100480

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v1

    .line 1254
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 1255
    .line 1256
    .line 1257
    move-result v6

    .line 1258
    if-nez v6, :cond_34

    .line 1259
    .line 1260
    const/4 v6, 0x0

    .line 1261
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v1

    .line 1265
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1266
    .line 1267
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1268
    .line 1269
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1270
    .line 1271
    const-string v7, "android.SETUP_VERSION"

    .line 1272
    .line 1273
    if-eqz v6, :cond_31

    .line 1274
    .line 1275
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v3

    .line 1279
    :cond_31
    if-nez v3, :cond_32

    .line 1280
    .line 1281
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1282
    .line 1283
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1284
    .line 1285
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1286
    .line 1287
    if-eqz v6, :cond_32

    .line 1288
    .line 1289
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v3

    .line 1293
    :cond_32
    invoke-virtual {v4}, Landroid/content/ContentResolver;->getUserId()I

    .line 1294
    .line 1295
    .line 1296
    move-result v6

    .line 1297
    const-string v7, "last_setup_shown"

    .line 1298
    .line 1299
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v4

    .line 1303
    if-eqz v3, :cond_34

    .line 1304
    .line 1305
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v3

    .line 1309
    if-nez v3, :cond_34

    .line 1310
    .line 1311
    const/high16 v3, 0x10000000

    .line 1312
    .line 1313
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1314
    .line 1315
    .line 1316
    new-instance v3, Landroid/content/ComponentName;

    .line 1317
    .line 1318
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1319
    .line 1320
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1321
    .line 1322
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1323
    .line 1324
    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1328
    .line 1329
    .line 1330
    const-string/jumbo v3, "startSetupActivity"

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v0

    .line 1337
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1338
    .line 1339
    const/4 v4, 0x0

    .line 1340
    iput v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1341
    .line 1342
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1343
    .line 1344
    iput-object v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1345
    .line 1346
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 1347
    .line 1348
    .line 1349
    goto :goto_18

    .line 1350
    :cond_33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1351
    .line 1352
    .line 1353
    :cond_34
    :goto_18
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1354
    .line 1355
    if-eqz v0, :cond_35

    .line 1356
    .line 1357
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1358
    .line 1359
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1360
    .line 1361
    new-instance v2, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;

    .line 1362
    .line 1363
    const/4 v3, 0x0

    .line 1364
    invoke-direct {v2, v3}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 1365
    .line 1366
    .line 1367
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 1368
    .line 1369
    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v0

    .line 1373
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1374
    .line 1375
    .line 1376
    :cond_35
    const/4 v1, 0x1

    .line 1377
    return v1

    .line 1378
    :catchall_4
    move-exception v0

    .line 1379
    move-object/from16 v7, p2

    .line 1380
    .line 1381
    move-object v4, v1

    .line 1382
    goto/16 :goto_1a

    .line 1383
    .line 1384
    :catch_6
    move-exception v0

    .line 1385
    move-object/from16 v7, p2

    .line 1386
    .line 1387
    move-object v4, v1

    .line 1388
    goto/16 :goto_d

    .line 1389
    .line 1390
    :catch_7
    move-exception v0

    .line 1391
    move-object v4, v1

    .line 1392
    move-object v7, v3

    .line 1393
    goto/16 :goto_d

    .line 1394
    .line 1395
    :catch_8
    move-exception v0

    .line 1396
    move-object v4, v1

    .line 1397
    move-object v7, v3

    .line 1398
    goto/16 :goto_7

    .line 1399
    .line 1400
    :catch_9
    move-exception v0

    .line 1401
    move-object v4, v1

    .line 1402
    move-object v7, v3

    .line 1403
    move-object/from16 v41, v5

    .line 1404
    .line 1405
    goto/16 :goto_7

    .line 1406
    .line 1407
    :cond_36
    move-object v7, v3

    .line 1408
    move-object/from16 v40, v4

    .line 1409
    .line 1410
    move-object/from16 v41, v5

    .line 1411
    .line 1412
    move-object v4, v1

    .line 1413
    move-object v1, v15

    .line 1414
    :try_start_c
    new-instance v0, Landroid/os/RemoteException;

    .line 1415
    .line 1416
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 1417
    .line 1418
    .line 1419
    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1420
    :goto_19
    :try_start_d
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1421
    .line 1422
    if-eqz v3, :cond_37

    .line 1423
    .line 1424
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1425
    .line 1426
    move-object/from16 v5, v41

    .line 1427
    .line 1428
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1429
    .line 1430
    .line 1431
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1432
    .line 1433
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v5

    .line 1437
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v5

    .line 1441
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    .line 1443
    .line 1444
    const-string v5, ", giving up"

    .line 1445
    .line 1446
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v3

    .line 1453
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1454
    .line 1455
    .line 1456
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;

    .line 1457
    .line 1458
    const/4 v1, 0x2

    .line 1459
    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1460
    .line 1461
    .line 1462
    iget-object v1, v7, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 1463
    .line 1464
    move-object/from16 v3, v40

    .line 1465
    .line 1466
    invoke-static {v0, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v0

    .line 1470
    iget-object v1, v7, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1471
    .line 1472
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1473
    .line 1474
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1475
    .line 1476
    .line 1477
    const/4 v1, 0x0

    .line 1478
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 1485
    .line 1486
    .line 1487
    return v1

    .line 1488
    :cond_37
    const/4 v1, 0x1

    .line 1489
    :try_start_e
    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1490
    .line 1491
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 1492
    .line 1493
    .line 1494
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1495
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1496
    .line 1497
    .line 1498
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 1499
    .line 1500
    .line 1501
    throw v0
.end method

.method public final removeRootTask(Lcom/android/server/wm/Task;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v3, v4, p1, v1}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0, p1, v4}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0, v4, v2, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 52
    .line 53
    .line 54
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, 0x5

    .line 64
    if-eq v5, v6, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    .line 77
    .line 78
    .line 79
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 80
    .line 81
    invoke-virtual {p1, v2, v4}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_2
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;

    .line 103
    .line 104
    const/4 v1, 0x2

    .line 105
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 109
    .line 110
    .line 111
    :goto_3
    return-void
.end method

.method public final removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    iget-boolean v3, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 11
    .line 12
    invoke-virtual {v3, p1}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    .line 20
    .line 21
    .line 22
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 23
    .line 24
    iget-boolean v5, v5, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 25
    .line 26
    if-nez v5, :cond_2

    .line 27
    .line 28
    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 50
    if-eqz p2, :cond_6

    .line 51
    .line 52
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    sub-int/2addr v5, v4

    .line 59
    move-object v6, v3

    .line 60
    :goto_1
    if-ltz v5, :cond_5

    .line 61
    .line 62
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 71
    .line 72
    if-nez v8, :cond_4

    .line 73
    .line 74
    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_4

    .line 81
    .line 82
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 83
    .line 84
    if-ne v8, v1, :cond_4

    .line 85
    .line 86
    if-nez v6, :cond_3

    .line 87
    .line 88
    new-instance v6, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    if-eqz v6, :cond_6

    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    sub-int/2addr v5, v4

    .line 111
    :goto_2
    if-ltz v5, :cond_6

    .line 112
    .line 113
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 118
    .line 119
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->stopIfPossible()V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v5, v5, -0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    iput-boolean v4, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 126
    .line 127
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    .line 128
    .line 129
    if-eqz v5, :cond_7

    .line 130
    .line 131
    move/from16 v5, p5

    .line 132
    .line 133
    iput-boolean v5, v1, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    .line 134
    .line 135
    :cond_7
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    if-eqz p2, :cond_b

    .line 139
    .line 140
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    if-nez p8, :cond_a

    .line 144
    .line 145
    invoke-virtual {p1, v4, v6}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    if-eqz v7, :cond_8

    .line 154
    .line 155
    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 156
    .line 157
    :goto_3
    move-object v8, v7

    .line 158
    goto :goto_4

    .line 159
    :cond_8
    if-eqz v8, :cond_9

    .line 160
    .line 161
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    if-eqz v7, :cond_9

    .line 166
    .line 167
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    goto :goto_3

    .line 176
    :cond_9
    move-object v8, v3

    .line 177
    :goto_4
    if-eqz v8, :cond_a

    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    if-nez v7, :cond_a

    .line 184
    .line 185
    iget v9, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 186
    .line 187
    const/4 v11, 0x0

    .line 188
    const/4 v12, 0x0

    .line 189
    const/4 v13, 0x1

    .line 190
    const/4 v10, 0x0

    .line 191
    invoke-static/range {v8 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 192
    .line 193
    .line 194
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    goto :goto_5

    .line 196
    :cond_a
    move v7, v6

    .line 197
    :goto_5
    if-eqz v7, :cond_f

    .line 198
    .line 199
    iput-boolean v6, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 200
    .line 201
    return-void

    .line 202
    :cond_b
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    if-nez p8, :cond_e

    .line 206
    .line 207
    invoke-virtual {p1, v4, v6}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    if-eqz v7, :cond_c

    .line 216
    .line 217
    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 218
    .line 219
    :goto_6
    move-object v8, v7

    .line 220
    goto :goto_7

    .line 221
    :cond_c
    if-eqz v8, :cond_d

    .line 222
    .line 223
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    if-eqz v7, :cond_d

    .line 228
    .line 229
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    goto :goto_6

    .line 238
    :cond_d
    move-object v8, v3

    .line 239
    :goto_7
    if-eqz v8, :cond_e

    .line 240
    .line 241
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-nez v7, :cond_e

    .line 246
    .line 247
    iget v9, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 248
    .line 249
    const/4 v11, 0x0

    .line 250
    const/4 v12, 0x0

    .line 251
    const/4 v13, 0x0

    .line 252
    const/4 v10, 0x0

    .line 253
    invoke-static/range {v8 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 254
    .line 255
    .line 256
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    goto :goto_8

    .line 258
    :cond_e
    move v7, v6

    .line 259
    :goto_8
    if-eqz v7, :cond_f

    .line 260
    .line 261
    iput-boolean v6, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 262
    .line 263
    return-void

    .line 264
    :cond_f
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-nez v7, :cond_10

    .line 269
    .line 270
    invoke-virtual {p1, v4, v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    if-eqz v7, :cond_10

    .line 275
    .line 276
    iget v8, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 277
    .line 278
    iget v9, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 279
    .line 280
    if-eq v8, v9, :cond_10

    .line 281
    .line 282
    if-nez p3, :cond_10

    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    if-nez v8, :cond_10

    .line 289
    .line 290
    const-string v8, "com.android.systemui.keyguard.WorkLockActivity"

    .line 291
    .line 292
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 293
    .line 294
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    if-eqz v8, :cond_10

    .line 303
    .line 304
    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, p1, v3}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    .line 309
    .line 310
    iput-boolean v6, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 311
    .line 312
    return-void

    .line 313
    :catchall_0
    move-exception v0

    .line 314
    goto :goto_9

    .line 315
    :cond_10
    :try_start_3
    invoke-virtual {p1, v2, v6}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V

    .line 316
    .line 317
    .line 318
    iput-object v2, v1, Lcom/android/server/wm/Task;->mReason:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->cleanUpRemovedTask(Lcom/android/server/wm/Task;ZZ)V

    .line 321
    .line 322
    .line 323
    iget-object v2, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 324
    .line 325
    invoke-virtual {v2, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 326
    .line 327
    .line 328
    iget-object v2, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 329
    .line 330
    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 331
    .line 332
    .line 333
    iget-boolean v2, v1, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 334
    .line 335
    if-eqz v2, :cond_11

    .line 336
    .line 337
    invoke-virtual {v5, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 338
    .line 339
    .line 340
    :cond_11
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 341
    .line 342
    move/from16 v2, p6

    .line 343
    .line 344
    move/from16 v3, p7

    .line 345
    .line 346
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkActivityAllowedToClearTask(Lcom/android/server/wm/Task;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    .line 348
    .line 349
    iput-boolean v6, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 350
    .line 351
    return-void

    .line 352
    :goto_9
    iput-boolean v6, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 353
    .line 354
    throw v0
.end method

.method public final removeTask$1(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V
    .locals 9

    .line 1
    const/16 v6, 0x3e8

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v7, -0x1

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move-object v4, p4

    .line 11
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final removeTaskById(IIILjava/lang/String;ZZZ)Z
    .locals 10

    .line 1
    move v0, p1

    .line 2
    move-object v1, p0

    .line 3
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    const/4 v9, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, p1, v9, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, v2

    .line 17
    move v2, p5

    .line 18
    move/from16 v3, p6

    .line 19
    .line 20
    move-object v4, p4

    .line 21
    move/from16 v5, p7

    .line 22
    .line 23
    move v6, p2

    .line 24
    move v7, p3

    .line 25
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V

    .line 26
    .line 27
    .line 28
    return v9

    .line 29
    :cond_0
    const-string v1, "Request to remove task ignored for non-existent task "

    .line 30
    .line 31
    const-string v2, "ActivityTaskManager"

    .line 32
    .line 33
    invoke-static {p1, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v4
.end method

.method public final reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

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
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ltz v0, :cond_3

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    .line 20
    .line 21
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 22
    .line 23
    iget-object v5, v5, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    iget-object v5, v5, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    if-ne p2, v5, :cond_0

    .line 30
    .line 31
    move v5, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v5, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    .line 36
    .line 37
    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    :goto_1
    if-nez v5, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget-object v3, v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 47
    .line 48
    iput-boolean p1, v3, Landroid/app/WaitResult;->timeout:Z

    .line 49
    .line 50
    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 51
    .line 52
    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 53
    .line 54
    iput-wide p3, v3, Landroid/app/WaitResult;->totalTime:J

    .line 55
    .line 56
    iput p5, v3, Landroid/app/WaitResult;->launchState:I

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move v3, v1

    .line 64
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    if-eqz v3, :cond_4

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void
.end method

.method public final resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    if-eqz p2, :cond_a

    .line 8
    .line 9
    new-instance v0, Landroid/content/ComponentName;

    .line 10
    .line 11
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v0, p3, 0xe

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v0, v1

    .line 32
    :goto_1
    if-eqz p4, :cond_2

    .line 33
    .line 34
    move v3, v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v3, v1

    .line 37
    :goto_2
    if-nez v0, :cond_3

    .line 38
    .line 39
    if-eqz v3, :cond_9

    .line 40
    .line 41
    :cond_3
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 42
    .line 43
    if-nez v4, :cond_4

    .line 44
    .line 45
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 46
    .line 47
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 48
    .line 49
    and-int/lit8 v4, v4, 0x2

    .line 50
    .line 51
    if-eqz v4, :cond_5

    .line 52
    .line 53
    :cond_4
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 54
    .line 55
    const-string/jumbo v5, "system"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_5

    .line 63
    .line 64
    move v1, v2

    .line 65
    :cond_5
    if-eqz v0, :cond_6

    .line 66
    .line 67
    if-eqz v1, :cond_7

    .line 68
    .line 69
    :cond_6
    if-eqz v3, :cond_8

    .line 70
    .line 71
    if-nez v1, :cond_8

    .line 72
    .line 73
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_8

    .line 80
    .line 81
    :cond_7
    const-string p0, "ActivityTaskManager"

    .line 82
    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string p4, "Ignore debugging for non-debuggable app: "

    .line 86
    .line 87
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p3, p4, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 99
    .line 100
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 101
    .line 102
    .line 103
    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 105
    .line 106
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 107
    .line 108
    new-instance v2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;

    .line 109
    .line 110
    invoke-direct {v2, p0, p2, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_5

    .line 126
    :catch_0
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 128
    .line 129
    .line 130
    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 135
    .line 136
    if-nez p1, :cond_a

    .line 137
    .line 138
    if-eqz p0, :cond_a

    .line 139
    .line 140
    iput-object p0, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_a
    :goto_6
    return-object p2
.end method

.method public final resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;
    .locals 19

    .line 1
    const-wide/16 v1, 0x20

    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v0, "resolveIntent"

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const v0, 0x10400

    .line 10
    .line 11
    .line 12
    or-int v0, p4, v0

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    and-int/lit16 v3, v3, 0x800

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    const v0, 0x810400

    .line 32
    .line 33
    .line 34
    or-int v0, p4, v0

    .line 35
    .line 36
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    and-int/lit16 v3, v3, 0x400

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v3, 0x0

    .line 53
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    and-int/lit16 v4, v4, 0x200

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    or-int/lit8 v3, v3, 0x2

    .line 62
    .line 63
    :cond_3
    or-int/lit16 v0, v0, 0x80

    .line 64
    .line 65
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    move-object/from16 v6, p0

    .line 70
    .line 71
    :try_start_1
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    int-to-long v11, v0

    .line 78
    int-to-long v13, v3

    .line 79
    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 80
    .line 81
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 82
    .line 83
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 84
    .line 85
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    const/16 v16, 0x1

    .line 92
    .line 93
    move-object/from16 v9, p1

    .line 94
    .line 95
    move-object/from16 v10, p2

    .line 96
    .line 97
    move/from16 v15, p3

    .line 98
    .line 99
    move/from16 v17, p5

    .line 100
    .line 101
    move/from16 v18, p6

    .line 102
    .line 103
    invoke-virtual/range {v7 .. v18}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 111
    .line 112
    .line 113
    return-object v0

    .line 114
    :catchall_1
    move-exception v0

    .line 115
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 120
    .line 121
    .line 122
    throw v0
.end method

.method public final restoreRecentTaskLocked(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eq p1, p0, :cond_2

    .line 12
    .line 13
    if-ne p2, p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const p1, 0x7fffffff

    .line 20
    .line 21
    .line 22
    const-string/jumbo p3, "restoreRecentTaskLocked"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1, p0, p3, v0}, Lcom/android/server/wm/Task;->reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public final scheduleIdle()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 2
    .line 3
    const/16 v0, 0xc9

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 33
    .line 34
    const/16 v3, 0xcd

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-array v4, v0, [Z

    .line 48
    .line 49
    aput-boolean v1, v4, v1

    .line 50
    .line 51
    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;

    .line 52
    .line 53
    invoke-direct {v5, v0, v4}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    aget-boolean v1, v4, v1

    .line 64
    .line 65
    :goto_0
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public final scheduleTopResumedActivityStateLossIfNeeded()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 20
    .line 21
    const/16 v2, 0xd9

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iput-wide v3, v0, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 34
    .line 35
    const-wide/16 v3, 0x1f4

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    aget-boolean v1, v1, v2

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 52
    .line 53
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const-wide v4, 0x32063a9f78c73718L    # 1.0306491014634798E-67

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method public final scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 38
    .line 39
    const/16 p1, 0xd7

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 6
    .line 7
    invoke-static {p4, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "From recent_option"

    .line 15
    .line 16
    const/4 p4, 0x1

    .line 17
    const/4 v0, 0x5

    .line 18
    if-ne p2, v0, :cond_1

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v1, p4, :cond_1

    .line 27
    .line 28
    const-string p1, "2090"

    .line 29
    .line 30
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    if-eqz p3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-nez p3, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 p4, 0x0

    .line 54
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-nez p3, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    :cond_3
    if-eqz p4, :cond_6

    .line 67
    .line 68
    :cond_4
    const-string p1, "2004"

    .line 69
    .line 70
    if-ne p2, v0, :cond_5

    .line 71
    .line 72
    const-string p0, "From recent_task"

    .line 73
    .line 74
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_6
    :goto_1
    return-void
.end method

.method public setRunningTasks(Lcom/android/server/wm/RunningTasks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    .line 2
    .line 3
    return-void
.end method

.method public final startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;Z)I
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v15, p2

    .line 4
    .line 5
    move/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v13, p4

    .line 8
    .line 9
    const-string/jumbo v8, "startActivityFromRecents: Task "

    .line 10
    .line 11
    .line 12
    const-string/jumbo v9, "startActivityFromRecents: Task "

    .line 13
    .line 14
    .line 15
    const/4 v14, 0x0

    .line 16
    if-eqz v13, :cond_0

    .line 17
    .line 18
    invoke-virtual {v13, v14, v14, v14, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    move-object v11, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    if-eqz p5, :cond_1

    .line 25
    .line 26
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v11, v14

    .line 32
    :goto_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object v10, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 35
    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 37
    .line 38
    .line 39
    monitor-enter v10

    .line 40
    :try_start_0
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 41
    .line 42
    iget v2, v2, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 43
    .line 44
    invoke-static {v15, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 57
    .line 58
    .line 59
    move-result v16

    .line 60
    if-eqz v11, :cond_2

    .line 61
    .line 62
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    move-object/from16 v17, v2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto/16 :goto_23

    .line 75
    .line 76
    :cond_2
    move-object/from16 v17, v14

    .line 77
    .line 78
    :goto_2
    const/4 v6, 0x1

    .line 79
    const/4 v5, 0x5

    .line 80
    const/4 v4, 0x0

    .line 81
    if-eqz v11, :cond_8

    .line 82
    .line 83
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    .line 84
    .line 85
    .line 86
    move-result v18

    .line 87
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    if-nez v12, :cond_3

    .line 94
    .line 95
    const-string v19, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 96
    .line 97
    const/16 v20, 0x1

    .line 98
    .line 99
    const/16 v21, 0x0

    .line 100
    .line 101
    const/16 v22, -0x1

    .line 102
    .line 103
    move/from16 v2, p1

    .line 104
    .line 105
    move/from16 v3, p2

    .line 106
    .line 107
    move-object/from16 v4, v19

    .line 108
    .line 109
    move v14, v5

    .line 110
    move/from16 v5, v21

    .line 111
    .line 112
    move/from16 v6, v22

    .line 113
    .line 114
    move-object/from16 v21, v7

    .line 115
    .line 116
    move/from16 v7, v20

    .line 117
    .line 118
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_5

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_3
    move v14, v5

    .line 126
    move-object/from16 v21, v7

    .line 127
    .line 128
    :goto_3
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 131
    .line 132
    .line 133
    if-eqz v12, :cond_5

    .line 134
    .line 135
    const/4 v6, 0x1

    .line 136
    goto :goto_4

    .line 137
    :cond_4
    move v14, v5

    .line 138
    move-object/from16 v21, v7

    .line 139
    .line 140
    :cond_5
    const/4 v6, 0x0

    .line 141
    :goto_4
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-ne v4, v14, :cond_6

    .line 146
    .line 147
    invoke-virtual {v11, v4}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 148
    .line 149
    .line 150
    :cond_6
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->setDisableSplashScreen()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    if-eqz v2, :cond_7

    .line 158
    .line 159
    move v2, v4

    .line 160
    move/from16 v4, v18

    .line 161
    .line 162
    const/4 v3, 0x0

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    move v2, v4

    .line 165
    move/from16 v4, v18

    .line 166
    .line 167
    const/4 v3, 0x1

    .line 168
    goto :goto_5

    .line 169
    :cond_8
    move v14, v5

    .line 170
    move-object/from16 v21, v7

    .line 171
    .line 172
    const/4 v2, 0x0

    .line 173
    const/4 v3, 0x1

    .line 174
    const/4 v4, 0x0

    .line 175
    const/4 v6, 0x0

    .line 176
    :goto_5
    const/4 v7, 0x2

    .line 177
    if-eq v4, v7, :cond_30

    .line 178
    .line 179
    const/4 v5, 0x3

    .line 180
    if-eq v4, v5, :cond_30

    .line 181
    .line 182
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    const/4 v7, 0x0

    .line 186
    const/4 v8, 0x1

    .line 187
    invoke-virtual {v4, v0, v8, v5, v7}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    if-eqz v6, :cond_9

    .line 192
    .line 193
    if-eqz v4, :cond_9

    .line 194
    .line 195
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_9

    .line 200
    .line 201
    move v3, v7

    .line 202
    :cond_9
    if-eqz v11, :cond_a

    .line 203
    .line 204
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchedFromDnD()Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_a

    .line 209
    .line 210
    move v3, v7

    .line 211
    :cond_a
    if-eqz v4, :cond_b

    .line 212
    .line 213
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 214
    .line 215
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 216
    .line 217
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    if-eqz v11, :cond_b

    .line 221
    .line 222
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 223
    .line 224
    .line 225
    :cond_b
    if-eqz v11, :cond_c

    .line 226
    .line 227
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchInFocusedStageRoot()Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_c

    .line 232
    .line 233
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_c

    .line 238
    .line 239
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootStageTask()Lcom/android/server/wm/Task;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    if-eqz v5, :cond_c

    .line 244
    .line 245
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 250
    .line 251
    invoke-virtual {v11, v3}, Landroid/app/ActivityOptions;->setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    .line 252
    .line 253
    .line 254
    move v3, v7

    .line 255
    :cond_c
    const/4 v5, -0x1

    .line 256
    if-eqz v4, :cond_10

    .line 257
    .line 258
    if-eqz v11, :cond_10

    .line 259
    .line 260
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-eq v6, v5, :cond_e

    .line 265
    .line 266
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-ne v5, v6, :cond_d

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_d
    move v6, v7

    .line 274
    goto :goto_7

    .line 275
    :cond_e
    :goto_6
    move v6, v8

    .line 276
    :goto_7
    if-nez v2, :cond_10

    .line 277
    .line 278
    if-eqz v6, :cond_10

    .line 279
    .line 280
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_f

    .line 285
    .line 286
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_f
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-ne v2, v14, :cond_10

    .line 299
    .line 300
    invoke-virtual {v4, v7}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    if-eqz v2, :cond_10

    .line 305
    .line 306
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 311
    .line 312
    .line 313
    :cond_10
    :goto_8
    sget-boolean v22, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 314
    .line 315
    if-eqz v22, :cond_12

    .line 316
    .line 317
    if-eqz v4, :cond_12

    .line 318
    .line 319
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-nez v2, :cond_11

    .line 324
    .line 325
    invoke-virtual {v4, v8, v7}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    if-eqz v2, :cond_12

    .line 330
    .line 331
    :cond_11
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    move v6, v2

    .line 336
    goto :goto_9

    .line 337
    :cond_12
    move v6, v7

    .line 338
    :goto_9
    if-eqz p5, :cond_13

    .line 339
    .line 340
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-nez v2, :cond_13

    .line 345
    .line 346
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_13

    .line 351
    .line 352
    invoke-virtual {v11, v8}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 360
    .line 361
    .line 362
    :cond_13
    if-eqz v4, :cond_16

    .line 363
    .line 364
    if-eqz v11, :cond_16

    .line 365
    .line 366
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->allowEnterPipWhileLaunching()Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-eqz v2, :cond_16

    .line 371
    .line 372
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-gtz v2, :cond_16

    .line 377
    .line 378
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    if-nez v2, :cond_16

    .line 383
    .line 384
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-nez v2, :cond_16

    .line 389
    .line 390
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-eqz v2, :cond_14

    .line 395
    .line 396
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-ne v2, v8, :cond_16

    .line 401
    .line 402
    :cond_14
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 403
    .line 404
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 405
    .line 406
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-static {v2}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    if-eqz v2, :cond_15

    .line 419
    .line 420
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 421
    .line 422
    if-eq v3, v4, :cond_15

    .line 423
    .line 424
    const/4 v3, 0x0

    .line 425
    invoke-static {v2, v4, v3, v11}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 426
    .line 427
    .line 428
    iget-object v2, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 429
    .line 430
    const/high16 v3, 0x40000

    .line 431
    .line 432
    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeFlags(I)V

    .line 433
    .line 434
    .line 435
    :cond_15
    move v4, v7

    .line 436
    goto :goto_a

    .line 437
    :cond_16
    move v4, v3

    .line 438
    :goto_a
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 439
    .line 440
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    .line 442
    .line 443
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 444
    .line 445
    const/4 v5, 0x2

    .line 446
    invoke-virtual {v2, v0, v5, v11, v8}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    if-eqz v3, :cond_2e

    .line 451
    .line 452
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 453
    .line 454
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 459
    .line 460
    .line 461
    if-nez v16, :cond_17

    .line 462
    .line 463
    if-eqz v17, :cond_17

    .line 464
    .line 465
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-eqz v0, :cond_17

    .line 470
    .line 471
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 472
    .line 473
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 474
    .line 475
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    xor-int/2addr v0, v8

    .line 482
    if-nez v0, :cond_17

    .line 483
    .line 484
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 485
    .line 486
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 487
    .line 488
    const-string/jumbo v2, "recents"

    .line 489
    .line 490
    .line 491
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 492
    .line 493
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 494
    .line 495
    .line 496
    move/from16 v23, v8

    .line 497
    .line 498
    goto :goto_d

    .line 499
    :goto_b
    move v4, v7

    .line 500
    goto/16 :goto_1f

    .line 501
    .line 502
    :goto_c
    move v4, v7

    .line 503
    goto/16 :goto_20

    .line 504
    .line 505
    :catchall_1
    move-exception v0

    .line 506
    goto :goto_b

    .line 507
    :catch_0
    move-exception v0

    .line 508
    goto :goto_c

    .line 509
    :cond_17
    move/from16 v23, v7

    .line 510
    .line 511
    :goto_d
    if-eqz p5, :cond_18

    .line 512
    .line 513
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_18

    .line 518
    .line 519
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-eqz v0, :cond_18

    .line 524
    .line 525
    move/from16 v24, v7

    .line 526
    .line 527
    goto :goto_e

    .line 528
    :catchall_2
    move-exception v0

    .line 529
    move/from16 v4, v23

    .line 530
    .line 531
    goto/16 :goto_1f

    .line 532
    .line 533
    :catch_1
    move-exception v0

    .line 534
    move/from16 v4, v23

    .line 535
    .line 536
    goto/16 :goto_20

    .line 537
    .line 538
    :cond_18
    move/from16 v24, v4

    .line 539
    .line 540
    :goto_e
    if-eqz v24, :cond_19

    .line 541
    .line 542
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 543
    .line 544
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 545
    .line 546
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    const-string/jumbo v2, "startActivityFromRecents"

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    if-eqz v0, :cond_19

    .line 561
    .line 562
    move-object/from16 v0, v21

    .line 563
    .line 564
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 565
    .line 566
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 571
    .line 572
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 573
    .line 574
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    .line 579
    .line 580
    .line 581
    :cond_19
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 582
    .line 583
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 584
    .line 585
    iget v2, v3, Lcom/android/server/wm/Task;->mUserId:I

    .line 586
    .line 587
    invoke-virtual {v0, v2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-nez v0, :cond_23

    .line 592
    .line 593
    invoke-virtual {v3, v8, v7}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    if-eqz v0, :cond_23

    .line 598
    .line 599
    invoke-virtual {v3, v8, v8}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 600
    .line 601
    .line 602
    move-result-object v9

    .line 603
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 604
    .line 605
    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 606
    .line 607
    .line 608
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 609
    .line 610
    iget-object v2, v3, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 611
    .line 612
    if-eqz v12, :cond_1a

    .line 613
    .line 614
    const/4 v4, -0x1

    .line 615
    :goto_f
    const/4 v12, 0x0

    .line 616
    goto :goto_10

    .line 617
    :cond_1a
    move v4, v15

    .line 618
    goto :goto_f

    .line 619
    :goto_10
    invoke-virtual {v0, v2, v12, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 620
    .line 621
    .line 622
    move-result-object v12
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 623
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    if-eqz v0, :cond_1c

    .line 628
    .line 629
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    if-eqz v0, :cond_1c

    .line 634
    .line 635
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    if-eqz v0, :cond_1b

    .line 640
    .line 641
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    if-nez v0, :cond_1b

    .line 646
    .line 647
    move v7, v8

    .line 648
    goto :goto_11

    .line 649
    :catchall_3
    move-exception v0

    .line 650
    goto/16 :goto_14

    .line 651
    .line 652
    :cond_1b
    :goto_11
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 653
    .line 654
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 655
    .line 656
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    invoke-static {v3, v7}, Lcom/android/server/wm/TaskOrganizerController;->resetStashedFreeform(Lcom/android/server/wm/Task;Z)V

    .line 660
    .line 661
    .line 662
    :cond_1c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    .line 663
    .line 664
    if-eqz v0, :cond_1d

    .line 665
    .line 666
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    if-eqz v0, :cond_1d

    .line 671
    .line 672
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    if-eqz v0, :cond_1d

    .line 677
    .line 678
    if-eqz v11, :cond_1d

    .line 679
    .line 680
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    if-eqz v0, :cond_1d

    .line 685
    .line 686
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    if-nez v0, :cond_1d

    .line 695
    .line 696
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v11, v14}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 704
    .line 705
    .line 706
    :cond_1d
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 707
    .line 708
    iget v0, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 709
    .line 710
    const/4 v4, 0x0

    .line 711
    const/4 v7, 0x0

    .line 712
    const/4 v14, 0x0

    .line 713
    move-object/from16 v25, v3

    .line 714
    .line 715
    move-object v3, v4

    .line 716
    move-object v4, v7

    .line 717
    move v7, v5

    .line 718
    move v5, v0

    .line 719
    move/from16 v26, v6

    .line 720
    .line 721
    move v6, v14

    .line 722
    move v0, v7

    .line 723
    move-object/from16 v7, p4

    .line 724
    .line 725
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    .line 726
    .line 727
    .line 728
    if-eqz v11, :cond_1e

    .line 729
    .line 730
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getAnimationType()I

    .line 731
    .line 732
    .line 733
    move-result v2

    .line 734
    const/16 v3, 0xd

    .line 735
    .line 736
    if-ne v2, v3, :cond_1e

    .line 737
    .line 738
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    iput-object v2, v9, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 743
    .line 744
    :cond_1e
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation$1()V

    .line 745
    .line 746
    .line 747
    if-eqz v11, :cond_1f

    .line 748
    .line 749
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    if-eqz v2, :cond_1f

    .line 754
    .line 755
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    iput-object v2, v9, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 760
    .line 761
    :cond_1f
    :try_start_4
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 762
    .line 763
    const/16 v18, 0x2

    .line 764
    .line 765
    const/16 v19, 0x0

    .line 766
    .line 767
    move-object/from16 v16, v2

    .line 768
    .line 769
    move-object/from16 v17, v12

    .line 770
    .line 771
    move-object/from16 v20, v9

    .line 772
    .line 773
    move-object/from16 v21, v11

    .line 774
    .line 775
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 776
    .line 777
    .line 778
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 779
    .line 780
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 781
    .line 782
    move-object/from16 v14, v25

    .line 783
    .line 784
    invoke-virtual {v14, v8, v8}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 789
    .line 790
    .line 791
    move-result-object v4

    .line 792
    iget-object v2, v2, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 793
    .line 794
    if-nez v2, :cond_20

    .line 795
    .line 796
    goto :goto_12

    .line 797
    :cond_20
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 798
    .line 799
    .line 800
    :goto_12
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 801
    .line 802
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 803
    .line 804
    .line 805
    if-eqz v22, :cond_21

    .line 806
    .line 807
    move/from16 v9, v26

    .line 808
    .line 809
    invoke-virtual {v1, v14, v9, v11, v15}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 810
    .line 811
    .line 812
    :cond_21
    if-eqz v23, :cond_22

    .line 813
    .line 814
    :try_start_5
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 815
    .line 816
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 817
    .line 818
    const-string/jumbo v3, "recents"

    .line 819
    .line 820
    .line 821
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 822
    .line 823
    .line 824
    goto :goto_13

    .line 825
    :catchall_4
    move-exception v0

    .line 826
    :try_start_6
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 827
    .line 828
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 829
    .line 830
    .line 831
    throw v0

    .line 832
    :cond_22
    :goto_13
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 833
    .line 834
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 835
    .line 836
    .line 837
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 838
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 839
    .line 840
    .line 841
    return v0

    .line 842
    :goto_14
    :try_start_7
    iget-object v15, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 843
    .line 844
    const/16 v17, 0x2

    .line 845
    .line 846
    const/16 v18, 0x0

    .line 847
    .line 848
    move-object/from16 v16, v12

    .line 849
    .line 850
    move-object/from16 v19, v9

    .line 851
    .line 852
    move-object/from16 v20, v11

    .line 853
    .line 854
    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 855
    .line 856
    .line 857
    throw v0
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 858
    :cond_23
    move-object v14, v3

    .line 859
    move v9, v6

    .line 860
    const/4 v12, 0x0

    .line 861
    :try_start_8
    iget v3, v14, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 862
    .line 863
    iget-object v6, v14, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 864
    .line 865
    iget-object v7, v14, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 866
    .line 867
    iget-object v8, v14, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 868
    .line 869
    const/high16 v0, 0x100000

    .line 870
    .line 871
    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 872
    .line 873
    .line 874
    iget v0, v14, Lcom/android/server/wm/Task;->mUserId:I

    .line 875
    .line 876
    const/16 v2, 0x1000

    .line 877
    .line 878
    invoke-virtual {v8, v2}, Landroid/content/Intent;->removeFlags(I)V

    .line 879
    .line 880
    .line 881
    iget-object v2, v14, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 882
    .line 883
    if-eqz v2, :cond_24

    .line 884
    .line 885
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    move-object/from16 v16, v2

    .line 890
    .line 891
    goto :goto_15

    .line 892
    :cond_24
    move-object/from16 v16, v12

    .line 893
    .line 894
    :goto_15
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 895
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 896
    .line 897
    .line 898
    :try_start_9
    sget-object v5, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    .line 899
    .line 900
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 901
    .line 902
    invoke-virtual {v5, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 903
    .line 904
    .line 905
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 906
    .line 907
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 908
    .line 909
    const-string/jumbo v18, "startActivityFromRecents"

    .line 910
    .line 911
    .line 912
    sget-object v19, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 913
    .line 914
    const/4 v4, 0x0

    .line 915
    move-object/from16 v20, v12

    .line 916
    .line 917
    move v12, v4

    .line 918
    const/16 v17, 0x0

    .line 919
    .line 920
    const/4 v10, 0x0

    .line 921
    const/4 v4, 0x0

    .line 922
    move-object/from16 v27, v11

    .line 923
    .line 924
    move-object v11, v4

    .line 925
    move/from16 v4, p1

    .line 926
    .line 927
    move-object/from16 v28, v5

    .line 928
    .line 929
    move/from16 v5, p2

    .line 930
    .line 931
    move/from16 v29, v9

    .line 932
    .line 933
    move-object/from16 v9, v16

    .line 934
    .line 935
    move-object/from16 v13, p4

    .line 936
    .line 937
    move-object/from16 v25, v14

    .line 938
    .line 939
    move v14, v0

    .line 940
    move-object/from16 v15, v25

    .line 941
    .line 942
    move-object/from16 v16, v18

    .line 943
    .line 944
    move-object/from16 v18, v19

    .line 945
    .line 946
    :try_start_a
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;)I

    .line 947
    .line 948
    .line 949
    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 950
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 951
    .line 952
    move-object/from16 v3, v28

    .line 953
    .line 954
    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 955
    .line 956
    .line 957
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 958
    .line 959
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 960
    .line 961
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 962
    .line 963
    .line 964
    monitor-enter v2

    .line 965
    :try_start_b
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 966
    .line 967
    .line 968
    move-result v3

    .line 969
    if-nez v3, :cond_25

    .line 970
    .line 971
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    .line 972
    .line 973
    .line 974
    move-result v3

    .line 975
    if-eqz v3, :cond_25

    .line 976
    .line 977
    const-string/jumbo v3, "start-from-recents"

    .line 978
    .line 979
    .line 980
    move-object/from16 v4, v25

    .line 981
    .line 982
    invoke-virtual {v4, v3}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    if-eqz v24, :cond_26

    .line 986
    .line 987
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 988
    .line 989
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 990
    .line 991
    .line 992
    move-result-object v3

    .line 993
    if-eqz v3, :cond_26

    .line 994
    .line 995
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 996
    .line 997
    .line 998
    move-result v5

    .line 999
    if-eqz v5, :cond_26

    .line 1000
    .line 1001
    const-string/jumbo v5, "start-from-recents"

    .line 1002
    .line 1003
    .line 1004
    const/4 v6, 0x0

    .line 1005
    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1006
    .line 1007
    .line 1008
    goto :goto_16

    .line 1009
    :catchall_5
    move-exception v0

    .line 1010
    goto :goto_18

    .line 1011
    :cond_25
    move-object/from16 v4, v25

    .line 1012
    .line 1013
    :cond_26
    :goto_16
    :try_start_c
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1014
    .line 1015
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 1019
    .line 1020
    .line 1021
    move-result v3

    .line 1022
    if-eqz v3, :cond_27

    .line 1023
    .line 1024
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    .line 1025
    .line 1026
    .line 1027
    move-result v3

    .line 1028
    if-nez v3, :cond_27

    .line 1029
    .line 1030
    iget-boolean v3, v4, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 1031
    .line 1032
    if-nez v3, :cond_27

    .line 1033
    .line 1034
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1035
    .line 1036
    .line 1037
    move-result v3

    .line 1038
    if-eqz v3, :cond_27

    .line 1039
    .line 1040
    const-string v3, "handleStartActivityFromRecents"

    .line 1041
    .line 1042
    invoke-virtual {v4, v3}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    goto :goto_17

    .line 1046
    :catchall_6
    move-exception v0

    .line 1047
    goto :goto_19

    .line 1048
    :cond_27
    :goto_17
    if-eqz v23, :cond_28

    .line 1049
    .line 1050
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1051
    .line 1052
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 1053
    .line 1054
    const-string/jumbo v5, "recents"

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    :cond_28
    if-eqz v22, :cond_29

    .line 1061
    .line 1062
    move/from16 v3, p2

    .line 1063
    .line 1064
    move-object/from16 v14, v27

    .line 1065
    .line 1066
    move/from16 v7, v29

    .line 1067
    .line 1068
    invoke-virtual {v1, v4, v7, v14, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V

    .line 1069
    .line 1070
    .line 1071
    :cond_29
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1072
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1073
    .line 1074
    .line 1075
    return v0

    .line 1076
    :goto_18
    :try_start_d
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1077
    .line 1078
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1079
    .line 1080
    .line 1081
    throw v0

    .line 1082
    :goto_19
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1083
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1084
    .line 1085
    .line 1086
    throw v0

    .line 1087
    :catchall_7
    move-exception v0

    .line 1088
    move/from16 v3, p2

    .line 1089
    .line 1090
    move-object/from16 v4, v25

    .line 1091
    .line 1092
    move-object/from16 v14, v27

    .line 1093
    .line 1094
    move/from16 v7, v29

    .line 1095
    .line 1096
    const/4 v6, 0x0

    .line 1097
    goto :goto_1a

    .line 1098
    :catchall_8
    move-exception v0

    .line 1099
    move v7, v9

    .line 1100
    move-object v6, v12

    .line 1101
    move-object v4, v14

    .line 1102
    move v3, v15

    .line 1103
    move-object v14, v11

    .line 1104
    :goto_1a
    sget-object v2, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    .line 1105
    .line 1106
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1107
    .line 1108
    invoke-virtual {v2, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1109
    .line 1110
    .line 1111
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1112
    .line 1113
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1114
    .line 1115
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1116
    .line 1117
    .line 1118
    monitor-enter v2

    .line 1119
    :try_start_e
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 1120
    .line 1121
    .line 1122
    move-result v5

    .line 1123
    if-nez v5, :cond_2a

    .line 1124
    .line 1125
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    .line 1126
    .line 1127
    .line 1128
    move-result v5

    .line 1129
    if-eqz v5, :cond_2a

    .line 1130
    .line 1131
    const-string/jumbo v5, "start-from-recents"

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    if-eqz v24, :cond_2a

    .line 1138
    .line 1139
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1140
    .line 1141
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v5

    .line 1145
    if-eqz v5, :cond_2a

    .line 1146
    .line 1147
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 1148
    .line 1149
    .line 1150
    move-result v8

    .line 1151
    if-eqz v8, :cond_2a

    .line 1152
    .line 1153
    const-string/jumbo v8, "start-from-recents"

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v5, v8, v6}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 1157
    .line 1158
    .line 1159
    goto :goto_1b

    .line 1160
    :catchall_9
    move-exception v0

    .line 1161
    goto :goto_1d

    .line 1162
    :cond_2a
    :goto_1b
    :try_start_f
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1163
    .line 1164
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 1168
    .line 1169
    .line 1170
    move-result v5

    .line 1171
    if-eqz v5, :cond_2b

    .line 1172
    .line 1173
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    .line 1174
    .line 1175
    .line 1176
    move-result v5

    .line 1177
    if-nez v5, :cond_2b

    .line 1178
    .line 1179
    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 1180
    .line 1181
    if-nez v5, :cond_2b

    .line 1182
    .line 1183
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1184
    .line 1185
    .line 1186
    move-result v5

    .line 1187
    if-eqz v5, :cond_2b

    .line 1188
    .line 1189
    const-string v5, "handleStartActivityFromRecents"

    .line 1190
    .line 1191
    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    goto :goto_1c

    .line 1195
    :catchall_a
    move-exception v0

    .line 1196
    goto :goto_1e

    .line 1197
    :cond_2b
    :goto_1c
    if-eqz v23, :cond_2c

    .line 1198
    .line 1199
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1200
    .line 1201
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 1202
    .line 1203
    const-string/jumbo v6, "recents"

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    :cond_2c
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 1210
    .line 1211
    if-eqz v5, :cond_2d

    .line 1212
    .line 1213
    invoke-virtual {v1, v4, v7, v14, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V

    .line 1214
    .line 1215
    .line 1216
    :cond_2d
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 1217
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1218
    .line 1219
    .line 1220
    throw v0

    .line 1221
    :goto_1d
    :try_start_10
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1222
    .line 1223
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1224
    .line 1225
    .line 1226
    throw v0

    .line 1227
    :goto_1e
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 1228
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1229
    .line 1230
    .line 1231
    throw v0

    .line 1232
    :cond_2e
    :try_start_11
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1233
    .line 1234
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1235
    .line 1236
    .line 1237
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1238
    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1240
    .line 1241
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1245
    .line 1246
    .line 1247
    const-string v0, " not found."

    .line 1248
    .line 1249
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v0

    .line 1256
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1257
    .line 1258
    .line 1259
    throw v2
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1260
    :goto_1f
    :try_start_12
    const-string v2, "ActivityTaskManager"

    .line 1261
    .line 1262
    const-string/jumbo v3, "startActivity: reason=startActivityFromRecents"

    .line 1263
    .line 1264
    .line 1265
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1266
    .line 1267
    .line 1268
    throw v0

    .line 1269
    :catchall_b
    move-exception v0

    .line 1270
    goto :goto_21

    .line 1271
    :goto_20
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 1272
    :goto_21
    if-eqz v4, :cond_2f

    .line 1273
    .line 1274
    :try_start_13
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1275
    .line 1276
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 1277
    .line 1278
    const-string/jumbo v3, "recents"

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 1282
    .line 1283
    .line 1284
    goto :goto_22

    .line 1285
    :catchall_c
    move-exception v0

    .line 1286
    :try_start_14
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1287
    .line 1288
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1289
    .line 1290
    .line 1291
    throw v0

    .line 1292
    :cond_2f
    :goto_22
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1293
    .line 1294
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1295
    .line 1296
    .line 1297
    throw v0

    .line 1298
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1299
    .line 1300
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    const-string v0, " can\'t be launch in the home/recents root task."

    .line 1309
    .line 1310
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v0

    .line 1317
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1318
    .line 1319
    .line 1320
    throw v1

    .line 1321
    :goto_23
    monitor-exit v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1322
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1323
    .line 1324
    .line 1325
    throw v0
.end method

.method public final startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ActivityTaskManager"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p3

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v5, "Exception when starting activity "

    .line 35
    .line 36
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 40
    .line 41
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v1, v4, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    .line 61
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 64
    .line 65
    iget v4, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 66
    .line 67
    invoke-virtual {p3, v1, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 71
    .line 72
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 73
    .line 74
    iget v1, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 75
    .line 76
    iget-object v4, p3, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    .line 83
    .line 84
    if-eqz v4, :cond_0

    .line 85
    .line 86
    iget-object v5, p3, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v4}, Lcom/android/server/wm/WindowProcessControllerMap;->removeProcessFromUidMap(Lcom/android/server/wm/WindowProcessController;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayAreaConfigurationListener()V

    .line 98
    .line 99
    .line 100
    :cond_0
    move p3, v2

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 103
    .line 104
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 107
    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    invoke-static {}, Lcom/android/sdksandbox/flags/Flags;->sandboxActivitySdkBasedContext()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_2

    .line 115
    .line 116
    invoke-static {p3, v4}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;->isSdkSandboxActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-eqz p3, :cond_3

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v4, p3}, Landroid/content/Intent;->isSandboxActivity(Landroid/content/Context;)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-eqz p3, :cond_3

    .line 128
    .line 129
    :goto_0
    const-string p0, "Abort sandbox activity launching as no sandbox process to host it."

    .line 130
    .line 131
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    const-string p0, "No sandbox process for the activity"

    .line 135
    .line 136
    invoke-virtual {p1, p0, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 137
    .line 138
    .line 139
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_3
    move p3, v3

    .line 146
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    .line 147
    .line 148
    .line 149
    if-eqz p2, :cond_4

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_4

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_4
    move v2, v3

    .line 159
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 160
    .line 161
    if-eqz v2, :cond_5

    .line 162
    .line 163
    const-string/jumbo p2, "top-activity"

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_5
    const-string p2, "activity"

    .line 168
    .line 169
    :goto_3
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)V

    .line 170
    .line 171
    .line 172
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    .line 173
    .line 174
    if-eqz p0, :cond_6

    .line 175
    .line 176
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-eqz p0, :cond_6

    .line 181
    .line 182
    sget-object p0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    .line 183
    .line 184
    if-eqz p0, :cond_6

    .line 185
    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 189
    .line 190
    new-instance p2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;

    .line 191
    .line 192
    invoke-direct {p2, p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    .line 197
    .line 198
    :cond_6
    return-void
.end method

.method public final updateHomeProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

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
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 36
    .line 37
    if-eq v0, p1, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 40
    .line 41
    const/16 v1, 0xd8

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    const-string v2, "homeChanged"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 61
    .line 62
    :cond_3
    return-void
.end method

.method public final updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_9

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-ne v3, v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateLossIfNeeded()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 49
    .line 50
    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 63
    .line 64
    .line 65
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 66
    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    .line 71
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 72
    .line 73
    if-eqz p1, :cond_8

    .line 74
    .line 75
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_0
    if-eqz v0, :cond_7

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_7
    move-object v0, v2

    .line 97
    :goto_1
    iput-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 98
    .line 99
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 100
    .line 101
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 102
    .line 103
    if-ne v0, v1, :cond_8

    .line 104
    .line 105
    iput-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 106
    .line 107
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_9
    :goto_2
    if-nez v1, :cond_a

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateLossIfNeeded()V

    .line 113
    .line 114
    .line 115
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 116
    .line 117
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 118
    .line 119
    if-eqz p1, :cond_c

    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 122
    .line 123
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_b

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_b
    move-object v0, v2

    .line 138
    :goto_3
    iput-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 139
    .line 140
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 141
    .line 142
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 143
    .line 144
    if-ne v0, v1, :cond_c

    .line 145
    .line 146
    iput-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 147
    .line 148
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 149
    .line 150
    return-object p0
.end method

.method public final wakeUp(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-string v2, "android.server.am:TURN_ON:"

    .line 8
    .line 9
    invoke-static {v2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
