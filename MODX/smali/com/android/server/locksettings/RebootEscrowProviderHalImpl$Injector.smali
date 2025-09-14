.class public final Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "android.hardware.rebootescrow.IRebootEscrow/default"

    .line 4
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object v1

    .line 8
    sget v2, Landroid/hardware/rebootescrow/IRebootEscrow$Stub;->$r8$clinit:I

    .line 10
    if-nez v1, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget-object v2, Landroid/hardware/rebootescrow/IRebootEscrow;->DESCRIPTOR:Ljava/lang/String;

    .line 15
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_1

    .line 21
    instance-of v3, v2, Landroid/hardware/rebootescrow/IRebootEscrow;

    .line 23
    if-eqz v3, :cond_1

    .line 25
    check-cast v2, Landroid/hardware/rebootescrow/IRebootEscrow;

    .line 27
    :goto_0
    move-object v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance v2, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;

    .line 31
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, v2, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :goto_1
    return-object v0

    .line 38
    :catch_0
    const-string v1, "RebootEscrowProviderHal"

    .line 40
    const-string v2, "Device doesn\'t implement RebootEscrow HAL"

    .line 42
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-object v0
.end method
