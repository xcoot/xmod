.class public final Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;


# instance fields
.field public mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field public mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

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
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mLock:Ljava/lang/Object;

    .line 11
    const v0, 0xffff

    .line 14
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mPhysicalAddress:I

    .line 16
    return-void
.end method

.method private nativeSetOption(IZ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setOption(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    .line 11
    const-string p2, "Failed to set option : "

    .line 13
    invoke-static {p0, p2, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public final connectToHal()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getService()Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 5
    move-result-object v1

    .line 6
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const-wide/16 v2, 0x161

    .line 10
    :try_start_1
    invoke-interface {v1, p0, v2, v3}, Landroid/hidl/base/V1_0/IBase;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :catch_1
    move-exception p0

    .line 17
    :try_start_2
    const-string v1, "Couldn\'t link to death : "

    .line 19
    new-array v2, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {p0, v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :goto_1
    const-string v1, "Couldn\'t connect to cec@1.0"

    .line 28
    new-array v2, v0, [Ljava/lang/Object;

    .line 30
    invoke-static {p0, v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return v0
.end method

.method public final enableCec(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->nativeSetOption(IZ)V

    .line 5
    return-void
.end method

.method public final enableSystemCecControl(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->nativeSetOption(IZ)V

    .line 5
    return-void
.end method

.method public final enableWakeupByOtp(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->nativeSetOption(IZ)V

    .line 5
    return-void
.end method

.method public final nativeAddLogicalAddress(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->addLogicalAddress(I)I

    .line 6
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const/4 p1, 0x0

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    .line 12
    const-string v0, "Failed to add a logical address : "

    .line 14
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 p0, 0x2

    .line 18
    return p0
.end method

.method public final nativeClearLogicalAddress()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 3
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->clearLogicalAddress()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    const-string v1, "Failed to clear logical address : "

    .line 13
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    return-void
.end method

.method public final nativeEnableAudioReturnChannel(IZ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->enableAudioReturnChannel(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    .line 11
    const-string p2, "Failed to enable/disable ARC : "

    .line 13
    invoke-static {p0, p2, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
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
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 3
    invoke-interface {v0, p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getPhysicalAddress(Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;)V

    .line 6
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mPhysicalAddress:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return p0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    const-string v1, "Failed to get physical address : "

    .line 15
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const p0, 0xffff

    .line 21
    return p0
.end method

.method public final nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 4
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getPortInfo()Ljava/util/ArrayList;

    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    new-array v1, v1, [Landroid/hardware/hdmi/HdmiPortInfo;

    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    move v2, v0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    .line 31
    new-instance v4, Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 33
    iget v5, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    .line 35
    iget v6, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    .line 37
    iget-short v7, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    .line 39
    invoke-static {v7}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 42
    move-result v7

    .line 43
    invoke-direct {v4, v5, v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;-><init>(III)V

    .line 46
    iget-boolean v5, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    .line 48
    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setCecSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v0}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setMhlSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 55
    move-result-object v4

    .line 56
    iget-boolean v3, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    .line 58
    invoke-virtual {v4, v3}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setArcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3, v0}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setEarcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->build()Landroid/hardware/hdmi/HdmiPortInfo;

    .line 69
    move-result-object v3

    .line 70
    aput-object v3, v1, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    return-object v1

    .line 78
    :goto_1
    const-string v1, "Failed to get port information : "

    .line 80
    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const/4 p0, 0x0

    .line 86
    return-object p0
.end method

.method public final nativeGetVendorId()I
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 3
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getVendorId()I

    .line 6
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    const-string v1, "Failed to get vendor id : "

    .line 14
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method public final nativeGetVersion()I
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 3
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getCecVersion()I

    .line 6
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    const-string v1, "Failed to get cec version : "

    .line 14
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method public final nativeInit()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->connectToHal()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

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
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->isConnected(I)Z

    .line 6
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "Failed to get connection info : "

    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v1, v0, [Ljava/lang/Object;

    .line 14
    invoke-static {p0, p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return v0
.end method

.method public final nativeSendCecCommand(II[B)I
    .locals 4

    .line 1
    new-instance v0, Landroid/hardware/tv/cec/V1_0/CecMessage;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    .line 9
    iput v1, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v1, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    .line 18
    iput p1, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    .line 20
    iput p2, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    array-length p2, p3

    .line 25
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    iput-object p1, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

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
    iget-object v3, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

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
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 51
    invoke-interface {p0, v0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->sendMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)I

    .line 54
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return p0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    const-string p1, "Failed to send CEC message : "

    .line 59
    new-array p2, p2, [Ljava/lang/Object;

    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const/4 p0, 0x3

    .line 65
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
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    .line 11
    const-string v0, "Failed to set language : "

    .line 13
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    return-void
.end method

.method public final onValues(IS)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mLock:Ljava/lang/Object;

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
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mPhysicalAddress:I

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
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->connectToHal()Z

    .line 35
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 37
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    .line 42
    :cond_0
    return-void
.end method

.method public final setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 5
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;I)V

    .line 11
    invoke-interface {p0, v0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const/4 p1, 0x0

    .line 17
    new-array p1, p1, [Ljava/lang/Object;

    .line 19
    const-string v0, "Couldn\'t initialise tv.cec callback : "

    .line 21
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :goto_0
    return-void
.end method
