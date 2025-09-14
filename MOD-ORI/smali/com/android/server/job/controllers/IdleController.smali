.class public final Lcom/android/server/job/controllers/IdleController;
.super Lcom/android/server/job/controllers/RestrictingController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

.field public final mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

.field public final mTrackedTasks:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "android.hardware.type.automotive"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance p1, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p1, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 32
    .line 33
    iput-boolean v0, p1, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 34
    .line 35
    iput-boolean v0, p1, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p1, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    .line 49
    .line 50
    :goto_0
    iput-object p2, p0, Lcom/android/server/job/controllers/IdleController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2
    .line 3
    .line 4
    const-string v0, "IdleController:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Currently idle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v1}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2
    const-string v0, "Idleness tracker:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v0, p1}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 6
    invoke-virtual {p2, v1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 9
    const-string v2, " from "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 10
    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 11
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 10

    const-wide v0, 0x20b00000004L

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000006L

    .line 13
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 14
    iget-object v4, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v4}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    move-result v4

    const-wide v5, 0x10800000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 15
    iget-object v4, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v4, p1}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->dump(Landroid/util/proto/ProtoOutputStream;)V

    const/4 v4, 0x0

    .line 16
    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 17
    iget-object v5, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 18
    invoke-virtual {p2, v5}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const-wide v6, 0x20b00000002L

    .line 19
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v8, 0x10b00000001L

    .line 20
    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v8, 0x10500000002L

    .line 21
    iget v5, v5, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 22
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    const/4 p2, 0x4

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    const/16 p2, 0x8

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onBatteryStateChangedLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-interface {v0, v1, p0}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->onBatteryStateChanged(ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->processConstant(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final reportNewIdleState(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x4

    .line 5
    :try_start_0
    invoke-static {v1, p1}, Lcom/android/server/job/controllers/StateController;->logDeviceWideConstraintStateToStatsd(IZ)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object v4, p0, Lcom/android/server/job/controllers/IdleController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 18
    .line 19
    invoke-virtual {v4, v1, v2, v3, p1}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IJZ)V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    add-int/lit8 v4, v4, -0x1

    .line 29
    .line 30
    :goto_0
    if-ltz v4, :cond_0

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 39
    .line 40
    invoke-virtual {v5, v1, v2, v3, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v4, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final startTrackingLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->startTracking(Landroid/content/Context;Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/IdleController;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/IdleController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/IdleController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
