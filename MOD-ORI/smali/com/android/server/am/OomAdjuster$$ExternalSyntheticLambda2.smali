.class public final synthetic Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/OomAdjuster;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/OomAdjuster;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/OomAdjuster;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2, p0}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    throw p0
.end method
