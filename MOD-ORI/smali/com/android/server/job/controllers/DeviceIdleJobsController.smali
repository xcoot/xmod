.class public final Lcom/android/server/job/controllers/DeviceIdleJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAllowInIdleJobs:Landroid/util/ArraySet;

.field public final mBroadcastReceiver:Lcom/android/server/job/controllers/DeviceIdleJobsController$1;

.field public mDeviceIdleMode:Z

.field public final mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

.field public mDeviceIdleWhitelistAppIds:[I

.field public final mForegroundUids:Landroid/util/SparseBooleanArray;

.field public final mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

.field public final mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPowerSaveTempWhitelistAppIds:[I

.field public final mShouldRushEvaluation:Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "JobScheduler.DeviceIdle"

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mShouldRushEvaluation:Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    new-instance p1, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const-string/jumbo v0, "power"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/os/PowerManager;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    .line 50
    .line 51
    const-class p1, Lcom/android/server/DeviceIdleInternal;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/android/server/DeviceIdleInternal;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveWhitelistUserAppIds()[I

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    .line 66
    .line 67
    invoke-interface {p1}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveTempWhitelistAppIds()[I

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    .line 72
    .line 73
    new-instance p1, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    .line 79
    .line 80
    new-instance p1, Landroid/util/ArraySet;

    .line 81
    .line 82
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 86
    .line 87
    new-instance v3, Landroid/content/IntentFilter;

    .line 88
    .line 89
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string p1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 93
    .line 94
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string p1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 98
    .line 99
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string p1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 103
    .line 104
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string p1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    .line 108
    .line 109
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Idle mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 4
    new-instance v1, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Ljava/lang/Object;I)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 7

    const-wide v0, 0x20b00000004L

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000005L

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10800000001L

    .line 7
    iget-boolean v6, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 9
    new-instance v5, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, p0, p1, v6}, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Ljava/lang/Object;I)V

    invoke-virtual {v4, p2, v5}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 10
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 1
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getFlags()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    and-int/lit8 p2, p2, 0x2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getFlags()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    and-int/lit8 p2, p2, 0x2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final setUidActiveLocked(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq p2, v0, :cond_2

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string/jumbo v0, "uid "

    .line 14
    .line 15
    .line 16
    const-string v1, " going "

    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const-string v1, "active"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string/jumbo v1, "inactive"

    .line 28
    .line 29
    .line 30
    :goto_0
    const-string v2, "JobScheduler.DeviceIdle"

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->prepare()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 48
    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-lez p1, :cond_2

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 61
    .line 62
    iget-object p1, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public final updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;J)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    .line 24
    .line 25
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :cond_0
    move v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v0, v1

    .line 38
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    .line 39
    .line 40
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v4, v3}, Ljava/util/Arrays;->binarySearch([II)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ltz v3, :cond_2

    .line 49
    .line 50
    move v3, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v3, v1

    .line 53
    :goto_1
    iget-boolean p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    .line 54
    .line 55
    if-eqz p0, :cond_4

    .line 56
    .line 57
    if-nez v3, :cond_4

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move p0, v1

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    :goto_2
    move p0, v2

    .line 65
    :goto_3
    iput-boolean v3, p1, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    .line 66
    .line 67
    const/high16 v0, 0x2000000

    .line 68
    .line 69
    invoke-virtual {p1, v0, p2, p3, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_7

    .line 74
    .line 75
    if-nez p0, :cond_5

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_6

    .line 82
    .line 83
    :cond_5
    move v1, v2

    .line 84
    :cond_6
    iput-boolean v1, p1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 85
    .line 86
    move v1, v2

    .line 87
    :cond_7
    return v1
.end method
