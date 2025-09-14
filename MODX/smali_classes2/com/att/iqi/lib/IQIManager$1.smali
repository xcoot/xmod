.class Lcom/att/iqi/lib/IQIManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/lib/IQIManager;

.field final synthetic val$msg:Landroid/os/Message;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/att/iqi/lib/IQIManager;Landroid/os/Message;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$1;->this$0:Lcom/att/iqi/lib/IQIManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/att/iqi/lib/IQIManager$1;->val$msg:Landroid/os/Message;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/att/iqi/lib/IQIManager$1;->val$task:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager$1;->this$0:Lcom/att/iqi/lib/IQIManager;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/lib/IQIManager;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager$1;->val$msg:Landroid/os/Message;

    .line 8
    .line 9
    iget v0, v0, Landroid/os/Message;->what:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager$1;->val$task:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {p2, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager$1;->this$0:Lcom/att/iqi/lib/IQIManager;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmExecutorService(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager$1;->val$task:Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
