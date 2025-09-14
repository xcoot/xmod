.class public final synthetic Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/CachedAppOptimizer;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 6
    iput p2, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 10
    const/16 p1, 0xe

    .line 12
    iput p1, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;->f$3:I

    .line 14
    iput p4, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;->f$4:I

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 3
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;->f$1:I

    .line 5
    iget-object v6, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 7
    iget v3, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;->f$3:I

    .line 9
    iget v4, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;->f$4:I

    .line 11
    iget-object p0, v0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v9, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 22
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    move-object v2, v0

    .line 30
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 32
    if-eqz v2, :cond_0

    .line 34
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 36
    if-eqz v0, :cond_0

    .line 38
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 40
    if-nez v0, :cond_0

    .line 42
    const/4 v8, 0x1

    .line 43
    const/4 v7, 0x1

    .line 44
    move-object v5, v6

    .line 45
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 48
    :cond_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 52
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_0

    .line 59
    :catchall_1
    move-exception v0

    .line 60
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 64
    throw v0

    .line 65
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    throw v0
.end method
