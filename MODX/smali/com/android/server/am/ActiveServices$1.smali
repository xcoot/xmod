.class public final Lcom/android/server/am/ActiveServices$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActiveServices;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/ActiveServices$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$1;->this$0:Lcom/android/server/am/ActiveServices;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/am/ActiveServices$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$1;->this$0:Lcom/android/server/am/ActiveServices;

    .line 12
    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$1;->this$0:Lcom/android/server/am/ActiveServices;

    .line 20
    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    sub-int/2addr v3, v4

    .line 28
    :goto_0
    if-ltz v3, :cond_1

    .line 30
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$1;->this$0:Lcom/android/server/am/ActiveServices;

    .line 32
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 40
    iget-wide v6, v5, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    .line 42
    cmp-long v6, v6, v0

    .line 44
    if-gtz v6, :cond_0

    .line 46
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$1;->this$0:Lcom/android/server/am/ActiveServices;

    .line 48
    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 53
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 55
    if-eqz v6, :cond_0

    .line 57
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 59
    if-eqz v6, :cond_0

    .line 61
    invoke-virtual {v5, v4}, Lcom/android/server/am/ServiceRecord;->postNotification(Z)V

    .line 64
    iput-boolean v4, v5, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    return-void

    .line 77
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    throw p0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$1;->this$0:Lcom/android/server/am/ActiveServices;

    .line 84
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 86
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 89
    monitor-enter v0

    .line 90
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$1;->this$0:Lcom/android/server/am/ActiveServices;

    .line 92
    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 95
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 99
    return-void

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 105
    throw p0

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
