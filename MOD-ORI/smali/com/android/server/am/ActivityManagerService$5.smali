.class public final Lcom/android/server/am/ActivityManagerService$5;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final opActiveChanged(IILjava/lang/String;Ljava/lang/String;IZII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 7
    .line 8
    invoke-virtual {p3, p2}, Landroid/util/IntArray;->indexOf(I)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p6, :cond_0

    .line 13
    .line 14
    if-gez p3, :cond_1

    .line 15
    .line 16
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 17
    .line 18
    invoke-virtual {p3, p2}, Landroid/util/IntArray;->add(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    if-ltz p3, :cond_1

    .line 25
    .line 26
    iget-object p4, p0, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    .line 27
    .line 28
    invoke-virtual {p4, p3}, Landroid/util/IntArray;->remove(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/window/flags/Flags;->fifoPriorityForMajorUiProcesses()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 41
    .line 42
    .line 43
    monitor-enter p1

    .line 44
    xor-int/lit8 p3, p6, 0x1

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ActivityManagerService;->adjustFifoProcessesIfNeeded(IZ)V

    .line 47
    .line 48
    .line 49
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    :goto_1
    return-void

    .line 61
    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    throw p0
.end method
