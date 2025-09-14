.class public final Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

.field public mEarcCallback:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    .line 2
    .line 3
    check-cast v0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->connectToHal()Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarcCallback:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->nativeSetCallback(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final connectToHal()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/hardware/tv/hdmi/earc/IEArc;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, "/default"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v2, Landroid/hardware/tv/hdmi/earc/IEArc$Stub;->$r8$clinit:I

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    instance-of v2, v1, Landroid/hardware/tv/hdmi/earc/IEArc;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    check-cast v0, Landroid/hardware/tv/hdmi/earc/IEArc;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, v1, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 50
    .line 51
    move-object v0, v1

    .line 52
    :goto_0
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    return v1

    .line 58
    :cond_2
    :try_start_0
    check-cast v0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    .line 59
    .line 60
    iget-object v0, v0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 61
    .line 62
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    const-string v0, "Couldn\'t link callback object: "

    .line 68
    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    const/4 p0, 0x1

    .line 75
    return p0
.end method

.method public final nativeGetLastReportedAudioCapabilities(I)[B
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    .line 2
    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->getLastReportedAudioCapabilities(I)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const/4 p1, 0x0

    .line 12
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v0, "Could not read last reported audio capabilities. Exception: "

    .line 15
    .line 16
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final nativeGetState(I)B
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    .line 2
    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->getState(I)B

    .line 6
    .line 7
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
    const/4 p1, 0x0

    .line 12
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v0, "Could not get eARC state. Exception: "

    .line 15
    .line 16
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, -0x1

    .line 20
    return p0
.end method

.method public final nativeInit()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->connectToHal()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final nativeIsEarcEnabled()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    .line 2
    .line 3
    check-cast p0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->isEArcEnabled()Z

    .line 6
    .line 7
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
    const-string v0, "Could not read if eARC is enabled. Exception: "

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v2, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {p0, v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return v1
.end method

.method public final nativeSetCallback(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarcCallback:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    .line 4
    .line 5
    check-cast p0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->setCallback(Landroid/hardware/tv/hdmi/earc/IEArcCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const/4 p1, 0x0

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v0, "Could not set callback. Exception: "

    .line 16
    .line 17
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final nativeSetEarcEnabled(Z)V
    .locals 2

    .line 1
    const-string v0, "Could not set eARC enabled to "

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    .line 4
    .line 5
    check-cast p0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->setEArcEnabled(Z)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ":. Exception: "

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ". Error: "

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method
