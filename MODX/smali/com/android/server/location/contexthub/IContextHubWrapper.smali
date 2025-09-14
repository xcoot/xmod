.class public abstract Lcom/android/server/location/contexthub/IContextHubWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static maybeConnectToAidlGetProxy()Landroid/hardware/contexthub/IContextHub;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-class v1, Landroid/hardware/contexthub/IContextHub;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "/default"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 27
    move-result v1

    .line 28
    const-string v2, "IContextHubWrapper"

    .line 30
    if-eqz v1, :cond_0

    .line 32
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/hardware/contexthub/IContextHub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHub;

    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_1

    .line 42
    const-string v1, "Context Hub AIDL service was declared but was not found"

    .line 44
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "Context Hub AIDL service is not declared"

    .line 50
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    .line 54
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract disableNanoapp(IIJ)I
.end method

.method public abstract enableNanoapp(IIJ)I
.end method

.method public abstract getHubs()Landroid/util/Pair;
.end method

.method public abstract getPreloadedNanoappIds(I)[J
.end method

.method public abstract loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
.end method

.method public abstract onAirplaneModeSettingChanged(Z)V
.end method

.method public abstract onBtMainSettingChanged(Z)V
.end method

.method public abstract onBtScanningSettingChanged(Z)V
.end method

.method public onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onHostEndpointDisconnected(S)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onLocationSettingChanged(Z)V
.end method

.method public abstract onMicrophoneSettingChanged(Z)V
.end method

.method public abstract onWifiMainSettingChanged(Z)V
.end method

.method public abstract onWifiScanningSettingChanged(Z)V
.end method

.method public abstract onWifiSettingChanged(Z)V
.end method

.method public abstract queryNanoapps(I)I
.end method

.method public abstract registerCallback(ILcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V
.end method

.method public abstract registerExistingCallback(I)V
.end method

.method public abstract sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I
.end method

.method public abstract sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
.end method

.method public abstract setTestMode(Z)Z
.end method

.method public abstract supportsAirplaneModeSettingNotifications()Z
.end method

.method public abstract supportsBtSettingNotifications()Z
.end method

.method public abstract supportsLocationSettingNotifications()Z
.end method

.method public abstract supportsMicrophoneSettingNotifications()Z
.end method

.method public abstract supportsWifiSettingNotifications()Z
.end method

.method public abstract unloadNanoapp(IIJ)I
.end method
