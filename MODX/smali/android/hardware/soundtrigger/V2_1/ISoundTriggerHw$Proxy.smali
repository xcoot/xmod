.class public final Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;


# instance fields
.field public mRemote:Landroid/os/IHwBinder;


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final getProperties(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

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
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 31
    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;-><init>()V

    .line 34
    const-wide/16 v2, 0x58

    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    .line 43
    iget-object v2, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 47
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 52
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 63
    throw p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 6
    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->writeToParcel(Landroid/os/HwParcel;)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 21
    new-instance p2, Landroid/os/HwParcel;

    .line 23
    invoke-direct {p2}, Landroid/os/HwParcel;-><init>()V

    .line 26
    :try_start_0
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-interface {p0, v1, v0, p2, p1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 32
    invoke-virtual {p2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 35
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 38
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 41
    move-result p0

    .line 42
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 45
    move-result p1

    .line 46
    iget-object v0, p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    iget-object p3, p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 50
    check-cast p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 55
    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 66
    throw p0
.end method

.method public final loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 6
    const-string v1, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->writeToParcel(Landroid/os/HwParcel;)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 21
    new-instance p2, Landroid/os/HwParcel;

    .line 23
    invoke-direct {p2}, Landroid/os/HwParcel;-><init>()V

    .line 26
    :try_start_0
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 28
    const/16 v1, 0x9

    .line 30
    invoke-interface {p0, v1, v0, p2, p1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 33
    invoke-virtual {p2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 36
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 39
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 42
    move-result p0

    .line 43
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 46
    move-result p1

    .line 47
    iget-object v0, p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    iget-object p3, p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 51
    check-cast p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 56
    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 67
    throw p0
.end method

.method public final loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 6
    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->writeToParcel(Landroid/os/HwParcel;)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 21
    new-instance p2, Landroid/os/HwParcel;

    .line 23
    invoke-direct {p2}, Landroid/os/HwParcel;-><init>()V

    .line 26
    :try_start_0
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-interface {p0, v1, v0, p2, p1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 32
    invoke-virtual {p2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 35
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 38
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 41
    move-result p0

    .line 42
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 45
    move-result p1

    .line 46
    iget-object v0, p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    iget-object p3, p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 50
    check-cast p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 55
    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 66
    throw p0
.end method

.method public final loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwBlob;

    .line 9
    const/16 v2, 0x60

    .line 11
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 14
    iget-object v2, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 16
    check-cast v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 18
    invoke-virtual {v2, v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->writeEmbeddedToBlob(Landroid/os/HwBlob;)V

    .line 21
    const-wide/16 v2, 0x38

    .line 23
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 25
    check-cast p1, Landroid/os/HidlMemory;

    .line 27
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putHidlMemory(JLandroid/os/HidlMemory;)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 33
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 40
    new-instance p2, Landroid/os/HwParcel;

    .line 42
    invoke-direct {p2}, Landroid/os/HwParcel;-><init>()V

    .line 45
    :try_start_0
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 47
    const/16 v1, 0x8

    .line 49
    invoke-interface {p0, v1, v0, p2, p1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 52
    invoke-virtual {p2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 55
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 58
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 61
    move-result p0

    .line 62
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 65
    move-result p1

    .line 66
    iget-object v0, p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    iget-object p3, p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 70
    check-cast p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 75
    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 86
    throw p0
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
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public final startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 6
    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 14
    invoke-virtual {p2, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->writeToParcel(Landroid/os/HwParcel;)V

    .line 17
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 24
    new-instance p2, Landroid/os/HwParcel;

    .line 26
    invoke-direct {p2}, Landroid/os/HwParcel;-><init>()V

    .line 29
    :try_start_0
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 31
    const/4 p3, 0x5

    .line 32
    invoke-interface {p0, p3, v0, p2, p1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 35
    invoke-virtual {p2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 38
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 41
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 44
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 53
    throw p0
.end method

.method public final startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;)I
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    .line 3
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 6
    const-string v1, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance p1, Landroid/os/HwBlob;

    .line 19
    const/16 v1, 0x58

    .line 21
    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 24
    iget-object v1, p2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 26
    check-cast v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    .line 28
    invoke-virtual {v1, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;)V

    .line 31
    const-wide/16 v1, 0x30

    .line 33
    iget-object p2, p2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 35
    check-cast p2, Landroid/os/HidlMemory;

    .line 37
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putHidlMemory(JLandroid/os/HidlMemory;)V

    .line 40
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 43
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 50
    new-instance p2, Landroid/os/HwParcel;

    .line 52
    invoke-direct {p2}, Landroid/os/HwParcel;-><init>()V

    .line 55
    :try_start_0
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 57
    const/16 p3, 0xa

    .line 59
    invoke-interface {p0, p3, v0, p2, p1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 62
    invoke-virtual {p2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 65
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 68
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 71
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 75
    return p0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 80
    throw p0
.end method

.method public final stopRecognition(I)I
    .locals 3

    .line 1
    const-string v0, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 3
    invoke-static {p1, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const/4 v1, 0x6

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {p0, v1, p1, v0, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    invoke-virtual {v0}, Landroid/os/HwParcel;->readInt32()I

    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 37
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
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of android.hardware.soundtrigger@2.1::ISoundTriggerHw]@Proxy"

    .line 25
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final unloadSoundModel(I)I
    .locals 3

    .line 1
    const-string v0, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 3
    invoke-static {p1, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/HwParcel;

    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Landroid/os/HwParcel;

    .line 9
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 14
    const/4 v1, 0x4

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {p0, v1, p1, v0, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    invoke-virtual {v0}, Landroid/os/HwParcel;->readInt32()I

    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 37
    throw p0
.end method
