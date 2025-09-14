.class public final Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;


# instance fields
.field public mRemote:Landroid/os/IHwBinder;


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final authenticate(IJ)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/os/HwParcel;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 23
    .line 24
    const/16 p2, 0xa

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final cancel()I
    .locals 4

    .line 1
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 30
    .line 31
    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/NativeHandle;Ljava/util/ArrayList;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {p2}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v0, 0xf444247

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {p0, v0, p1, p2, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final enroll(II[B)I
    .locals 4

    .line 1
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwBlob;

    .line 8
    .line 9
    const/16 v2, 0x45

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 12
    .line 13
    .line 14
    array-length v3, p3

    .line 15
    if-ne v3, v2, :cond_0

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, p3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Landroid/os/HwParcel;

    .line 32
    .line 33
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 37
    .line 38
    const/4 p2, 0x3

    .line 39
    const/4 p3, 0x0

    .line 40
    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 50
    .line 51
    .line 52
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 54
    .line 55
    .line 56
    return p0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string p1, "Array element is not of the expected length"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final enumerate()I
    .locals 4

    .line 1
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v2, 0x7

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 30
    .line 31
    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getAuthenticatorId()J
    .locals 4

    .line 1
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 30
    .line 31
    .line 32
    return-wide v2

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf524546

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    .line 26
    .line 27
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    .line 28
    .line 29
    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 12

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v9, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v9}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v1, 0xf485348

    .line 15
    .line 16
    .line 17
    const/4 v10, 0x0

    .line 18
    invoke-interface {p0, v1, v0, v9, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v9}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    const-wide/16 v0, 0x10

    .line 33
    .line 34
    invoke-virtual {v9, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-wide/16 v1, 0x8

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    mul-int/lit8 v1, v11, 0x20

    .line 45
    .line 46
    int-to-long v2, v1

    .line 47
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    const-wide/16 v6, 0x0

    .line 52
    .line 53
    const/4 v8, 0x1

    .line 54
    move-object v1, v9

    .line 55
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    :goto_0
    if-ge v10, v11, :cond_0

    .line 63
    .line 64
    const/16 v1, 0x20

    .line 65
    .line 66
    new-array v2, v1, [B

    .line 67
    .line 68
    mul-int/lit8 v3, v10, 0x20

    .line 69
    .line 70
    int-to-long v3, v3

    .line 71
    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    add-int/lit8 v10, v10, 0x1

    .line 78
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

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :goto_1
    invoke-virtual {v9}, Landroid/os/HwParcel;->release()V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IHwBinder;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf43484e

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf445343

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf535953

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final ping()V
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf504e47

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final postEnroll()I
    .locals 4

    .line 1
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 30
    .line 31
    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final preEnroll()J
    .locals 4

    .line 1
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 30
    .line 31
    .line 32
    return-wide v2

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final remove(II)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/os/HwParcel;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 23
    .line 24
    const/16 p2, 0x8

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Landroid/os/HwParcel;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 27
    .line 28
    const/16 p2, 0xb

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-interface {p4, p2, p0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;->onValues(Ljava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final setActiveGroup(ILjava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/os/HwParcel;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 23
    .line 24
    const/16 p2, 0x9

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final setHALInstrumentation()V
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf494e54

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    .locals 3

    .line 1
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/os/HwParcel;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt64()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 41
    .line 42
    .line 43
    return-wide v0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->interfaceDescriptor()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "@Proxy"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    const-string p0, "[class or subclass of vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint]@Proxy"

    .line 24
    .line 25
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
