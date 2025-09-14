.class public final synthetic Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    iput-object p2, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;ZLandroid/net/RouteInfo;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    iput-boolean p2, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$2:Z

    iput-object p3, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/net/RouteInfo;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :goto_0
    if-ge v2, v1, :cond_0

    .line 26
    .line 27
    :try_start_0
    iget-object v3, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    .line 34
    .line 35
    invoke-interface {v3, p0}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p0, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 52
    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_1
    iget-object v1, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_2
    if-ge v2, v1, :cond_2

    .line 62
    .line 63
    :try_start_1
    iget-object v3, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    .line 70
    .line 71
    invoke-interface {v3, p0}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :catchall_1
    move-exception p0

    .line 76
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :catch_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    iget-object p0, v0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 88
    .line 89
    .line 90
    :goto_4
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Ljava/lang/String;

    .line 96
    .line 97
    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$2:Z

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance v2, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    invoke-direct {v2, v3, v1, p0}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Ljava/lang/String;

    .line 119
    .line 120
    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;->f$2:Z

    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v2, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;

    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    invoke-direct {v2, v3, v1, p0}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
