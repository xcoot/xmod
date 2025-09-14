.class public final Lcom/android/server/job/controllers/StorageController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

.field public final mTrackedTasks:Landroid/util/ArraySet;


# direct methods
.method public static -$$Nest$mmaybeReportNewStorageState(Lcom/android/server/job/controllers/StorageController;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 15
    iget-boolean v2, v2, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    .line 17
    xor-int/lit8 v2, v2, 0x1

    .line 19
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter v3

    .line 22
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 24
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 27
    move-result v4

    .line 28
    add-int/lit8 v4, v4, -0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    :goto_0
    if-ltz v4, :cond_0

    .line 33
    iget-object v6, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 35
    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 41
    const/16 v7, 0x8

    .line 43
    invoke-virtual {v6, v7, v0, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 46
    move-result v6

    .line 47
    or-int/2addr v5, v6

    .line 48
    add-int/lit8 v4, v4, -0x1

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v2, :cond_1

    .line 56
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    if-eqz v5, :cond_2

    .line 65
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 67
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 69
    invoke-virtual {v0, p0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 72
    :cond_2
    :goto_1
    return-void

    .line 73
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-string v0, "JobScheduler.Storage"

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

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
    sput-boolean v0, Lcom/android/server/job/controllers/StorageController;->DEBUG:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 4
    new-instance p1, Landroid/util/ArraySet;

    .line 6
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 11
    new-instance p1, Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 13
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;-><init>(Lcom/android/server/job/controllers/StorageController;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 18
    return-void
.end method


# virtual methods
.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not low: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    iget-boolean v2, v1, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    xor-int/lit8 v2, v2, 0x1

    .line 3
    const-string v3, "Sequence: "

    .line 4
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget v1, v1, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 10
    invoke-virtual {p2, v1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 13
    const-string v2, " from "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 15
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 12

    const-wide v0, 0x20b00000004L

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000007L

    .line 17
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 18
    iget-object v4, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    iget-boolean v5, v4, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    xor-int/lit8 v5, v5, 0x1

    const-wide v6, 0x10800000001L

    .line 19
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 20
    iget v4, v4, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    const-wide v5, 0x10500000002L

    .line 21
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v4, 0x0

    .line 22
    :goto_0
    iget-object v7, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 23
    iget-object v7, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    .line 24
    invoke-virtual {p2, v7}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    const-wide v8, 0x20b00000003L

    .line 25
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v10, 0x10b00000001L

    .line 26
    invoke-virtual {v7, p1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 27
    iget v7, v7, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 28
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 3
    return-object p0
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    const/16 p2, 0x8

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v0

    .line 18
    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 20
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    const/16 v2, 0x10

    .line 25
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 28
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 30
    iget-boolean p0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    .line 32
    xor-int/lit8 p0, p0, 0x1

    .line 34
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 37
    :cond_0
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    const/16 p2, 0x10

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 11
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-void
.end method

.method public final startTrackingLocked()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    .line 8
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    .line 23
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    return-void
.end method
