.class public final Lcom/android/server/vr/VrManagerService$2;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    if-eq v0, v2, :cond_3

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v0, v3, :cond_2

    .line 11
    .line 12
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 13
    .line 14
    if-ne p1, v2, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    :catch_0
    :goto_0
    if-lez p1, :cond_1

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Landroid/service/vr/IPersistentVrStateCallbacks;->onPersistentVrStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "Unknown message type: "

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget p1, p1, Landroid/os/Message;->what:I

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 76
    .line 77
    monitor-enter v0

    .line 78
    :try_start_1
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 79
    .line 80
    iget-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    .line 85
    .line 86
    .line 87
    :cond_4
    monitor-exit v0

    .line 88
    goto :goto_2

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p0

    .line 92
    :cond_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 93
    .line 94
    if-ne p1, v2, :cond_6

    .line 95
    .line 96
    move v1, v2

    .line 97
    :cond_6
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    :catch_1
    :goto_1
    if-lez p1, :cond_7

    .line 106
    .line 107
    add-int/lit8 p1, p1, -0x1

    .line 108
    .line 109
    :try_start_2
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/service/vr/IVrStateCallbacks;

    .line 118
    .line 119
    invoke-interface {v0, v1}, Landroid/service/vr/IVrStateCallbacks;->onVrStateChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_7
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 128
    .line 129
    .line 130
    :goto_2
    return-void
.end method
