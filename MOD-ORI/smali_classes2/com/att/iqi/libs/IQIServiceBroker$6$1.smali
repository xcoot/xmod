.class Lcom/att/iqi/libs/IQIServiceBroker$6$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker$6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "binderDied"

    .line 7
    .line 8
    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method
