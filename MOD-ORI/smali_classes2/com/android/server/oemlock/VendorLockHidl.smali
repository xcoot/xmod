.class public final Lcom/android/server/oemlock/VendorLockHidl;
.super Lcom/android/server/oemlock/OemLock;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;


# direct methods
.method public static getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->getService()Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    throw v0

    .line 12
    :catch_1
    const-string v0, "OemLock"

    .line 13
    .line 14
    const-string v1, "OemLock Hidl HAL not present on device"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method


# virtual methods
.method public final getLockName()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "OemLock"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/String;

    .line 5
    .line 6
    new-array v3, v1, [Ljava/lang/Integer;

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 9
    .line 10
    new-instance v4, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v4, v3, v2}, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Integer;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->getName(Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    aget-object v3, v3, p0

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    if-eq v3, v1, :cond_0

    .line 29
    .line 30
    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    const-string v1, "Failed to get OEM lock name."

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    aget-object p0, v2, p0

    .line 43
    .line 44
    return-object p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string v1, "Failed to get name from HAL"

    .line 47
    .line 48
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    throw p0
.end method

.method public final isOemUnlockAllowedByCarrier()Z
    .locals 5

    .line 1
    const-string v0, "OemLock"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Boolean;

    .line 5
    .line 6
    new-array v3, v1, [Ljava/lang/Integer;

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 9
    .line 10
    new-instance v4, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v4, v3, v2}, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Integer;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->isOemUnlockAllowedByCarrier(Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    aget-object v3, v3, p0

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    if-eq v3, v1, :cond_0

    .line 28
    .line 29
    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v0, "Failed to get carrier OEM unlock state"

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    aget-object p0, v2, p0

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    const-string v1, "Failed to get carrier state from HAL"

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    throw p0
.end method

.method public final isOemUnlockAllowedByDevice()Z
    .locals 5

    .line 1
    const-string v0, "OemLock"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Boolean;

    .line 5
    .line 6
    new-array v3, v1, [Ljava/lang/Integer;

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 9
    .line 10
    new-instance v4, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v4, v3, v2}, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Integer;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->isOemUnlockAllowedByDevice(Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    aget-object v3, v3, p0

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    if-eq v3, v1, :cond_0

    .line 28
    .line 29
    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v0, "Failed to get device OEM unlock state"

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    aget-object p0, v2, p0

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    const-string v1, "Failed to get devie state from HAL"

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    throw p0
.end method

.method public final setOemUnlockAllowedByCarrier(Z[B)V
    .locals 5

    .line 1
    const-string v0, "OemLock"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    array-length v2, p2

    .line 14
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    array-length v2, p2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    aget-byte v4, p2, v3

    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object p2, v1

    .line 34
    :goto_1
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 35
    .line 36
    invoke-virtual {p0, p2, p1}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->setOemUnlockAllowedByCarrier(Ljava/util/ArrayList;Z)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_5

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    if-eq p0, p1, :cond_4

    .line 44
    .line 45
    const/4 p1, 0x2

    .line 46
    if-ne p0, p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string p1, "Signature required for carrier unlock"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 65
    .line 66
    const-string p1, "Invalid signature used in attempt to carrier unlock"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_3
    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    .line 73
    .line 74
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    const-string p1, "Failed to set carrier OEM unlock state"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string p2, "Updated carrier allows OEM lock state to: "

    .line 91
    .line 92
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :goto_2
    const-string p1, "Failed to set carrier state with HAL"

    .line 107
    .line 108
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    throw p0
.end method

.method public final setOemUnlockAllowedByDevice(Z)V
    .locals 2

    .line 1
    const-string v0, "OemLock"

    .line 2
    .line 3
    const-string v1, "Updated device allows OEM lock state to: "

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->setOemUnlockAllowedByDevice(Z)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    if-eq p0, p1, :cond_0

    .line 15
    .line 16
    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    const-string p1, "Failed to set device OEM unlock state"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_1
    const-string p1, "Failed to set device state with HAL"

    .line 49
    .line 50
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    throw p0
.end method
