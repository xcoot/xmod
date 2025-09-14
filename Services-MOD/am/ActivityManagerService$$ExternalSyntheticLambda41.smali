.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$2:Lcom/android/server/am/PhantomProcessRecord;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;JJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$2:Lcom/android/server/am/PhantomProcessRecord;

    .line 10
    iput-wide p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$3:J

    .line 12
    iput-wide p6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$4:J

    .line 14
    iput-wide p8, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$5:J

    .line 16
    iput p10, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$6:I

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$2:Lcom/android/server/am/PhantomProcessRecord;

    .line 7
    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$3:J

    .line 9
    iget-wide v5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$4:J

    .line 11
    iget-wide v7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$5:J

    .line 13
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;->f$6:I

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string/jumbo v9, "excessive cpu "

    .line 21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 27
    if-eqz v10, :cond_1

    .line 29
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 31
    iget v10, v10, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 33
    const/16 v11, 0xe

    .line 35
    if-ge v10, v11, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    .line 40
    new-instance v11, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, " during "

    .line 50
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const-string v3, " dur="

    .line 58
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    const-string v3, " limit="

    .line 66
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v10, v1, v2, p0}, Lcom/android/server/am/PhantomProcessList;->killPhantomProcessGroupLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;Ljava/lang/String;)V

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    :goto_1
    return-void

    .line 91
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 95
    throw p0
.end method
