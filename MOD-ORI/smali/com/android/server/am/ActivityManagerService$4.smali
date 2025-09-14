.class public final Lcom/android/server/am/ActivityManagerService$4;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/16 p4, 0x3f

    .line 2
    .line 3
    if-ne p1, p4, :cond_2

    .line 4
    .line 5
    if-eqz p3, :cond_2

    .line 6
    .line 7
    iget-object p4, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    invoke-virtual {p4}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager$1()Landroid/app/AppOpsManager;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p4, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 25
    .line 26
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-boolean p2, p1, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget p2, p1, Lcom/android/server/am/UidRecord;->mUid:I

    .line 43
    .line 44
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    :goto_2
    return-void
.end method
