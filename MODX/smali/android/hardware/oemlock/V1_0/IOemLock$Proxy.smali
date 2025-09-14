.class public final Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# instance fields
.field public mRemote:Landroid/os/IHwBinder;


# direct methods
.method public static getService()Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;
    .locals 5

    .line 1
    const-string/jumbo v0, "default"

    .line 4
    const-string v1, "android.hardware.oemlock@1.0::IOemLock"

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v0, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_1

    .line 21
    instance-of v4, v3, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 23
    if-eqz v4, :cond_1

    .line 25
    move-object v2, v3

    .line 26
    check-cast v2, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v3, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 31
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, v3, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 36
    :try_start_0
    invoke-virtual {v3}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-eqz v4, :cond_2

    .line 62
    move-object v2, v3

    .line 63
    :catch_0
    :cond_3
    :goto_0
    return-object v2
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 3
    return-object p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 3
    invoke-static {v0, p1, p2}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/NativeHandle;Ljava/util/ArrayList;)Landroid/os/HwParcel;

    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Landroid/os/HwParcel;

    .line 9
    invoke-direct {p2}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const v0, 0xf444247

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {p0, v0, p1, p2, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 21
    invoke-virtual {p2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 24
    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 35
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const v2, 0xf524546

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 27
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    .line 29
    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 32
    invoke-virtual {p0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 43
    throw p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 12

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object v0

    .line 7
    new-instance v9, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v9}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const v1, 0xf485348

    .line 17
    const/4 v10, 0x0

    .line 18
    invoke-interface {p0, v1, v0, v9, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 21
    invoke-virtual {v9}, Landroid/os/HwParcel;->verifySuccess()V

    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 27
    new-instance p0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    const-wide/16 v0, 0x10

    .line 34
    invoke-virtual {v9, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 37
    move-result-object v0

    .line 38
    const-wide/16 v1, 0x8

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 43
    move-result v11

    .line 44
    mul-int/lit8 v1, v11, 0x20

    .line 46
    int-to-long v2, v1

    .line 47
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    .line 50
    move-result-wide v4

    .line 51
    const-wide/16 v6, 0x0

    .line 53
    const/4 v8, 0x1

    .line 54
    move-object v1, v9

    .line 55
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 62
    :goto_0
    if-ge v10, v11, :cond_0

    .line 64
    const/16 v1, 0x20

    .line 66
    new-array v2, v1, [B

    .line 68
    mul-int/lit8 v3, v10, 0x20

    .line 70
    int-to-long v3, v3

    .line 71
    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 74
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    add-int/lit8 v10, v10, 0x1

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {v9}, Landroid/os/HwParcel;->release()V

    .line 85
    return-object p0

    .line 86
    :goto_1
    invoke-virtual {v9}, Landroid/os/HwParcel;->release()V

    .line 89
    throw p0
.end method

.method public final getName(Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.oemlock@1.0::IOemLock"

    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 37
    iget-object v2, p1, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/Integer;

    .line 39
    aput-object p0, v2, v3

    .line 41
    iget-object p0, p1, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    .line 43
    check-cast p0, [Ljava/lang/String;

    .line 45
    aput-object v0, p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 55
    throw p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 3
    invoke-interface {p0}, Landroid/os/IHwBinder;->hashCode()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const v2, 0xf43484e

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 27
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 39
    throw p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const v2, 0xf445343

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 27
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 39
    throw p0
.end method

.method public final isOemUnlockAllowedByCarrier(Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.oemlock@1.0::IOemLock"

    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    .line 32
    move-result v0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 37
    iget-object v2, p1, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/Integer;

    .line 39
    aput-object p0, v2, v3

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object p0

    .line 45
    iget-object p1, p1, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    .line 47
    check-cast p1, [Ljava/lang/Boolean;

    .line 49
    aput-object p0, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 59
    throw p0
.end method

.method public final isOemUnlockAllowedByDevice(Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.oemlock@1.0::IOemLock"

    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const/4 v2, 0x5

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    .line 32
    move-result v0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 37
    iget-object v2, p1, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/Integer;

    .line 39
    aput-object p0, v2, v3

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object p0

    .line 45
    iget-object p1, p1, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    .line 47
    check-cast p1, [Ljava/lang/Boolean;

    .line 49
    aput-object p0, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 59
    throw p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const v2, 0xf535953

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 21
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 32
    throw p0
.end method

.method public final ping()V
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const v2, 0xf504e47

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 35
    throw p0
.end method

.method public final setHALInstrumentation()V
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const v2, 0xf494e54

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 21
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 32
    throw p0
.end method

.method public final setOemUnlockAllowedByCarrier(Ljava/util/ArrayList;Z)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 6
    const-string v1, "android.hardware.oemlock@1.0::IOemLock"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 17
    new-instance p1, Landroid/os/HwParcel;

    .line 19
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 22
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 24
    const/4 p2, 0x2

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 29
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 32
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 35
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 38
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 42
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 47
    throw p0
.end method

.method public final setOemUnlockAllowedByDevice(Z)I
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 6
    const-string v1, "android.hardware.oemlock@1.0::IOemLock"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 14
    new-instance p1, Landroid/os/HwParcel;

    .line 16
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 19
    :try_start_0
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 21
    const/4 v1, 0x4

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 26
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 29
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 32
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 35
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 44
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->interfaceDescriptor()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, "@Proxy"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    const-string p0, "[class or subclass of android.hardware.oemlock@1.0::IOemLock]@Proxy"

    .line 25
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method
