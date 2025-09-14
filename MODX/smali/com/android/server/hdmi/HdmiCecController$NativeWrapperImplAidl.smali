.class public final Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field public mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

.field public mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

.field public final mLock:Ljava/lang/Object;


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
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mLock:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 3
    check-cast v0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 5
    iget-object v0, v0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 11
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    .line 13
    check-cast v0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    .line 15
    iget-object v0, v0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 17
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 20
    const-string v0, "HDMI Connection or CEC service died, reconnecting"

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->connectToHal()Z

    .line 30
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 32
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    .line 37
    :cond_0
    return-void
.end method

.method public final connectToHal()Z
    .locals 6

    .line 1
    const-string v0, "Couldn\'t link to death : "

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    sget-object v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->DESCRIPTOR:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v3, "/default"

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    move-result-object v1

    .line 26
    sget v4, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub;->$r8$clinit:I

    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v1, :cond_0

    .line 31
    move-object v2, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 39
    instance-of v5, v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 41
    if-eqz v5, :cond_1

    .line 43
    check-cast v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 48
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 53
    :goto_0
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 55
    const/4 v1, 0x0

    .line 56
    if-nez v2, :cond_2

    .line 58
    const-string p0, "Could not initialize HDMI CEC AIDL HAL"

    .line 60
    new-array v0, v1, [Ljava/lang/Object;

    .line 62
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return v1

    .line 66
    :cond_2
    :try_start_0
    check-cast v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 68
    iget-object v2, v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 70
    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v2

    .line 75
    new-array v5, v1, [Ljava/lang/Object;

    .line 77
    invoke-static {v2, v0, v5}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    sget-object v5, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;->DESCRIPTOR:Ljava/lang/String;

    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 100
    move-result-object v2

    .line 101
    sget v3, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub;->$r8$clinit:I

    .line 103
    if-nez v2, :cond_3

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-interface {v2, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 109
    move-result-object v3

    .line 110
    if-eqz v3, :cond_4

    .line 112
    instance-of v4, v3, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    .line 114
    if-eqz v4, :cond_4

    .line 116
    move-object v4, v3

    .line 117
    check-cast v4, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    new-instance v4, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    .line 122
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object v2, v4, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 127
    :goto_2
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    .line 129
    if-nez v4, :cond_5

    .line 131
    const-string p0, "Could not initialize HDMI Connection AIDL HAL"

    .line 133
    new-array v0, v1, [Ljava/lang/Object;

    .line 135
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return v1

    .line 139
    :cond_5
    :try_start_1
    check-cast v4, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    .line 141
    iget-object v2, v4, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 143
    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    goto :goto_3

    .line 147
    :catch_1
    move-exception p0

    .line 148
    new-array v1, v1, [Ljava/lang/Object;

    .line 150
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :goto_3
    const/4 p0, 0x1

    .line 154
    return p0
.end method

.method public final enableCec(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->enableCec(Z)V
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
    const-string v0, "Failed call to enableCec : "

    .line 15
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :goto_0
    return-void
.end method

.method public final enableSystemCecControl(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->enableSystemCecControl(Z)V
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
    const-string v0, "Failed call to enableSystemCecControl : "

    .line 15
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :goto_0
    return-void
.end method

.method public final enableWakeupByOtp(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->enableWakeupByOtp(Z)V
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
    const-string v0, "Failed call to enableWakeupByOtp : "

    .line 15
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :goto_0
    return-void
.end method

.method public final nativeAddLogicalAddress(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 3
    int-to-byte p1, p1

    .line 4
    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 6
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->addLogicalAddress(B)B

    .line 9
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const/4 p1, 0x0

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    .line 15
    const-string v0, "Failed to add a logical address : "

    .line 17
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const/4 p0, 0x2

    .line 21
    return p0
.end method

.method public final nativeClearLogicalAddress()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 5
    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->clearLogicalAddress()V
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
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->enableAudioReturnChannel(IZ)V
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
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->getHpdSignal(I)B

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
    const-string v0, "Could not get HPD signal type for portId "

    .line 13
    const-string v1, ". Exception: "

    .line 15
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    new-array v1, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {p0, p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return v0
.end method

.method public final nativeGetPhysicalAddress()I
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 5
    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->getPhysicalAddress()I

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
    const-string v1, "Failed to get physical address : "

    .line 16
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    const p0, 0xffff

    .line 22
    return p0
.end method

.method public final nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    .line 4
    check-cast p0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    .line 6
    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->getPortInfo()[Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;

    .line 9
    move-result-object p0

    .line 10
    array-length v1, p0

    .line 11
    new-array v1, v1, [Landroid/hardware/hdmi/HdmiPortInfo;

    .line 13
    array-length v2, p0

    .line 14
    move v3, v0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    aget-object v5, p0, v3

    .line 20
    new-instance v6, Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 22
    iget v7, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->portId:I

    .line 24
    iget-byte v8, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->type:B

    .line 26
    iget v9, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->physicalAddress:I

    .line 28
    invoke-direct {v6, v7, v8, v9}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;-><init>(III)V

    .line 31
    iget-boolean v7, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->cecSupported:Z

    .line 33
    invoke-virtual {v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setCecSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6, v0}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setMhlSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 40
    move-result-object v6

    .line 41
    iget-boolean v7, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->arcSupported:Z

    .line 43
    invoke-virtual {v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setArcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 46
    move-result-object v6

    .line 47
    iget-boolean v5, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->eArcSupported:Z

    .line 49
    invoke-virtual {v6, v5}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setEarcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->build()Landroid/hardware/hdmi/HdmiPortInfo;

    .line 56
    move-result-object v5

    .line 57
    aput-object v5, v1, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    return-object v1

    .line 67
    :goto_1
    const-string v1, "Failed to get port information : "

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method

.method public final nativeGetVendorId()I
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 5
    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->getVendorId()I

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
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 5
    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->getCecVersion()I

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->connectToHal()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    return-object p0
.end method

.method public final nativeIsConnected(I)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->isConnected(I)Z

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
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/tv/hdmi/cec/CecMessage;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    and-int/lit8 p1, p1, 0xf

    .line 8
    int-to-byte p1, p1

    .line 9
    iput-byte p1, v0, Landroid/hardware/tv/hdmi/cec/CecMessage;->initiator:B

    .line 11
    and-int/lit8 p1, p2, 0xf

    .line 13
    int-to-byte p1, p1

    .line 14
    iput-byte p1, v0, Landroid/hardware/tv/hdmi/cec/CecMessage;->destination:B

    .line 16
    iput-object p3, v0, Landroid/hardware/tv/hdmi/cec/CecMessage;->body:[B

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 20
    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 22
    invoke-virtual {p0, v0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->sendMessage(Landroid/hardware/tv/hdmi/cec/CecMessage;)B

    .line 25
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const/4 p1, 0x0

    .line 29
    new-array p1, p1, [Ljava/lang/Object;

    .line 31
    const-string p2, "Failed to send CEC message : "

    .line 33
    invoke-static {p0, p2, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const/4 p0, 0x3

    .line 37
    return p0
.end method

.method public final nativeSetHpdSignalType(II)V
    .locals 3

    .line 1
    const-string v0, " to "

    .line 3
    const-string v1, "Could not set HPD signal type for portId "

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    .line 7
    int-to-byte v2, p1

    .line 8
    check-cast p0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    .line 10
    invoke-virtual {p0, v2, p2}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->setHpdSignal(BI)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v2, ". Exception: "

    .line 17
    invoke-static {p2, p1, v1, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    new-array p2, p2, [Ljava/lang/Object;

    .line 24
    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p0

    .line 29
    const-string v2, ". Error: "

    .line 31
    invoke-static {p2, p1, v1, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p0

    .line 41
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :goto_0
    return-void
.end method

.method public final nativeSetLanguage(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->setLanguage(Ljava/lang/String;)V
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

.method public final setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    .line 6
    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallbackAidl;

    .line 8
    invoke-direct {v2, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallbackAidl;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    .line 11
    check-cast v1, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    .line 13
    invoke-virtual {v1, v2}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallbackAidl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    const-string v2, "Couldn\'t initialise tv.cec callback : "

    .line 20
    new-array v3, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    .line 27
    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;

    .line 29
    invoke-direct {v1, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    .line 32
    check-cast p0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    .line 34
    invoke-virtual {p0, v1}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception p0

    .line 39
    const-string p1, "Couldn\'t initialise tv.hdmi callback : "

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_1
    return-void
.end method
