.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserManager;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/VcnManagementService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    .line 18
    .line 19
    invoke-interface {p0}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->onPolicyChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string v0, "VcnStatusCallback threw on VCN status change"

    .line 25
    .line 26
    const-string v1, "VcnManagementService"

    .line 27
    .line 28
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroid/os/UserManager;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Landroid/os/UserHandle;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 52
    .line 53
    const-string v0, "VcnManagementService can only be used by callers running as the main user"

    .line 54
    .line 55
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lcom/android/server/VcnManagementService;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Landroid/os/ParcelUuid;

    .line 66
    .line 67
    iget-object v1, v0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v1

    .line 70
    :try_start_1
    iget-object v2, v0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 71
    .line 72
    check-cast v2, Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 78
    .line 79
    check-cast v2, Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v0, p0}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    .line 86
    .line 87
    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, p0, v2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    .line 95
    .line 96
    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p0

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
