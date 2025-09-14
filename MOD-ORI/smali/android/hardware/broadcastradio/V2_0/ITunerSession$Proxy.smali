.class public final Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# instance fields
.field public mRemote:Landroid/os/IHwBinder;


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 2
    .line 3
    return-object p0
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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final isConfigFlagSet(ILcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;)V
    .locals 3

    .line 1
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v1, 0x7

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

    .line 29
    invoke-virtual {v0}, Landroid/os/HwParcel;->readBool()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v1, p2, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroid/util/MutableInt;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p2, Landroid/util/MutableBoolean;

    .line 40
    .line 41
    iput p0, v1, Landroid/util/MutableInt;->value:I

    .line 42
    .line 43
    iput-boolean p1, p2, Landroid/util/MutableBoolean;->value:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final scan(ZZ)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 23
    .line 24
    const/4 p2, 0x2

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final setConfigFlag(IZ)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I
    .locals 13

    .line 1
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

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
    const/16 v2, 0x28

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-wide/16 v3, 0x8

    .line 21
    .line 22
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v5, 0xc

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Landroid/os/HwBlob;

    .line 32
    .line 33
    mul-int/lit8 v6, v2, 0x4

    .line 34
    .line 35
    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 36
    .line 37
    .line 38
    move v6, v7

    .line 39
    :goto_0
    if-ge v6, v2, :cond_0

    .line 40
    .line 41
    mul-int/lit8 v8, v6, 0x4

    .line 42
    .line 43
    int-to-long v8, v8

    .line 44
    iget-object v10, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    check-cast v10, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    invoke-virtual {v5, v8, v9, v10}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-wide/16 v8, 0x0

    .line 63
    .line 64
    invoke-virtual {v1, v8, v9, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const-wide/16 v5, 0x18

    .line 74
    .line 75
    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v5, 0x1c

    .line 79
    .line 80
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 81
    .line 82
    .line 83
    new-instance v5, Landroid/os/HwBlob;

    .line 84
    .line 85
    mul-int/lit8 v6, v2, 0x10

    .line 86
    .line 87
    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 88
    .line 89
    .line 90
    move v6, v7

    .line 91
    :goto_1
    if-ge v6, v2, :cond_1

    .line 92
    .line 93
    iget-object v8, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    check-cast v8, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 100
    .line 101
    mul-int/lit8 v9, v6, 0x10

    .line 102
    .line 103
    int-to-long v9, v9

    .line 104
    iget v11, v8, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 105
    .line 106
    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 107
    .line 108
    .line 109
    add-long/2addr v9, v3

    .line 110
    iget-wide v11, v8, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    .line 111
    .line 112
    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 v6, v6, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    const-wide/16 v2, 0x10

    .line 119
    .line 120
    invoke-virtual {v1, v2, v3, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 121
    .line 122
    .line 123
    const-wide/16 v2, 0x20

    .line 124
    .line 125
    iget-boolean v4, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 126
    .line 127
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 128
    .line 129
    .line 130
    const-wide/16 v2, 0x21

    .line 131
    .line 132
    iget-boolean p1, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 133
    .line 134
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Landroid/os/HwParcel;

    .line 141
    .line 142
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 143
    .line 144
    .line 145
    :try_start_0
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 146
    .line 147
    const/4 v1, 0x5

    .line 148
    invoke-interface {p0, v1, v0, p1, v7}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 158
    .line 159
    .line 160
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 162
    .line 163
    .line 164
    return p0

    .line 165
    :catchall_0
    move-exception p0

    .line 166
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 167
    .line 168
    .line 169
    throw p0
.end method

.method public final step(Z)I
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 20
    .line 21
    const/4 v1, 0x3

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
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of android.hardware.broadcastradio@2.0::ITunerSession]@Proxy"

    .line 24
    .line 25
    return-object p0
.end method

.method public final tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I
    .locals 13

    .line 1
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

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
    const/16 v2, 0x20

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p1, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 15
    .line 16
    iget v3, v2, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 21
    .line 22
    .line 23
    iget-wide v2, v2, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    .line 24
    .line 25
    const-wide/16 v4, 0x8

    .line 26
    .line 27
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p1, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-wide/16 v6, 0x18

    .line 37
    .line 38
    invoke-virtual {v1, v6, v7, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v6, 0x1c

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 45
    .line 46
    .line 47
    new-instance v6, Landroid/os/HwBlob;

    .line 48
    .line 49
    mul-int/lit8 v7, v2, 0x10

    .line 50
    .line 51
    invoke-direct {v6, v7}, Landroid/os/HwBlob;-><init>(I)V

    .line 52
    .line 53
    .line 54
    move v7, v3

    .line 55
    :goto_0
    if-ge v7, v2, :cond_0

    .line 56
    .line 57
    iget-object v8, p1, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 64
    .line 65
    mul-int/lit8 v9, v7, 0x10

    .line 66
    .line 67
    int-to-long v9, v9

    .line 68
    iget v11, v8, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 69
    .line 70
    invoke-virtual {v6, v9, v10, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 71
    .line 72
    .line 73
    add-long/2addr v9, v4

    .line 74
    iget-wide v11, v8, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    .line 75
    .line 76
    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v7, v7, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const-wide/16 v4, 0x10

    .line 83
    .line 84
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Landroid/os/HwParcel;

    .line 91
    .line 92
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 93
    .line 94
    .line 95
    :try_start_0
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    invoke-interface {p0, v1, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 108
    .line 109
    .line 110
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 112
    .line 113
    .line 114
    return p0

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 117
    .line 118
    .line 119
    throw p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

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
