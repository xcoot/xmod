.class public final synthetic Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 5
    iput-object p2, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 8
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    move-result v4

    .line 19
    const-class v1, Lcom/android/server/net/NetworkManagementService;

    .line 21
    const-string v1, "Interface "

    .line 23
    const-string v2, " is tethered"

    .line 25
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v6

    .line 29
    const/4 v1, 0x5

    .line 30
    const/4 v2, 0x4

    .line 31
    const/4 v3, 0x1

    .line 32
    const-string v5, "NetworkManagementService"

    .line 34
    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 39
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_0
    if-ge v2, v1, :cond_0

    .line 46
    :try_start_0
    iget-object v3, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 48
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    .line 54
    invoke-interface {v3, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 61
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 64
    throw p0

    .line 65
    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object p0, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 70
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 73
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 76
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 78
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 80
    iget-object v1, v0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 82
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, v0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 87
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 93
    move-result v5

    .line 94
    const-class v1, Lcom/android/server/net/NetworkManagementService;

    .line 96
    const-string v1, "Interface "

    .line 98
    const-string v2, " is untethered"

    .line 100
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object v7

    .line 104
    const/4 v2, 0x5

    .line 105
    const/4 v3, 0x4

    .line 106
    const/4 v4, 0x1

    .line 107
    const-string v6, "NetworkManagementService"

    .line 109
    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 114
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 117
    move-result v1

    .line 118
    const/4 v2, 0x0

    .line 119
    :goto_2
    if-ge v2, v1, :cond_1

    .line 121
    :try_start_1
    iget-object v3, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 123
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    .line 129
    invoke-interface {v3, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    goto :goto_3

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 136
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 139
    throw p0

    .line 140
    :catch_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 142
    goto :goto_2

    .line 143
    :cond_1
    iget-object p0, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 145
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 148
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
