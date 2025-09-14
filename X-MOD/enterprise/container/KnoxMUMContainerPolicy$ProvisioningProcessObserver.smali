.class public final Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final maybeUnregister()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 3
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 8
    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 10
    if-nez v1, :cond_1

    .line 12
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 14
    const-string v1, "KnoxMUMContainerPolicy"

    .line 16
    const-string/jumbo v2, "maybeUnregister() unregistering process observer"

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 24
    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 26
    if-eqz v1, :cond_0

    .line 28
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 34
    iget-object v2, v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 36
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 39
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 44
    const-string p0, "KnoxMUMContainerPolicy"

    .line 46
    const-string/jumbo v1, "provisioning observer unregistered"

    .line 49
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p0

    .line 56
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 59
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 61
    const-string p0, "KnoxMUMContainerPolicy"

    .line 63
    const-string v1, "Can\'t unregisterProcessObserver"

    .line 65
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    :goto_0
    monitor-exit v0

    .line 69
    const/4 p0, 0x1

    .line 70
    return p0

    .line 71
    :cond_1
    monitor-exit v0

    .line 72
    const/4 p0, 0x0

    .line 73
    return p0

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0
.end method

.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    .line 4
    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    .line 4
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 17
    iget-object p2, p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 19
    monitor-enter p2

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 22
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 24
    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 26
    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 28
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    iget v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    .line 31
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    const/4 v1, 0x1

    .line 33
    const/16 v2, 0xc

    .line 35
    if-eq v0, v1, :cond_3

    .line 37
    const/4 v1, 0x2

    .line 38
    if-eq v0, v1, :cond_3

    .line 40
    const/4 v1, 0x3

    .line 41
    if-eq v0, v1, :cond_2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 46
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iget v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidKnox:I

    .line 53
    if-ne v0, p1, :cond_4

    .line 55
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 57
    const-string p1, "KnoxMUMContainerPolicy"

    .line 59
    const-string v0, "KnoxCore died.."

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p1, Landroid/os/Bundle;

    .line 66
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string/jumbo v0, "state"

    .line 72
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 77
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 79
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    .line 82
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 90
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    iget v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidProvision:I

    .line 97
    if-ne v0, p1, :cond_4

    .line 99
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 101
    const-string p1, "KnoxMUMContainerPolicy"

    .line 103
    const-string/jumbo v0, "managedprovisioning died.."

    .line 106
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance p1, Landroid/os/Bundle;

    .line 111
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 114
    const-string/jumbo v0, "state"

    .line 117
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 122
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    .line 124
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    .line 127
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    .line 130
    :cond_4
    :goto_0
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    return-void

    .line 132
    :catchall_1
    move-exception p0

    .line 133
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :try_start_4
    throw p0

    .line 135
    :goto_1
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    throw p0
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
