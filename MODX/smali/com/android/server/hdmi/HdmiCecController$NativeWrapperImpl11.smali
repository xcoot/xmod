.class public final Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;


# instance fields
.field public mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field public mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

.field public final mLock:Ljava/lang/Object;

.field public mPhysicalAddress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mLock:Ljava/lang/Object;

    .line 11
    const v0, 0xffff

    .line 14
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mPhysicalAddress:I

    .line 16
    return-void
.end method


# virtual methods
.method public final connectToHal()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->getService()Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 5
    move-result-object v1

    .line 6
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    check-cast v1, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 10
    const-wide/16 v2, 0x161

    .line 12
    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    :try_start_2
    const-string v1, "Couldn\'t link to death : "

    .line 19
    new-array v2, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {p0, v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1

    .line 24
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :catch_1
    move-exception p0

    .line 27
    const-string v1, "Couldn\'t connect to cec@1.1"

    .line 29
    new-array v2, v0, [Ljava/lang/Object;

    .line 31
    invoke-static {p0, v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return v0
.end method

.method public final enableCec(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->nativeSetOption(IZ)V

    .line 5
    return-void
.end method

.method public final enableSystemCecControl(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->nativeSetOption(IZ)V

    .line 5
    return-void
.end method

.method public final enableWakeupByOtp(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->nativeSetOption(IZ)V

    .line 5
    return-void
.end method

.method public final nativeAddLogicalAddress(I)I
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v0, "android.hardware.tv.cec@1.1::IHdmiCec"

    .line 10
    invoke-static {p1, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/HwParcel;

    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Landroid/os/HwParcel;

    .line 16
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 21
    const/16 v1, 0xd

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, v1, p1, v0, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 27
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 30
    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 33
    invoke-virtual {v0}, Landroid/os/HwParcel;->readInt32()I

    .line 36
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 45
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    const/4 p1, 0x0

    .line 48
    new-array p1, p1, [Ljava/lang/Object;

    .line 50
    const-string v0, "Failed to add a logical address : "

    .line 52
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const/4 p0, 0x2

    .line 56
    return p0
.end method

.method public final nativeClearLogicalAddress()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 5
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->clearLogicalAddress()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    const-string v1, "Failed to clear logical address : "

    .line 15
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :goto_0
    return-void
.end method

.method public final nativeEnableAudioReturnChannel(IZ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->enableAudioReturnChannel(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    const-string p2, "Failed to enable/disable ARC : "

    .line 15
    invoke-static {p0, p2, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :goto_0
    return-void
.end method

.method public final nativeGetHpdSignalType(I)I
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p1, p0, [Ljava/lang/Object;

    .line 4
    const-string v0, "Failed to get HPD signal type: not supported by HAL."

    .line 6
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    return p0
.end method

.method public final nativeGetPhysicalAddress()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 3
    check-cast v0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 5
    invoke-virtual {v0, p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->getPhysicalAddress(Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;)V

    .line 8
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mPhysicalAddress:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    const-string v1, "Failed to get physical address : "

    .line 17
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const p0, 0xffff

    .line 23
    return p0
.end method

.method public final nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 4
    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 6
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->getPortInfo()Ljava/util/ArrayList;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    new-array v1, v1, [Landroid/hardware/hdmi/HdmiPortInfo;

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    move v2, v0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    .line 33
    new-instance v4, Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 35
    iget v5, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    .line 37
    iget v6, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    .line 39
    iget-short v7, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    .line 41
    invoke-static {v7}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 44
    move-result v7

    .line 45
    invoke-direct {v4, v5, v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;-><init>(III)V

    .line 48
    iget-boolean v5, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    .line 50
    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setCecSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4, v0}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setMhlSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 57
    move-result-object v4

    .line 58
    iget-boolean v3, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    .line 60
    invoke-virtual {v4, v3}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setArcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3, v0}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setEarcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->build()Landroid/hardware/hdmi/HdmiPortInfo;

    .line 71
    move-result-object v3

    .line 72
    aput-object v3, v1, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    return-object v1

    .line 80
    :goto_1
    const-string v1, "Failed to get port information : "

    .line 82
    new-array v0, v0, [Ljava/lang/Object;

    .line 84
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const/4 p0, 0x0

    .line 88
    return-object p0
.end method

.method public final nativeGetVendorId()I
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 5
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->getVendorId()I

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
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const-string v1, "Failed to get vendor id : "

    .line 16
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public final nativeGetVersion()I
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 5
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->getCecVersion()I

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
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const-string v1, "Failed to get cec version : "

    .line 16
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public final nativeInit()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->connectToHal()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public final nativeIsConnected(I)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->isConnected(I)Z

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
    const-string p1, "Failed to get connection info : "

    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v1, v0, [Ljava/lang/Object;

    .line 16
    invoke-static {p0, p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    return v0
.end method

.method public final nativeSendCecCommand(II[B)I
    .locals 4

    .line 1
    new-instance v0, Landroid/hardware/tv/cec/V1_1/CecMessage;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->initiator:I

    .line 9
    iput v1, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->destination:I

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v1, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    .line 18
    iput p1, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->initiator:I

    .line 20
    iput p2, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->destination:I

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    array-length p2, p3

    .line 25
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    iput-object p1, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    .line 30
    array-length p1, p3

    .line 31
    const/4 p2, 0x0

    .line 32
    move v1, p2

    .line 33
    :goto_0
    if-ge v1, p1, :cond_0

    .line 35
    aget-byte v2, p3, v1

    .line 37
    iget-object v3, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    .line 39
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 51
    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 53
    invoke-virtual {p0, v0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->sendMessage_1_1(Landroid/hardware/tv/cec/V1_1/CecMessage;)I

    .line 56
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const-string p1, "Failed to send CEC message : "

    .line 61
    new-array p2, p2, [Ljava/lang/Object;

    .line 63
    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const/4 p0, 0x3

    .line 67
    return p0
.end method

.method public final nativeSetHpdSignalType(II)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    .line 4
    const-string p1, "Failed to set HPD signal type: not supported by HAL."

    .line 6
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public final nativeSetLanguage(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->setLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    const-string v0, "Failed to set language : "

    .line 15
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :goto_0
    return-void
.end method

.method public final nativeSetOption(IZ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->setOption(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    const-string p2, "Failed to set option : "

    .line 15
    invoke-static {p0, p2, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :goto_0
    return-void
.end method

.method public final onValues(IS)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    new-instance v0, Ljava/lang/Short;

    .line 8
    invoke-direct {v0, p2}, Ljava/lang/Short;-><init>(S)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    .line 14
    move-result p2

    .line 15
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mPhysicalAddress:I

    .line 17
    monitor-exit p1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0

    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public final serviceDied(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x161

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "Service died cookie : "

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, "; reconnecting"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    new-array p2, p2, [Ljava/lang/Object;

    .line 29
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->connectToHal()Z

    .line 35
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 37
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    .line 42
    :cond_0
    return-void
.end method

.method public final setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 5
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;I)V

    .line 11
    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 13
    invoke-virtual {p0, v0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->setCallback_1_1(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const/4 p1, 0x0

    .line 19
    new-array p1, p1, [Ljava/lang/Object;

    .line 21
    const-string v0, "Couldn\'t initialise tv.cec callback : "

    .line 23
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :goto_0
    return-void
.end method
