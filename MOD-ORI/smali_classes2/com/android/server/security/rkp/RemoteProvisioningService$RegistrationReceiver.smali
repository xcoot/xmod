.class public final Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final mCallback:Landroid/security/rkp/IGetRegistrationCallback;

.field public final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/security/rkp/IGetRegistrationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Exception;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Landroid/security/rkp/IGetRegistrationCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Error calling error callback "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    .line 22
    .line 23
    invoke-interface {p0}, Landroid/security/rkp/IGetRegistrationCallback;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Landroid/os/IBinder;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "RemoteProvisionSysSvc"

    .line 39
    .line 40
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/security/rkp/service/RegistrationProxy;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    invoke-direct {v1, p1, v2}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;-><init>(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/Executor;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Landroid/security/rkp/IGetRegistrationCallback;->onSuccess(Landroid/security/rkp/IRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Error calling success callback "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    .line 25
    .line 26
    invoke-interface {p0}, Landroid/security/rkp/IGetRegistrationCallback;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Landroid/os/IBinder;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "RemoteProvisionSysSvc"

    .line 42
    .line 43
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
