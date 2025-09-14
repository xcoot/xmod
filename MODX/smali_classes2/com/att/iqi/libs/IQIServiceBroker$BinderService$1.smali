.class Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker$BinderService;Landroid/os/Message;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->val$msg:Landroid/os/Message;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->val$msg:Landroid/os/Message;

    .line 10
    .line 11
    iget v0, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mdisablePackage(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
