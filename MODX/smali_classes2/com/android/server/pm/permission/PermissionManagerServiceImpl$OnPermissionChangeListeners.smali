.class public final Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPermissionListeners:Landroid/os/RemoteCallbackList;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/permission/IOnPermissionsChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    :try_start_1
    const-string v3, "default:0"

    .line 27
    .line 28
    invoke-interface {v2, p1, v3}, Landroid/permission/IOnPermissionsChangeListener;->onPermissionsChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception v2

    .line 35
    :try_start_2
    const-string v3, "PermissionManager"

    .line 36
    .line 37
    const-string v4, "Permission listener is dead"

    .line 38
    .line 39
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    .line 42
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 54
    .line 55
    .line 56
    :goto_3
    return-void
.end method

.method public final onPermissionsChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
