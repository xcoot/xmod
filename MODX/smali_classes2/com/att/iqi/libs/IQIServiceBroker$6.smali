.class Lcom/att/iqi/libs/IQIServiceBroker$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Implementation service connected "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " binder service "

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 35
    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 38
    .line 39
    invoke-static {v0, p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mgetIBinderAsIInterface(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-static {v0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mnotifyServiceState(Lcom/att/iqi/libs/IQIServiceBroker;Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_1
    new-instance v0, Lcom/att/iqi/libs/IQIServiceBroker$6$1;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/att/iqi/libs/IQIServiceBroker$6$1;-><init>(Lcom/att/iqi/libs/IQIServiceBroker$6;)V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception p2

    .line 70
    :try_start_2
    const-string v0, "Exception while linking IBinder to death"

    .line 71
    .line 72
    invoke-static {v0, p2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 76
    .line 77
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmRetryCount(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 78
    .line 79
    .line 80
    monitor-exit p1

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string p1, "Implementation service unexpectedly disconnected"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mnotifyServiceState(Lcom/att/iqi/libs/IQIServiceBroker;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmRetryCount(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 29
    .line 30
    .line 31
    monitor-exit p1

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method
