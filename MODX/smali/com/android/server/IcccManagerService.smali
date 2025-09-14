.class public Lcom/android/server/IcccManagerService;
.super Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field public icccBroadcastReceiver:Lcom/android/server/IcccManagerService$1;


# direct methods
.method public static -$$Nest$mget_iccc_response_data(Lcom/android/server/IcccManagerService;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "AT+ICCCINFO=1,0,0\r\n+ICCCINFO:1,1,"

    .line 3
    monitor-enter p0

    .line 4
    const v1, -0xffff4

    .line 7
    :try_start_0
    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    .line 10
    move-result v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, ","

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const v1, -0xffff6

    .line 35
    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    .line 38
    move-result v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v0, ","

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    .line 84
    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    monitor-exit p0

    .line 87
    throw v0
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v2

    .line 11
    const-string v3, "IcccManagerService"

    .line 13
    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    const-string p0, "IcccManagerService() - Valid Caller"

    .line 21
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    const-string v2, "Security Exception Occurred while pid["

    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, "] with uid["

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v2, "] trying to access methodName ["

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string p0, "] in [IcccManagerService] service"

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 73
    const-string p0, "IcccManagerService() - Invalid Caller"

    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    throw v0
.end method

.method public static native get_Trusted_Boot_Data()I
.end method

.method public static native iccc_attestation_platform([B)[B
.end method

.method public static native iccc_device_info([B)[B
.end method

.method public static native iccc_device_status(I[B)[B
.end method

.method public static native iccc_get_bldp_data()[B
.end method

.method public static native iccc_load()I
.end method

.method public static native iccc_readData_platform(I)I
.end method

.method public static native iccc_saveData_platform(II)I
.end method

.method public static native iccc_unload()I
.end method


# virtual methods
.method public final declared-synchronized getBldpData()[B
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "getBldpData"

    .line 5
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_get_bldp_data()[B

    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public final declared-synchronized getDeviceInfo([B)[B
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "getDeviceInfo"

    .line 5
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_device_info([B)[B

    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public final declared-synchronized getDeviceStatus(I[B)[B
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "getDeviceStatus"

    .line 5
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_load()I

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string p1, "IcccManagerService"

    .line 16
    const-string/jumbo p2, "iccc_load failure"

    .line 19
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_device_status(I[B)[B

    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_unload()I

    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 37
    const-string p2, "IcccManagerService"

    .line 39
    const-string/jumbo v0, "iccc_unload failure"

    .line 42
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_1
    monitor-exit p0

    .line 46
    return-object p1

    .line 47
    :goto_0
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public final declared-synchronized getSecureData(I)I
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    .line 5
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public final declared-synchronized getTrustedBootData()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/server/IcccManagerService;->get_Trusted_Boot_Data()I

    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method

.method public final declared-synchronized setAttestationData([B)[B
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "setAttestationData"

    .line 5
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_attestation_platform([B)[B

    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public final declared-synchronized setSecureData(II)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x3e8

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const-string p1, "IcccManagerService"

    .line 19
    const-string p2, "Not System UID. Only system UID caller can change status"

    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 p1, -0x1

    .line 25
    :goto_0
    monitor-exit p0

    .line 26
    return p1

    .line 27
    :goto_1
    monitor-exit p0

    .line 28
    throw p1
.end method
