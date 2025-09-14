.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/VcnManagementService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$1:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/VcnManagementService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$1:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    .line 14
    .line 15
    invoke-direct {v1, v0, p0}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    iget-object v0, v0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {p0}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v0, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-interface {p0}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-interface {p0, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->binderDied()V

    .line 44
    .line 45
    .line 46
    :goto_0
    monitor-exit v2

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw p0

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/VcnManagementService;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$1:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v1

    .line 57
    :try_start_3
    iget-object v0, v0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {p0}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v0, Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-interface {p0}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-interface {p0, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_0
    :goto_2
    monitor-exit v1

    .line 85
    return-void

    .line 86
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    throw p0

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
