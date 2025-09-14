.class public final Lcom/android/server/job/controllers/ComponentController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/job/controllers/ComponentController$1;

.field public final mComponentStateUpdateFunctor:Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

.field public final mServiceProcessCache:Landroid/util/SparseArrayMap;


# direct methods
.method public static -$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ComponentController;->clearComponentsForPackageLocked(ILjava/lang/String;)V

    .line 7
    new-instance v1, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda0;

    .line 9
    invoke-direct {v1, p1, p2}, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ComponentController;->updateComponentStatesLocked(Ljava/util/function/Predicate;)V

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-string v0, "JobScheduler.Component"

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
    sput-boolean v0, Lcom/android/server/job/controllers/ComponentController;->DEBUG:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 4
    new-instance p1, Lcom/android/server/job/controllers/ComponentController$1;

    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/ComponentController$1;-><init>(Lcom/android/server/job/controllers/ComponentController;)V

    .line 9
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController;->mBroadcastReceiver:Lcom/android/server/job/controllers/ComponentController$1;

    .line 11
    new-instance p1, Landroid/util/SparseArrayMap;

    .line 13
    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    .line 18
    new-instance p1, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;-><init>(Lcom/android/server/job/controllers/ComponentController;)V

    .line 23
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController;->mComponentStateUpdateFunctor:Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    .line 25
    return-void
.end method


# virtual methods
.method public final clearComponentsForPackageLocked(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    .line 9
    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 15
    :goto_0
    if-ltz v1, :cond_1

    .line 17
    iget-object v2, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    .line 19
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/content/ComponentName;

    .line 25
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 35
    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    .line 37
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 5

    const/4 p2, 0x0

    move v0, p2

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v2, p2

    .line 3
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 6
    const-string v4, "-"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 8
    const-string v3, ": "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 0

    .line 11
    return-void
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ComponentController;->updateComponentEnabledStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 4
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
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ComponentController;->clearComponentsForPackageLocked(ILjava/lang/String;)V

    .line 8
    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 6
    return-void
.end method

.method public final startTrackingLocked()V
    .locals 10

    .line 1
    new-instance v3, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 8
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 13
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "package"

    .line 19
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 24
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mBroadcastReceiver:Lcom/android/server/job/controllers/ComponentController$1;

    .line 30
    move-object v2, v6

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 34
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 36
    const-string v1, "android.intent.action.USER_STOPPED"

    .line 38
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 41
    move-result-object v7

    .line 42
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    iget-object v5, p0, Lcom/android/server/job/controllers/ComponentController;->mBroadcastReceiver:Lcom/android/server/job/controllers/ComponentController$1;

    .line 48
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method public final updateComponentEnabledStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 9
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    .line 15
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    .line 18
    move-result v2

    .line 19
    const-string v3, "JobScheduler.Component"

    .line 21
    if-eqz v2, :cond_0

    .line 23
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    .line 25
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/String;

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    move-result-object v4

    .line 48
    const/high16 v5, 0x10000000

    .line 50
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 53
    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 57
    invoke-virtual {v4, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    const-string v5, "Job exists for non-existent package: "

    .line 67
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v4

    .line 81
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    move-object v4, v2

    .line 85
    :goto_0
    if-nez v4, :cond_2

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object v2, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 90
    :goto_1
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    .line 92
    invoke-virtual {p0, v1, v0, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-object p0, v2

    .line 96
    :goto_2
    sget-boolean v0, Lcom/android/server/job/controllers/ComponentController;->DEBUG:Z

    .line 98
    if-eqz v0, :cond_3

    .line 100
    if-nez p0, :cond_3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, " component not present"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 128
    iput-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 130
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    move-result p0

    .line 134
    xor-int/lit8 p0, p0, 0x1

    .line 136
    return p0
.end method

.method public final updateComponentStatesLocked(Ljava/util/function/Predicate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mComponentStateUpdateFunctor:Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    .line 3
    iget-object v1, v0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 5
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 8
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 10
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 12
    invoke-virtual {v1, p1, v0}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 15
    iget-object p1, v0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 17
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_0

    .line 23
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 25
    iget-object p1, v0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 30
    :cond_0
    return-void
.end method
