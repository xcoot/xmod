.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessErrorStateRecord;

.field public final synthetic f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 8
    iput-object p3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    .line 13
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    .line 22
    iput-object p0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    .line 24
    iget-object p0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 26
    const-string v0, "anr"

    .line 28
    const/4 v1, 0x6

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 32
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    throw p0
.end method
