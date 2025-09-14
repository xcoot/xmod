.class public final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.super Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final STANDBY_AFTER_ACTIVE_SOURCE_LOST_DELAY_MS:J = 0x7530L

.field static final STANDBY_AFTER_HOTPLUG_OUT_DELAY_MS:J = 0x7530L


# instance fields
.field public mDelayedPopupOnActiveSourceLostHandler:Landroid/os/Handler;

.field public mDelayedStandbyHandler:Landroid/os/Handler;

.field public mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

.field protected mPlaybackDeviceActionOnRoutingControl:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

.field public mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# virtual methods
.method public final canGoToStandby()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->isHeld()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method public final disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    const-class v0, Lcom/android/server/hdmi/NewDeviceAction;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "isActiveSource(): "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final findAudioReceiverAddress()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x5

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final findKeyReceiverAddress()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getPreferredAddress()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo p0, "persist.sys.hdmi.addr.playback"

    .line 5
    .line 6
    .line 7
    const/16 v0, 0xf

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const-string/jumbo v0, "persist.sys.hdmi.keep_awake"

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$5;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    const-string v1, "No wakelock is used to keep the display on."

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 42
    .line 43
    return-object p0
.end method

.method public final handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public final handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, -0x1

    .line 34
    const-string v3, "HdmiCecLocalDevicePlayback#handleRoutingChangeAndInformation()"

    .line 35
    .line 36
    if-eq p1, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(IILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 58
    .line 59
    .line 60
    new-instance v1, Landroid/content/Intent;

    .line 61
    .line 62
    const-string v2, "android.hardware.hdmi.action.ON_ACTIVE_SOURCE_RECOVERED_DISMISS_UI"

    .line 63
    .line 64
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendBroadcastAsUser(Landroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    sget-object v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$7;->$SwitchMap$android$sysprop$HdmiProperties$playback_device_action_on_routing_control_values:[I

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mPlaybackDeviceActionOnRoutingControl:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->ordinal()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    aget v1, v1, v2

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    if-eq v1, v2, :cond_4

    .line 82
    .line 83
    const/4 p0, 0x2

    .line 84
    if-eq v1, p0, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    iget p2, p2, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 100
    .line 101
    invoke-virtual {v0, p1, p0, p2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(IIILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method

.method public final handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 13
    .line 14
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, -0x1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v1, v0, :cond_0

    .line 34
    .line 35
    const-string p0, "HdmiCecLocalDevicePlayback"

    .line 36
    .line 37
    const-string p1, "<Routing Information> is ignored, it is pointing to the same physical address as the message sender"

    .line 38
    .line 39
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 44
    .line 45
    .line 46
    return v2
.end method

.method public final handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 7

    .line 1
    const-string v0, "HdmiCecLocalDevicePlayback"

    .line 2
    .line 3
    const-string/jumbo v1, "handleSetMenuLanguage "

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string/jumbo v4, "set_menu_language"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    return v4

    .line 26
    :cond_0
    const/4 v3, 0x3

    .line 27
    :try_start_0
    new-instance v5, Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 30
    .line 31
    const-string v6, "US-ASCII"

    .line 32
    .line 33
    invoke-direct {v5, p1, v4, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, " cur:"

    .line 63
    .line 64
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-array v6, v4, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-static {v1, v6}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const/4 v1, -0x1

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    return v1

    .line 87
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1, v4}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_2

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startSetMenuLanguageActivity(Ljava/util/Locale;)V

    .line 130
    .line 131
    .line 132
    return v1

    .line 133
    :catch_0
    move-exception p0

    .line 134
    goto :goto_0

    .line 135
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string p1, "Can\'t handle <Set Menu Language> of "

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    return v3

    .line 156
    :goto_0
    const-string p1, "Can\'t handle <Set Menu Language>"

    .line 157
    .line 158
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .line 160
    .line 161
    return v3
.end method

.method public final handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 10
    .line 11
    if-ne v1, v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eq v0, p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return v2
.end method

.method public final handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 15
    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eq v0, p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 p0, -0x1

    .line 34
    return p0
.end method

.method public final handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public bridge synthetic invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onActiveSourceLost()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->pauseActiveMediaSessions()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v1, "power_state_change_on_active_source_lost"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "standby_now"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedPopupOnActiveSourceLostHandler:Landroid/os/Handler;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;I)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v2, 0x1388

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onAddressAllocated(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v2, 0xf

    .line 23
    .line 24
    const-string v3, "HdmiCecLocalDevicePlayback#onAddressAllocated()"

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(IIILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 44
    .line 45
    invoke-static {p1, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->buildAndSendSetOsdName(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/16 v1, 0x7d

    .line 91
    .line 92
    const/4 v2, 0x5

    .line 93
    invoke-static {p1, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 109
    .line 110
    .line 111
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    .line 114
    .line 115
    .line 116
    const-class p1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    const-string v0, "HdmiCecLocalDevicePlayback"

    .line 125
    .line 126
    const-string v1, "Device Discovery Action is in progress. Restarting."

    .line 127
    .line 128
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    new-instance p1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 135
    .line 136
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;

    .line 137
    .line 138
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startQueuedActions()V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final onHotplug(IZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyHandler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecSwitches(I)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    :goto_0
    iget-object v4, p2, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ge v3, v4, :cond_3

    .line 47
    .line 48
    iget-object v4, p2, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    iget-object v5, p2, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 61
    .line 62
    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {p2, v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eq v5, p1, :cond_1

    .line 71
    .line 72
    const/4 v6, -0x1

    .line 73
    if-ne v5, v6, :cond_2

    .line 74
    .line 75
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {p2, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    .line 113
    .line 114
    const/4 p2, 0x2

    .line 115
    invoke-direct {p1, p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;I)V

    .line 116
    .line 117
    .line 118
    const-wide/16 v1, 0x7530

    .line 119
    .line 120
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .line 122
    .line 123
    :goto_2
    return-void
.end method

.method public final onInitializeCecComplete(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo v0, "power_control_mode"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string/jumbo v0, "none"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$4;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onStandby(ZILcom/android/server/hdmi/HdmiControlService$27;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, -0x1

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 5
    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const-string v5, "HdmiCecLocalDevicePlayback#onStandby()"

    .line 24
    .line 25
    const v6, 0xffff

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2, v6, v5}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(IILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    new-instance v4, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;

    .line 38
    .line 39
    invoke-direct {v4, p0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Lcom/android/server/hdmi/HdmiControlService$27;)V

    .line 40
    .line 41
    .line 42
    const/16 p3, 0x9d

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    iget-object p1, v3, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p0, v1, p3, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v3, p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    const/16 p1, 0xf

    .line 73
    .line 74
    const/16 v5, 0x36

    .line 75
    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    if-eq p2, v0, :cond_3

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-static {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v3, p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const-string/jumbo v6, "power_control_mode"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v6}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    sparse-switch v6, :sswitch_data_0

    .line 118
    .line 119
    .line 120
    :goto_0
    move v0, v2

    .line 121
    goto :goto_1

    .line 122
    :sswitch_0
    const-string/jumbo v0, "to_tv"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-nez p2, :cond_5

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    const/4 v0, 0x3

    .line 133
    goto :goto_1

    .line 134
    :sswitch_1
    const-string/jumbo v0, "none"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-nez p2, :cond_6

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    const/4 v0, 0x2

    .line 145
    goto :goto_1

    .line 146
    :sswitch_2
    const-string/jumbo v6, "broadcast"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-nez p2, :cond_8

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :sswitch_3
    const-string/jumbo v0, "to_tv_and_audio_system"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-nez p2, :cond_7

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_7
    move v0, v1

    .line 167
    :cond_8
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    invoke-static {p0, v1, v5}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {v3, p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    iget-object p1, v3, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {p0, v1, p3, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-virtual {v3, p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    invoke-static {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-virtual {v3, p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    invoke-static {p1, v1, v5}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    const/4 p2, 0x0

    .line 242
    invoke-virtual {v3, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    const/4 p1, 0x5

    .line 254
    invoke-static {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-virtual {v3, p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 259
    .line 260
    .line 261
    :goto_2
    return-void

    .line 262
    nop

    .line 263
    :sswitch_data_0
    .sparse-switch
        -0x67f5ab87 -> :sswitch_3
        -0x607e173f -> :sswitch_2
        0x33af38 -> :sswitch_1
        0x6968ec6 -> :sswitch_0
    .end sparse-switch

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final preprocessBufferedMessages(Ljava/util/List;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 18
    .line 19
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 20
    .line 21
    const/16 v1, 0x80

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x86

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x82

    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    :cond_1
    const-class p1, Lcom/android/server/hdmi/ActiveSourceAction;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    const-class p1, Lcom/android/server/hdmi/OneTouchPlayAction;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public setActiveSource(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->acquire()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final setPreferredAddress(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "persist.sys.hdmi.addr.playback"

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public startHdmiCecActiveSourceLostActivity()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v2, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const v4, 0x1040362

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const/high16 v3, 0x10000000

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :catch_0
    :try_start_1
    const-string p0, "HdmiCecLocalDevicePlayback"

    .line 53
    .line 54
    const-string v2, "Unable to start HdmiCecActiveSourceLostActivity"

    .line 55
    .line 56
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    return-void

    .line 61
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public final startSetMenuLanguageActivity(Ljava/util/Locale;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v2, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "android.hardware.hdmi.extra.LOCALE"

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const v3, 0x1040363

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const/high16 p1, 0x10000000

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :catch_0
    :try_start_1
    const-string p0, "HdmiCecLocalDevicePlayback"

    .line 62
    .line 63
    const-string/jumbo p1, "unable to start HdmiCecSetMenuLanguageActivity"

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :goto_1
    return-void

    .line 71
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method
