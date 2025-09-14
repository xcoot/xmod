.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ProcessErrorStateRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessErrorStateRecord;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 16
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 18
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 20
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    throw p0

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 36
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 39
    monitor-enter v0

    .line 40
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 42
    const-string v1, "anr"

    .line 44
    const/4 v2, 0x6

    .line 45
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 48
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    return-void

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 58
    throw p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
