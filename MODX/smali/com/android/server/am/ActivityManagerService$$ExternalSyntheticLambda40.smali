.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;JJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 8
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$2:J

    .line 10
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$3:J

    .line 12
    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$4:J

    .line 14
    iput p9, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$5:I

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 5
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$2:J

    .line 7
    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$3:J

    .line 9
    iget-wide v6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$4:J

    .line 11
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;->f$5:I

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string/jumbo v8, "excessive cpu "

    .line 19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 25
    if-eqz v9, :cond_1

    .line 27
    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 29
    iget v9, v9, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 31
    const/16 v10, 0xe

    .line 33
    if-ge v9, v10, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, " during "

    .line 46
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, " dur="

    .line 54
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, " limit="

    .line 62
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v5

    .line 72
    const/4 v7, 0x1

    .line 73
    const/16 v2, 0x9

    .line 75
    const/4 v3, 0x7

    .line 76
    const/4 v6, 0x1

    .line 77
    move-object v4, v5

    .line 78
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 92
    :goto_1
    return-void

    .line 93
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 97
    throw p0
.end method
