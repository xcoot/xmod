.class public final Lcom/android/server/job/controllers/BackgroundJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public final mBroadcastReceiver:Lcom/android/server/job/controllers/BackgroundJobsController$1;

.field public final mForceAppStandbyListener:Lcom/android/server/job/controllers/BackgroundJobsController$2;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageStoppedState:Landroid/util/SparseArrayMap;

.field public final mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-string v0, "JobScheduler.Background"

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
    sput-boolean v0, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 4
    new-instance p1, Landroid/util/SparseArrayMap;

    .line 6
    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 11
    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    .line 13
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    .line 18
    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$1;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    .line 23
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mBroadcastReceiver:Lcom/android/server/job/controllers/BackgroundJobsController$1;

    .line 25
    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$2;

    .line 27
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$2;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    .line 30
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/job/controllers/BackgroundJobsController$2;

    .line 32
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 34
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 45
    const-class p1, Lcom/android/server/AppStateTracker;

    .line 47
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/server/AppStateTracker;

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    check-cast p1, Lcom/android/server/AppStateTrackerImpl;

    .line 58
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 60
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 62
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 68
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 70
    return-void
.end method


# virtual methods
.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 3

    .line 1
    const-string v0, "Aconfig flags:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->stayStopped()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    const-string v1, "android.content.pm.stay_stopped"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 8
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 10
    const-string v0, "Stopped packages:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 12
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 13
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 14
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 15
    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Ljava/lang/Object;I)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 7

    const-wide v0, 0x20b00000004L

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    .line 17
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 18
    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v6, p1, v2, v3}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 19
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 20
    new-instance v3, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v3, p0, p1, v6}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Ljava/lang/Object;I)V

    invoke-virtual {v2, p2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 21
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    .line 20
    :cond_0
    return-void
.end method

.method public final isPackageStoppedLocked(ILjava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "JobScheduler.Background"

    .line 3
    const-string v1, "Pulled stopped state of "

    .line 5
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 7
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Boolean;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 28
    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 30
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 32
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2, p2, p1}, Lcom/android/server/pm/Computer;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    .line 39
    move-result v2

    .line 40
    sget-boolean v3, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    .line 42
    if-eqz v3, :cond_1

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, " ("

    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "): "

    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 77
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p0, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return v2

    .line 85
    :catch_0
    const-string p0, "Couldn\'t determine stopped state for unknown package: "

    .line 87
    invoke-static {p0, p2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 p0, 0x0

    .line 91
    return p0
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    .line 14
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    move-result v1

    .line 21
    if-ne v1, p1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 25
    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public final startTrackingLocked()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/job/controllers/BackgroundJobsController$2;

    .line 3
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 5
    invoke-virtual {v1, v0}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 8
    new-instance v5, Landroid/content/IntentFilter;

    .line 10
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    .line 15
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    const-string v0, "android.intent.action.PACKAGE_UNSTOPPED"

    .line 20
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    const-string/jumbo v0, "package"

    .line 26
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 31
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    iget-object v3, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mBroadcastReceiver:Lcom/android/server/job/controllers/BackgroundJobsController$1;

    .line 37
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 40
    return-void
.end method

.method public final updateJobRestrictionsLocked(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    .line 3
    iput p2, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mActiveState:I

    .line 5
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    move-result-wide v1

    .line 14
    iput-wide v1, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mUpdateTimeElapsed:J

    .line 16
    iget-object p2, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 18
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 21
    const/4 p2, 0x0

    .line 22
    iput p2, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 24
    iput p2, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 26
    const-wide/16 v1, 0x0

    .line 28
    sget-boolean p2, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    .line 30
    if-eqz p2, :cond_0

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 35
    move-result-wide v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-wide v3, v1

    .line 38
    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 40
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 42
    if-lez p1, :cond_1

    .line 44
    invoke-virtual {v5, p1, v0}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v5, v0}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 51
    :goto_1
    if-eqz p2, :cond_2

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 56
    move-result-wide v1

    .line 57
    sub-long/2addr v1, v3

    .line 58
    :cond_2
    if-eqz p2, :cond_3

    .line 60
    iget p1, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object p1

    .line 66
    iget p2, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object p2

    .line 72
    const-wide/16 v3, 0x3e8

    .line 74
    div-long/2addr v1, v3

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    move-result-object v1

    .line 79
    filled-new-array {p1, p2, v1}, [Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    const-string p2, "Job status updated: %d/%d checked/total jobs, %d us"

    .line 85
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    const-string p2, "JobScheduler.Background"

    .line 91
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_3
    iget-object p1, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 96
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 99
    move-result p1

    .line 100
    if-lez p1, :cond_4

    .line 102
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 104
    iget-object p1, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 109
    :cond_4
    return-void
.end method

.method public final updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z
    .locals 8

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 3
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/BackgroundJobsController;->isPackageStoppedLocked(ILjava/lang/String;)Z

    .line 8
    move-result v2

    .line 9
    iget-boolean v3, p1, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    .line 11
    if-nez v3, :cond_0

    .line 13
    move v3, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v3, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 17
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    iget v4, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 27
    invoke-virtual {p0, v4, v3}, Lcom/android/server/job/controllers/BackgroundJobsController;->isPackageStoppedLocked(ILjava/lang/String;)Z

    .line 30
    move-result v3

    .line 31
    :goto_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->stayStopped()Z

    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x1

    .line 37
    if-eqz v4, :cond_2

    .line 39
    if-nez v3, :cond_1

    .line 41
    if-eqz v2, :cond_2

    .line 43
    :cond_1
    move v2, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v2, v5

    .line 46
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 48
    if-nez v2, :cond_4

    .line 50
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 52
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_3

    .line 58
    invoke-virtual {v3, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_3

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move v4, v5

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    :goto_2
    move v4, v6

    .line 68
    :goto_3
    iget-boolean v7, p1, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    .line 70
    if-eqz v7, :cond_5

    .line 72
    if-eqz v4, :cond_5

    .line 74
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    .line 79
    move-result p0

    .line 80
    const/4 v7, 0x5

    .line 81
    if-le p0, v7, :cond_5

    .line 83
    move p0, v6

    .line 84
    goto :goto_4

    .line 85
    :cond_5
    move p0, v5

    .line 86
    :goto_4
    const/high16 v7, 0x400000

    .line 88
    if-nez v2, :cond_9

    .line 90
    if-nez p0, :cond_9

    .line 92
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 94
    and-int/2addr p0, v6

    .line 95
    if-nez p0, :cond_8

    .line 97
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 100
    move-result p0

    .line 101
    if-nez p0, :cond_8

    .line 103
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_6

    .line 109
    iget-boolean p0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 111
    if-eqz p0, :cond_7

    .line 113
    :cond_6
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 115
    and-int/2addr p0, v7

    .line 116
    if-nez p0, :cond_7

    .line 118
    goto :goto_5

    .line 119
    :cond_7
    move p0, v5

    .line 120
    goto :goto_6

    .line 121
    :cond_8
    :goto_5
    move p0, v6

    .line 122
    :goto_6
    invoke-virtual {v3, v0, v1, p0}, Lcom/android/server/AppStateTrackerImpl;->areJobsRestricted(ILjava/lang/String;Z)Z

    .line 125
    move-result p0

    .line 126
    if-nez p0, :cond_9

    .line 128
    move p0, v6

    .line 129
    goto :goto_7

    .line 130
    :cond_9
    move p0, v5

    .line 131
    :goto_7
    if-nez p4, :cond_a

    .line 133
    invoke-virtual {v3, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    .line 136
    move-result p4

    .line 137
    goto :goto_8

    .line 138
    :cond_a
    if-ne p4, v6, :cond_b

    .line 140
    move p4, v6

    .line 141
    goto :goto_8

    .line 142
    :cond_b
    move p4, v5

    .line 143
    :goto_8
    if-eqz p4, :cond_c

    .line 145
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 147
    const/4 v2, 0x4

    .line 148
    if-ne v0, v2, :cond_c

    .line 150
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    .line 152
    if-nez v0, :cond_c

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    const-string v2, "App "

    .line 158
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, " became active but still in NEVER bucket"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    const-string v1, "JobScheduler.JobStatus"

    .line 175
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-boolean v6, p1, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    .line 180
    :cond_c
    iput-boolean v4, p1, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    .line 182
    invoke-virtual {p1, v7, p2, p3, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 185
    move-result p2

    .line 186
    if-eqz p2, :cond_d

    .line 188
    iput-boolean p0, p1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 190
    move p0, v6

    .line 191
    goto :goto_9

    .line 192
    :cond_d
    move p0, v5

    .line 193
    :goto_9
    iget-boolean p2, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    .line 195
    if-eq p4, p2, :cond_e

    .line 197
    iput-boolean p4, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    .line 199
    move v5, v6

    .line 200
    :cond_e
    or-int/2addr p0, v5

    .line 201
    return p0
.end method
