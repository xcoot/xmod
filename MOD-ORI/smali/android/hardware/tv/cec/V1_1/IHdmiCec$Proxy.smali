.class public final Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/tv/cec/V1_1/IHdmiCec;


# instance fields
.field public mRemote:Landroid/os/IHwBinder;


# virtual methods
.method public final addLogicalAddress(I)I
    .locals 3

    .line 1
    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCec"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {p0, v1, p1, v0, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/HwParcel;->readInt32()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 30
    .line 31
    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final clearLogicalAddress()V
    .locals 4

    .line 1
    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCec"

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 31
    .line 32
    .line 33
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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final enableAudioReturnChannel(IZ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.tv.cec@1.0::IHdmiCec"

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
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 23
    .line 24
    const/16 p2, 0xb

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 42
    .line 43
    .line 44
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

.method public final getCecVersion()I
    .locals 4

    .line 1
    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCec"

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final getPhysicalAddress(Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCec"

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v2, 0x3

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

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt16()S

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-interface {p1, p0, v0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;->onValues(IS)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final getPortInfo()Ljava/util/ArrayList;
    .locals 4

    .line 1
    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCec"

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final getVendorId()I
    .locals 4

    .line 1
    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCec"

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final isConnected(I)Z
    .locals 3

    .line 1
    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCec"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/16 v1, 0xc

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {p0, v1, p1, v0, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/os/HwParcel;->readBool()Z

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final sendMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)I
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.tv.cec@1.0::IHdmiCec"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/hardware/tv/cec/V1_0/CecMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/os/HwParcel;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 37
    .line 38
    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final sendMessage_1_1(Landroid/hardware/tv/cec/V1_1/CecMessage;)I
    .locals 9

    .line 1
    const-string v0, "android.hardware.tv.cec@1.1::IHdmiCec"

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
    const/16 v2, 0x18

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget v2, p1, Landroid/hardware/tv/cec/V1_1/CecMessage;->initiator:I

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0x4

    .line 22
    .line 23
    iget v4, p1, Landroid/hardware/tv/cec/V1_1/CecMessage;->destination:I

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p1, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const-wide/16 v3, 0x10

    .line 35
    .line 36
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v3, 0x14

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Landroid/os/HwBlob;

    .line 46
    .line 47
    invoke-direct {v3, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 48
    .line 49
    .line 50
    move v4, v5

    .line 51
    :goto_0
    if-ge v4, v2, :cond_0

    .line 52
    .line 53
    int-to-long v6, v4

    .line 54
    iget-object v8, p1, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    check-cast v8, Ljava/lang/Byte;

    .line 61
    .line 62
    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    invoke-virtual {v3, v6, v7, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const-wide/16 v6, 0x8

    .line 73
    .line 74
    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Landroid/os/HwParcel;

    .line 81
    .line 82
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 83
    .line 84
    .line 85
    :try_start_0
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 86
    .line 87
    const/16 v1, 0xe

    .line 88
    .line 89
    invoke-interface {p0, v1, v0, p1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 99
    .line 100
    .line 101
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 103
    .line 104
    .line 105
    return p0

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 108
    .line 109
    .line 110
    throw p0
.end method

.method public final setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.tv.cec@1.0::IHdmiCec"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/os/HwParcel;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final setCallback_1_1(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.tv.cec@1.1::IHdmiCec"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/os/HwParcel;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 20
    .line 21
    const/16 v1, 0xf

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 39
    .line 40
    .line 41
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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final setLanguage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.tv.cec@1.0::IHdmiCec"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/os/HwParcel;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final setOption(IZ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.tv.cec@1.0::IHdmiCec"

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
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

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
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 42
    .line 43
    .line 44
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
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of android.hardware.tv.cec@1.1::IHdmiCec]@Proxy"

    .line 24
    .line 25
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

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
