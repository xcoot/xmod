.class public final Lcom/android/server/oemlock/VendorLockAidl;
.super Lcom/android/server/oemlock/OemLock;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mOemLock:Landroid/hardware/oemlock/IOemLock;


# direct methods
.method public static getOemLockHalService()Landroid/hardware/oemlock/IOemLock;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/hardware/oemlock/IOemLock;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, "/default"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v2, Landroid/hardware/oemlock/IOemLock$Stub;->$r8$clinit:I

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    instance-of v2, v1, Landroid/hardware/oemlock/IOemLock;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    check-cast v0, Landroid/hardware/oemlock/IOemLock;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, v1, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 50
    .line 51
    move-object v0, v1

    .line 52
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final getLockName()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    .line 2
    .line 3
    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "OemLock"

    .line 12
    .line 13
    const-string v1, "Failed to get name from HAL"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0
.end method

.method public final isOemUnlockAllowedByCarrier()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    .line 2
    .line 3
    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->isOemUnlockAllowedByCarrier()Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "OemLock"

    .line 12
    .line 13
    const-string v1, "Failed to get carrier state from HAL"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0
.end method

.method public final isOemUnlockAllowedByDevice()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    .line 2
    .line 3
    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->isOemUnlockAllowedByDevice()Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "OemLock"

    .line 12
    .line 13
    const-string v1, "Failed to get devie state from HAL"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0
.end method

.method public final setOemUnlockAllowedByCarrier(Z[B)V
    .locals 3

    .line 1
    const-string v0, "Updated carrier allows OEM lock state to: "

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    .line 4
    .line 5
    const-string v1, "OemLock"

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    new-array v2, v2, [B

    .line 11
    .line 12
    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v2}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->setOemUnlockAllowedByCarrier(Z[B)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->setOemUnlockAllowedByCarrier(Z[B)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    :goto_0
    if-eqz p0, :cond_4

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    if-eq p0, p1, :cond_3

    .line 31
    .line 32
    const/4 p1, 0x2

    .line 33
    if-ne p0, p1, :cond_2

    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p1, "Signature required for carrier unlock"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 46
    .line 47
    const-string p1, "Invalid signature used in attempt to carrier unlock"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    const-string p1, "Failed to set carrier OEM unlock state"

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_1
    const-string p1, "Failed to set carrier state with HAL"

    .line 83
    .line 84
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    throw p0
.end method

.method public final setOemUnlockAllowedByDevice(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    .line 2
    .line 3
    check-cast p0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;->setOemUnlockAllowedByDevice(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const-string p1, "OemLock"

    .line 11
    .line 12
    const-string v0, "Failed to set device state with HAL"

    .line 13
    .line 14
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    throw p0
.end method
