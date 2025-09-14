.class public final synthetic Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 5
    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 8
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 10
    iget-object p0, v0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 12
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, v1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 20
    if-nez p0, :cond_0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :try_start_1
    const-string/jumbo v5, "excessive binder traffic during cached"

    .line 32
    const/4 v7, 0x1

    .line 33
    const/16 v2, 0x9

    .line 35
    const/4 v3, 0x7

    .line 36
    const/4 v6, 0x1

    .line 37
    move-object v4, v5

    .line 38
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 41
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    :goto_0
    return-void

    .line 46
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    throw p0

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 53
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 55
    iget-object p0, v0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 57
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 62
    monitor-enter v0

    .line 63
    :try_start_3
    const-string v5, "Unable to freeze binder interface"

    .line 65
    const/4 v7, 0x1

    .line 66
    const/16 v2, 0xe

    .line 68
    const/16 v3, 0x13

    .line 70
    const/4 v6, 0x1

    .line 71
    move-object v4, v5

    .line 72
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 75
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 79
    return-void

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    throw p0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 88
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 90
    iget-object p0, v0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 92
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 94
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 97
    monitor-enter p0

    .line 98
    :try_start_5
    const-string v5, "Unable to freeze binder interface"

    .line 100
    const/4 v7, 0x1

    .line 101
    const/16 v2, 0xe

    .line 103
    const/16 v3, 0x13

    .line 105
    const/4 v6, 0x1

    .line 106
    move-object v4, v5

    .line 107
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 110
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 111
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 114
    return-void

    .line 115
    :catchall_2
    move-exception v0

    .line 116
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 117
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    throw v0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
