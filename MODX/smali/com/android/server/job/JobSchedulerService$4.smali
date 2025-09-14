.class public final Lcom/android/server/job/JobSchedulerService$4;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$4;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onUidActive(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$4;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 5
    const/4 v0, 0x6

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    return-void
.end method

.method public final onUidGone(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$4;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 5
    const/4 v0, 0x5

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    return-void
.end method

.method public final onUidIdle(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$4;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 5
    const/4 v0, 0x7

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 4
    move-result-object p3

    .line 5
    iput p1, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 7
    iput p2, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 9
    iput p5, p3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 11
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$4;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 13
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 15
    const/4 p1, 0x4

    .line 16
    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    return-void
.end method
