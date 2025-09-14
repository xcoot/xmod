.class public final Lcom/android/server/am/ActivityManagerService$14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final pid:I

.field public final reason:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public toastToken:Landroid/os/IBinder;

.field public token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(ILcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$14;->pid:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$14;->reason:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 8

    .line 1
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 7
    .line 8
    .line 9
    monitor-enter v6

    .line 10
    :try_start_0
    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 11
    .line 12
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$14;->pid:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/server/am/ActivityManagerService$14;

    .line 22
    .line 23
    if-eq v0, p0, :cond_0

    .line 24
    .line 25
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_3
    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    .line 36
    .line 37
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$14;->pid:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 43
    .line 44
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$14;->pid:I

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    iput-object v1, v0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v1, 0x0

    .line 67
    move-object v0, v6

    .line 68
    move-object v2, p0

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(ILcom/android/server/am/ProcessRecord;ZZZ)V

    .line 70
    .line 71
    .line 72
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 73
    const/16 v0, 0x9

    .line 74
    .line 75
    :try_start_6
    invoke-virtual {v6, v0, p0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 76
    .line 77
    .line 78
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 79
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void

    .line 83
    :goto_1
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 84
    :try_start_8
    throw p0

    .line 85
    :goto_2
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 86
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ImportanceToken { "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$14;->reason:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$14;->pid:I

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$14;->token:Landroid/os/IBinder;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, " }"

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
