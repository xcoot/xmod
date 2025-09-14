.class public Lcom/att/iqi/libs/IQIServiceBroker$BinderService;
.super Lcom/att/iqi/IIQIBroker$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/att/iqi/IIQIBroker$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public disableService()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmContext(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;

    .line 19
    .line 20
    invoke-direct {v3, p0, v0}, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;-><init>(Lcom/att/iqi/libs/IQIServiceBroker$BinderService;Landroid/os/Message;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Landroid/content/IntentFilter;

    .line 24
    .line 25
    const-string v1, "com.att.iqi.action.UPLOAD_COMPLETE"

    .line 26
    .line 27
    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v5, "com.att.iqi.permission.RECEIVE_UPLOAD_NOTIFICATIONS"

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x2

    .line 34
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-wide/16 v2, 0x3a98

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Lcom/att/iqi/IIQIService;->disableService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const-string v0, "disableService failed"

    .line 60
    .line 61
    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "IQIServiceBroker"

    .line 8
    .line 9
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_6

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    move p1, p0

    .line 31
    :goto_0
    array-length v0, p3

    .line 32
    if-ge p1, v0, :cond_6

    .line 33
    .line 34
    aget-object v0, p3, p1

    .line 35
    .line 36
    const-string v1, "-h"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$smdumpHelp(Ljava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string v1, "--concierge"

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$smprintConciergeVersion(Ljava/io/PrintWriter;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const-string v1, "--aar"

    .line 61
    .line 62
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$smprintAARVersion(Ljava/io/PrintWriter;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const-string v1, "-v"

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$smprintArtifactsVersion(Ljava/io/PrintWriter;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-lez p1, :cond_6

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    const/16 p1, 0x2d

    .line 97
    .line 98
    if-ne p0, p1, :cond_6

    .line 99
    .line 100
    const-string p0, "Unknown option: "

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    return-void
.end method

.method public finalize()V
    .locals 0

    .line 1
    const-string p0, "Finalize BinderService"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public forceStopService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/att/iqi/IIQIService;->forceStopService()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-wide/16 v1, 0xfa0

    .line 28
    .line 29
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string v0, "forceStopService failed"

    .line 35
    .line 36
    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public getTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lcom/att/iqi/IIQIService;->getTimestamp()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-wide v0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string v0, "getTimestamp failed"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    return-wide v0
.end method

.method public registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v3, 0x1

    .line 59
    add-int/2addr v2, v3

    .line 60
    if-ne v1, v2, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 v3, 0x0

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    :try_start_2
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 81
    :goto_3
    const-string/jumbo p1, "registerMetricQueryCallback failed"

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_4
    return-void
.end method

.method public registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v3, 0x1

    .line 59
    add-int/2addr v2, v3

    .line 60
    if-ne v1, v2, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 v3, 0x0

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    :try_start_2
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 81
    :goto_3
    const-string/jumbo p1, "registerMetricSourcingCallback failed"

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_4
    return-void
.end method

.method public registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    add-int/2addr v1, v3

    .line 39
    if-ne v2, v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v3, 0x0

    .line 43
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    :try_start_2
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    :goto_1
    const-string/jumbo p1, "registerProfileChangedCallback failed"

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_2
    return-void
.end method

.method public registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmServiceStateChangeList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/ArraySet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmServiceStateChangeList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/ArraySet;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception v2

    .line 23
    :try_start_1
    const-string/jumbo v3, "registerServiceChangedCallback failed"

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v2}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    move v2, v1

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const-string v0, "Call service changed callback now"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :try_start_2
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 39
    .line 40
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;)Lcom/att/iqi/IIQIService;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    :cond_0
    invoke-interface {p1, v1}, Lcom/att/iqi/IServiceStateChangeCallback;->onServiceChange(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_1
    move-exception p0

    .line 52
    const-string/jumbo p1, "notifyServiceState failed"

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_1
    return-void

    .line 59
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    throw p0
.end method

.method public setUnlockCode(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmContext(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.att.iqi.permission.CAN_CHANGE_UNLOCK_KEYCODE"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIService;->setUnlockCode(J)Z

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string/jumbo p1, "setUnlockCode failed"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 36
    .line 37
    const-string p1, "Calling process not allowed to change unlock code"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIService;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string/jumbo p1, "shouldSubmitMetric failed"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIService;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string/jumbo p1, "submitMetric failed"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    goto :goto_2

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string/jumbo p1, "unregisterMetricQueryCallback failed"

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    return-void
.end method

.method public unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    goto :goto_2

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string/jumbo p1, "unregisterMetricSourcingCallback failed"

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    return-void
.end method

.method public unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string/jumbo p1, "unregisterProfileChangedCallback failed"

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmServiceStateChangeList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/ArraySet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmServiceStateChangeList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/ArraySet;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method
